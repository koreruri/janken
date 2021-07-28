require "./janken"
require "./acchi"

next_game = true
status = "initial"

puts "じゃんけん．．．"

#next_gameがtrueの間はじゃんけんを続ける
#falseになったらあっちむいてホイを続ける
#trueに戻ったらジャンケンに戻る

while next_game do
  janken_result = janken(status)
  next_game = janken_result[0]
  status = janken_result[1]
  if next_game == false then
    while next_game == false do
      next_game = acchi(status)
    end
    status ="initial"
  end
end
