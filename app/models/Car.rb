class Car #< ActiveRecord::Base

	# SEE README FOR INPUT DATA
	

	def initialize(make, model)
		@make = make
		@model = model
	end


	def getStats()
		print "How many kW of power does your car make? "
		@power_kw = gets.chomp.to_i
		print "How many Nm of torque does your car make? "
		@torque_nm = gets.chomp.to_i
		print "At what RPM is that torque produced? "
		@max_power_rpm = gets.chomp.to_i
		print "How many seconds does it take for your car to go from 0-100km/h? "
		@zero_onehundred_time = gets.chomp.to_f
		print "How many seconds does it take for your car to complete the 1/4 Mile? "
		@quarter_mile = gets.chomp.to_f
	end


	def convertPower(power_kw)
		(power_kw*1.34102209).to_i
	end

	def convertTorque(torque_nm)
		(torque_nm/1.3558179488410815).to_i
	end


	def printStats
		if !@power_kw
			puts "You drive a #{@make} #{@model} ? That's cool, I guess."
		else
			puts "Your #{@make} #{@model} generates #{@power_kw} kW and #{@torque_nm} Nm at #{@max_power_rpm} RPM!"
			puts "That amount of power makes your #{@model} fly from 0-100km/h in #{@zero_onehundred_time} seconds and complete the 1/4 Mile in #{@quarter_mile} seconds!"
			if @quarter_mile < 11 
				puts "That's seriously quick!"
			end
			puts "For you Americans, this #{@model} makes #{convertPower(@power_kw)} hp, #{convertTorque(@torque_nm)} lb-ft torque at #{@max_power_rpm} RPM and has a 0-60mph time of #{@zero_onehundred_time} seconds!"
		end
	end
			
end
