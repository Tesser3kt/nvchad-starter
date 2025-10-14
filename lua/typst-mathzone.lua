-- lua/typst_mathzone.lua
local M = {}

-- true iff cursor is inside Typst math: $...$ or $[ ... ]$
M.in_typst_math = function()
  if vim.bo.filetype ~= "typst" then return false end

  local row, col = unpack(vim.api.nvim_win_get_cursor(0))
  row = row - 1
  local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
  local cur = lines[row + 1] or ""

  -- quick ignore: comment start before cursor ("// ...")
  do
    local cpos = cur:find("//", 1, true)
    if cpos and cpos - 1 <= col then return false end
  end

  -- 1) Block math: inside an unmatched "$[" … "]$" region at the cursor?
  local function block_depth_upto(r, c)
    local depth = 0
    for i = 0, r do
      local line = lines[i + 1] or ""
      local upto = (i == r) and c or #line
      local j = 1
      while true do
        local o = line:find("%$%[", j)   -- "$["
        local k = line:find("%]%$", j)   -- "]$"
        if (not o or o > upto) and (not k or k > upto) then break end
        if k and (not o or k < o) and k <= upto then
          depth = math.max(0, depth - 1)
          j = k + 2
        elseif o and o <= upto then
          depth = depth + 1
          j = o + 2
        else
          break
        end
      end
    end
    return depth
  end

  if block_depth_upto(row, col) > 0 then
    return true
  end

  -- 2) Inline math on the current line: between two plain "$"
  -- Count plain "$" (not part of "$[" or "]$") on each side of the cursor.
  local left  = cur:sub(1, col)
  local right = cur:sub(col + 1)

  local function count_plain_dollars(s)
    local n, i = 0, 1
    while true do
      local j = s:find("%$", i)
      if not j then break end
      local prev = s:sub(j - 1, j - 1)
      local nextc = s:sub(j + 1, j + 1)
      local part_of_block = (nextc == "[") or (prev == "]")
      if not part_of_block then n = n + 1 end
      i = j + 1
    end
    return n
  end

  local nL = count_plain_dollars(left)
  local nR = count_plain_dollars(right)

  return (nL % 2 == 1) and (nR % 2 == 1)
end

return M

