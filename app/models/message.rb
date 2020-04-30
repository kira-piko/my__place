class Message < ApplicationRecord
belongs_to :user

validates :content,presence: true, length: { maximum: 300}

mount_uploader :image, ImageUploader
end



# creatでバリデーションをかけたままだとdbの保存されないのでコメントアウト