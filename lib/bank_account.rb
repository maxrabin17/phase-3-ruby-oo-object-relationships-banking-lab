class BankAccount
    attr_reader :name
    attr_accessor :balance, :status

    def initialize(name)
        @name = name
        @balance = 1000
        @status = "open"
    end

    def deposit(money)
        self.balance += money
    end

    def display_balance
        "Your balance is $#{balance}."
    end

    def valid?
        # if self.status == "open" && self.balance > 0
        #     true
        # else
        #     false
        # end
        self.balance > 0 && self.status == "open"
    end

    def close_account
        self.status = "closed"
    end
end
