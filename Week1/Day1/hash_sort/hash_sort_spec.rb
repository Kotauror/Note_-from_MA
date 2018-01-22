require './hash_sort.rb'


describe "hash_sort" do
  it 'sorts keys and values in hash' do
  expect(hash_sort({ b: 1, a: 2, g: 8})).to eq({ a: 1, b: 2, g: 8})
  expect(hash_sort({ e: 7, d: 6 })).to eq({ d: 6, e: 7})

  end
end
