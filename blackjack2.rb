
##there must be at least 3 classes, hand, card, game

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




class Deck
deck = []

#make 52 cards
##diamonds
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





cards = deck.shuffle

#your_cards = cards.shift





#I need to pull 2 cards first, then one card each time

your_cards = cards.shift(2) do |card|
end

puts ""
puts "your cards are #{your_cards}"
puts ""

end

class Hand
end




class Game
  new_game = Deck.new
end
