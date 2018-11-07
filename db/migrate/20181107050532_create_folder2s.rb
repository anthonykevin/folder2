class CreateFolder2s < ActiveRecord::Migration[5.1]
  def change
    create_table :folder2s do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
