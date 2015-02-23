class CreateGists < ActiveRecord::Migration
  def change
    create_table :gists do |t|
      t.text :snippet
      t.string :lang
      t.string :description

      t.timestamps null: false
    end
  end
end
