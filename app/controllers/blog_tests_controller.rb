class BlogTestsController < ApplicationController
  before_action :set_blog_test, only: [:show, :edit, :update, :destroy]

  # GET /blog_tests
  # GET /blog_tests.json
  def index
    @blog_tests = BlogTest.all
  end

  # GET /blog_tests/1
  # GET /blog_tests/1.json
  def show
  end

  # GET /blog_tests/new
  def new
    @blog_test = BlogTest.new
  end

  # GET /blog_tests/1/edit
  def edit
  end

  # POST /blog_tests
  # POST /blog_tests.json
  def create
    @blog_test = BlogTest.new(blog_test_params)

    respond_to do |format|
      if @blog_test.save
        format.html { redirect_to @blog_test, notice: 'Blog test was successfully created.' }
        format.json { render :show, status: :created, location: @blog_test }
      else
        format.html { render :new }
        format.json { render json: @blog_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog_tests/1
  # PATCH/PUT /blog_tests/1.json
  def update
    respond_to do |format|
      if @blog_test.update(blog_test_params)
        format.html { redirect_to @blog_test, notice: 'Blog test was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog_test }
      else
        format.html { render :edit }
        format.json { render json: @blog_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_tests/1
  # DELETE /blog_tests/1.json
  def destroy
    @blog_test.destroy
    respond_to do |format|
      format.html { redirect_to blog_tests_url, notice: 'Blog test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_test
      @blog_test = BlogTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_test_params
      params.require(:blog_test).permit(:title, :body)
    end
end
