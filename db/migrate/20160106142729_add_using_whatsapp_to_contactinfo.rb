class AddUsingWhatsappToContactinfo < ActiveRecord::Migration
  def change
    add_column :contactinfos, :using_whatsapp, :string
  end
end
