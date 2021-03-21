class Article < ApplicationRecord
    belongs_to :user
    attachment :image
    has_many :comments
    has_many :likes

    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :category  
    validates :category_id, presence: true

    with_options presence: true do
    validates :title
    validates :body
    end
end
