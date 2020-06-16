class User
    attr_writer :name, :symbol

    def initialize(name, symbol)
        @name = name
        @symbol = symbol
    end

    def self.get_user_name(number)
        name = gets.chomp
        while name.empty?
            puts "Player #{number} please enter your name:"
            player = gets.chomp
        end
        name
    end

    def self.get_user_symbol(number)
        symbol = ""
        while symbol.empty?
            puts "#{number} select a valid (a-z) mark:"
            symbol = gets.chomp
            if  symbol =~ /[a-z]/
                if symbol.length > 1
                    symbol = ""
                else
                    return symbol
                end
            else
                symbol = ""
            end
        end
    end
end