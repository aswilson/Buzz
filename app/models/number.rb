class Number < ActiveRecord::Base

#relationships
has_many :contact_phones
has_many :contacts, through: :contact_phones

#validations
#type should be “mobile” “work” or “home”

#methods
#number saved as correct format
#default active

#scopes
#ordered by type
#active
#inactive
#by contact

end
