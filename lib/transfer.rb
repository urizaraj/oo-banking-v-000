class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    self.sender = sender
    self.receiver = receiver
    self.status = 'pending'
    self.amount = amount
  end
end
