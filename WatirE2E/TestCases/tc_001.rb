require 'watir'
require 'test/unit'
require '../Base/CreateDriver'
require '../Pages/Login_page'
require '../Assertions/compare'

class TC_001 < BaseClass

  def testCase1
    login=LoginPage.new (@@browser)
    validate=Compare.new
    actRes = validate.validateurl(@@browser, "https://es-la.facebook.com/")
    assert_true(actRes,"Error - URL NOT MATCHING")
    login.enter_username "Testing123"
    login.enter_password "Abcd"
    login.click_login
  end

end
