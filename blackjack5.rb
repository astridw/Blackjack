class Hand

  attr_reader :cards

  def initialize
    @cards = []
  end

  def new_card(card)
    @cards << card
  end

  def value
    total = 0
    @cards.each do |card|
      total += card.value
    end
    total

  end
end

class Card
  attr_reader :suit, :value, :facecard

  def initialize(suit, value)
    @suit = suit
    @value = value
    @facecard = facecard


    if ["J", "Q", "K"].include? value
      @value = 10
    elsif value == "A"
      @value = 11
    else
      @value = value
    end

  end

  def to_s
    "#{@value} of #{@suit}"
  end
end


class Deck

  def initialize

    @cards = []

    [:hearts, :diamonds, :spades, :clubs].each do |suit|
      (2..10).each do |value|
      @cards << Card.new(suit, value)
    end
     ["J", "Q", "K", "A"].each do |facecard|
       @cards << Card.new(suit, facecard)
      end
    end
    @cards.shuffle!
  end

  def deal
    @cards.shift
  end
end

class Game

  attr_reader :dealer_hand, :player_hand, :deck

  def setup
    @dealer_hand = Hand.new
    @player_hand = Hand.new
    @deck = Deck.new

    2.times do
      player_hand.new_card(deck.deal)
      dealer_hand.new_card(deck.deal)
    end
  end





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
      end

      if player_hand.value > 21
        cards_in_play = false
      end


    end

    while dealer_hand.value <= 16
      dealer_hand.new_card(deck.deal)
    end
  end

  def determine_winner
    puts "------------------------------------------------------------------------"
    puts "------------------------------------------------------------------------"
    puts "#{@name} has #{player_hand.cards.join(" and ")}  #{player_hand.value}"
    puts "Dealer has #{dealer_hand.cards.join(" and ")} #{dealer_hand.value}"
    if player_hand.value == 21
        puts "Blackjack, #{@name} is a winner !!! You got #{player_hand.value}!"
    elsif dealer_hand.value == 21
      puts "#{@name} lost!!! The dealer has #{dealer_hand.value}Blackjack!!!"
    elsif player_hand.value > dealer_hand.value && player_hand.value <= 21
      puts "#{@name} Won, your cards add up to #{player_hand.value}!"
    elsif dealer_hand.value > player_hand.value && player_hand.value <= 21 && dealer_hand.value <=21
        puts "#{@name} Won, your cards add up to #{player_hand.value}!"
    elsif player_hand.value == dealer_hand.value
      unless player_hand.value >21 && dealer_hand.value >21
      puts "Its a Draw! Push!"
    elsif dealer_hand.value > 21
      puts "Dealer Went Over 21 - You Win!"
    elsif player_hand.value > 21
      puts "You Went Over 21, You Lose, your cards add up to #{player_hand.value}"
    end
  end

  def play

    setup
    run_loop
    determine_winner
    puts "#{@name}, would you like to play again? (y/n)"
    command = gets.chomp
      if command == "y"
      Game.new.play
    else
      puts "Thanks for playing #{@name}!"
    end

  end
end


Game.new.play
