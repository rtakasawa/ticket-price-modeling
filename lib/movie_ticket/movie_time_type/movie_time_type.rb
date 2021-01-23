require "time"

# 映画の日時情報
class MovieTimeType
  attr_reader :time_type

  def initialize(movie_time)
    movie_time_obj = Time.parse(movie_time)
    @time_type = time_type_check(movie_time_obj)
  end

  TWILIGHT_SHOW = "twilight_show"
  LATE_SHOW = "late_show"
  TWILIGHT_SHOW.freeze
  LATE_SHOW.freeze

  # 時間タイプの確認
  def time_type_check(movie_daytime)
    if movie_daytime.strftime("%H:%M:%S") < "20:00:00"
      TWILIGHT_SHOW
    else
      LATE_SHOW
    end
  end
end
