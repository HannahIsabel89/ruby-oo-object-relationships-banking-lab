class BankAccount
    attr_accessor :balance, :status
    attr_reader :name

    def initialize(name)
        @name = name
        @balance = 1000
        @status = "open"
    end

    def deposit(amount)
        self.balance += amount
    end

    def display_balance
        "Your balance is $#{balance}."
    end

    def close_account
        self.status = "closed"
    end

    # Runs all the specified local validations and returns true if no errors were added, otherwise false.
    def valid?
        balance > 0 && status == "open"
    end

end
