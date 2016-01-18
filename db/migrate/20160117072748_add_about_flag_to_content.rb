class AddAboutFlagToContent < ActiveRecord::Migration
  def change
    add_column :contents, :about_flag, :boolean
  end
end
