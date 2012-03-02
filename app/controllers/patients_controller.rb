class PatientsController < ApplicationController
	#before_filter :authorise, :only => [:new, :edit, :destroy, :create, :update]
  # GET /patients
  # GET /patients.json
  def index
    @patients = Patient.paginate(:page => params[:page], :per_page => 15)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @patients }
    end
  end
  
  def search
	@patients = Patient.search(params[:q]).paginate(:page => params[:page], :per_page => 3)
	render 'index'
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
    @patient = Patient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @patient }
    end
  end

  # GET /patients/new
  # GET /patients/new.json
  def new
    @patient = Patient.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @patient }
    end
  end

  # GET /patients/1/edit
  def edit
    @patient = Patient.find(params[:id])
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(params[:patient])
    respond_to do |format|
      if @patient.save && Patient.checkLastVisitDate(@patient.lastvisit)
	Registermailer.send_registration(@patient.patient_id).deliver
        format.html { redirect_to @patient, notice: 'Patient was successfully created.' }
        format.json { render json: @patient, status: :created, location: @patient }
      else if !Patient.checkLastVisitDate(@patient.lastvisit)
        format.html { render action: "new" }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      else
        format.html { render action: "new" }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PUT /patients/1
  # PUT /patients/1.json
  def update
    @patient = Patient.find(params[:id])

    respond_to do |format|
      if @patient.update_attributes(params[:patient])
        format.html { redirect_to @patient, notice: 'Patient was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient = Patient.find(params[:id])
    @patient.destroy

    respond_to do |format|
      format.html { redirect_to patients_url }
      format.json { head :ok }
    end
  end
end
