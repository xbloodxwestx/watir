require 'watir'

class LoginPage

  def initialize(browser)
    @browser=browser
  end

  def enter_username(username)
    @browser.text_field(:id=>"email").set username
  end

  def enter_password(userpass)
    @browser.text_field(:name=>"pass").set userpass
  end

  def click_login
    @browser.button(:type=>"submit").click
  end

end
