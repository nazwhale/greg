require_relative 'row'
require 'smarter_csv'

class Parser

  attr_reader :csv

  def initialize(csv_path)
    @csv = SmarterCSV.process(csv_path)
  end
  
  def make_data_objects
    data_objects = []
    @csv.each do |row|
      data_objects << Row.new(row[:instant], row[:dteday], row[:season], row[:yr], row[:mnth], row[:holiday], row[:weekday], row[:workingday], row[:weathersit], row[:temp], row[:atemp], row[:hum], row[:windspeed], row[:casual], row[:registered], row[:cnt])
    end
    data_objects
  end

end
