class Admin::PhasesController < ApplicationController
  before_action :set_admin_phase, only: %i[ show edit update destroy ]

  # GET /admin/phases or /admin/phases.json
  def index
    @admin_phases = Admin::Phase.all
  end

  # GET /admin/phases/1 or /admin/phases/1.json
  def show
  end

  # GET /admin/phases/new
  def new
    @admin_phase = Admin::Phase.new
  end

  # GET /admin/phases/1/edit
  def edit
  end

  # POST /admin/phases or /admin/phases.json
  def create
    @admin_phase = Admin::Phase.new(admin_phase_params)

    respond_to do |format|
      if @admin_phase.save
        format.html { redirect_to @admin_phase, notice: "Phase was successfully created." }
        format.json { render :show, status: :created, location: @admin_phase }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_phase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/phases/1 or /admin/phases/1.json
  def update
    respond_to do |format|
      if @admin_phase.update(admin_phase_params)
        format.html { redirect_to @admin_phase, notice: "Phase was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_phase }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_phase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/phases/1 or /admin/phases/1.json
  def destroy
    @admin_phase.destroy!

    respond_to do |format|
      format.html { redirect_to admin_phases_path, status: :see_other, notice: "Phase was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_phase
      @admin_phase = Admin::Phase.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_phase_params
      params.require(:admin_phase).permit(:name, :start_date, :end_date)
    end
end
