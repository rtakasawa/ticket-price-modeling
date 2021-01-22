require './lib/movie_ticket/movie_ticket.rb'

describe "MovieTicket" do
  example "2021/1/20(木)のチケット情報が生成できる。チケット料金1000円" do
    movie_ticket = MovieTicket.new("2021-1-20T21:30:00+09:00","ジュマンジ","シネマシティズン（60才以上）")
    expect(movie_ticket.day.day_type).to eq "weekday"
    expect(movie_ticket.day.cinema_day).to eq false
    expect(movie_ticket.time.time_type).to eq "late_show"
    expect(movie_ticket.title).to eq "ジュマンジ"
    expect(movie_ticket.user.user_type.class).to eq CinemaCitizenSenior
    expect(movie_ticket.fee).to eq 1000
  end

  example "2021/2/1(月)のチケット情報が生成できる。チケット料金1000円" do
    movie_ticket = MovieTicket.new("2021-2-1T21:30:00+09:00","ジュマンジ","シネマシティズン")
    expect(movie_ticket.day.day_type).to eq "weekday"
    expect(movie_ticket.day.cinema_day).to eq true
    expect(movie_ticket.time.time_type).to eq "late_show"
    expect(movie_ticket.title).to eq "ジュマンジ"
    expect(movie_ticket.user.user_type.class).to eq CinemaCitizen
    expect(movie_ticket.fee).to eq 1000
  end

  example "2021/5/1(土)のチケット情報が生成できる。チケット料金1100円" do
    movie_ticket = MovieTicket.new("2021-5-1T21:30:00+09:00","ジュマンジ","シネマシティズン")
    expect(movie_ticket.day.day_type).to eq "holiday"
    expect(movie_ticket.day.cinema_day).to eq true
    expect(movie_ticket.time.time_type).to eq "late_show"
    expect(movie_ticket.title).to eq "ジュマンジ"
    expect(movie_ticket.user.user_type.class).to eq CinemaCitizen
    expect(movie_ticket.fee).to eq 1100
  end
end
