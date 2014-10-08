require 'open3'
$:.unshift File.join(File.dirname(__FILE__))
module Beacon
  class Magic
    
    def initialize
      @beacon = %{ibeacon --scan}
  	end
  
    def parse_advertisement
      while(@ad = IO.popen(@beacon)) do
        ibeacon = Ibeacon.new
        @ad.readline # discard
        ad = ibeacon.parse_advertisement(@ad.readline)
        return ad
      end
    end
  
    def parse_raw
    end
  end
end