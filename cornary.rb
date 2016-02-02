#!/usr/bin/env ruby -w
# Application that calculates a person's target heart rate (THR)
# and maximum heart rate (MHR) for aerobic exercise.
#
# According to the American Heart Association (AHA) the rates
# can be calculated as follows:
#         MHR = 220 - age
#         min THR = MHR * 50%
#         max THR = MHR * 85%
#
#Note: Heart rates are in beats per minute (BPM) and age is in years

require 'date'



def get_age(year)
  year.to_i
  puts "Year #{year}"
  current_year = Date.today.strftime("%Y").to_i
  puts "Current Year: #{current_year}"
  puts current_year - year

end

puts "Enter First Name: "
fname = gets.to_s.capitalize
puts "Does #{fname} have a last name: "
lname = gets.to_s.capitalize
puts "Thanks #{fname} #{lname}, And What year where you born? (YYYY): " 
year_of_birth = gets.to_s


puts "Calculating Age, MHR, and THR"

age = get_age(year_of_birth).to_i

mhr = (220 - age)
min_thr = mhr * 0.50
max_thr = mhr * 0.85

puts "Hello #{fname}"

puts "Your MHR is #{mhr}"
puts "Minimum THR = #{min_thr}"
puts "Maximum THR = #{max_thr}"
