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
		if @current_speed > 0
			return @current_speed
		else
			return "Hey, you dont need to brake the car any longer"
		end
	end

	def shut_off
		puts "see you soon!"		
	end

	def spray_paint(newcolor)
		@color = newcolor
		return "You has just applied #{color} for your car!"
	end
end


car1 = MyCar.new(1990, "black","Mercedes")
car2 = MyCar.new(1991, "white", "Audi")
puts "car1 model is:"
puts car1.model
puts "car2 color is:"
puts car2.color
puts "current speed of car1 when increase 100kmh:"
puts car1.speed_up(100)
puts "current speed of car 1 when you brake it 100kmh:"
puts car1.brake(100)
puts "to shutdown the car"
puts car1.shut_off
puts "to change car's color"
puts car2.spray_paint("yellow")
