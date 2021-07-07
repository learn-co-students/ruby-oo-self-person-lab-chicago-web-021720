class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @hygiene = 8
        @happiness = 8
    end

    def happiness=(new_level)
        @happiness = [[0, new_level].max, 10].min
    end

    def hygiene=(new_level)
        @hygiene = [[0, new_level].max, 10].min
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

    def call_friend(person)
        [person, self].each { |h| h.happiness += 3 }
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            [person, self].each { |h| h.happiness -= 2 }
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            [person, self].each { |h| h.happiness += 1 }
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end

end

# jeque = Person.new("Jeque")
# edgar = Person.new("Papi Glande")
# p jeque
# p edgar

# jeque.get_paid(169.69)
# p jeque

# jeque.take_bath
# p jeque

# jeque.work_out
# p jeque

# jeque.happiness = 4
# jeque.hygiene = 3
# p jeque

# jeque.happiness = 12
# jeque.hygiene = -5
# p jeque

# jeque.happiness = 3
# jeque.hygiene = 4
# p jeque

# jeque.start_conversation(edgar, "politics")
# puts "After talking about politix..."
# p jeque
# p edgar

# jeque.start_conversation(edgar, "weather")
# puts "After talking about the weather..."
# p jeque
# p edgar