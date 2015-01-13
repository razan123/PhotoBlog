class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create

    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'The picture was successfully uploaded.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @post = Post.find params[:id]
    @comments = @post.comments.all
    @comment = @post.comments.build
  end

  def destroy
    @post = Post.find params[:id]
    @post.destroy
    redirect_to :back
  end

end