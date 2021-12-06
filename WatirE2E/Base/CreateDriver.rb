require 'watir'
require 'selenium-webdriver'
require 'test/unit'
require '../Utilities/ConfigRead'

class BaseClass < Test::Unit::TestCase

  def setup

    Selenium::WebDriver::Chrome.driver_path="../Driver/chromedriver.exe"
    @@browser = Watir::Browser.new :chrome
    @@browser.window.maximize
    config=ReadConfig.new
    @@browser.goto config.readconfigdata("applicationURL")
  end

  def teardown
    @@browser.close
  end

  def testCase1

  end

end
