def janken(status)
  puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
  player_hand = gets.chomp
  
  if player_hand == "3" then
    puts "ゲームを終了します"
    return nil, nil
  elsif !(player_hand == "0" || player_hand == "1" || player_hand == "2") then
    puts "無効な値です"
    return true, "initial"
  end

  if status == "あいこ" then
    puts "ショ！"
  else
    puts "ホイ!"
  end

  program_hand = Random.rand(3)


  janken = ["グー", "チョキ", "パー"]

  puts "-----------------------------------"
  puts "あなた：#{janken[player_hand.to_i]}を出しました"
  puts "相手：#{janken[program_hand]}を出しました"

  if player_hand.to_i == program_hand
    puts "あいこで..."
    return true, "あいこ"
  elsif (player_hand == "0" && program_hand == 1) || (player_hand == "1" && program_hand == 2) || (player_hand == "2" && program_hand == 0)
    return false, "勝ち"
  else
    return false, "負け"
  end
end

