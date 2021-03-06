# homework1
# 剪刀石頭布
# 先要使用者輸入剪刀石頭或布的其中一個選項
# 接下來讓電腦亂數選出一個選項
# 比較兩個選項，決定誰贏誰輸
# 輸出結果
# 問使用者是否再玩一次

begin #可以美化輸出
  puts '|===============================================|'
  puts '|       Welcome to Rock Paper Scissors!!!       |'
  puts '|===============================================|'

  begin
    puts 'please choose one of the following: R / P / S'
    user_input = gets.chomp.upcase
  end while !["R", "P", "S"].include?(user_input) 

  #接下來請把剩下的部份寫出來...

computer_arr = ["R", "P", "S"]
computer_input = computer_arr.sample

def tied_status(input)
	type = {
			"R" => "Rock",
			"P" => "Paper",
			"S" => "Scissors"
			}
	return type[input]
end

if user_input == computer_input
	print "both of you chose " 
	print tied_status(user_input)
	puts", you got a tie!"
elsif user_input == "R" && computer_input == "P"
	puts "you chose Rock and computer chose Paper, you lost!"
elsif user_input == "R" && computer_input == "S"
	puts "you chose Rock and computer chose Scissors, you won!"
elsif user_input == "P" && computer_input == "R"
	puts "you chose Paper and computer chose Rock, you won!"
elsif user_input == "P" && computer_input == "S"
	puts "you chose Paper and computer chose Scissors, you lost!"
elsif user_input == "S" && computer_input == "R"
	puts "you chose Scissors and computer chose Rock, you lost!"
elsif user_input == "S" && computer_input == "P"
	puts "you chose Scissors and computer chose Paper, you won!"
end
#問使用者是否還要再玩 
  begin
    puts "Play Again?: Y / N"
    continue = gets.chomp.upcase
  end while !["Y", "N"].include?(continue)

end while continue == "Y"
# 若使用者回答 "N"，印出離開的訊息，不是就回到迴圈的上層繼續玩
puts '|===============================================|'
puts '|        Good Bye! Thanks for playing!          |'
puts '|===============================================|'
