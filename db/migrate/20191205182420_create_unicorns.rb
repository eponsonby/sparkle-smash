class CreateUnicorns < ActiveRecord::Migration[6.0]
  def change
    create_table :unicorns do |t|
      t.string :image

      t.timestamps
    end
  end
end
