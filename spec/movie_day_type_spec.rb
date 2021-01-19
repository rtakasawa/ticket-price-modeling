require "./lib/movie_day_type/movie_day_type.rb"

describe "MovieDayType" do
  example "土曜日の場合、@day_type='holiday'" do
    movie_day_type = MovieDayType.new("2021-01-09T13:00:00+09:00")
    expect(movie_day_type.day_type).to eq 'holiday'
  end

  example "日曜日の場合、@day_type='holiday'" do
    movie_day_type = MovieDayType.new("2021-01-10T13:00:00+09:00")
    expect(movie_day_type.day_type).to eq 'holiday'
  end

  example "祝日の場合、@day_type='holiday'" do
    movie_day_type = MovieDayType.new("2021-01-11T13:00:00+09:00")
    expect(movie_day_type.day_type).to eq 'holiday'
  end

  example "平日の場合、@day_type='weekday'" do
    movie_day_type = MovieDayType.new("2021-01-12T13:00:00+09:00")
    expect(movie_day_type.day_type).to eq 'weekday'
  end

  example "1日の場合、@cinema_day=true" do
    movie_day_type = MovieDayType.new("2021-01-01T13:00:00+09:00")
    expect(movie_day_type.cinema_day).to eq true
  end

  example "1日以外の場合、@cinema_day=false" do
    movie_day_type = MovieDayType.new("2021-01-02T13:00:00+09:00")
    expect(movie_day_type.cinema_day).to eq false
  end
end
