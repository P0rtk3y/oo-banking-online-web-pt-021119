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
    if status == "complete"
      "Transfer can only happen once."
    elsif sender.balance > amount 
      sender.balance -= amount 
      receiver.deposit(amount) 
      status = "complete"
    elsif !sender.valid? 
     "Transaction rejected. Please check your account balance."
     status = "rejected"
    end 
  end 
  
end
