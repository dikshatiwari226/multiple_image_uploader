class CreateAttachFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :attach_files do |t|
      t.string :title
      t.string :image

      t.timestamps
    end
  end
end
