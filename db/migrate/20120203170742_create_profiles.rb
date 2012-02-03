class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :bio
      t.string :website

      t.timestamps
    end
  end
end
