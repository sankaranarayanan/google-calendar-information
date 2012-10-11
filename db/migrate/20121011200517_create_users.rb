class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uid
      t.string :provider
      t.hstore :meta_data

      t.timestamps
    end
  end
end
