class MyCar
	attr_accessor :color, :model, :newcolor		
	attr_reader :year

  	def initialize(year, color, model)
	    @year = year
	    @color = color
	    @model = model
	    @current_speed = 0

	end

	def speed_up(change)
		@current_speed += change
	end

	def brake(change)
		@current_speed -= change
	end

	def shut_off
		puts "see you soon!"		
	end

	def spray_paint(newcolor)
		@color = newcolor
		return "You has just applied #{color} for your car!"
	end

	def self.car_mileage(litter, km)
		a = km/litter
		return "#{a} km per litter of fluel"
	end

	def to_s
		return "This #{color + " " + model} was produced in #{year}"
	end

end

car1 = MyCar.new(1990, "black","Mercedes")

car2 = MyCar.new(1991, "white", "Audi")

puts MyCar.car_mileage(2,100)

puts car1.to_s

# Get error with class Person
class Person
	attr_accessor :name
  	# attr_reader :name
  	def initialize(name)
    @name = name
 	 end
end

bob = Person.new("Steve")
puts bob.name=("bob")

