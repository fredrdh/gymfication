class User < ApplicationRecord
<<<<<<< HEAD
  has_many :challenge_dones
=======

  has_many :reward_given
>>>>>>> main
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
