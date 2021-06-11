class Article < ApplicationRecord
  # カラムごとに設定
  validates :title, presence: true
  validates :content, presence: true
end
