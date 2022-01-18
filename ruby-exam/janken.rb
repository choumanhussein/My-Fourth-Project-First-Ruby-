system ('clear')
class Player
  def hand
    # Display a text asking the player to choose a rock-paper-scissors move.

    # If "input_hand" is one of "0, 1, 2", the iteration process is terminated, otherwise (including alphabetic characters), the iteration process is continued.
  #  if (input_hand != 0 )|| (input_hand !=1 )|| (input_hand!=2)
    while true
      puts "Please enter a number."
      puts "0: Rock, 1: Scissors, 2: Paperss"
      # Assign the player's input value to the variable 'input_hand'.
      #  Hint: look into the gets method.
      input_hand=gets.chomp
      # if "input_hand" is one of "0, 1, 2"
      if input_hand == "0" || input_hand == "1" || input_hand == "2"
      # Hint: Look into the include? method.
      return input_hand.to_i
        # Return "input_hand" as is.
        # Hint: If you want to return a return value and end the iteration process, use 'return'.
      # else Otherwise.
    else
      puts "Enter a number between 0-2"
    end
  end
end
end
 # Write the logic for the other party to randomly generate a value of "0~2".
class Enemy
  def hand
    # Get a random value for Goo, Choki or Par.
  rand(3)
  end
end
# Write a logic to make the player (you) input "0~2" and the enemy randomly generate "0~2" and play rock-paper-scissors and output the result on the console.
class Janken
  def pon(player_hand, enemy_hand)
    # Substitute ["goo", "choki", "par"] for the variable "janken".
    janken = ["Rock", "Scissors", "Paper"]
    #"Your opponent's move is #{opponent's move}" The output is
    puts "Your opponent hand is #{janken[enemy_hand]}"
    #Create logic to play rock-paper-scissors from the return value of the Player class and the return value of the Enemy class.
     #If the return value of the Player class (player_hand) and the return value of the Enemy class (enemy_hand) are the same
     #puts enemy_hand.to_i
     #puts player_hand.to_i
     if player_hand == enemy_hand
      # "Aiko" is output.
      puts "It' a tie !"
      return false
        #player = Player.new
        #enemy = Enemy.new
        #janken = Janken.new
        #janken.pon(player.hand, enemy.hand)
      # Returns "true" to run rock-paper-scissors repeatedly.
      # Tip: You can use "return" to return a return value. However, in Ruby, it is common to omit the "return" when returning a return value.
    elsif (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)

      puts "You have won."
       return false #to terminate the rock-paper-scissors game.
    else
      puts "You have lost."
       return false #to terminate the rock-paper-scissors game.
  end
end
end
# Write the logic to execute the rock-paper-scissors game.
class GameStart
  #  By using self, you can call the jankenpon method using the class name without instantiating GameStart.
  def self.jankenpon
    #Substitute the instantiated Player for the variable "player".
    player = Player.new
    # Assign an instantiation of Enemy to the variable "enemy".
    enemy = Enemy.new
    # Assign an instantiation of Janken to the variable "janken".
    janken = Janken.new
    janken.pon(player.hand, enemy.hand)

    # Let's assign "true" to the variable "next_game".
    # If "next_game" is "false", the iteration process is terminated; if it is "true", the iteration process is continued.
    puts "Do you Want to replay (Y/N) ?"
    answer=gets.chomp
    system ('clear')
      while (answer == "Y")
       #Substitute the value (return value) returned by executing rock-paper-scissors into the variable "next_game".
      #janken.pon(player.hand, enemy.hand)」We are running rock-paper-scissors in
    next_game = janken.pon(player.hand, enemy.hand)
    puts "Do you Want to replay (Y/N)?"
    answer=gets.chomp
    system ('clear')
  end
  puts "existing Game"
  for i in -1..190000 do
    print "...\r"
    STDOUT.flush
  end
  sleep(3)
  print "\n"
end
end
GameStart.jankenpon
# Call the jankenpon method with the class name.
