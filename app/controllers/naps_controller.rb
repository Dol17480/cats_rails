class NapsController < ApplicationController
  def index
    naps = Nap.where( { cat: params[:cat_id] } )
    render :json => naps.as_json( 
      {
        include: {
          home: {only: :name},
          cat: {only: :name}
          }
          })
  end

  def create
    nap = Nap.create ( 
    {
      naptime: params[:date],
      home_id: params[:home_id],
      cat_id: params[:cat_id],
      })
    render :json => nap
  end
end