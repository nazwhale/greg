require_relative 'parser'

class Analyser

  def initialize
    parser = Parser.new('./day.csv')
    @data = parser.make_data_objects
  end

  def get_day(day_index)
    chosen_day_data = []
    @data.each do |row|
      if row.weekday == day_index
        chosen_day_data << row
      end
    end
    puts chosen_day_data[0].weekday
    puts chosen_day_data[0].windspeed
    chosen_day_data
  end

end

analyser = Analyser.new
analyser.get_day(3)
