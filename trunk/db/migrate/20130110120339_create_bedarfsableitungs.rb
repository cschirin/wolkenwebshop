class CreateBedarfsableitungs < ActiveRecord::Migration
  def change
    create_table :bedarfsableitungs do |t|
      t.integer :AuTNr
      t.integer :BeTNr
      t.date :AuDatum
      t.date :BeDatum

      t.timestamps
    end
  end
end
