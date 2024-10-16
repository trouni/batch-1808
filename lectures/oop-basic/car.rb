class Car # UpperCamelCases
  attr_reader :brand # color # already in accessor
  # # This creates the method below for color, brand, etc.
  # def color
  #   @color
  # end

  # attr_writer :color # already in accessor
  # # This creates the method below for color
  # def color=(new_color)
  #   @color = new_color
  # end

  attr_accessor :color
  # Create both the reader and the write for color

  def initialize(color, brand = 'BMW') # also called constructor
    # Runs once when you call Car.new
    
    # Initial STATE / DATA (attributes)
    # @instance_variables - stored in the instance
    @brand = brand
    @color = color # string
    @engine_started = false # boolean

    # # local variables disappear after the method ends
    # local_variable = 3 # can't access this later
  end

  # BEHAVIOR
  # #instance_methods
  def start_engine! # turning the key / press the button
    inject_fuel # looks for local variable or an instance method named inject_fuel
    spin_alternator
    spark_plugs

    @engine_started = true
  end

  def repaint(new_color)
    @color = new_color
  end

  private # everything below is private and can only be called from inside this class file

  def inject_fuel
    puts "Injecting fuel..."
  end

  def spin_alternator
    puts "Spinning alternator..."
  end

  def spark_plugs
    puts "Sparking plugs..."
  end
end
