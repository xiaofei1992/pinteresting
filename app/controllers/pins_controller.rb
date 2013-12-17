class PinsController < ApplicationController
  # GET /pins
  # GET /pins.json

  before_action :set_pin, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]


  def index
    @pins = Pin.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pins }
    end
  end

  # GET /pins/1
  # GET /pins/1.json
  def show
    @pin = Pin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /pins/new
  # GET /pins/new.json
  def new
    @pin = current_user.pins.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pin }
    end
  end

  # GET /pins/1/edit
  def edit
    @pin = Pin.find(params[:id])
  end

  # POST /pins
  # POST /pins.json
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
    @pin = Pin.find(params[:id])
      if @pin.update_attributes(params[:pin])
        redirect_to @pin, notice: 'Pin was successfully updated.' 
      else
        render action: "edit" 
      end
  end

  # DELETE /pins/1
  # DELETE /pins/1.json
  def destroy
    @pin = Pin.find(params[:id])
    @pin.destroy

    respond_to do |format|
      redirect_to pins_url 
    end
  end
end
