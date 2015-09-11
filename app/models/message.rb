class Message < ActiveRecord::Base

#relationships
belongs_to :user
belongs_to :contact

#validations
#pending and sent can’t be true at the same time
#has ids, text

#methods
#send on available if date not set

#scopes
#pending
#sent
#date
#by contact
#by user

end
