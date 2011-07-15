class TransactionTypeMastersController < ApplicationController
  # GET /transaction_type_masters
  # GET /transaction_type_masters.json
  def index
    @transaction_type_masters = TransactionTypeMaster.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @transaction_type_masters }
    end
  end

  # GET /transaction_type_masters/1
  # GET /transaction_type_masters/1.json
  def show
    @transaction_type_master = TransactionTypeMaster.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @transaction_type_master }
    end
  end

  # GET /transaction_type_masters/new
  # GET /transaction_type_masters/new.json
  def new
    @transaction_type_master = TransactionTypeMaster.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @transaction_type_master }
    end
  end

  # GET /transaction_type_masters/1/edit
  def edit
    @transaction_type_master = TransactionTypeMaster.find(params[:id])
  end

  # POST /transaction_type_masters
  # POST /transaction_type_masters.json
  def create
    @transaction_type_master = TransactionTypeMaster.new(params[:transaction_type_master])

    respond_to do |format|
      if @transaction_type_master.save
        format.html { redirect_to @transaction_type_master, :notice => 'Transaction type master was successfully created.' }
        format.json { render :json => @transaction_type_master, :status => :created, :location => @transaction_type_master }
      else
        format.html { render :action => "new" }
        format.json { render :json => @transaction_type_master.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /transaction_type_masters/1
  # PUT /transaction_type_masters/1.json
  def update
    @transaction_type_master = TransactionTypeMaster.find(params[:id])

    respond_to do |format|
      if @transaction_type_master.update_attributes(params[:transaction_type_master])
        format.html { redirect_to @transaction_type_master, :notice => 'Transaction type master was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @transaction_type_master.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /transaction_type_masters/1
  # DELETE /transaction_type_masters/1.json
  def destroy
    @transaction_type_master = TransactionTypeMaster.find(params[:id])
    @transaction_type_master.destroy

    respond_to do |format|
      format.html { redirect_to transaction_type_masters_url }
      format.json { head :ok }
    end
  end
end
