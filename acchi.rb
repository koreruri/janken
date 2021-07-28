def acchi(status)
  puts "あっち向いて〜"
  puts "0(上)1(下)2(左)3(右)"
  player_hand = gets.chomp
  
  if !(player_hand == "0" || player_hand == "1" || player_hand == "2" || player_hand == "3") then
    puts "無効な値です"
    return false
  end

  
  puts "ホイ!"

  program_hand = Random.rand(4)


  acchi = ["上", "下", "左", "右"]

  puts "-----------------------------------"
  puts "あなた：#{acchi[player_hand.to_i]}"
  puts "相手：#{acchi[program_hand]}"

  if !(player_hand.to_i == program_hand)
    return false
  else
    puts "あなたの#{status}です！"
    puts "-----------------------------------"
    puts "じゃんけん．．．"
    return true
  end
end

