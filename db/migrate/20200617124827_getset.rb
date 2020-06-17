class Getset < ActiveRecord::Migration[6.0]
  def change
    create_table :get_sets do |t|
      t.string :key
      t.string :value
    end
  end
end
