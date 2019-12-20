class AttachFile < ApplicationRecord
	mount_uploader :image, ImageUploader
end
