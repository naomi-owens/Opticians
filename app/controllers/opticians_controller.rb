class OpticiansController < ApplicationController
  # GET /opticians
  # GET /opticians.json
  def index
    @opticians = Optician.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @opticians }
    end
  end

  # GET /opticians/1
  # GET /opticians/1.json
  def show
    @optician = Optician.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @optician }
    end
  end

  # GET /opticians/new
  # GET /opticians/new.json
  def new
    @optician = Optician.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @optician }
    end
  end

  # GET /opticians/1/edit
  def edit
    @optician = Optician.find(params[:id])
  end

  # POST /opticians
  # POST /opticians.json
  def create
    @optician = Optician.new(params[:optician])

    respond_to do |format|
      if @optician.save
        format.html { redirect_to @optician, notice: 'Optician was successfully created.' }
        format.json { render json: @optician, status: :created, location: @optician }
      else
        format.html { render action: "new" }
        format.json { render json: @optician.errors, status: :unprocessable_entity }
        flash.now[:error] = "Invalid name/password combination." 
      end
    end
  end

  # PUT /opticians/1
  # PUT /opticians/1.json
  def update
    @optician = Optician.find(params[:id])

    respond_to do |format|
      if @optician.update_attributes(params[:optician])
        format.html { redirect_to @optician, notice: 'Optician was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @optician.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opticians/1
  # DELETE /opticians/1.json
  def destroy
    @optician = Optician.find(params[:id])
    @optician.destroy

    respond_to do |format|
      format.html { redirect_to opticians_url }
      format.json { head :ok }
    end
  end
end
