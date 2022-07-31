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

  def get_paid amount
    bank_account += amount
    "all about the benjamins"
  end

  def take_bath
  end

  def work_out
  end

  def call_friend
  end

  def start_conversation (person, topic)
  end
  
end