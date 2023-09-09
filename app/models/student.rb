class Student < ActiveRecord::Base

  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable , :confirmable
         #:recoverable, :rememberable, :trackable, :validatable, :confirmable
  attr_accessor :profilepic
  has_many :books, dependent: :destroy
  has_many :tutors, dependent: :destroy
  has_many :electronics_computers, dependent: :destroy
  has_many :housings, dependent: :destroy 
  has_many :vehicules, dependent: :destroy
  has_many :other_articles, dependent: :destroy

  has_many :conversations, :foreign_key => :sender_id, dependent: :destroy
  has_many :conversations, :foreign_key => :recipient_id, dependent: :destroy
  
  has_many :join_universities_students, dependent: :destroy
  has_many :universities, through: :join_universities_students, dependent: :destroy #, source: "university"

  #has_many :joined_events, through: :events_users, source: "event"

  #validates :email, format: { with: /\.cuny.edu\z/, with:/\.suny.edu\z/, with:/\.nyu.edu\z/, message: "only allows cuny.edu addresses" }
  # has_attached_file :profilepic, styles: { medium: "300x300#", thumb: "100x100#", icon: "35x35#" }, default_url: "/images/:style/missing.jpg"
  has_attached_file :profilepic, styles: { medium: "300x300#", thumb: "100x100#", icon: "35x35#" }, default_url: "/images/:style/missing.jpg"
  validates_attachment_content_type :profilepic, content_type: /\Aimage\/.*\Z/


  def name
    [fname, lname].compact.join(' ')
  end



end   




