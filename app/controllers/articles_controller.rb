class ArticlesController < ApplicationController
    before_action :find_article,only: [:show,:edit,:update,:destroy]

    def new
        @article=Article.new
    end


    def create
        @article = Article.new(article_params)
       if @article.save
        flash[:success] = "Article was successfully added in the database"
        redirect_to article_path(@article)
       else
        #redirect_to new_article_path
        render "new"
       end
    end


    def show
       
    end

    def edit
      
    end
    
    def update
    
        if @article.update(article_params)
            flash[:success] = "Article was successfully updated in the database"
            redirect_to article_path(@article)
        else
            render 'edit'
        end
    end

    def index
        @articles = Article.all
    end

    def destroy
       
        @article.destroy
        flash[:danger] = "Article was succssefully destroyed"
        redirect_to articles_path
    end

    private
    def find_article
        @article = Article.find(params[:id])
    end
    def article_params
        params.require(:article).permit(:title,:description)
    end
end