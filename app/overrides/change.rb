# Deface::Override.new(:virtual_path => 'spree/shared/_main_nav_bar',
#   :replace => "li#home-link",
#   :text => "<li id='home-link' data-hook><%= link_to 'Login', spree.login_path %></li>",
#   :name => "change_home_text")

Deface::Override.new(:virtual_path => "spree/shared/_login",
						:insert_after => "#spree_user[remember_me]",
						:text => "<p class= 'btn btn-lg btn-success btn-block fb-btn'><%= link_to 'Login with facebook', spree.root_path %></p>",
					  :name => 'add social media button'
					)

Deface::Override.new(:virtual_path => 'spree/shared/_main_nav_bar',
										  :insert_after => "li#home-link",
										  :text => "<li id='home-link' data-hook><%= link_to 'Sign up', spree.signup_path %></li>",
										  :name => "add sign up link"
										)

Deface::Override.new(:virtual_path => "spree/shared/_user_form",
						:insert_after => "#password-credentials",
						:text => "<div class= 'form-group'>
											<%= f.text_area :address, :class => 'form-control', :placeholder => 'Enter Address' %>
										</div>",
					  :name => 'add address field sign up page'
					)

Deface::Override.new(:virtual_path => "spree/user_sessions/new",
						:insert_before => "div.text-center",
						:text => "<p class= 'btn btn-lg btn-success btn-block fb-btn'><%= link_to 'Login with facebook', spree.root_path %></p>",
					  :name => 'add facebook login'
					)
