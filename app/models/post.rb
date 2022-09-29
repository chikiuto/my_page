class Post < ApplicationRecord
    validates :name, {presence: true}
    validates :question, {presence: true, length: {maximum: 140}}
end
