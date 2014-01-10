class DashboardsController < ApplicationController
  # GET /dashboards
  # GET /dashboards.json
  def index
    @audits = Audit.find(:all)
    @findings = Finding.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @audits }
    end
  end

  # GET /dashboards/1
  # GET /dashboards/1.json
 
 end