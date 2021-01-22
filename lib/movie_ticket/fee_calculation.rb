# チケット1枚の料金計算機能
module FeeCalculation

  # 通常の料金計算
  def fee_calculation(day, time, user)
    @fee = 0
    day_type = day.day_type
    time_type = time.time_type
    cinema_day = day.cinema_day
    user_type = user.user_type

    @fee = if cinema_day == true
      user_type.cinema_day
    elsif day_type == "weekday" && time_type == "twilight_show"
      user_type.weekday_twilight_show
    elsif day_type == "weekday" && time_type == "late_show"
      user_type.weekday_late_show
    elsif day_type == "holiday" && time_type == "twilight_show"
      user_type.holiday_twilight_show
    elsif day_type == "holiday" && time_type == "late_show"
      user_type.holiday_late_show
    end

    self.cinema_citizen_weekday_cinema_day_fee(day_type, user_type, cinema_day)

    @fee
  end

  # 通常と異なる料金計算メソッド

  def cinema_citizen_weekday_cinema_day_fee(day_type, user_type, cinema_day)
    if user_type.class == CinemaCitizen && cinema_day == true && day_type == "weekday"
      @fee = user_type.weekday_cinema_day
    end
  end
end