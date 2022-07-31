require 'pry'

class Person
  attr_reader :name
  attr_writer :hygiene, :happiness
  attr_accessor :bank_account


  # getter for @happiness -- limit from 0 to 10
  def happiness
    @happiness.clamp(0,10)
  end
  
  # getter for @hygiene -- limit from 0 to 10
  def hygiene
    @hygiene.clamp(0,10)
  end


  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end


  def happy? 
    if happiness > 7 
      true
    else false 
    end
  end

  def clean? 
    if hygiene > 7 
      true
    else false 
    end
  end

  def get_paid(amount)
    self.bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    '♪ another one bites the dust ♫'
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation (friend, topic)
    if topic == 'politics'
      friend.happiness -= 2
      self.happiness -= 2
      'blah blah partisan blah lobbyist'
    elsif topic == 'weather'
      friend.happiness += 1
      self.happiness += 1
      'blah blah sun blah rain'
    else 
      'blah blah blah blah blah'
    end
  end
  
end