class CreateWinesOenologists < ActiveRecord::Migration[5.2]
  def change
    create_table :wines_oenologists do |t|
      t.references :wine, foreign_key: true
      t.references :oenologist, foreign_key: true
      t.integer :note

      t.timestamps
    end
  end
end
