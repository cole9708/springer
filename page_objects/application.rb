module Springer
  module PageObjects
    class Application

      def initialize
        @pages={}
        @sections={}
      end


      def search
        @pages[:search] ||=Springer::PageObjects::Pages::Search.new
      end

      def search_results
        @pages[:search_results] ||=Springer::PageObjects::Pages::SearchResults.new
      end

      def header
        @sections[:header] ||=Springer::PageObjects::Sections::Header.new
      end

    end
  end
end
