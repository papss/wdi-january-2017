class Item
  
  @@num_total       = 0
  @@num_checked_out = 0
  
  attr_reader :title

  # Class Variable Reader
  def self.num_total
    @@num_total
  end
  
  def self.num_checked_out
    @@num_checked_out
  end

  def initialize(title)
    @title = title
    
    @@num_total += 1
  end  
  
end
