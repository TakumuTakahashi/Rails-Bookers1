class Book < ApplicationRecord
  # 本のタイトル、本の感想を空白で投稿したらバリデーションチェック
  validates :title, :body, presence: true
end
