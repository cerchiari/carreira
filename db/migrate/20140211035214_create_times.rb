class CreateTimes < ActiveRecord::Migration
  def change
    create_table :times do |t|
      t.string :nome
      t.text :resume
      t.string :funcao
    end
  end
end
