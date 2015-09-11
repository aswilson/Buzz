class Contact < ActiveRecord::Base
has_many :contact_phones
has_many :numbers, through: :contact_phones
has_one :user
has_many :reminders
has_many :messages

#at least first name required
#availability should be one of options we set

end
