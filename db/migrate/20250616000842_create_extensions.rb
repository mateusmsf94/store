class CreateExtensions < ActiveRecord::Migration[8.0]
  def change
    create_table :extensions do |t|
      t.string :title
      t.text :subtitle

      t.timestamps
    end
  end
end
