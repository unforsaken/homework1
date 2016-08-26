class Person
  attr_accessor :name
  def initialize (name)
    @name = name
  end
end

class Player < Person

  def user_play
    user_input = ''
    begin
      puts 'please choose one of the following: R / P / S'
      user_input = gets.chomp.upcase
    end while !["R", "P", "S"].include?(user_input) 
    user_input
  end
end

class Computer < Person
  def comp_play
    computer_arr = ["R", "P", "S"]
    computer_input = computer_arr.sample
  end
end

class Fight < Person

  def tied_status(input)
    type = {
      "R" => "Rock",
      "P" => "Paper",
      "S" => "Scissors"
      }
    return type[input]
  end

  def result (user_input,computer_input,name)    

    @U = tied_status(user_input)
    @C = tied_status(computer_input)

    if user_input == computer_input
        print "both of you chose #{@U}, you got a tie!" 
    elsif user_input == "R" && computer_input == "P" 
        puts "#{name} chose #{@U} and computer chose #{@C}, #{name} lost!"
    elsif user_input == "R" && computer_input == "S"
        puts "#{name} chose #{@U} and computer chose #{@C}, #{name} won!"
    elsif user_input == "P" && computer_input == "R"
        puts "#{name} chose #{@U} and computer chose #{@C}, #{name} won!"
    elsif user_input == "P" && computer_input == "S"
        puts "#{name} chose #{@U} and computer chose #{@C}, #{name} lost!"
    elsif user_input == "S" && computer_input == "R"
        puts "#{name} chose #{@U} and computer chose #{@C}, #{name} lost!"
    elsif user_input == "S" && computer_input == "P"
        puts "#{name} chose #{@U} and computer chose #{@C}, #{name} won!"
    end
    

  end
end

begin
puts '|===============================================|'
puts '|      Welcome to Rock Paper & Scissors!!!      |'
puts '|===============================================|'
puts "Whats your name?"
user_name = gets.chomp
user_name1 = Player.new(user_name)
user_result = user_name1.user_play
computer_player = Computer.new (computer_player)
comp_result = computer_player.comp_play
final_result = Fight.new(final_result)
final_result.result(user_result,comp_result,user_name)

begin
puts "Play Again?: Y / N"
continue = gets.chomp.upcase
end while !["Y", "N"].include?(continue)
end while continue == "Y"
puts "Good Bye! Thanks for playing!"