# your code goes here
class Person
attr_accessor :happiness, :bank_account, :hygiene
attr_reader :name

    def initialize(name)
    @name = name
    @bank_account = 25 
    @happiness = 8
    @hygiene = 8  
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
        # @hygiene +=4
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -=3
        self.happiness +=2
        "♪ another one bites the dust ♫"
    end

    def call_friend(person) 
    self.happiness +=3
    person.happiness +=3
    "Hi #{person.name}! It's #{@name}. How are you?"
    end 

    def start_conversation(person,topic) 
    if topic == "politics" 
        self.happiness -=2 
        person.happiness -=2
        "blah blah partisan blah lobbyist"
    elsif topic == "weather"
        self.happiness +=1
        person.happiness +=1
        "blah blah sun blah rain"

    else 
        "blah blah blah blah blah"
        end
    end 

    def happiness=(new_level)
        if new_level >10 
            @happiness = 10
            elsif new_level <0
                @happiness = 0
            else 
                @happiness = new_level
            end
    end        
    
    def hygiene=(new_level)
        if new_level >10 
            @hygiene = 10
            elsif new_level <0
                @hygiene = 0
            else 
                @hygiene = new_level
            end
        end
end
jack = Person.new("jack")
joe = Person.new("joe")
# p joe 
# p joe.clean?
# p joe.happy?
# s = joe.get_paid(10)
# p joe
# p s 
s = joe.take_bath
# p joe
# p s 
# p joe.work_out
# p joe 

p jack.call_friend(joe)
p jack
p joe 
# p joe.start_conversation(jack, "politics")
# p joe.start_conversation(jack, "weather")
# p joe.start_conversation(jack, "sports")
# p joe
# p jack
# joe.happiness = 15 
# joe.hygiene = -2
p joe 