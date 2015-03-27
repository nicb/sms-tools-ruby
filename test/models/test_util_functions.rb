require 'helper'
require File.expand_path(File.join(['..'] * 3, 'ext', 'util_functions', 'util_functions'), __FILE__)

class TestUtilFunctions < MiniTest::Test

	GENBH92LOBE_DRIVER = File.expand_path(File.join(['..'] * 2, 'fixtures', 'C', 'genbh92lobe_driver'), __FILE__)

  def test_genbh92lobe
		assert_nil size = input = output = nil
		IO::popen(GENBH92LOBE_DRIVER, 'r') do
			|fh|
      assert size = fh.gets().chomp()
			assert input = fh.gets().chomp()
			assert output = fh.gets().chomp()
		end
		assert size = size.to_i
		assert input = input.split(/,\s*/).map { |v| v.to_f }
		assert output = output.split(/,\s*/).map { |v| v.to_f }
		assert returned_output = []
		assert_nil UtilFunctions.genbh92lobe(input, returned_output, size)
		assert_equal output, returned_output
  end

end
