# your code goes here

class Person

    attr_reader :name 
    attr_accessor :bank_account, :friend, :hygiene, :happiness
    
    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    # def hygiene=(hygiene)
    #     @hygiene = hygiene
        
    #     if hygiene < 0
    #         hygiene = 0
    #     elsif hygiene > 10
    #         hygiene = 10
    #     else
    #         hygiene
    #     end
    # end

    def clean?
        
        if self.hygiene > 7 
            return true
        else 
            return false
        end
    end

    def happy?
        
        if self.happiness > 7 
            return true
        else 
            return false
        end
    end

    def get_paid(salary)

        @bank_account += salary
        return "all about the benjamins"

    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"

    end

    def call_friend(friend)
        @friend = friend

        self.happiness += 3
        friend.happiness += 3

            return "Hi #{friend.name}! It's #{self.name}. How are you?"

    end

    def start_conversation(friend, topic)
        @friend = friend

        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 3
            friend.happiness += 3
            return "blah blah sun blah rain"
        else return "blah blah blah blah blah"
        end

    end

end

# ACTION ITEMS
# min/max for happiness & hygiene
# cleanup clean? and happy? methods
# test the call_friend and start_conversation methods䈀