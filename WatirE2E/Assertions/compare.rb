require 'watir'

class Compare
    result = false

    def validateurl(browser, expURL)
      if(browser.url.eql?(expURL))
        result=true
      end
      return result
    end
    
end
