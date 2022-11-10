def get_most_common_letter(text)
  text.delete!(" ")
  counter = Hash.new(0)
  text.chars.each do |char|
    counter[char] += 1
  end
  counter.to_a.sort_by { |k, v| v }[-1][0]
  puts counter.to_a.sort_by { |k, v| v }
end

# puts get_most_common_letter("the roof, the roof, the roof is on fire!")
