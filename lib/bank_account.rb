require 'pry'

class BankAccount
  attr_accessor :balance, :status
  attr_reader :name
  
  def initialize(name)
    @name = name 
    @balance = 1000
    @status = "open"
  end 
  
  def deposit(amount)
    @balance += amount 
  end 
  
  def display_balance 
    p "Your balance is $#{self.balance}."
  end 
  
  def valid? 
    if self.balance > 0 && self.status == "open"
      true 
    end 
  end  
  
end
