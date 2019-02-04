class DynamicPagesController < ApplicationController
  def welcome
    return  params[:first_name]
  end
end
