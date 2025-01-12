class CreateVenues < ActiveRecord::Migration[8.0]
  def change
    create_table :venues do |t|
      t.string    :email
      t.string    :contact_phone
      t.string    :city_en
      t.string    :city_cn
      t.string    :name_en, index: true
      t.string    :name_cn, index: true
      t.text      :description_en
      t.text      :description_cn
      t.text      :rules_en
      t.text      :rules_cn
      t.string    :address_en, index: true
      t.string    :address_cn, index: true
      t.string    :area_en, index: true
      t.string    :area_cn, index: true
      t.decimal   :latitude,  :precision => 15, :scale => 10
      t.decimal   :longitude, :precision => 15, :scale => 10
      t.integer   :late_cancellation_in_minutes, default: 0
      t.boolean   :late_cancellation, default: false
      t.boolean   :active, default: true
      t.integer   :advanced_bookable_days, default: 7
      t.string    :image
      t.time      :opening_at
      t.time      :closing_at
      t.string    :business_hours
      t.integer   :confirm_in_minutes, default: 10
      t.integer   :min_bookable_minutes, default: 60
      t.integer   :max_bookable_units, default: 3
      t.decimal   :unit_price,     :precision => 8, :scale => 2

      t.timestamps
    end
  end
end