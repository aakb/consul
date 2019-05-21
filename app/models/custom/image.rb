require_dependency Rails.root.join('app', 'models', 'image').to_s

class Image < ApplicationRecord
  MAX_IMAGE_SIZE = 20.megabyte

  def validate_attachment_size
    if imageable_class &&
       attachment_file_size > 20.megabytes
      errors.add(:attachment, I18n.t("images.errors.messages.in_between",
                                   min: "0 Bytes",
                                   max: "#{imageable_max_file_size} MB"))
    end
  end
end