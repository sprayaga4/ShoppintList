class ListtodosController < ApplicationController
  before_action :set_listtodo, only: [:show, :edit, :update, :destroy]

  # GET /listtodos
  # GET /listtodos.json
  def index
    @listtodos = Listtodo.all
  end

  # GET /listtodos/1
  # GET /listtodos/1.json
  def show
  end

  # GET /listtodos/new
  def new
    @listtodo = Listtodo.new
  end

  # GET /listtodos/1/edit
  def edit
  end

  # POST /listtodos
  # POST /listtodos.json
  def create
    @listtodo = Listtodo.new(listtodo_params)

    respond_to do |format|
      if @listtodo.save
        format.html { redirect_to @listtodo, notice: 'Listtodo was successfully created.' }
        format.json { render :show, status: :created, location: @listtodo }
      else
        format.html { render :new }
        format.json { render json: @listtodo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listtodos/1
  # PATCH/PUT /listtodos/1.json
  def update
    respond_to do |format|
      if @listtodo.update(listtodo_params)
        format.html { redirect_to @listtodo, notice: 'Listtodo was successfully updated.' }
        format.json { render :show, status: :ok, location: @listtodo }
      else
        format.html { render :edit }
        format.json { render json: @listtodo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listtodos/1
  # DELETE /listtodos/1.json
  def destroy
    @listtodo.destroy
    respond_to do |format|
      format.html { redirect_to listtodos_url, notice: 'Listtodo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listtodo
      @listtodo = Listtodo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listtodo_params
      params.require(:listtodo).permit(:todo, :due)
    end
end
