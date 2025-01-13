class UnitTimeSlot
  attr_reader :bookable

  def initialize(options = {})
    @court_id = options[:court_id]
    @start_time = options[:start_time]
    @end_time = options[:end_time]
    @duration = options[:duration]
    @price = options[:price]
    @bookable = true
  end

  def starts_at
    @start_time.strftime("%H:%M")
  end

  def ends_at
    @end_time.strftime("%H:%M")
  end

  def set_price(n)
    @price = n
  end

  def check_bookable(slot = nil)
    if @start_time < time_stamp || slot && slot.start_time <= @start_time && @end_time <= slot.end_time
      @bookable = false
    end
  end

  def time_stamp
    @time_stamp ||= Time.current
  end
end