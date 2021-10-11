require "test_helper"

module Longjump
  module Jumpers
    class EsvTest < Minitest::Test
      def test_without_args
        assert_equal "https://www.esv.org/", ESV.call([])
      end

      def test_with_bible_passage
        expected_url = "https://www.esv.org/John+1%3A1"
        assert_equal expected_url, ESV.call(["John 1:1"])
      end
    end
  end
end
