require 'watir'
require 'selenium-webdriver'

options = Selenium::WebDriver::Chrome::Options.new
options.add_option(:detach, true)
Selenium::WebDriver::Chrome.driver_path="G:/chromedriver.exe"
browser = Watir::Browser.new :chrome, :options => options

browser.window.maximize

browser.goto "https://www.facebook.com/"

puts browser.url
puts browser.title
browser.text_field(:name=>"email").set "ed_win025@hotmail.com"
browser.text_field(:name=>"pass").set ""

browser.button(:type=>"submit").click
