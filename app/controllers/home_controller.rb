class HomeController < ApplicationController
  def index
    @comedians = Comedian.order("RANDOM()").limit(12)
    
    @office = []
    @comedians.each do |com|
      @office << Office.find_by(id: com.office_id)
    end
  end
end
