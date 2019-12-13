class Upload < ApplicationRecord

  has_many_attached :files, dependent: :purge_later

  belongs_to :user
end
