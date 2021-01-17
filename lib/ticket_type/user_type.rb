require_relative 'cinema_citizen'

# チケット購入者の情報
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
end