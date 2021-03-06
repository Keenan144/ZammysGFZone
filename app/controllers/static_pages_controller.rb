class StaticPagesController < ApplicationController
before_action :save_my_previous_url 

  # GET /static_pages
  # GET /static_pages.json
  def index
  end

  def home
    @blog_posts = BlogPost.paginate(page: params[:page], per_page: 3)
    recipe = Recipe.order("created_at DESC")
    @recipes = recipe.paginate(page: params[:page], per_page: 3)
    
    views = SystemMetric.first.site_visits
    SystemMetric.first.update(site_visits: views + 1)
    
    if Visit.find_by(ipaddress: request.ip)
      visit = Visit.find_by(ipaddress: request.ip)
      if visit.nickname == nil 
        visit.update(nickname: "recurring visitor #{visit.id}")
      else
        count = visit.login_count
        visit.update(login_count: count + 1)
      end
    else
      Visit.create(ipaddress: request.ip, login_count: 1)
    end
        
  end

  def about
    views = SystemMetric.first.about_views
    SystemMetric.first.update(about_views: views + 1)
  end

  def termsofservice

  end

  def contact

  end

  def admin

  end

  # GET /static_pages/1
  # GET /static_pages/1.json
  def show
  end

  # GET /static_pages/new
  def new
    @static_page = StaticPage.new
  end

  # GET /static_pages/1/edit
  def edit
  end

  # POST /static_pages
  # POST /static_pages.json
  def create
    @static_page = StaticPage.new(static_page_params)

    respond_to do |format|
      if @static_page.save
        format.html { redirect_to @static_page, notice: 'Static page was successfully created.' }
        format.json { render :show, status: :created, location: @static_page }
      else
        format.html { render :new }
        format.json { render json: @static_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /static_pages/1
  # PATCH/PUT /static_pages/1.json
  def update
    respond_to do |format|
      if @static_page.update(static_page_params)
        format.html { redirect_to @static_page, notice: 'Static page was successfully updated.' }
        format.json { render :show, status: :ok, location: @static_page }
      else
        format.html { render :edit }
        format.json { render json: @static_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /static_pages/1
  # DELETE /static_pages/1.json
  def destroy
    @static_page.destroy
    respond_to do |format|
      format.html { redirect_to static_pages_url, notice: 'Static page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_static_page
      @static_page = StaticPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def static_page_params
      params[:static_page]
    end

    def save_my_previous_url
      # session[:previous_url] is a Rails built-in variable to save last url.
      session[:my_previous_url] = URI(request.referer || '').path
      @back_url = session[:my_previous_url]
    end
end
