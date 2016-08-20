begin #可以美化輸出
  puts "|===============================================|" 
  puts "|Welcome to a Very Simplified Calculator!       |"
  puts "|===============================================|"

begin
    puts "please enter a number : "
    user_input1 = gets.chomp
end while !(user_input1.to_i.to_s==user_input1)

begin
    puts "please enter a calculation (+,-,*,/) : "
    calculation_input = gets.chomp
end while !["+", "-", "*", "/"].include?(calculation_input)

begin
    puts "please enter the second number : "
    user_input2 = gets.chomp
end while !(user_input2.to_i.to_s==user_input2)
  
case calculation_input
when "+"
  sum = user_input1.to_i + user_input2.to_i
  puts "sum is #{sum}!"
when "-"
  subtraction = user_input1.to_i - user_input2.to_i
  puts "subtraction is #{subtraction}!"
when "*"
  multiply = user_input1.to_i * user_input2.to_i
  puts "multiplication is #{multiply}!"
when "/"
  division = user_input1.to_f / user_input2.to_f
  puts "division is #{division}!"
end

  #問使用者是否還要再玩 
  begin
    puts "Calculate Again?: Y / N"
    continue = gets.chomp.upcase
  end while !["Y", "N"].include?(continue)

end while continue == "Y"
# 若使用者回答 "N"，印出離開的訊息，不是就回到迴圈的上層繼續玩
puts "Good Bye! Thanks for playing!"