module  Springer
  module PageObjects
    module Pages
      class SearchResults <SitePrism::Page
        set_url '/search?query=cole'
        set_url_matcher /search\Wquery=\w+$/

        element :search_title, 'h1.number-of-search-results-and-search-terms'
       element :page_results,  '.functions-bar.functions-bar-top .number-of-pages'
        element :page_number, '.functions-bar.functions-bar-top input.page-number'
        element :pagination_error, '.functions-bar.functions-bar-top .pagination-error.error-message'




        def search_results
          SearchResults.new
        end
      end
    end
  end
end





