def get_most_common_letter(text) 
  p "text is #{text}"
  text.delete!(" ")
  p "text is now #{text}"
  counter = Hash.new(0)
  text.chars.each do |char|
    counter[char] += 1
  end
  counter.to_a.sort_by { |k, v| v }[-1][0]
end

puts get_most_common_letter("wooooof wooooof woooof") 
