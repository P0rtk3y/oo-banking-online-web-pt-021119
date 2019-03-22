require 'pry'
class Transfer
  attr_reader :sender, :receiver, :amount
  attr_accessor :status
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver 
    @amount = amount 
    @status = "pending"
  end 
  
  def valid?
    check_sender = BankAccount.new(self.sender).valid?
    check_receiver = BankAccount.new(self.receiver).valid?
    check_sender && check_receiver ? true : false
  end 
end
