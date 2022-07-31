class Person
  attr_reader :name
  attr_accessor :bank_account, :hygiene, :happiness

  # # setter for @happiness
  # def happiness
  #   @happiness = happiness.clamp(0, 10)
  # end
  
  # # setter for @hygiene
  # def hygiene
  #   @hygiene = hygiene.clamp(0, 10)
  # end


  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def clean? 
    if @hygiene > 7 
      true
    else false 
    end
  end

end