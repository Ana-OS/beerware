class User < ApplicationRecord
<<<<<<< HEAD
  has_many :users_beers
  has_many :beers, through: :users_beers

  has_many :reviews
=======


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
>>>>>>> db969e1738e0022d0c1a1a05b882e4a0cf0386ba

end
