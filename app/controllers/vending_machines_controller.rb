class VendingMachinesController < ApplicationController
  # GET /vending_machines
  # GET /vending_machines.json
  def index
    @vending_machines = VendingMachine.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vending_machines }
    end
  end

  # GET /vending_machines/1
  # GET /vending_machines/1.json
  def show
    @vending_machine = VendingMachine.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vending_machine }
    end
  end

  # GET /vending_machines/new
  # GET /vending_machines/new.json
  def new
    authorize! :create, VendingMachine
    @vending_machine = VendingMachine.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vending_machine }
    end
  end

  # GET /vending_machines/1/edit
  def edit
    authorize! :update, VendingMachine
    @vending_machine = VendingMachine.find(params[:id])
  end

  # POST /vending_machines
  # POST /vending_machines.json
  def create
    authorize! :create, VendingMachine
    @vending_machine = VendingMachine.new(params[:vending_machine])

    respond_to do |format|
      if @vending_machine.save
        flash[:success] = I18n.t('vending_machines.create.success')
        format.html { redirect_to @vending_machine  }
        format.json { render json: @vending_machine, status: :created, location: @vending_machine }
      else
        format.html { render action: "new" }
        format.json { render json: @vending_machine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vending_machines/1
  # PUT /vending_machines/1.json
  def update
    authorize! :update, VendingMachine
    @vending_machine = VendingMachine.find(params[:id])

    respond_to do |format|
      if @vending_machine.update_attributes(params[:vending_machine])
        flash[:success] = I18n.t('vending_machines.update.success')
        format.html { redirect_to @vending_machine }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vending_machine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vending_machines/1
  # DELETE /vending_machines/1.json
  def destroy
    authorize! :destroy, VendingMachine
    @vending_machine = VendingMachine.find(params[:id])
    @vending_machine.destroy
    flash[:success] = I18n.t('vending_machines.delete.success')

    respond_to do |format|
      format.html { redirect_to vending_machines_url }
      format.json { head :no_content }
    end
  end
end
