class CreateTwerks < ActiveRecord::Migration[5.2]
  def change
    create_table :twerks do |t|
      t.text :twerk

      t.timestamps
    end
  end
end
