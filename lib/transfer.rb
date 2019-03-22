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
    if sender.valid? && receiver.valid?
      true 
    else 
      false 
    end 
  end 
  
  def execute_transaction
    if !self.valid?
      "Transaction rejected. Please check your account balance."
    elsif self.status == "complete"
      "Transfer can only happen once."
    elsif sender.balance > amount 
      sender.balance -= amount 
      receiver.balance += amount 
      self.status = "complete"
    end 
  end 
  
end
