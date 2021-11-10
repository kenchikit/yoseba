class TagsController < ApplicationController
  def tag
    @tags = Tag.find_by(name: params[:tag_name])
    @sort = Tagmap.where(tag_id: @tags.id)
    
    @comedian = []
    @sort.each do |i|
      @comedian << Comedian.find_by(id:i.comedian_id)
    end

    @office = []
    @comedian.each do |com|
      @office << Office.find_by(id: com.office_id)
    end
  end

  def tags
    @tags = Tag.all
  end
end
