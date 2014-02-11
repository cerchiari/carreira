class CreateOficinas < ActiveRecord::Migration
  def change
    create_table :oficinas do |t|
      t.string :categoria
      t.string :item
      t.text :resumo
      t.text :publicoalvo
      t.text :descricao
      t.text :aprendizagem
      t.string :duracao
      t.float :preco
    end
  end
end
