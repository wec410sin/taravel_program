puts <<~TEXT
       旅行プランを選択して下さい。

       1. 沖縄旅行(10000円)
       2. 北海道旅行(20000円)
       3. 九州旅行(15000円)

     TEXT

plans = [
{name: "沖縄旅行", price: 10000},
{name: "北海道旅行", price: 20000},
{name: "九州旅行", price: 15000},
]

print "プランの番号を選択 > "
select_plan_num = gets.to_i
chosen_plan = plans[select_plan_num -1]

puts "#{chosen_plan[:name]}ですね。"
puts "何名で予約されますか？"
puts "人数を入力 > "
quantity_of_plan = gets.to_i

total_price = chosen_plan[:price] * quantity_of_plan

puts "#{quantity_of_plan}名ですね。"
puts "合計金額は#{total_price}円になります。"
