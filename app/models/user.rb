class User < ApplicationRecord

  has_many :users_beers
  has_many :beers, through: :users_beers

  has_many :reviews



  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


end
