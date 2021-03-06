class CreateSchedulers < ActiveRecord::Migration[6.0]
  def change
    create_table :schedulers do |t|
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.integer :qty

      t.timestamps
    end
  end
end
