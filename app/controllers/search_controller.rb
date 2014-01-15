class SearchController < ApplicationController
  
  def index
    @audits = Audit.paginate(:page => params[:page], :per_page => 10).find(:all, :conditions => ['department_name LIKE :search OR auditee_name LIKE :search OR auditee_email LIKE :search
                                  OR auditor_name LIKE :search OR auditor_email LIKE :search OR audit_type LIKE :search ', {:search => "%#{params[:search]}%"}])
   @findings = Finding.paginate(:page => params[:page], :per_page => 10).find(:all, :conditions => ['description LIKE :search OR category LIKE :search OR risk_rating LIKE :search
                              OR corrective_action LIKE :search OR preventive_action LIKE :search OR status_id LIKE :search OR iso_clause LIKE :search', {:search => "%#{params[:search]}%"}])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @audits }
    end
  end
end
