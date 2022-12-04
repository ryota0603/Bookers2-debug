class SearchesController < ApplicationController
   before_action :authenticate_user!
  # 条件分岐は各modelに記述
  def search
    @model=params[:model]
       @content=params[:content]
       @method=params[:method]
    if @model == 'user'
      @records=User.search_for(@content,@method)
    else
      @records=Book.search_for(@content,@method)
    end
  end
  
end
