module Auto_driver

	def auto_driver(style)
		return "you have chosen the #{style} for this car!"
	end
end


class Vehicle
	attr_accessor :color, :model, :current_speed
	attr_reader :year
	@@numer_of_verhicle = 0

	def initialize (year, color, model)
		@year = year
	    @color = color
	    @model = model
	    @current_speed = 0
	    #@@number_of_verhicle += 1
	end

	def number_of_verhicle
		return "this class have #{@@number_of_verhicle} pc(s)"
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

	def age
		"the #{self.model} is #{years_old} years"
	end

	private

	def years_old
		2016 - self.year
	end

end


class MyCar < Vehicle
	MADE_OF = "gold"
	include Auto_driver
end

class MyTruck < Vehicle
	MADE_OF = "silver"
end

puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors

car1 = MyCar.new(1990, "black","Mercedes")

car2 = MyTruck.new(1991, "white", "Audi")
puts car1.current_speed
puts car1.speed_up(100)
puts car2.brake(10)
puts car1.shut_off
puts car2.to_s
puts MyCar.car_mileage(13, 351)
puts car2.spray_paint("red")
puts car1.auto_driver("style1")
puts car2.age
#cannot find the build-in time.now.year

#7
class Student
	def initialize (name, grade)
		@name = name
		@grade = grade
	end




