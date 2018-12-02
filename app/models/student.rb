class Student < ActiveRecord::Base

  def name
    [fname, lname].compact.join(' ')
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable , :confirmable
         #:recoverable, :rememberable, :trackable, :validatable, :confirmable
  attr_accessor :profilepic
  has_many :books

  has_many :conversations, :foreign_key => :sender_id
  
  belongs_to :unversity


  validates :email, format: { with: /\.edu\z/, message: "only allows .edu addresses" }
  # has_attached_file :profilepic, styles: { medium: "300x300#", thumb: "100x100#", icon: "35x35#" }, default_url: "/images/:style/missing.jpg"
  has_attached_file :profilepic, styles: { medium: "300x300#", thumb: "100x100#", icon: "35x35#" }, default_url: "/images/:style/missing.jpg"
  validates_attachment_content_type :profilepic, content_type: /\Aimage\/.*\Z/

end  




