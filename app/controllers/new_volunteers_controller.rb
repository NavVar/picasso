class NewVolunteersController < ApplicationController
  before_action :set_new_volunteer, only: [:show, :edit, :update, :destroy]

  # GET /new_volunteers
  # GET /new_volunteers.json
  def index
    @new_volunteers = NewVolunteer.all
  end

  # GET /new_volunteers/1
  # GET /new_volunteers/1.json
  def show
  end

  # GET /new_volunteers/new
  def new
    @new_volunteer = NewVolunteer.new
  end

  # GET /new_volunteers/1/edit
  def edit
  end

  # POST /new_volunteers
  # POST /new_volunteers.json
  def create
    @new_volunteer = NewVolunteer.new(new_volunteer_params)

    respond_to do |format|
      if @new_volunteer.save
        format.html { redirect_to @new_volunteer, notice: 'New volunteer was successfully created.' }
        format.json { render :show, status: :created, location: @new_volunteer }
      else
        format.html { render :new }
        format.json { render json: @new_volunteer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_volunteers/1
  # PATCH/PUT /new_volunteers/1.json
  def update
    respond_to do |format|
      if @new_volunteer.update(new_volunteer_params)
        format.html { redirect_to @new_volunteer, notice: 'New volunteer was successfully updated.' }
        format.json { render :show, status: :ok, location: @new_volunteer }
      else
        format.html { render :edit }
        format.json { render json: @new_volunteer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_volunteers/1
  # DELETE /new_volunteers/1.json
  def destroy
    @new_volunteer.destroy
    respond_to do |format|
      format.html { redirect_to new_volunteers_url, notice: 'New volunteer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_volunteer
      @new_volunteer = NewVolunteer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_volunteer_params
      params.require(:new_volunteer).permit(:lasname, :name, :birthdate, :ci, :address, :city, :phone, :cell, :mail, :ocupation, :free, :reason, :area)
    end
end
