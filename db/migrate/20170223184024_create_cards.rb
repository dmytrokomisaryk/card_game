class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :kind
      t.string :value

      t.timestamps
    end
  end
end
