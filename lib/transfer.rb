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
    if !sender.valid?
      "Transaction rejected. Please check your account balance."
    elsif sender.balance > amount && status = "pending"
      sender.balance -= amount 
      receiver.balance += amount 
      status = "complete"
    end 
  end 
  
end
