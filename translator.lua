local letters = require('letters')

print'Enter an emoji:'
local emoji = io.read()

print'Enter a second emoji or nothing for white space:'
local space_emoji = io.read()

if space_emoji == '' then space_emoji = 'empty_space' end

print'Enter the word:'
local word = io.read()

for index = 1, 5 do
  local line = ''
  local first_character_margin = ':¿:'

  for l = 1, #word do
    local letter = word:sub(l, l)

    if l == 1 then
      line = first_character_margin .. line .. letters[letter][index]
    else
      line = line .. letters[letter][index]
    end
  end

  print((line:gsub('¡', emoji):gsub('¿', space_emoji)))
end
