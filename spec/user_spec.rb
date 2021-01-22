require './lib/movie_ticket/user/user.rb'
require 'securerandom'


describe "User" do
  example "userがシネマシティズンの場合、当該インスタンスが生成される" do
    user = User.new("シネマシティズン")
    expect(user.user_type.class).to eq CinemaCitizen
    expect(user.user_type.weekday_twilight_show).to eq 1000
    expect(user.user_type.weekday_late_show).to eq 1000
    expect(user.user_type.holiday_twilight_show).to eq 1300
    expect(user.user_type.holiday_late_show).to eq 1000
    expect(user.user_type.cinema_day).to eq 1100
    expect(user.user_type.weekday_cinema_day).to eq 1000
  end

  example "userがシネマシティズン（60才以上）の場合、当該インスタンスが生成される" do
    user = User.new("シネマシティズン（60才以上）")
    expect(user.user_type.class).to eq CinemaCitizenSenior
    expect(user.user_type.weekday_twilight_show).to eq 1000
    expect(user.user_type.weekday_late_show).to eq 1000
    expect(user.user_type.holiday_twilight_show).to eq 1000
    expect(user.user_type.holiday_late_show).to eq 1000
    expect(user.user_type.cinema_day).to eq 1000
  end

  example "userが一般の場合、当該インスタンスが生成される" do
    user = User.new("一般")
    expect(user.user_type.class).to eq General
    expect(user.user_type.weekday_twilight_show).to eq 1800
    expect(user.user_type.weekday_late_show).to eq 1300
    expect(user.user_type.holiday_twilight_show).to eq 1800
    expect(user.user_type.holiday_late_show).to eq 1300
    expect(user.user_type.cinema_day).to eq 1100
  end

  example "userがシニア（70才以上）の場合、当該インスタンスが生成される" do
    user = User.new("シニア（70才以上）")
    expect(user.user_type.class).to eq Senior
    expect(user.user_type.weekday_twilight_show).to eq 1100
    expect(user.user_type.weekday_late_show).to eq 1100
    expect(user.user_type.holiday_twilight_show).to eq 1100
    expect(user.user_type.holiday_late_show).to eq 1100
    expect(user.user_type.cinema_day).to eq 1100
  end

  example "userが学生（大・専）の場合、当該インスタンスが生成される" do
    user = User.new("学生（大・専）")
    expect(user.user_type.class).to eq CollegeStudent
    expect(user.user_type.weekday_twilight_show).to eq 1500
    expect(user.user_type.weekday_late_show).to eq 1300
    expect(user.user_type.holiday_twilight_show).to eq 1500
    expect(user.user_type.holiday_late_show).to eq 1300
    expect(user.user_type.cinema_day).to eq 1100
  end

  example "userが中・高校生の場合、当該インスタンスが生成される" do
    user = User.new("中・高校生")
    expect(user.user_type.class).to eq HighSchoolStudent
    expect(user.user_type.weekday_twilight_show).to eq 1000
    expect(user.user_type.weekday_late_show).to eq 1000
    expect(user.user_type.holiday_twilight_show).to eq 1000
    expect(user.user_type.holiday_late_show).to eq 1000
    expect(user.user_type.cinema_day).to eq 1000
  end

  example "userが幼児（3才以上）・小学生の場合、当該インスタンスが生成される" do
    user = User.new("幼児（3才以上）・小学生")
    expect(user.user_type.class).to eq ElementarySchoolStudent
    expect(user.user_type.weekday_twilight_show).to eq 1000
    expect(user.user_type.weekday_late_show).to eq 1000
    expect(user.user_type.holiday_twilight_show).to eq 1000
    expect(user.user_type.holiday_late_show).to eq 1000
    expect(user.user_type.cinema_day).to eq 1000
  end

  example "userが障がい者（学生以上）の場合、当該インスタンスが生成される" do
    user = User.new("障がい者（学生以上）")
    expect(user.user_type.class).to eq DisabledPerson
    expect(user.user_type.weekday_twilight_show).to eq 1000
    expect(user.user_type.weekday_late_show).to eq 1000
    expect(user.user_type.holiday_twilight_show).to eq 1000
    expect(user.user_type.holiday_late_show).to eq 1000
    expect(user.user_type.cinema_day).to eq 1000
  end

  example "userが障がい者（高校以下）の場合、当該インスタンスが生成される" do
    user = User.new("障がい者（高校以下）")
    expect(user.user_type.class).to eq DisabledPersonHighSchool
    expect(user.user_type.weekday_twilight_show).to eq 900
    expect(user.user_type.weekday_late_show).to eq 900
    expect(user.user_type.holiday_twilight_show).to eq 900
    expect(user.user_type.holiday_late_show).to eq 900
    expect(user.user_type.cinema_day).to eq 900
  end

  example "User.newの引数にuser_typeに該当しない引数が指定された場合、エラーになる" do
    sample_word = SecureRandom.alphanumeric
    expect{user = User.new(sample_word)}.to raise_error(SyntaxError)
  end
end
