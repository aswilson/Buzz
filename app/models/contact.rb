class Contact < ActiveRecord::Base

#relationships
has_many :contact_phones
has_many :numbers, through: :contact_phones
has_one :user
has_many :reminders
has_many :messages

#validations
#at least first name required
#availability should be one of options we set

#methods
#time zone set by location or lat/long

#scopes
#by number
#alphabetical
#available
#unavailable
#status
#location
#timezone

end
