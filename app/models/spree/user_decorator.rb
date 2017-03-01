Spree::User.class_eval do
	validates_presence_of :address, :message => "Please enter address "
end