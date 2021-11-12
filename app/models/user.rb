class User < ApplicationRecord
  rolify

  #making many to many associations with
  #plan and subscriptions
  has_many :subscriptions
  has_many :plans, through: :subscriptions

  def active_subscription
    subscriptions.where(active: true)
  end
 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  after_create :assign_default_role

  def assign_default_role
      self.add_role(:member) if self.roles.blank?
  end

end
