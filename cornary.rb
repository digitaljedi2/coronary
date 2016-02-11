#!/usr/bin/env ruby -w
# Application that calculates a person's target heart rate (THR)
# and maximum heart rate (MHR) for aerobic exercise.
# most of the work is done in the class Coronary

require_relative 'lib/Coronary.rb'

# initialize object
coronary = Coronary.new

# get the users information
user_info = coronary.get_info

# output the calclulated values
coronary.output(user_info)


