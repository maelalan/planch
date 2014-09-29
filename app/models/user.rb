class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable 
  devise :database_authenticatable, :rememberable, :trackable, :validatable, :registerable 
  has_many :charges
  has_one :comments
  
end
