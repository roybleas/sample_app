include ApplicationHelper

def full_title(page_title)
	base_title = "Ruby on Rails Tutorial Sample App"
	if page_title.empty?
		base_title
	else
		"#{base_title} | #{page_title}"
	end
end

def signup_valid_example
	fill_in "Name",							with: "Example User"
	fill_in "Email",						with: "user@example.com"
	fill_in "Password",					with:	"foobar"
	fill_in "Confirm Password", with: "foobar"
end

def sign_in(user, options={setpath: signin_path})
	if options[:no_capybara]
		# Sign in when not using Capybara
		remember_token = User.new_remember_token
		cookies[:remember_token] = remember_token
		user.update_attribute(:remember_token, User.digest(remember_token))
	else
		visit options[:setpath]
		fill_in "Email", 		with: user.email.upcase
		fill_in "Password", with: user.password
		click_button "Sign in"
	end
end

