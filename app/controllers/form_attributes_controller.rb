class FormAttributesController < ApplicationController
  before_action :set_form_attribute, only: [:show, :edit, :update, :destroy]

  # GET /form_attributes
  # GET /form_attributes.json
  def index
    @form_attributes = FormAttribute.all
  end

  # GET /form_attributes/1
  # GET /form_attributes/1.json
  def show
  end

  # GET /form_attributes/new
  def new
    @form_attribute = FormAttribute.new
  end

  # GET /form_attributes/1/edit
  def edit
  end

  # POST /form_attributes
  # POST /form_attributes.json
  def create
    @form_attribute = FormAttribute.new(form_attribute_params)

    respond_to do |format|
      if @form_attribute.save
        format.html { redirect_to @form_attribute, notice: 'Form attribute was successfully created.' }
        format.json { render :show, status: :created, location: @form_attribute }
      else
        format.html { render :new }
        format.json { render json: @form_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /form_attributes/1
  # PATCH/PUT /form_attributes/1.json
  def update
    respond_to do |format|
      if @form_attribute.update(form_attribute_params)
        format.html { redirect_to @form_attribute, notice: 'Form attribute was successfully updated.' }
        format.json { render :show, status: :ok, location: @form_attribute }
      else
        format.html { render :edit }
        format.json { render json: @form_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /form_attributes/1
  # DELETE /form_attributes/1.json
  def destroy
    @form_attribute.destroy
    respond_to do |format|
      format.html { redirect_to form_attributes_url, notice: 'Form attribute was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_form_attribute
      @form_attribute = FormAttribute.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def form_attribute_params
      params.require(:form_attribute).permit(:label, :field_type)
    end
end
