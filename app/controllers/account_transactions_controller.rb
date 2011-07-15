class AccountTransactionsController < ApplicationController
  # GET /account_transactions
  # GET /account_transactions.json
  def index
    @account_transactions = AccountTransaction.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @account_transactions }
    end
  end

  # GET /account_transactions/1
  # GET /account_transactions/1.json
  def show
    @account_transaction = AccountTransaction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @account_transaction }
    end
  end

  # GET /account_transactions/new
  # GET /account_transactions/new.json
  def new
    @account_transaction = AccountTransaction.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @account_transaction }
    end
  end

  # GET /account_transactions/1/edit
  def edit
    @account_transaction = AccountTransaction.find(params[:id])
  end

  # POST /account_transactions
  # POST /account_transactions.json
  def create
    @account_transaction = AccountTransaction.new(params[:account_transaction])

    respond_to do |format|
      if @account_transaction.save
        format.html { redirect_to @account_transaction, :notice => 'Account transaction was successfully created.' }
        format.json { render :json => @account_transaction, :status => :created, :location => @account_transaction }
      else
        format.html { render :action => "new" }
        format.json { render :json => @account_transaction.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /account_transactions/1
  # PUT /account_transactions/1.json
  def update
    @account_transaction = AccountTransaction.find(params[:id])

    respond_to do |format|
      if @account_transaction.update_attributes(params[:account_transaction])
        format.html { redirect_to @account_transaction, :notice => 'Account transaction was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @account_transaction.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /account_transactions/1
  # DELETE /account_transactions/1.json
  def destroy
    @account_transaction = AccountTransaction.find(params[:id])
    @account_transaction.destroy

    respond_to do |format|
      format.html { redirect_to account_transactions_url }
      format.json { head :ok }
    end
  end
end
