require 'minitest/autorun'

class SampleTest < Minitest::Test
  def test_sample
    return assert_equal 'RUBY', 'ruby'.upcase
  end
end
