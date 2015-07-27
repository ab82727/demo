class PagesController < ApplicationController

  def home
    @numbers=(1..46).to_a.sample(6)

  end

  def about
    params[:name] # => "國瑜"
    #@name="#{params[:first_name]} #{params[:last_name]}"
  end

end
