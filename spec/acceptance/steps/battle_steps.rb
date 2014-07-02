# coding: utf-8

MONSTERS = [
    ['スライム', 2],
    ['はぐれメタル', 500]
]

step ":monster が現れた!" do |name|
  @defence = MONSTERS.assoc(name).last
end

step "勇者の攻撃!" do
  @defence -= 3
end

step "モンスターを倒した" do
  expect(@defence).to be <= 0
end

step "モンスターを倒せなかった" do
  expect(@defence).to be > 0
end