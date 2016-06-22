class CreateProys < ActiveRecord::Migration
  def change
    create_table :proys do |t|
      t.string :nombre_proy
      t.integer :horas
      t.references :Alumno, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
