class GetipController < ApplicationController
  def home


   @info = GeoIP.new(Rails.root.join("GeoLiteCity.dat")).city getip
  end

private
def getip

@ip = (request.ip).to_s

  end

end
