class Phone
  attr_reader :name, :battery_percentage

  def initialize(name)
    @name = name
    @battery_percentage = 100
  end

  def make_call
    unless phone_dead?
      reduce_battery(5)
      puts "Your call was successful"
    end
  end

  def take_picture
    unless phone_dead?
      reduce_battery
      puts "Picture has been saved"
    end
  end

  def charge(minutes)
    increase_battery(minutes * 5)

    if battery_percentage >= 100
      @battery_percentage = 100
      puts "(ˆ-ˆ) Battery full" 
    else
      puts "#{battery_percentage}, attery not full"
    end
  end

  private

  def phone_dead?
    if battery_percentage <= 0
      puts "Sorry, battery dead"
      return true
    end
  end

  def reduce_battery(percentage = 1)
    @battery_percentage -= percentage
  end

  def increase_battery(percentage = 1)
    @battery_percentage += percentage
  end
end

class Tecno < Phone
  def info
    puts "Name: #{name}, Advantage: Tecno users experience more, Battery: #{battery_percentage} percent"
  end
end

class Samsung < Phone
  def info
    puts "Name: #{name}, Advantage: Samsung users are imaginative, Battery: #{battery_percentage} percent"
  end
end


# sample usage
tecno_phantom = Tecno.new("Tecno Phantom")

puts tecno_phantom.info

puts tecno_phantom.take_picture

puts tecno_phantom.make_call

puts tecno_phantom.info

puts tecno_phantom.charge(2)

puts tecno_phantom.info
