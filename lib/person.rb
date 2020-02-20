class Person

  attr_accessor :bank_account, :happiness, :hygiene

  attr_reader :name

  def initialize(name)
    @name = name
    @bank_account = 25.00
    @happiness = 8
    @hygiene = 8
  end

  def happiness
    if @happiness > 10
      @happiness = 10
    elsif
      @happiness < 0
      @happiness = 0
    else
      @happiness
    end
  end

  def hygiene
    if @hygiene > 10
      @hygiene = 10
    elsif
      @hygiene < 0
      @hygiene = 0
    else
      @hygiene
    end
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(another_person)
    #increase our own happiness
    #increase happiness of the other person
    #increase happiness of another_person by 3.
    self.happiness += 3
    another_person.happiness += 3
    "Hi #{another_person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person,topic)
      if topic == "politics"
        person.happiness -=2
        self.happiness -= 2
        return "blah blah partisan blah lobbyist"
      end
      if topic == "weather"
        person.happiness +=1
        self.happiness += 1
        return "blah blah sun blah rain"
      end
      return "blah blah blah blah blah"
    end
  end
