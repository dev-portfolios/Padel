class CreateCourts < ActiveRecord::Migration[8.0]
  def change
    create_table :courts do |t|
      t.references  :venue, foreign_key: true
      t.string      :court_size, index: true, default: 'double'
      t.string      :court_type, index: true, default: 'outdoor'
      t.string      :name_en, index: true
      t.string      :name_cn, index: true
      t.text        :description_en
      t.text        :description_cn
      t.decimal     :unit_price,     :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
