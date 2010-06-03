 require 'test/unit'
  class HelloWorldTest < Test::Unit::TestCase
    def test_my_default
      assert_equal 'Hello World!','Hello' + ' ' + 'World!' 
    end
  end

