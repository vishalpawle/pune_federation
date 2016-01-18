class AddUsingScreenReaderSoftwareToContactinfo < ActiveRecord::Migration
  def change
    add_column :contactinfos, :using_screen_reader_software, :string
  end
end
