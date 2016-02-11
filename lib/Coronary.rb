require 'date'

class Coronary

  # This method returns age (in years)
  def age(year_of_birth)
    year_of_birth.to_i
    current_year = Date.today.strftime("%Y").to_i
    return current_year - year_of_birth
  end

  # This method collects user information and returns it in a hash
  def get_info
    puts "Enter First Name: "
    fname = gets.to_s
    puts "Enter Last Name: "
    lname = gets.to_s
    puts "Year of birth: "
    year_of_birth = gets.to_i
    info = { :fname => fname, :lname => lname, :year => year_of_birth }
    return info
  end

  # This method returns MHR
  def mhr(age)
    return (220 - age)
  end

  # This method returns minimum target heart rate in beats per minute (BPM)
  def minhr(mhr)
    return (mhr * 0.50)
  end

  # This method returns maximum target heart rate beats per minute (BPM)
  def maxhr(mhr)
    return (mhr * 0.85)
  end


  # This method outputs the calculated values
  def output(user_info)

    puts "Hello #{user_info[:fname].capitalize.chop} #{user_info[:lname].capitalize.chop}"

    age = self.age(user_info[:year])

    puts "You are #{age} years old"
    
    mhr = self.mhr(age)
    min_thr = self.minhr(mhr)
    max_thr = self.maxhr(mhr)
    
    puts "According to the American Heart Association your target heart rates are for your age is:"
    puts "MHR: #{mhr}"
    puts "Minimum Target Heart Rate: #{min_thr}"
    puts "Maximum Target Heart Rate: #{max_thr}"

  end

end
