class AddAboutUsToContent < ActiveRecord::Migration
  def change
    add_column :contents, :about_us, :text
  end
end
