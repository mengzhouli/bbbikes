class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :bikes, dependent: :destroy
  has_many :bookings
  has_many :reviews, through: :bikes
  mount_uploader :photo, PhotoUploader

  
end
