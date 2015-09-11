class Number < ActiveRecord::Base
has_many :contact_phones
has_many :contacts, through: :contact_phones

#type should be “mobile” “work” or “home”

end
