require "./lib/movie_ticket/movie_ticket.rb"

describe "MovieTicket" do
  example "2021/1/20(木)のチケット情報が生成できる。チケット料金1000円" do
    movie_ticket = MovieTicket.new("2021-1-20T21:30:00+09:00","ジュマンジ","シネマシティズン（60才以上）",nil)
    expect(movie_ticket.day.day_type).to eq "weekday"
    expect(movie_ticket.day.cinema_day).to eq false
    expect(movie_ticket.time.time_type).to eq "late_show"
    expect(movie_ticket.title).to eq "ジュマンジ"
    expect(movie_ticket.user.user_type.class).to eq CinemaCitizenSenior
    expect(movie_ticket.fee_info.fee).to eq 1000
  end

  example "2021/2/1(月)のチケット情報が生成できる。チケット料金1000円" do
    movie_ticket = MovieTicket.new("2021-2-1T21:30:00+09:00","ジュマンジ","シネマシティズン",nil)
    expect(movie_ticket.day.day_type).to eq "weekday"
    expect(movie_ticket.day.cinema_day).to eq true
    expect(movie_ticket.time.time_type).to eq "late_show"
    expect(movie_ticket.title).to eq "ジュマンジ"
    expect(movie_ticket.user.user_type.class).to eq CinemaCitizen
    expect(movie_ticket.fee_info.fee).to eq 1000
  end

  example "2021/5/1(土)のチケット情報が生成できる。チケット料金1100円" do
    movie_ticket = MovieTicket.new("2021-5-1T21:30:00+09:00","ジュマンジ","シネマシティズン",nil)
    expect(movie_ticket.day.day_type).to eq "holiday"
    expect(movie_ticket.day.cinema_day).to eq true
    expect(movie_ticket.time.time_type).to eq "late_show"
    expect(movie_ticket.title).to eq "ジュマンジ"
    expect(movie_ticket.user.user_type.class).to eq CinemaCitizen
    expect(movie_ticket.fee_info.fee).to eq 1100
  end

  example "誕生部プランのチケット情報が生成できる。チケット料金500円" do
    movie_ticket = MovieTicket.new("2021-5-1T21:30:00+09:00","ジュマンジ","誕生日",nil)
    expect(movie_ticket.day.day_type).to eq "holiday"
    expect(movie_ticket.day.cinema_day).to eq true
    expect(movie_ticket.time.time_type).to eq "late_show"
    expect(movie_ticket.title).to eq "ジュマンジ"
    expect(movie_ticket.user.user_type.class).to eq Birthday
    expect(movie_ticket.fee_info.fee).to eq 500
  end

  example "オプション3Dメガネのチケット情報が生成できる。チケット料金900円" do
    movie_ticket = MovieTicket.new("2021-5-1T21:30:00+09:00","ジュマンジ","誕生日","3D")
    expect(movie_ticket.day.day_type).to eq "holiday"
    expect(movie_ticket.day.cinema_day).to eq true
    expect(movie_ticket.time.time_type).to eq "late_show"
    expect(movie_ticket.title).to eq "ジュマンジ"
    expect(movie_ticket.user.user_type.class).to eq Birthday
    expect(movie_ticket.fee_info.fee).to eq 900
  end

  example "オプション3Dメガネのチケット情報が生成できる。チケット料金800円" do
    movie_ticket = MovieTicket.new("2021-5-1T21:30:00+09:00","ジュマンジ","誕生日","3D（メガネなし）")
    expect(movie_ticket.day.day_type).to eq "holiday"
    expect(movie_ticket.day.cinema_day).to eq true
    expect(movie_ticket.time.time_type).to eq "late_show"
    expect(movie_ticket.title).to eq "ジュマンジ"
    expect(movie_ticket.user.user_type.class).to eq Birthday
    expect(movie_ticket.fee_info.fee).to eq 800
  end
end
