module SalesCalculation

  # サマリー集計
  def total_summary(sales_tickets)
    total_summary = 0
    sales_tickets.info.each do |i|
      total_summary += i.fee
    end

    total_summary = price_format_change(total_summary)

    puts "▼サマリー"
    puts "売上: #{total_summary}円"
  end

  # 作品別売上集計
  def title_summary(sales_tickets)
    puts "▼作品別売上"

    title_list = []
    sales_tickets.info.each {|i| title_list.push(i.title)}
    title_list.uniq!

    title_list.each do |title|
      price = 0
      sales_tickets.info.select do |i|
        if i.title == title
          price += i.fee
        end
      end
      price = price_format_change(price)
      puts "#{title}: #{price}円"
    end
  end

  # 料金タイプ別売上集計
  def user_price_summary(sales_tickets)
    puts "▼料金タイプ別売上"
    User::USER_TYPE_LIST.each do |key,value|
      price = 0
      sales_tickets.info.select do |i|
        if i.user.user_type.class.to_s == value
          price += i.fee
        end
      end
      price = price_format_change(price)
      puts "#{key}: #{price}円"
    end
  end

  private

  # 数字にカンマを付けるメソッド
  def price_format_change(price)
    price.to_s.reverse.gsub( /(\d{3})(?=\d)/, '\1,').reverse
  end
end