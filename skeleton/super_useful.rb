# PHASE 2
# Integer("string")
# class IntegerConversionError < ArgumentError; end

def convert_to_int(str)
    Integer(str)
rescue ArgumentError => err
    puts "Can't convert string to Integer #{err}"
ensure
  num ||= 0
end

# p convert_to_int("30")
class FruitError < StandardError; end
# PHASE 3
FRUITS = ["apple", "banana", "orange"] 

class CoffeeError < StandardError
  def message
    "I can't have any more caffeine. I am about to have a heart attack!."
  end
end

class NotAFruitError < StandardError
  def message
    "That doesn't look like a fruit. You tricked me. * runs away *"
  end
end

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == "coffee" 
    raise CoffeeError
  else
    raise NotAFruitError
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"
  begin
    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit)
  rescue CoffeeError => e
    puts e.message
    retry
  rescue NotAFruitError => e
    puts e.message
  end
end  

# reaction("apple")
feed_me_a_fruit

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    
    if @yrs_known < 5
      raise BestFriendError.new("We have not been homies for too long dude..")
    end

    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
    
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


