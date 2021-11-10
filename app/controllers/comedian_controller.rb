class ComedianController < ApplicationController
  def detail
    # 半角スペースに置換
    name = params[:name].gsub('_',' ')
    @comedian = Comedian.find_by(name: name)
    @office = Office.find_by(id: @comedian.office_id)
    @tags = Tagmap.where(comedian_id: @comedian.id)
    
    #ハッシュ
    @tagname = []
    @tags.each do |i|
      @tagname << Tag.find_by(id:i.tag_id)
    end
  end
end
