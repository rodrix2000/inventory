require 'spec_helper'

describe "user registration" do
  it "allows new users to register with an email address and password" do
    visit "/users/sign_up"

    fill_in "Email",                 :with => "spiderman@example.com"
    fill_in "Password",              :with => "spiderman"
    fill_in "Password confirmation", :with => "spiderman"

    click_button "Sign up"

    # page.should have_content("Welcome! You have signed up successfully.")
  end
end

describe "user sign in" do
  it "allows users to sign in after they have registered" do
    user = User.create(:email    => "spiderman@example.com",
                       :password => "spiderman")

    visit "/users/sign_in"

    fill_in "Email",    :with => "spiderman@example.com"
    fill_in "Password", :with => "spiderman"

    click_button "Sign in"

    # page.should have_content("Signed in successfully.")
  end
end


