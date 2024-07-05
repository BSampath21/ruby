class Rectangle
    def initialize(length, breadth)
      @length = length
      @breadth = breadth
    end
  
    def perimeter
      2 * (@length + @breadth)
    end
  end
  
  # Create a class Square here
  class Square<Rectangle 
    def initialize(side)
      @length=@breadth=side
    end
  end


  class Animal
    def move
      "I can move"
    end
  end
  
  class Bird < Animal
    def move
      super + " by flying"
    end
  end
  
  class Human < Animal
    def move
      super + " by walking"
    end
  end
  
  class Penguin < Bird
    def move
      "I can move by swimming"
    end
  end

  
  class Rectangle
    def initialize(length, breadth)
      @length = length
      @breadth = breadth
    end
  
    def perimeter
      2 * (@length + @breadth)
    end
  end
  
  # Create a class Square here
  class Square < Rectangle
    def initialize(side)
      @length = @breadth = side
    end
  end




  class Item
  
    attr_reader :item_name, :quantity, :supplier_name, :price
    
    def initialize(item_name, quantity, supplier_name, price)
      @item_name = item_name
      @quantity = quantity
      @supplier_name = supplier_name
      @price = price
    end 
    
    def ==(other_item)
      @item_name == other_item.item_name &&
      @quantity == other_item.quantity &&
      @supplier_name == other_item.supplier_name &&
      @price == other_item.price
    end
    
    def eql?(other_item)
      self == other_item
    end
    
    def hash
      @item_name.hash ^ @quantity.hash ^ @supplier_name.hash ^ @price.hash
    end    
  end
  