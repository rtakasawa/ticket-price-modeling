# require_relative "cinema_citizen"
Dir[File.expand_path('../user_type', __FILE__) << '/*.rb'].each do |file|
  require file
end

# チケット購入者の情報
class User
  attr_accessor :user_type

  def initialize(user)
    @user_type = user_type_check(user)
  end

  # ユーザータイプのオブジェクトを入れる
  def user_type_check(user)
    user_type_list = {
      "シネマシティズン" => "CinemaCitizen",
      "シネマシティズン（60才以上）" => "CinemaCitizenSenior",
      "一般" => "General",
      "シニア（70才以上）" => "Senior",
      "学生（大・専）" => "UniversityStudent",
      "中・高校生" => "HighSchoolStudent",
      "幼児（3才以上）・小学生" => "ElementarySchoolStudent",
      "障がい者（学生以上）" => "DisabledPerson",
      "障がい者（高校以下）" => "DisabledPersonHighSchool"
    }
    get_user_type = user_type_list[user]
    eval "#{get_user_type}.new"
  end
end