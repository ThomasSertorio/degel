class CreatePushes < ActiveRecord::Migration[5.0]
  def change
    create_table :pushes do |t|
      t.jsonb :data, null: false, default: {}

      t.timestamps
    end
  end
end
