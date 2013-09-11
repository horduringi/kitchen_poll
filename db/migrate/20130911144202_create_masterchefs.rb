class CreateMasterchefs < ActiveRecord::Migration
  def change
    create_table :masterchefs do |t|
      t.voter :string
      t.votee :

      t.timestamps
    end
  end
end
