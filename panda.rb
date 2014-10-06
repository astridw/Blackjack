#require 'pry'

class Panda

  #class methods
  #initialize
  #instance methods
  #private methods

  @@pandas = []
#self here is calling the class. the same as Panda.all
  def self.all
    @@pandas
  end

  def self.kill_all
    @@pandas.each do |panda|
      panda.kill
  end

    # @@pandas.each do |panda|
    #   panda = nil
    # end
    #   @@pandas = []


  def initialize (name)
    @name = name
    @alive = true
  #  binding pry
    #here self means that individual object that is being created new
    @@pandas << self
  end

  def kill
    @alive = false
  end
end

#track all pandas created
# be able to kill all pandas

panda_joe = Panda.new "Joe"
panda_wo = Panda.new "Wo"
panda_me = Panda.new "Me"

p Panda.all

puts "Killing the pandas"
Panda.kill_all

p Panda.all

puts "---------------"

p "Panda_wo: #{panda_wo.inspect}"

puts "---------------"
