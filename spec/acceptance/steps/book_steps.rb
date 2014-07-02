# encoding: utf-8
# language: ja


#前提 本Aを作成
#かつ 本Bを作成
#もし 本Aと本Bの合計を足したら
#ならば 300円になっている
step '本Aを作成' do
  Book.create(title: 'A', price: 150)
end

step '本Bを作成' do
  Book.create(title: 'B', price: 150)
end

step '本Cを作成' do
  Book.create(title: 'B', price: 150)
end

step '合計を算出したら' do
  @sum = Book.sum(:price)
end

step ':price 円引きになったら' do |price|
  @sum = @sum - price.to_i
end

step ':sum 円になっている' do |sum|
  expect(@sum).to be == sum.to_i
end