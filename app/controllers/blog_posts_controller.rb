class BlogPostsController < ApplicationController
  before_action :set_blog_post, only: [:show, :edit, :update, :destroy]

  # GET /blog_posts
  # GET /blog_posts.json
  def index
    @blog_posts = BlogPost.paginate(page: params[:page], per_page: 10)
  end

  # GET /blog_posts/1
  # GET /blog_posts/1.json
  def show
    @blog_post = BlogPost.find_by(id: params[:id])
    comments = @blog_post.comments
    @comments = comments.paginate(page: params[:page], per_page: 10)
    @comment = Comment.new
    if @blog_post == nil 
      @blog_post = BlogPost.find(params[:format])
    end
    if @blog_post.views != nil 
      views = @blog_post.views
      @blog_post.update(views: views + 1)
    else
      @blog_post.update(views: 1)
    end
  end

  # GET /blog_posts/new
  def new
    @blog_post = BlogPost.new
  end

  # GET /blog_posts/1/edit
  def edit
  end

  def upvote
    @blog_post = BlogPost.find(params[:id])
    votes = @blog_post.votes
    if votes == nil 
      votes = 0
    end
    @blog_post.update(votes: votes + 1)

    like = Like.find_by(blog_post_id: @blog_post.id, user_id: current_user.id)
    if like != nil
      like.update(bool: true)
    else 
      Like.new(blog_post_id: @blog_post.id, user_id: current_user.id, bool: true).save
    end
    redirect_to(@blog_post)
  end

  def downvote
    @blog_post = BlogPost.find(params[:id])
    votes = @blog_post.votes
    if votes == nil 
      votes = 0
    end
    @blog_post.update(votes: votes - 1)

    like = Like.find_by(blog_post_id: @blog_post.id, user_id: current_user.id)
    if like != nil
      like.update(bool: false)
    else 
      Like.new(blog_post_id: @blog_post.id, user_id: current_user.id, bool: false).save
    end
    redirect_to(@blog_post)
  end

  # POST /blog_posts
  # POST /blog_posts.json
  def create
    @blog_post = BlogPost.new(blog_post_params)
    @blog_post.update(views: 1)

    respond_to do |format|
      if @blog_post.save
        format.html { redirect_to @blog_post, notice: 'Blog post was successfully created.' }
        format.json { render :show, status: :created, location: @blog_post }
      else
        format.html { render :new }
        format.json { render json: @blog_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog_posts/1
  # PATCH/PUT /blog_posts/1.json
  def update
    respond_to do |format|
      if @blog_post.update(blog_post_params)
        format.html { redirect_to @blog_post, notice: 'Blog post was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog_post }
      else
        format.html { render :edit }
        format.json { render json: @blog_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_posts/1
  # DELETE /blog_posts/1.json
  def destroy
    @blog_post.destroy
    respond_to do |format|
      format.html { redirect_to blog_posts_url, notice: 'Blog post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_post
      @blog_post = BlogPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_post_params
      params[:blog_post].permit(:title, :site_url, :blog_content, :user_id, :votes, :image_url )
    end
end
