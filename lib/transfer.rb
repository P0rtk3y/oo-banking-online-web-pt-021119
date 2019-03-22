class Transfer
  attr_reader :sender, :receiver, :amount
  attr_accessor :status
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver 
    @amount = amount 
    @status = "pending"
  end 
  
  def valid?(sender, receiver)
    check_sender = BankAccount.new(sender).tap{|e| true if e.valid?}
    check_receiver = BankAccount.new(receiver).tap{|e| true if e.valid?}
  end 
end
