# write code here...

def exercise
  arr = [1, 2, 3, 4, 5, 6, 7, 8]
  sum = 10
  answer = []
  arr.each do |a|
    b = sum - a
    answer << [a, b] if arr.include?(b)
  end
  p answer
end
