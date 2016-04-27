module  Springer
  module PageObjects
    module Sections
      class Header <SitePrism::Section


        element :search_bar, 'input#query'
        element :submit_search, '.search-submit'
        element :sign_in, 'a#register-link'
        element :logo, 'a#logo'



        def header
          Header.new
        end
      end
    end
  end
end





