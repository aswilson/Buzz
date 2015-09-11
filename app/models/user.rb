class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

belongs_to :contact
has_many :reminders
has_many :messages
has_many :contacts, through: :messages
has_many :contacts, through: :reminders

#has devise options above, more devise statements need to be added in various files based on what guide says

end
