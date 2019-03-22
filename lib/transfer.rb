class Transfer
  attr_reader :sender, :receiver, :amount
  attr_writer :status
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver 
    @amount = amount 
    @status = "pending"
  end 
end
