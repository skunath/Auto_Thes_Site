class HomeController < ApplicationController
  def index
  end

  def translate
    
    
  end


  def process_translate
    @result = Cedict.retrieve_word_list(params[:search])
  end

end
