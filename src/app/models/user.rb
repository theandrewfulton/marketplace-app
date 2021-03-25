class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:stripe_connect]
  has_many :listings
  # check stripe columns in user field to determine if user can sell
  def can_receive_payments?
    uid? && provider? && access_code? && publishable_key?
  end
  # roles
  enum role: {normal: 0, super_user: 1, moderator: 2}
end
