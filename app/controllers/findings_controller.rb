class FindingsController < ApplicationController
    
 
  # GET /findings
  # GET /findings.json
  def index
     @findings= Finding.paginate(:page => params[:page], :per_page => 1).order('id DESC')
     
    #@audits= Audit
    
    respond_to do |format|
      format.html 
      format.json { render json: @finding }
    end
  end

  # GET /findings/1
  # GET /findings/1.json
  def show
    @finding = Finding.find(params[:id])
  
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @finding }
    end
  end

  # GET /findings/new
  # GET /findings/new.json
  def new
   
    
     @finding = Finding.new(:audit_id => params[:audit_id])
 #  @finding.documents.build
     #@finding.build_document
      #5.times { @finding.documents.build }

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @finding }
    end
    
  
  end

  # GET /findings/1/edit
  def edit
    @finding = Finding.find(params[:id])
 #  5.times { @finding.documents.build }
  end

  # POST /findings
  # POST /findings.json
  def create
  #  @content = current_user.widget_contents.build(params[:widget_content])
    @finding = Finding.new(params[:finding])
    #@finding.documents.build
    
    puts "*********params inspect**************#{params.inspect}" 
    respond_to do |format|
    #  puts "*********finding**************#{@finding.inspect}" 
    #  puts "*********attachments**************#{params[:attachment].inspect}" 
    if @finding.save
        # current_user.create_activity @finding, 'created'
      #  params[:attachment].each do |file|
      #      @document = Document.new(:document => file)
      #      @document.save
      # end
        format.html { redirect_to audits_path, notice: 'Finding was successfully created.' }
        format.json { render json: @finding, status: :created, location: @finding }
      else
        format.html { render action: "new" }
        format.json { render json: @finding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /findings/1
  # PUT /findings/1.json
  def update
    @finding = Finding.find(params[:id])
    puts "***********update action************"
    puts params.inspect
    puts "***************************************"
    respond_to do |format|
      if @finding.update_attributes(params[:finding],:audit_id => params[:audit_id]) 

     #   updated_docs = []
     #   if params[:finding][:documents_attributes] != nil
          
     #     doc_ids = @finding.documents.map{|x| x.id}
     #     params[:finding][:documents_attributes].each do |index, value|
     #        updated_docs << value[:id]
     #     end  
     #   updated_docs =updated_docs.map{|s| s.to_i}
     #   puts "*****updated docs******#{updated_docs}"
     # end
     #   deleted_docs = doc_ids - updated_docs
     #   puts "*********these docs are removed***********#{deleted_docs}"
       #Document.where(:id => deleted_docs.map(:id)).each { |object| object.destroy }  
      #    Document.delete deleted_docs.map { |u| u }
        
         current_user.create_activity @finding, 'updated'
        format.html { redirect_to "/audits/#{params[:finding][:audit_id]}", notice: 'Finding was successfully updated.' }

        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @finding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /findings/1
  # DELETE /findings/1.json
  def destroy
    @finding = Finding.find(params[:id])
    @finding.destroy

    respond_to do |format|
        current_user.create_activity @finding, 'destroyed'
      format.html { redirect_to "/audits/#{params[:audit_id]}", notice: 'Finding was successfully deleted.' }
      format.json { head :no_content }
    end
  end
end
