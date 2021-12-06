require 'watir'
require 'selenium-webdriver'
require 'test/unit'

class TC001 < Test::Unit::TestCase

  def setup
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_option(:detach, true)
    Selenium::WebDriver::Chrome.driver_path="G:/chromedriver.exe"
    @browser = Watir::Browser.new :chrome, :options => options
    @browser.window.maximize
    @browser.goto "https://www.facebook.com/"
  end

  def teardown
    @browser.close
  end

  def testCase1 
    actTitle=@browser.title
    expTitle="Facebook - Inicia sesión o regístrate"
    assert_true(actTitle.include?(expTitle), "[Error] - Title not match")
    @browser.text_field(:id=>"email").set "hello@123"
    @browser.text_field(:name=>"pass").set "abcd123"
    @browser.button(:type=>"submit").click
  end


end
