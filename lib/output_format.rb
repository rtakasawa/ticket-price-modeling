class OutputFormat
  # サマリー出力
  def format_total_summary(total_summary)
    puts "▼サマリー"
    puts "売上: #{total_summary}円"
    puts #一行改行
  end

  # 作品別売上集計
  def format_title_summary(title_price_list)
    puts "▼作品別売上"
    title_price_list.each do |title, price|
      puts "#{title}: #{price}円"
    end
    puts #一行改行
  end

  # 料金タイプ別売上集計
  def format_user_summary(user_price_list)
    puts "▼料金タイプ別売上"
    user_price_list.each do |user_type, price|
      puts "#{user_type}: #{price}円"
    end
    puts #一行改行
  end
end