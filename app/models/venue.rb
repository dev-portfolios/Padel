class Venue < ApplicationRecord
  Week_Days_EN_To_CN = { "Mon" => "周一", "Tue" => "周二", "Wed" => "周三", "Thu" => "周四", "Fri" => "周五", "Sat" => "周六", "Sun" => "周日" }.freeze

  attr_reader :max_bookable_days

  has_many :courts

  scope :is_active, -> { where(active: true) }
  
  def set_date(day = Data.current)
    @date ||= day
  end

  def date
    @date ||= Date.current
  end

  def set_max_bookable_days(lang = :en)
    return @max_bookable_days if @max_bookable_days
    d = Date.current; lang_is_en = lang == :en
    res = (0...advanced_bookable_days).to_a.map do |x|
      new_date = (d + x.days)
      h = { date: new_date.to_s, day: new_date.day, is_today: false }
      if lang_is_en
        h[:wday]  = new_date.strftime("%a")
        h[:month] = new_date.strftime("%b")
      else
        h[:wday]  = Week_Days_EN_To_CN[new_date.strftime("%a")]
        h[:month] = "#{new_date.month}月"
      end
      h
    end
    res[0][:is_today] = true
    @max_bookable_days = res
    @max_bookable_days
  end

end