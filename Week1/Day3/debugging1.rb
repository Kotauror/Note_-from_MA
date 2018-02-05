def encode(plaintext, key)
  p ('a'...'z').to_a
  cypher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  p cypher
  cyphertext_chars = plaintext.chars.map do |char|
    p (65 + cypher.find_index(char)).chr
  end
  p cyphertext_chars.join
end

def decode(cyphertext, key)
  cypher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  p cypher
  plaintext_chars = cyphertext.chars.map do |char|
    cypher[char.ord - 65]
  end
  plaintext_chars.join
end

encode("theswiftfoxjumpedoverthelazydog", "secretkey")

puts "****"
decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
actual = encode("theswiftfoxjumpedoverthelazydog", "secretkey")
expected = "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
puts actual == expected

# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"
