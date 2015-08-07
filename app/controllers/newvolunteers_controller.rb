class NewvolunteersController < ApplicationController
  before_action :set_newvolunteer, only: [:show, :edit, :update, :destroy]

  # GET /newvolunteers
  # GET /newvolunteers.json
  def index
    @newvolunteers = Newvolunteer.all
  end

  # GET /newvolunteers/1
  # GET /newvolunteers/1.json
  def show
  end

  # GET /newvolunteers/new
  def new
    @newvolunteer = Newvolunteer.new
  end

  # GET /newvolunteers/1/edit
  def edit
  end

  # POST /newvolunteers
  # POST /newvolunteers.json
  def create
    @newvolunteer = Newvolunteer.new(newvolunteer_params)

    respond_to do |format|
      if @newvolunteer.save
        format.html { redirect_to @newvolunteer, notice: 'Newvolunteer was successfully created.' }
        format.json { render :show, status: :created, location: @newvolunteer }
      else
        format.html { render :new }
        format.json { render json: @newvolunteer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newvolunteers/1
  # PATCH/PUT /newvolunteers/1.json
  def update
    respond_to do |format|
      if @newvolunteer.update(newvolunteer_params)
        format.html { redirect_to @newvolunteer, notice: 'Newvolunteer was successfully updated.' }
        format.json { render :show, status: :ok, location: @newvolunteer }
      else
        format.html { render :edit }
        format.json { render json: @newvolunteer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newvolunteers/1
  # DELETE /newvolunteers/1.json
  def destroy
    @newvolunteer.destroy
    respond_to do |format|
      format.html { redirect_to newvolunteers_url, notice: 'Newvolunteer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newvolunteer
      @newvolunteer = Newvolunteer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newvolunteer_params
      params.require(:newvolunteer).permit(:lasname, :name, :birthdate, :ci, :address, :city, :phone, :cell, :mail, :ocupation, :free, :reason, :area)
    end
end
