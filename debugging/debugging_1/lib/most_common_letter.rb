def get_the_most_common_letter(text)
  counter = Hash.new(0)
   counter 
  text.chars.each do |char|
    counter[char] += 1
  end
 p counter.to_a.sort_by { |k, v| v} [-2][0]
 
 
end

p get_the_most_common_letter("the roof, the roof, the roof is on fire!")