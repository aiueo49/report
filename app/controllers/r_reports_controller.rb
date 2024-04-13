class RReportsController < ApplicationController
  before_action :set_r_report, only: %i[ show edit update destroy ]

  # GET /r_reports or /r_reports.json
  def index
    @r_reports = RReport.all
  end

  # GET /r_reports/1 or /r_reports/1.json
  def show
  end

  # GET /r_reports/new
  def new
    @r_report = RReport.new
  end

  # GET /r_reports/1/edit
  def edit
  end

  # POST /r_reports or /r_reports.json
  def create
    @r_report = RReport.new(r_report_params)

    respond_to do |format|
      if @r_report.save
        format.html { redirect_to r_report_url(@r_report), notice: "R report was successfully created." }
        format.json { render :show, status: :created, location: @r_report }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @r_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /r_reports/1 or /r_reports/1.json
  def update
    respond_to do |format|
      if @r_report.update(r_report_params)
        format.html { redirect_to r_report_url(@r_report), notice: "R report was successfully updated." }
        format.json { render :show, status: :ok, location: @r_report }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @r_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /r_reports/1 or /r_reports/1.json
  def destroy
    @r_report.destroy!

    respond_to do |format|
      format.html { redirect_to r_reports_url, notice: "R report was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_r_report
      @r_report = RReport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def r_report_params
      params.require(:r_report).permit(:title, :content)
    end
end
