# your code goes here

class Person

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene, :friend
    
    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene    
    end

    def clean?(hygiene)
        @hygiene = hygiene
        
        if hygiene > 7
            else return false
        end
    end

    def happy?(happiness)
        @happiness = happiness
        
        if happiness > 7
            else return false
        end
    end

    def get_paid(salary)

        @bank_account += salary
        return "All about the benjamins."

    end

    def take_bath(hygiene)

        @hygiene=hygiene
        hygiene += 4
        return "Rub-a-dub just relaxing in the tub."
    end

    def work_out(happiness, hygiene)

        @happiness=happiness
        @hygiene=hygiene

        happiness += 2
        hygiene -= 3
        return "Another one bites the dust."

    end

    def call_friend(friend)
        @friend = friend

        self.happiness += 3
        friend.happiness += 3

        if self == "Stella" && friend == "Felix"
            return "Hi Felix! It's Stella. How are you?"
        end
    end

    def start_conversation(friend, topic)
        @friend = friend

        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
        elsif topic == "weather"
            self.happiness += 3
            friend.happiness += 3
        else return "blah blah blah blah blah"
        end

    end

end

# ACTION ITEMS
# min/max for happiness & hygiene
# cleanup clean? and happy? methods
# test the call_friend and start_conversation methods