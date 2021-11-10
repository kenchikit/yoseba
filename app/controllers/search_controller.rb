class SearchController < ApplicationController
  def index
    unless params[:q].blank?
      @comedians = Comedian.search(params[:q])
      
      if @comedians.empty?
        @message = "データが１件もありません"
      else
        #ハッシュ
        @office = []
        @comedians.each do |com|
          @office << Office.find_by(id: com.office_id)
        end
        # @message = "お探しの人は見つかりましたか？"
      end
    end
  end
end
