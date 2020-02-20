#Partner Work 
#Mike Pottebaum
#Sam Escobar 

class Person 
attr_reader :name, :happiness, :hygiene
attr_accessor :bank_account
    def initialize(name, bank_account=25)
        @name = name 
        @bank_account = bank_account
        @happiness = 8
        @hygiene = 8
    end 

    def happiness=(points)
        if points > 10
            @happiness = 10
        elsif points < 0
            @happiness = 0
        else
            @happiness = points
        end
    end

    def hygiene=(points)
        if points > 10
            @hygiene = 10
        elsif points < 0
            @hygiene = 0
        else
            @hygiene = points
        end
    end
    
    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end

    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end
    end

    def get_paid(salary) 
        @bank_account += salary
        "all about the benjamins"
    end 

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"

    end

    def call_friend(person)
        self.happiness += 3
        person.happiness += 3
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end 