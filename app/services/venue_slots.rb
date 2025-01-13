class VenueSlots
  attr_reader :venue

  def initialize(venue)
    @venue = venue
    @courts_slots = {}
    @venue_all_slots_hash = []
    load_basic_data
    get_venue_whole_day_slots
    set_court_slots
  end

  private

  def get_venue_whole_day_slots
    h = { start_time: (venue.date.to_s + " " + venue.opening_at.strftime("%H:%M")).to_time, end_time: (venue.date.to_s + " " + venue.closing_at.strftime("%H:%M")).to_time }
    h[:end_time] = h[:end_time] + 1.days if h[:end_time] <= h[:start_time]
    slots_num = (h[:end_time] - h[:start_time]).to_i / (venue.min_bookable_minutes * 60)
    s_in_seconds = venue.min_bookable_minutes * 60
    (0...slots_num).map do |x|
      s = h[:start_time] + x * s_in_seconds
      @venue_all_slots_hash << { start_time: s, end_time: s + s_in_seconds, duration: venue.min_bookable_minutes }
    end
    @venue_all_slots_hash
  end

  def set_court_slots
    @courts_taken_slots = {}

    venue.courts.each do |court|
      @courts_slots[court.id] = @venue_all_slots_hash.map { |v| s = v.merge(court_id: court.id); UnitTimeSlot.new(s) }
      @courts_taken_slots[court.id] = @slots_taken_of_the_day&.select { |x| x.court_id == court.id }

      @courts_slots[court.id].each do |slot|
        @courts_taken_slots[court.id].each { |t_slot| slot.check_bookable(t_slot) }
      end

      court.slots = @courts_slots[court.id]
    end
  end

  private

  def load_basic_data
    @slots_taken_of_the_day = []
  end
end