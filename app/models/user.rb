class User < ApplicationRecord
  enum role: [:member, :trainer]
  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= :member 
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
