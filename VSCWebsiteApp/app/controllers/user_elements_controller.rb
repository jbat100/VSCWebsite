class UserElementsController < ApplicationController
  # GET /user_elements
  # GET /user_elements.json
  def index
    @user_elements = UserElement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_elements }
    end
  end

  # GET /user_elements/1
  # GET /user_elements/1.json
  def show
    @user_element = UserElement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_element }
    end
  end

  # GET /user_elements/new
  # GET /user_elements/new.json
  def new
    @user_element = UserElement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_element }
    end
  end

  # GET /user_elements/1/edit
  def edit
    @user_element = UserElement.find(params[:id])
  end

  # POST /user_elements
  # POST /user_elements.json
  def create
    @user_element = UserElement.new(params[:user_element])

    respond_to do |format|
      if @user_element.save
        format.html { redirect_to @user_element, notice: 'User element was successfully created.' }
        format.json { render json: @user_element, status: :created, location: @user_element }
      else
        format.html { render action: "new" }
        format.json { render json: @user_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_elements/1
  # PUT /user_elements/1.json
  def update
    @user_element = UserElement.find(params[:id])

    respond_to do |format|
      if @user_element.update_attributes(params[:user_element])
        format.html { redirect_to @user_element, notice: 'User element was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_elements/1
  # DELETE /user_elements/1.json
  def destroy
    @user_element = UserElement.find(params[:id])
    @user_element.destroy

    respond_to do |format|
      format.html { redirect_to user_elements_url }
      format.json { head :no_content }
    end
  end
end
