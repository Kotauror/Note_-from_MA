# Challenge Set 1: Arrays
# Transform the following first arrays into the second entities:
#
# 1. [1, 2, 3, 4, 5] => [2, 3, 4, 5, 6]
# 2. [1, 3, 5, 4, 2] => [1, 2, 3, 4, 5]
# 3. [1, 3, 5, 4, 2] => [2, 3, 4, 5, 6]
# 4. [1, 2, 3, 4, 5] => 15 (the sum)
# 5. [1, 2, 3, 4, 5] => 30 (twice the sum)

#1
def each_plus_one(array)
  array.map { |number|
    number += 1
  }
end

#2
def array_sort(array)
  array.sort
end

#3
def sort_and_add(array)
  array.sort.map { |number|
    number += 1
  }
end

#4
def sum(array)
  array.inject(:+)
end

#5
def sum_twice(array)
  array.inject(:+)*2
end


# Challenge Set 2: Hashes
# Transform the following first hashes into the second entities:
#
# 1. { a: 1, b: 2 } => { a: 2, b: 3 }
# 2. { a: 2, b: 5, c: 1 } => { a: 1, b: 2, c: 5 }
# 3. { a: 2, b: 5, c: 1 } => [1, 2, 5]
# 4. { a: 1, b: 2, c: 3 } => { "1"=>"a", "2"=>"b", "3"=>"c" }

#1
def add_one_to_value(hash)
  hash.keys.map {|key|
    hash[key] += 1
  }
end

#2
# 2. { a: 2, b: 5, c: 1 } => { a: 1, b: 2, c: 5 }

def sort_hash(hash)

  sorted_hash_key = hash.sort_by { |key, value|
    key
  }

  sorted_hash_value = hash.sort_by { |key, value|
    value
  }

  sorted_hash_final = {}
  for i in 0...hash.length do
    sorted_hash_final[sorted_hash_key[i][0]] = sorted_hash_value[i][1]
  end

end

#3
# 3. { a: 2, b: 5, c: 1 } => [1, 2, 5]

def sort_values(hash)
  array_of_values = []
  hash.each_pair{|key, value|
    array_of_values.push(value)
  }
  array_of_values = array_of_values.sort
end

# 4
# 4. { a: 1, b: 2, c: 3 } => { "1"=>"a", "2"=>"b", "3"=>"c" }

def invert(hash)
  hash.each_pair.map {|k,v|
    hash[k] = v.to_s
  }
  hash_inverted = hash.invert
  hash_inverted.each_pair.map {|k,v|
    hash_inverted[k] = v.to_s
  }
  puts hash_inverted
end
