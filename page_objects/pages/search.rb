module  Springer
  module PageObjects
    module Pages
      class Search <SitePrism::Page
        set_url $BASE

        element :content, '#content'

        section :header,Springer::PageObjects::Sections::Header,'#header'


        def search
          Searchs.new
        end
      end
    end
  end
end





