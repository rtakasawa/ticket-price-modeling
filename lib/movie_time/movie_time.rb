require 'time'

# 映画の日時情報
class MovieTime
  attr_accessor :time_type, :cinema_day

  def initialize(movie_time)
    movie_time_obj = Time.parse(movie_time)
    @time_type = time_type_check(movie_daytime_obj)
    @cinema_day = cinema_day_check(movie_daytime_obj)
  end

  # 時間枠のチェック
  def time_type_check(movie_daytime)
    if movie_daytime.strftime('%H:%M:%S') < '20:00:00'
      'twilight_show'
    else
      'late_show'
    end
  end

  # 映画の日のチェック
  def cinema_day_check(movie_daytime)
    if movie_daytime.day == 1
      true
    else
      false
    end
  end




  # 時間タイプの確認
  def time_type_check(movie_time)




    return self.twilight_show_check(movie_time)
    # こっちが動作しない
    return self.late_show_check(movie_time)
  end
end

# require_relative 'movie_time'
# MovieTime.new("2019-12-01T17:00:00+09:00")

class UserType
  attr_accessor :user
  def initialize(user_type)
    @user = user_type_check(user_type)
  end

  # ユーザータイプのオブジェクトを入れる
  def user_type_check(user_type)
    # ここを考えたい
    user_type_list = { 'シネマシティズン' => 'CinemaCitizen' }
    user = user_type_list[user_type]
    eval "#{user}.new"
  end