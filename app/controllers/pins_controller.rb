class PinsController < ApplicationController

  #before_action :set_pin, only: [:show, :edit, :update, :destroy]
  #before_action :authenticate_user!, except: [:index, :show]


  def index
    @pins = Pin.all
  end

  def show
  end

  def new
    @pin = current_user.pins.build
  end

  def edit
  end

  def create
    @pin = current_user.pins.build(params[:pin])
      if @pin.save
        redirect_to @pin, notice: 'Pin was successfully created.' 
      else
        render action: "new" 
      end
    end

  # PUT /pins/1
  # PUT /pins/1.json
  def update
      if @pin.update_attributes(params[:pin])
        redirect_to @pin, notice: 'Pin was successfully updated.' 
      else
        render action: "edit" 
      end
  end

  # DELETE /pins/1
  # DELETE /pins/1.json
  def destroy
    @pin.destroy
      redirect_to pins_url 
  end
end