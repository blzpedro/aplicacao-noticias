class CreateResultados < ActiveRecord::Migration[5.2]
  def change
    create_table :resultados do |t|
      t.string :time1
      t.integer :gols1
      t.string :time2
      t.integer :gols2

      t.timestamps
    end
  end
end
