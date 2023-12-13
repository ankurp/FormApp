class FormSubmissionsController < ApplicationController
  before_action :set_form_submission, only: [:show, :edit, :update, :destroy]

  # GET /form_submissions
  # GET /form_submissions.json
  def index
    @form_submissions = FormSubmission.all
  end

  # GET /form_submissions/1
  # GET /form_submissions/1.json
  def show
  end

  # GET /form_submissions/new
  def new
    @form_submission = User.first.form_submissions.build(form_id: params[:id])
    @form_submission.form_values = @form_submission.form_attributes.map do |fa|
      @form_submission.form_values.build(form_attribute: fa)
    end
  end

  # GET /form_submissions/1/edit
  def edit
    @form_submission = FormSubmission.find(params[:id])
  end

  # POST /form_submissions
  # POST /form_submissions.json
  def create
    @form_submission = User.first.form_submissions.build(form_submission_params)
    respond_to do |format|
      if @form_submission.save
        format.html { redirect_to @form_submission, notice: "Form submission was successful." }
        format.json { render :show, status: :created, location: @form_submission }
      else
        format.html { render :new }
        format.json { render json: @form_submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /form_submissions/1
  # PATCH/PUT /form_submissions/1.json
  def update
    respond_to do |format|
      @form_submission.form_values = []
      if @form_submission.update(form_submission_params)
        format.html { redirect_to @form_submission, notice: "Form submission was successfully updated." }
        format.json { render :show, status: :ok, location: @form_submission }
      else
        format.html { render :edit }
        format.json { render json: @form_submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /form_submissions/1
  # DELETE /form_submissions/1.json
  def destroy
    @form_submission.destroy
    respond_to do |format|
      format.html { redirect_to form_submissions_url, notice: "Form submission was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_form_submission
    @form_submission = FormSubmission.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def form_submission_params
    params.require(:form_submission).permit(:form_id, form_values_attributes: [:form_attribute_id, :value])
  end
end
