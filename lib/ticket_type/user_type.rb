require_relative 'cinema_citizen'

class UserType
  attr_accessor :user
  def initialize(user_type)
    @user = user_type_check(user_type)
  end

  # ユーザータイプのオブジェクトを入れる
  def user_type_check(user_type)
    user_type_list = { 'シネマシティズン' => 'CinemaCitizen' }
    user_course = user_type_list[user_type]
    eval "#{user_course}.new"
  end
end