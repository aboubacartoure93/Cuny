class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable , :confirmable
         #:recoverable, :rememberable, :trackable, :validatable, :confirmable
  attr_accessor :profilepic
  has_many :books
  belongs_to :unversity

  validates :email, format: { with: /\.edu\z/, message: "only allows .edu addresses" }
  has_attached_file :profilepic, styles: { medium: "300x300#", thumb: "100x100#", icon: "35x35#" }, default_url: "/images/:style/missing.jpg"
  validates_attachment_content_type :profilepic, content_type: /\Aimage\/.*\Z/

end  