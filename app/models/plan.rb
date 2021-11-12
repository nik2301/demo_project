class Plan < ApplicationRecord
    has_many :subsciptions
    has_many :users, through: :subscriptions
end
