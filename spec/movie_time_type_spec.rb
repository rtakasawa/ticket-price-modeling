require "./lib/movie_ticket/movie_time_type/movie_time_type.rb"

describe "MovieTimeType" do
  example "上映開始時間が20時より前の場合、@time_type='twilight_show'" do
    movie_time_type = MovieTimeType.new("2021-01-09T13:00:00+09:00")
    expect(movie_time_type.time_type).to eq 'twilight_show'
  end

  example "上映開始時間が20時以降の場合、@time_type='late_show'" do
    movie_time_type = MovieTimeType.new("2021-01-09T20:00:00+09:00")
    expect(movie_time_type.time_type).to eq 'late_show'
  end
end
