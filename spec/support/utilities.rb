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
	fill_in "Name",					with: "Example User"
	fill_in "Email",				with: "user@example.com"
	fill_in "Password",			with:	"foobar"
	fill_in "Confirmation", with: "foobar"
end
