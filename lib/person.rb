# your code goes here
require 'pry'
class Person
    attr_reader :name
    attr_accessor :bank_account, :hygiene

    def initialize(name)
        @name=name
        @bank_account=25
        @happiness=8
        @hygiene=8
    end

    def happiness=(value)
        @happiness=
        if value>10
            10
        elsif value<0
            0
        else
            value
        end
    end
    def happiness
       @happiness
    end

    def hygiene=(value)
        @hygiene=
        if value>10
            10
        elsif value<0
            0
        else
            value
        end
    end
    def hygiene
        @hygiene
    end

    def happy?
        if self.happiness>7
            true
        else false
        end
    end

    def clean?
        if self.hygiene>7
            true
        else false
        end
    end

    def get_paid(amount)
        @bank_account = bank_account + amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene=(hygiene+4)
        #self.hygiene+=4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene=(hygiene-3)
        self.happiness=(happiness+2)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness+=3
        friend.happiness+=3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic=="politics"
            self.happiness-=2
            friend.happiness-=2
            "blah blah partisan blah lobbyist"
        elsif topic=="weather"
            self.happiness+=1
            friend.happiness+=1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end