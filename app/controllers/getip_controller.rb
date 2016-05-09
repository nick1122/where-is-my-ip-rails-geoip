class GetipController < ApplicationController
  def home


   @info = GeoIP.new(Rails.root.join("GeoLiteCity.dat")).city getip
   @adsense = adsense_tag(client: 'ca-pub-6912701700811302', slot: '7818626078', dimension: '336x280')
  end


private
def getip

@ip = (request.ip).to_s

  end

end
