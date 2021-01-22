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

  # ユーザーのタイプ一覧
  USER_TYPE_LIST = {
    "シネマシティズン" => "CinemaCitizen",
    "シネマシティズン（60才以上）" => "CinemaCitizenSenior",
    "一般" => "General",
    "シニア（70才以上）" => "Senior",
    "学生（大・専）" => "CollegeStudent",
    "中・高校生" => "HighSchoolStudent",
    "幼児（3才以上）・小学生" => "ElementarySchoolStudent",
    "障がい者（学生以上）" => "DisabledPerson",
    "障がい者（高校以下）" => "DisabledPersonHighSchool"
  }.freeze

  #修正中
  # USER_TYPE_LIST.each do |key, value|
  #   irb(main):023:0> USER_TYPE_LIST.map do |key,value|
  #     irb(main):024:1* key.freeze
  #     irb(main):025:1> value.freeze
  #     irb(main):026:1> end
  # end

  # ユーザータイプのオブジェクトを入れる
  def user_type_check(user)
    get_user_type = USER_TYPE_LIST[user]
    eval "#{get_user_type}.new"
  end
end