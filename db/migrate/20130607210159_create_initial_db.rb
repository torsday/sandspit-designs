class CreateInitialDb < ActiveRecord::Migration

  def up

    create_table :apps do |t|
      t.string :name, :null => false
      t.text :description, :null => false
      t.string :store_url, :null => false
      t.string :main_photo_url, :null => false
      t.string :color_background, :null => false
      t.string :color_text, :null => false
    end

    create_table :sample_photos do |t|
      t.references :app, :null => false
      t.string :url, :null => false
    end

  end

  def down
    drop_table :apps
    drop_table :sample_photos
  end

end
