class Message < ApplicationRecord
    belongs_to :user
    validates :message,presence: true
    scope :custom_display ,-> {order(:created_at).last(5)}
end