def hash_sort(hash)
  sorted_hash_key = hash.sort_by { |key, value|
    key
  }

puts sorted_hash_key.to_s

  sorted_hash_value = hash.sort_by { |key, value|
    value
  }

puts sorted_hash_value.to_s


  sorted_hash_final = {}
  for i in 0...hash.length do
    sorted_hash_final[sorted_hash_key[i][0]] = sorted_hash_value[i][1]
  end

  return sorted_hash_final

end
