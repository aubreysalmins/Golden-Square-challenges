def get_most_common_letter(text)
  text_without_spaces = text.delete(" ")
  counter = Hash.new(0)
  text_without_spaces.chars.each do |char|
    counter[char] += 1
  end
  counter.to_a.sort_by { |k, v| -v }[0][0]
end

puts get_most_common_letter("the roof, the roof, the roof is on fire!")

# Intended output:
#
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"