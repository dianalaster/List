class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :url
      t.string :description

      t.timestamps
    end
  end
end
