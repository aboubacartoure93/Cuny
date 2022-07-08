class OtherArticlesController < ApplicationController
  before_action :set_other_article, only: [:show, :edit, :update, :destroy]


  layout "others"
  # GET /other_articles
  # GET /other_articles.json

   def home
    @student = current_student
    @other_articles = OtherArticle.all.order("created_at DESC").paginate(page: params[:page], per_page: 16)
  end

  def index
    @other_articles = OtherArticle.all
    #@tutors = Tutor.where.not(student_id: current_student.id).order("created_at DESC").paginate(page: params[:page], per_page: 16)
  end
 
  # GET /other_articles/1
  # GET /other_articles/1.json
  def show
    @other_article = OtherArticle.find(params[:id])
  @student = @other_article.student
  end

  # GET /other_articles/new
  def new
    @other_article = current_student.other_articles.build
    #@other_article = OtherArticle.new
  end

  # GET /other_articles/1/edit
  def edit
    @student = current_student
    @other_article = OtherArticle.find(params[:id])
  end

  # POST /other_articles
  # POST /other_articles.json
  # def create
  #   @other_article = OtherArticle.new(other_article_params)

  #   respond_to do |format|
  #     if @other_article.save
  #       format.html { redirect_to @other_article, notice: 'Other article was successfully created.' }
  #       format.json { render :show, status: :created, location: @other_article }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @other_article.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end


  def create
    #@tutor = Tutor.new(tutor_params)
    @other_article = current_student.other_articles.build(other_article_params)
    respond_to do |format|
      if @other_article.save
        format.html { redirect_to @other_article, notice: 'other article was successfully created.' }
        format.json { render :show, status: :created, location: @other_article }
      else
        format.html { render :new }
        format.json { render json: @other_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /other_articles/1
  # PATCH/PUT /other_articles/1.json
  # def update
  #   respond_to do |format|
  #     if @other_article.update(other_article_params)
  #       format.html { redirect_to @other_article, notice: 'Other article was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @other_article }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @other_article.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end


  def update
    @other_article = OtherArticle.find(params[:id])
    respond_to do |format|
      if @other_article.update(other_article_params)
        format.html { redirect_to @other_article, notice: 'other article was successfully updated.' }
        format.json { render :show, status: :ok, location: @other_article }
      else
        format.html { render :edit }
        format.json { render json: @other_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /other_articles/1
  # DELETE /other_articles/1.json
  # def destroy
  #   @other_article.destroy
  #   respond_to do |format|
  #     format.html { redirect_to other_articles_url, notice: 'Other article was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  def destroy
    @other_article = OtherArticle.find(params[:id])
    @other_article.destroy
    respond_to do |format|
      if @other_article.destroy
      format.html { redirect_to other_articles_url, notice: 'Tutor was successfully destroyed.' }
      format.json { head :no_content }
      #redirect_to tutor_path(@tutor)
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_other_article
      @other_article = OtherArticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def other_article_params
      params.require(:other_article).permit(:othersType, :othersPrice, :availableNow, :student_id, 
        :othersDescription, :othersLocation, :condition, :otherarticle_photo, :other_articleTitle)
    end
end
