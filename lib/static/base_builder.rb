module Static
  module Builders
    class Base
      def initialize(template_file, output_directory)
        @template_file = template_file
        @output_directory = output_directory
      end

      def build!
        File.write(output_file_path, render_template)
      end

      def output_file_path
        File.join @output_directory, output_file_name
      end

      def output_file_name
        @template_file
          .split('/')[-1]
          .split('.')[0..-2]
          .join('.')
      end

      def render_template
        raise StandardError, 'Error'
      end
    end
  end
end
