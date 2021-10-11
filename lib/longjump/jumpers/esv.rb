require "longjump/jumpers/base"

module Longjump
  module Jumpers
    class ESV < Base
      require "cgi"

      command :esv
      description "Launch ESV.org with Bible passage or search query"
      default_uri "https://www.esv.org/"

      def self.call(args)
        return default_uri unless args.any?
        query = args.join(" ")
        "#{default_uri}#{CGI.escape(query)}"
      end
    end
  end
end
