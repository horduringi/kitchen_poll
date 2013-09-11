class CreateMasterchefs < ActiveRecord::Migration
  def change
    create_table :masterchefs do |t|
      t.integer :voter
      t.integer :votefor

      t.timestamps
    end
  end
end
