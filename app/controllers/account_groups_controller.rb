class AccountGroupsController < ApplicationController
  # GET /account_groups
  # GET /account_groups.json
  def index
    @account_groups = AccountGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @account_groups }
    end
  end

  # GET /account_groups/1
  # GET /account_groups/1.json
  def show
    @account_group = AccountGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @account_group }
    end
  end

  # GET /account_groups/new
  # GET /account_groups/new.json
  def new
    @account_group = AccountGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @account_group }
    end
  end

  # GET /account_groups/1/edit
  def edit
    @account_group = AccountGroup.find(params[:id])
  end

  # POST /account_groups
  # POST /account_groups.json
  def create
    @account_group = AccountGroup.new(params[:account_group])

    respond_to do |format|
      if @account_group.save
        format.html { redirect_to @account_group, :notice => 'Account group was successfully created.' }
        format.json { render :json => @account_group, :status => :created, :location => @account_group }
      else
        format.html { render :action => "new" }
        format.json { render :json => @account_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /account_groups/1
  # PUT /account_groups/1.json
  def update
    @account_group = AccountGroup.find(params[:id])

    respond_to do |format|
      if @account_group.update_attributes(params[:account_group])
        format.html { redirect_to @account_group, :notice => 'Account group was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @account_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /account_groups/1
  # DELETE /account_groups/1.json
  def destroy
    @account_group = AccountGroup.find(params[:id])
    @account_group.destroy

    respond_to do |format|
      format.html { redirect_to account_groups_url }
      format.json { head :ok }
    end
  end
end
