class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    self.sender = sender
    self.receiver = receiver
    self.status = 'pending'
    self.amount = amount
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    self.sender.balance -= self.amount
    self.receiver.balance += self.amount
    self.status = 'complete'
  end
end
