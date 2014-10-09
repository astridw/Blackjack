


class Card

  attr_accessor :suit
  attr_accessor :rank
  attr_accessor :value

  def initialize(suit,rank,value)
    @suit = suit
    @rank = rank
    @value = value
  end

end




print  "Hi what is your name?"
@name = gets.chomp

puts "Hi #{@name}, Welcome to BlackJack!\n
Lets get started!"
puts "------------------------------------------------------------------------"
puts "------------------------------------------------------------------------"
puts "Here are the rules\n

1. You win if you score higher than the dealer but don't go over 21\n
2. If you and the dealer tie, then that hand gets pushed until there is a winner \n
3. There is no crying in BlackJack! (except when you have to code the game)\n"
puts "------------------------------------------------------------------------"
puts "------------------------------------------------------------------------"

puts "Ready!"



    deck = []
  #diamonds
    deck << Card.new("Diamonds", "Ace", 11)
    deck << Card.new("Diamonds", "King", 10)
    deck << Card.new("Diamonds", "Queen", 10)
    deck << Card.new("Diamonds", "Jack", 10)
    deck << Card.new("Diamonds", "Ten", 10)
    deck << Card.new("Diamonds", "Nine", 9)
    deck << Card.new("Diamonds", "Eight", 8)
    deck << Card.new("Diamonds", "Seven", 7)
    deck << Card.new("Diamonds", "Six", 6)
    deck << Card.new("Diamonds", "Five", 5)
    deck << Card.new("Diamonds", "Four", 4)
    deck << Card.new("Diamonds", "Three", 3)
    deck << Card.new("Diamonds", "Two", 2)


  #hearts
    deck << Card.new("Hearts", "Ace", 11)
    deck << Card.new("Hearts", "King", 10)
    deck << Card.new("Hearts", "Queen", 10)
    deck << Card.new("Hearts", "Jack", 10)
    deck << Card.new("Hearts", "Ten", 10)
    deck << Card.new("Hearts", "Nine", 9)
    deck << Card.new("Hearts", "Eight", 8)
    deck << Card.new("Hearts", "Seven", 7)
    deck << Card.new("Hearts", "Six", 6)
    deck << Card.new("Hearts", "Five", 5)
    deck << Card.new("Hearts", "Four", 4)
    deck << Card.new("Hearts", "Three", 3)
    deck << Card.new("Hearts", "Two", 2)

    #spades
    deck << Card.new("Spades", "Ace", 11)
    deck << Card.new("Spades", "King", 10)
    deck << Card.new("Spades", "Queen", 10)
    deck << Card.new("Spades", "Jack", 10)
    deck << Card.new("Spades", "Ten", 10)
    deck << Card.new("Spades", "Nine", 9)
    deck << Card.new("Spades", "Eight", 8)
    deck << Card.new("Spades", "Seven", 7)
    deck << Card.new("Spades", "Six", 6)
    deck << Card.new("Spades", "Five", 5)
    deck << Card.new("Spades", "Four", 4)
    deck << Card.new("Spades", "Three", 3)
    deck << Card.new("Spades", "Two", 2)

    #clubs
    deck << Card.new("Clubs", "Ace", 11)
    deck << Card.new("Clubs", "King", 10)
    deck << Card.new("Clubs", "Queen", 10)
    deck << Card.new("Clubs", "Jack", 10)
    deck << Card.new("Clubs", "Ten", 10)
    deck << Card.new("Clubs", "Nine", 9)
    deck << Card.new("Clubs", "Eight", 8)
    deck << Card.new("Clubs", "Seven", 7)
    deck << Card.new("Clubs", "Six", 6)
    deck << Card.new("Clubs", "Five", 5)
    deck << Card.new("Clubs", "Four", 4)
    deck << Card.new("Clubs", "Three", 3)
    deck << Card.new("Clubs", "Two", 2)




  new_deck = deck.shuffle!





  dealer_hand = (new_deck.shift.value + new_deck.shift.value)
  player_hand = (new_deck.shift.value + new_deck.shift.value)




  cards_in_play = true



  # puts "Hit or stay? (h/s) or end (exit)"
  # answer = gets.chomp
# if answer  == "h"
#     player_hand += new_deck.shift.value
#     puts "#{@name} has #{player_hand}"
#
# elsif answer == "s"
#     dealer_hand += new_deck.shift.value until dealer_hand >= 16
#       puts "Dealer has #{dealer_hand}"
#       exit
# elsif answer == "exit"
#     exit
#   end
# end
# end
#
#
#
# if player_hand == 21 && dealer_hand == 21
#   puts "You both tied with 21"
# elsif dealer_hand == 21
#   puts "Dealer Won. You Lost with #{player_hand}"
# elsif player_hand == 21
#   puts "You Won with #{player_hand}!"
# elsif player_hand > 21
#   puts "You Lost with #{player_hand}"
# elsif dealer_hand > 21
#   puts "Dealer over - YOU WON"
# elsif dealer_hand >= player_hand
#   puts "Dealer Won"
# elsif player_hand >= dealer_hand
#   puts "You Won with #{player_hand}"
# end



# # my first atttempt
#
while cards_in_play
  puts "The dealer has #{dealer_hand}"
  puts "#{@name} has #{player_hand}"

until dealer_hand >= 21 || player_hand >= 21 do
  puts "Hit or stay? (h/s)"
  answer = gets.chomp
    if answer == "h" && player_hand < 21
        player_hand += new_deck.shift.value
        dealer_hand += new_deck.shift.value unless
        dealer_hand > 16
        puts "The dealer has #{dealer_hand}"
        puts "#{@name} has #{player_hand}"
    elsif answer == "h" && player_hand > dealer_hand && dealer_hand > 16
          puts "#{@name} wins you have #{player_hand}"
    elsif answer == "h" && player_hand == 21
        puts "You Won, BlackJack! your cards add up to #{player_hand}!"
        cards_in_play = false
    elsif answer == "h" && player_hand > 21
        puts "You Went Over 21, You Lose, your cards add up to #{player_hand}"
        cards_in_play = false
     elsif answer == "h" &&  player_hand == 21 && dealer_hand == 21
        puts "Its a Draw! Push!"
        cards_in_play = false
    elsif answer == "s" && dealer_hand < 16
        dealer_hand += new_deck.shift.value
    elsif dealer_hand >= player_hand
        puts "Sorry You Lose"
        cards_in_play = false
    elsif answer == "s" && player_hand > dealer_hand
        puts "you win"
    elsif   dealer >21
        puts "Dealer Went Over 21 - You Win!"
        cards_in_play = false
    elsif answer == "exit"
      exit
    end
  end
end


    # if player_hand > 21
    #    cards_in_play = false
    # end
    #
#
#
#
#
#
#   while cards_in_play
#     if player_hand == 21 && dealer_hand == 21
#       puts "Its a Draw! Push!"
#       cards_in_play = false
#     elsif dealer_hand == 21
#       puts "You Lose Dealer has #{dealer_hand}"
#       cards_in_play = false
#     elsif player_hand == 21
#       puts "You Won, BlackJack! your cards add up to #{player_hand}!"
#       cards_in_play = false
#     # elsif player_hand > 21
#     #   puts "You Went Over 21, You Lose, your cards add up to #{player_hand}"
#     #   cards_in_play = false
#     elsif dealer_hand > 21
#       puts "Dealer Went Over 21 - You Win!"
#       cards_in_play = false
#     elsif dealer_hand >= player_hand
#       puts "Sorry You Lose"
#       cards_in_play = false
#     elsif player_hand >= dealer_hand
#       puts "You Won, your cards add up to #{player_hand}"
#       cards_in_play = false
#     end
#   end
#
#
#     if cards_in_play == false
#       puts "#{@name}, want to play again? (y/n)"
#       answer = gets.chomp
#         if answer == "y"
#           play = Play.new
#         else
#           continue_in_play = false
#             puts "Game over#{@name}, Thanks for playing!"
#           end
#         end
# end


#
#
#
# while cards_in_play
#   puts "The dealer has #{dealer_hand}"
#   puts "#{@name} has #{player_hand}"
#   puts "Hit or stay? (h/s)"
#   answer = gets.chomp
#     if answer == "h"
#         player_hand += new_deck.shift.value
#     else
#         cards_in_play = false
#     end
#     if player_hand > 21
#        cards_in_play = false
#     end
#     end
#
#     while dealer_hand <= 16
#         dealer_hand += new_deck.shift.value
#     end
