require_relative 'cinema_citizen'

describe "CinemaCitizen" do
  example "CinemaCitizen.newした場合、料金情報が格納される" do
    user_type = CinemaCitizen.new
    binding.irb
    expect(user_type.weekday_twilight_show).to eq 1000
    expect(user_type.weekday_late_show).to eq 1000
    expect(user_type.holiday_twilight_show).to eq 1300
    expect(user_type.holiday_late_show).to eq 1000
    expect(user_type.cinema_day).to eq 1100
    expect(user_type.weekday_cinema_day).to eq 1000
  end
end
