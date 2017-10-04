require_relative 'row'
require 'smarter_csv'

class Analyser

  def initialize
    @data = make_data_objects(parse_csv)
  end

  def parse_csv
    SmarterCSV.process('./day.csv')
  end
  
  def make_data_objects(parsed_csv)
    data_objects = []
    parsed_csv.each do |row|
      data_objects << Row.new(row[:instant], row[:dteday], row[:season], row[:yr], row[:mnth], row[:holiday], row[:weekday], row[:workingday], row[:weathersit], row[:temp], row[:atemp], row[:hum], row[:windspeed], row[:casual], row[:registered], row[:cnt])
    end
    data_objects
  end

  def get_day(day_index)
    chosen_day_data = []
    @data.each do |row|
      chosen_day_data << row if row.weekday == day_index
    end
    puts chosen_day_data
    chosen_day_data
  end

end

analyser = Analyser.new
analyser.get_day(3)
