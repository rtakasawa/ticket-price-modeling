module TwilightShow
  def twilight_show_check(movie_time)
    if movie_time.strftime('%H:%M:%S') < '20:00:00'
      'twilight_show'
    end
  end
end