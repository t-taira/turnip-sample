# encoding: utf-8
# language: ja
step '本Aを作成した' do
  Book.create!(title: 'A', price: 200)
end

step '本Bを作成した' do
  Book.create!(title: 'B', price: 100)
end

step '本Cを作成した' do
  Book.create!(title: 'C', price: 150)
end

step '合計を算出する' do
  @sum = Book.sum(:price)
end

step ':price 円引きする' do |price|
  @sum = @sum - price.to_i
end

step ':sum 円になっている' do |sum|
  expect(@sum).to be == sum.to_i
end