class QueryTagsController < ApplicationController
  before_action :set_query_tag, only: [:show, :edit, :update, :destroy]

  # GET /query_tags
  # GET /query_tags.json
  def index
    @query_tags = QueryTag.all
  end

  # GET /query_tags/1
  # GET /query_tags/1.json
  def show
  end

  # GET /query_tags/new
  def new
    @query_tag = QueryTag.new
  end

  # GET /query_tags/1/edit
  def edit
  end

  # POST /query_tags
  # POST /query_tags.json
  def create
    @query_tag = QueryTag.new(query_tag_params)

    respond_to do |format|
      if @query_tag.save
        format.html { redirect_to @query_tag, notice: 'Query tag was successfully created.' }
        format.json { render :show, status: :created, location: @query_tag }
      else
        format.html { render :new }
        format.json { render json: @query_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /query_tags/1
  # PATCH/PUT /query_tags/1.json
  def update
    respond_to do |format|
      if @query_tag.update(query_tag_params)
        format.html { redirect_to @query_tag, notice: 'Query tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @query_tag }
      else
        format.html { render :edit }
        format.json { render json: @query_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /query_tags/1
  # DELETE /query_tags/1.json
  def destroy
    @query_tag.destroy
    respond_to do |format|
      format.html { redirect_to query_tags_url, notice: 'Query tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_query_tag
      @query_tag = QueryTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def query_tag_params
      params.require(:query_tag).permit(:query_id, :tag_id, :relevance)
    end
end
