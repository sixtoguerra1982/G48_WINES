class CreateStrains < ActiveRecord::Migration[5.2]
  def change
    create_table :strains do |t|
      t.string :name

      t.timestamps
    end
  end
end
