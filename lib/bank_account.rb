class BankAccount
  attr_reader :name
  attr_accessor :balance, :status

  def initialize(name)
    @name = name
    self.balace = 1000
    self.status = 'open'
  end
end
