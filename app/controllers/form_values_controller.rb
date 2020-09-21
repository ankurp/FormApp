class FormValuesController < ApplicationController
  before_action :set_form_value, only: [:show, :edit, :update, :destroy]

  # GET /form_values
  # GET /form_values.json
  def index
    @form_values = FormValue.all
  end

  # GET /form_values/1
  # GET /form_values/1.json
  def show
  end

  # GET /form_values/new
  def new
    @form_value = FormValue.new
  end

  # GET /form_values/1/edit
  def edit
  end

  # POST /form_values
  # POST /form_values.json
  def create
    @form_value = FormValue.new(form_value_params)

    respond_to do |format|
      if @form_value.save
        format.html { redirect_to @form_value, notice: 'Form value was successfully created.' }
        format.json { render :show, status: :created, location: @form_value }
      else
        format.html { render :new }
        format.json { render json: @form_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /form_values/1
  # PATCH/PUT /form_values/1.json
  def update
    respond_to do |format|
      if @form_value.update(form_value_params)
        format.html { redirect_to @form_value, notice: 'Form value was successfully updated.' }
        format.json { render :show, status: :ok, location: @form_value }
      else
        format.html { render :edit }
        format.json { render json: @form_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /form_values/1
  # DELETE /form_values/1.json
  def destroy
    @form_value.destroy
    respond_to do |format|
      format.html { redirect_to form_values_url, notice: 'Form value was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_form_value
      @form_value = FormValue.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def form_value_params
      params.require(:form_value).permit(:form_attribute_id, :form_id, :value, :form_submission)
    end
end
