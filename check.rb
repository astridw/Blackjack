def run_loop
    print  "Hi what is your name?"
    @name = gets.chomp
    cards_in_play = true
    puts "Hi #{@name}, Welcome to BlackJack!\n
    Lets get started!"
    puts "------------------------------------------------------------------------"
    puts "------------------------------------------------------------------------"
    puts "Here are the rules\n

    1. You win if you score higher than the dealer but don't go over 21\n
    2. If you and the dealer tie, then that hand gets pushed until there is a winner \n
    3. Aces are ALWAYS worth 11\n
    4. There is no crying in BlackJack! (except when you have to code the game)\n"
    puts "------------------------------------------------------------------------"
    puts "------------------------------------------------------------------------"

    puts "Ready!"

    while cards_in_play
      puts "Dealer has #{dealer_hand.cards.first}"
      puts "#{@name} has #{player_hand.cards.join(" , ")}"
      puts "Hit or stay? (h/s)"
      command = gets.chomp
      if command == "h"
        player_hand.new_card(deck.deal)
      else
        cards_in_play = false
      if player_hand.value > 21
        cards_in_play = false

    while dealer_hand.value <= 16
      dealer_hand.new_card(deck.deal)
    end
  end
end
