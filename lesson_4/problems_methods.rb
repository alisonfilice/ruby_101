[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# returns [1, 2, 3], because the last part of the method is 'hi', which is truthy, so all items of the array will be considered truthy and therefore selected

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

#count returns the number of elements that the block evaluates as true

[1, 2, 3].reject do |num|
  puts num
end
#puts always returns nil (falsy)
#reject returns a new array containing items where the block's return value is "falsey"

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end
# => { "a" => "ant", "b" => "bear", "c" => "cat" }
#this method turns the array into a hash and assigns the key & value in the block

hash = { a: 'ant', b: 'bear' }
hash.shift

#returns [:a, "ant"], removes first pair and returns it

['ant', 'bear', 'caterpillar'].pop.size
#returns 11, removes last element and then counts num of characters

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

#returns - true, because there is at least one odd value in the array
#outputs - 1 (method stop evalutating once it finds one odd number)

arr = [1, 2, 3, 4, 5]
arr.take(2)
#returns [1,2], the first two elements of the array
#non-destructive

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# => [nil, "bear"]
#When none of the conditions in an if statement evaluates as true, the if statement itself returns nil. That's why we see nil as the first element in the returned array.

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# => [1, nil, nil]
#num > 1 evaluates as true, which means puts num is the last statement evaluated, which in turn, means that the block's return value is nil for those iterations.