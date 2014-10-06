require 'pry'

#dealer hits if it is less than 16
#you can see one of the dealers cards while you are playing
#dealer
#player
full_deck = []

class Game
  def initialize(game)
    @game = game
  end

#will need to determine who wins (dealer or player)
end

#game = Game.new


class Log
  #will log each game
end



class Deck
  #need 52 cards in my deck

  #need to show suite, and face
  attr_accessor :hearts
  attr_accessor :spades
  attr_accessor :clubs
  attr_accessor :diamonds


  #new deck every game
  #deck must be shuffled every game
end


class Suite
  def initialize(suite, value)
    @suite = suite
    @value = value
  end
  #each card needs to have a value
end


h = Suite.new:hearts, ["1","2","3","4", "5", "6", "7", "8","9", "10", "J","Q","K","A"]
s = Suite.new:spades, ["1","2","3","4", "5", "6", "7", "8","9", "10", "J","Q","K","A"]
c = Suite.new:clubs, ["1","2","3","4", "5", "6", "7", "8","9", "10", "J","Q","K","A"]
d = Suite.new:diamonds, ["1","2","3","4", "5", "6", "7", "8","9", "10", "J","Q","K","A"]



deck = Deck.new


deck.hearts = h
deck.spades = s
deck.clubs = c
deck.diamonds = d

full_deck << h
full_deck << s
full_deck << c
full_deck << d

p full_deck

class Hand
  # this is a two hand game
end

class Card
  def name

  end
end
