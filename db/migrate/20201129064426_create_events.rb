class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :date
      t.string :time
      t.string :location
   

      t.timestamps
    end
  end
end
