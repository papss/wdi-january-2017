class Pizza
  
  attr_reader :slices
  
  def initialize(ingredients)
    @ingredients = ingredients
    @baked = false
    @slicings_remaining = 0
    @slices = 0
  end
  
  def bake
    @baked = true
    @slices = 1
    @slicings_remaining = 3
    return
  end
  
  def slice
    unless @baked
      puts "ERROR: Can't slice a raw pizza"
      return
    end
    
    if @slicings_remaining == 3
      @slices += 1
      @slicings_remaining -= 1
      return @slices
    elsif @slicings_remaining == 2 || @slicings_remaining == 1
      @slices += 2
      @slicings_remaining -= 1
      return @slices
    elsif @slicings_remaining == 0
      puts 'ERROR: Pizza is already too sliced!'
    end
  end

  def eat
    unless @baked
      puts "ERROR: Can't eat a raw pizza"
      return
    end
    
    if @slices > 0
      @slices -= 1 
      puts 'Nom!'
    else
      puts 'ERROR: No more slices left :('
    end
  end
  
end

class Pizzeria
  
  attr_reader :pizzas_remaining
  
  def initialize
    @open = false
    @pizzas_remaining = 0
  end
  
  def order(ingredients)
    if @open && @pizzas_remaining > 0
      @pizzas_remaining -= 1
      p = Pizza.new(ingredients)
      p.bake
      3.times { p.slice }
      return p
    end
  end
  
  def open
    @open = true
  end
  
  def close
    @open = false
  end
  
  def restock
    @pizzas_remaining = 5 unless @open
  end

end
