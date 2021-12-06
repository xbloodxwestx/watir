require 'watir'
require 'selenium-webdriver'
require 'test/unit'
require '../Utilities/ConfigRead'

class BaseClass < Test::Unit::TestCase

  def setup
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_option(:detach, true)
    Selenium::WebDriver::Chrome.driver_path="../Driver/chromedriver.exe"
    @@browser = Watir::Browser.new :chrome, :options => options
    @@browser.window.maximize
    config=ReadConfig.new
    @@browser.goto config.readconfigdata("applicationURL")
  end

end
