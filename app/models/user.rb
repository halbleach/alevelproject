class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role
  has_many :students
  has_many :lessons

  validates_presence_of :title
  validates_presence_of :firstname
  validates_presence_of :lastname
  before_save :assign_role

  def assign_role
  	self.role = Role.find_by name: "Default" if self.role.nil?
  end
end
