class CreateTournaments < ActiveRecord::Migration[7.0]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.datetime :starts_at

      t.timestamps
    end
  end
end
