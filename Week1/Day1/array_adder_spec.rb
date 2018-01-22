# Use test-driven development to write a method that:
# * Takes an array of numbers.
# * Returns an array of the same numbers, except each number has had 1 added to it.
# * e.g.
#   * Input: [1, 2, 3, 4, 5]
#   * Return: [2, 3, 4, 5, 6]
# * Make sure to create a separate project directory for your code.
require './array_adder'

describe 'adder' do
  it 'adds 1 to each element in the array' do
    expect(array_adder([1,2,3,4,5])).to eq [2,3,4,5,6]
    expect(array_adder([3,4,5,6,7])).to eq [4,5,6,7,8]
  end

  it 'produces an error message if at least one of the elements is not an integer' do
    expect(array_adder(["Hello!"])).to eq "Error! You did not pass an array!"
    expect(array_adder(["My name is Laura!"])).to eq "Error! You did not pass an array!"
    expect(array_adder(["My name is Justyna!"])).to eq "Error! You did not pass an array!"
  end
end
