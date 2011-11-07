module RubyConfUA
  class Speakers

    def initialize
      @list = []
    end

    attr_reader :list

    def speaker(name, &details)
      @list << RubyConfUA::Speaker.new(name, &details)
    end

    class << self

      def instance
        @__instance__ ||= new
      end

      def list(&block)
        if block_given?
          instance = self.instance
          instance.instance_eval(&block)
        else
          self.instance.list
        end
      end

      def count
        list.count
      end

      def awesomeness
        awesomeness_counter = 1
        list.each do |speaker|
          awesomeness_counter += speaker.awesomeness || 750
        end
        awesomeness_counter
      end
    end
  end
end
