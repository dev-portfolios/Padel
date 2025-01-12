class CreateAmenities < ActiveRecord::Migration[8.0]
  def change
    create_table :amenities do |t|
      t.string     :title_en
      t.string     :title_cn
      t.integer    :position
      t.string     :url
      t.boolean    :active, default: true
      
      t.timestamps
    end
  end
end
