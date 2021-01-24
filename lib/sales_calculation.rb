class SalesCalculation

  attr_reader :total_summary, :title_summary, :user_summary

  def initialize(sales_tickets)
    @total_summary = self.get_total_summary(sales_tickets)
    @title_summary = self.get_title_summary(sales_tickets)
    @user_summary = self.get_user_summary(sales_tickets)
  end

  # サマリー集計
  def get_total_summary(sales_tickets)
    total_summary = 0
    sales_tickets.each do |ticket|
      total_summary += ticket.fee_info.fee
    end

    self.price_format_change(total_summary)
  end

  # 作品別売上集計
  def get_title_summary(sales_tickets)
    title_list = []
    title_price_list = Hash.new
    sales_tickets.each {|ticket| title_list.push(ticket.title)}
    title_list.uniq!

    title_list.each do |title|
      price = 0
      sales_tickets.select do |ticket|
        if ticket.title == title
          price += ticket.fee_info.fee
        end
      end
      price = self.price_format_change(price)
      title_price_list = title_price_list.merge(title => price)
    end
    title_price_list
  end

  # 料金タイプ別売上集計
  def get_user_summary(sales_tickets)
    user_price_list = Hash.new
    User::USER_TYPE_LIST.each do |user_type_jp,user_type|
      price = 0
      sales_tickets.select do |ticket|
        if ticket.user.user_type.class.to_s == user_type
          price += ticket.fee_info.fee
        end
      end
      price = self.price_format_change(price)
      user_price_list = user_price_list.merge(user_type_jp => price)
    end
    user_price_list
  end

  # 数字にカンマを付けるメソッド
  def price_format_change(price)
    price.to_s.reverse.gsub( /(\d{3})(?=\d)/, '\1,').reverse
  end
end