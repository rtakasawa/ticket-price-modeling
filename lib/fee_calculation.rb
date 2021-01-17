# チケット1枚の料金計算機能
module FeeCalculation
  def fee_calculation(day_type, time_type, cinema_day, user_type)
    if day_type == "weekday" && time_type == "twilight_show"
      user_type.user.weekday_twilight_show
    elsif day_type == "weekday" && time_type == "late_show"
      user_type.user.weekday_late_show
    elsif day_type == "holiday" && time_type == "twilight_show"
      user_type.user.holiday_twilight_show
    elsif day_type == "holiday" && time_type == "late_show"
      user_type.user.holiday_late_show
    elsif cinema_day == true && day_type == "holiday"
      user_type.user.cinema_day
    # ここの扱いを検討する（これはCinemaCitizenだけのオプション）
    elsif cinema_day == true && day_type == "weekday"
      user_type.user.weekday_cinema_day
    end
  end
end