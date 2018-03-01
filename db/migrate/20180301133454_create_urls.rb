class CreateUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :urls do |t|
      t.string :basicUrl
      t.string :newUrl

      t.timestamps
    end
  end
end
