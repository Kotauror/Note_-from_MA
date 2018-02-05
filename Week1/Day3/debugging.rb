def say_hello(name)
  "hello #(name)"
end


# RSPEC SYNTAX
expected = "hello eddie"
actual = say_hello('eddie')

p actual == expected
