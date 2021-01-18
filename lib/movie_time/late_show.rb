module LateShow
  def late_show_check(movie_time)
    if movie_time.strftime('%H:%M:%S') >= '20:00:00'
      'late_show'
    end
  end
end