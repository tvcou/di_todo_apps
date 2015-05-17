class Project < ActiveRecord::Base
#  validates :title, presence: true     # デフォルトメッセージ
  validates :title, presence: {message: "入力してください"}
end
