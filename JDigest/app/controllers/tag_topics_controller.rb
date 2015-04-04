class TagTopicsController < ApplicationController
  before_action :set_tag_topic, only: [:show, :edit, :update, :destroy]

  # GET /tag_topics
  # GET /tag_topics.json
  def index
    @tag_topics = TagTopic.all
  end

  # GET /tag_topics/1
  # GET /tag_topics/1.json
  def show
  end

  # GET /tag_topics/new
  def new
    @tag_topic = TagTopic.new
  end

  # GET /tag_topics/1/edit
  def edit
  end

  # POST /tag_topics
  # POST /tag_topics.json
  def create
    @tag_topic = TagTopic.new(tag_topic_params)

    respond_to do |format|
      if @tag_topic.save
        format.html { redirect_to @tag_topic, notice: 'Tag topic was successfully created.' }
        format.json { render :show, status: :created, location: @tag_topic }
      else
        format.html { render :new }
        format.json { render json: @tag_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tag_topics/1
  # PATCH/PUT /tag_topics/1.json
  def update
    respond_to do |format|
      if @tag_topic.update(tag_topic_params)
        format.html { redirect_to @tag_topic, notice: 'Tag topic was successfully updated.' }
        format.json { render :show, status: :ok, location: @tag_topic }
      else
        format.html { render :edit }
        format.json { render json: @tag_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tag_topics/1
  # DELETE /tag_topics/1.json
  def destroy
    @tag_topic.destroy
    respond_to do |format|
      format.html { redirect_to tag_topics_url, notice: 'Tag topic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag_topic
      @tag_topic = TagTopic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tag_topic_params
      params.require(:tag_topic).permit(:tag_id, :topic_id, :weight)
    end
end
