class CreateDiarios < ActiveRecord::Migration[5.2]
  def change
    create_table :diarios do |t|
      t.string :titulo
      t.string :corpo

      t.timestamps
    end
  end
end
