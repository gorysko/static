module Static
  module Generators
    class Page < Base
      def directory_name
        sanitize_name(@title)
      end
    end
  end
end
