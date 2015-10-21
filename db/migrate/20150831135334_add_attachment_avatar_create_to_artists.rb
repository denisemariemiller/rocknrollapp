class AddAttachmentAvatarCreateToArtists < ActiveRecord::Migration
  def self.up
    change_table :artists do |t|
      t.attachment :avatar
      t.attachment :create
    end
  end

  def self.down
    remove_attachment :artists, :avatar
    remove_attachment :artists, :create
  end
end
