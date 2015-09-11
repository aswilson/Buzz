class Reminder < ActiveRecord::Base

#relationships
belongs_to :user
belongs_to :contact

#validations
#has ids
#pending and done can’t be true at same time

#methods
#to be reminded when date or when available if no date set

#scopes
#pending
#done
#by user
#by contact

end
