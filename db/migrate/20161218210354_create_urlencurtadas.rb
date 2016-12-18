class CreateUrlencurtadas < ActiveRecord::Migration[5.0]
  def change
    create_table :urlencurtadas do |t|
      t.string :url
      t.string :urlencurtada

      t.timestamps
    end
    add_index :urlencurtadas, :urlencurtada
  end
end
