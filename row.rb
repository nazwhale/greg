class Row

  attr_reader :instant, :dteday, :season, :yr, :mnth, :holiday, :weekday, :workingday, :weathersit, :temp, :atemp, :hum, :windspeed, :casual, :registered, :cnt

  def initialize(instant, dteday, season, yr, mnth, holiday, weekday, workingday, weathersit, temp, atemp, hum, windspeed, casual, registered, cnt)
    @instant = instant
    @dteday = dteday
    @season = season
    @yr = yr
    @mnth = mnth
    @holiday = holiday
    @weekday = weekday
    @workingday = workingday
    @weathersit = weathersit
    @temp = temp
    @atemp = atemp
    @hum = hum
    @windspeed = windspeed
    @casual = casual
    @registered = registered
    @cnt = cnt
  end

end
