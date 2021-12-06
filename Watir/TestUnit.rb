require 'test/unit'

class VerifyLogin < Test::Unit::TestCase

  def testCase1
    puts "Person enter username"
    puts "Person enter password"
    assert_true(false, "[Error ] - Not match")
    assert_false(true, "[Error ] - Not match")
    assert_equal("Hola","hola", "[Error ] - Not match")
    assert_not_equal("Hola","Hola", "[Error ] - Not match")
  end

  def teardown
    puts "Close Browser"
  end

  def setup
    puts "Start browser URL"
  end

  def testCase2
    puts "This is test case 2"
  end

end
