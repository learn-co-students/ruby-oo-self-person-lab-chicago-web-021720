# your code goes here
class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(points)
        @happiness = set_points_within_range(@happiness, points)
    end

    def hygiene=(points)
        @hygiene = set_points_within_range(@hygiene, points)
    end

    def happy?
        greater_than_seven?(@happiness)
    end

    def clean?
        greater_than_seven?(@hygiene)
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
        return "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        person.happiness += 3
        self.happiness += 3
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            word_1 = "partisan"
            word_2 = "lobbyist"
            person.happiness -= 2
            self.happiness -= 2
        elsif topic == "weather"
            word_1 = "sun"
            word_2 = "rain"
            person.happiness += 1
            self.happiness += 1
        else
            word_1 = "blah"
            word_2 = "blah"
        end
        "blah blah #{word_1} blah #{word_2}"
    end

    private

    def set_points_within_range(attribute, points)
        if points > 10
            attribute = 10
        elsif points < 0
            attribute = 0
        else
            attribute = points
        end
        attribute
    end

    def greater_than_seven?(attribute)
        if attribute > 7
            return true
        else
            return false
        end
    end
end