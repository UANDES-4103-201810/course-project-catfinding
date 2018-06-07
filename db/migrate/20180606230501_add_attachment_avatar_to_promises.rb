class AddAttachmentAvatarToPromises < ActiveRecord::Migration[5.2]
  def self.up
    change_table :promises do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :promises, :avatar
  end
end
