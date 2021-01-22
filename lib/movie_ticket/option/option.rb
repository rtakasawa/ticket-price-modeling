Dir[File.expand_path('../option_type', __FILE__) << '/*.rb'].each do |file|
  require file
end

# オプション情報
class Option
  attr_reader :option_type

  def initialize(option)
    @option_type = option_type_check(option)
  end

  # オプション一覧
  OPTION_TYPE_LIST = {
    "3D" => "ThreeDMovie",
    "3D（メガネなし）" => "ThreeDMovieNoGlasses"
  }.freeze
  OPTION_TYPE_LIST.each do |key,value|
    key.freeze
    value.freeze
  end

  # オプションタイプのオブジェクトを入れる
  def option_type_check(option)
    get_option_type = OPTION_TYPE_LIST[option]
    eval "#{get_option_type}.new"
  end
end