class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    # get all articles
    get '/articles' do
        Article.all.to_json
    end

    # get one article
    get '/articles/:id' do
        Article.find(params[:id]).to_json
    end

    # get all users
    get '/users' do
        User.all.to_json
    end

    # get one user
    get '/users/:id' do
        User.find(params[:id]).to_json
    end

    # get all testimonials
    get '/testimonials' do
        Testimonial.all.to_json
    end

    # get one testimonial
    get '/testimonials/:id' do
        Testimonial.find(params[:id]).to_json
    end

    # create a new article
    post '/articles' do
        Article.create(
            title: params[:title],
            image_url: params[:image_url],
            content: params[:content]
        ).to_json
    end

    # create a new user
    post '/users' do
        User.create(
            name: params[:name],
            email: params[:email],
            password: params[:password]
        ).to_json
    end

    # create a new testimonial
    post '/testimonials' do
        Testimonial.create(
            testimony: params[:testimony],
            article_id: params[:article_id],
            user_id: params[:user_id]
        ).to_json
    end

    # update an article
    patch '/articles/:id' do
        article = Article.find(params[:id])
        article.update(
            title: params[:title],
            image_url: params[:image_url],
            content: params[:content]
        ).to_json
    end

    # update a user
    patch '/users/:id' do
        user = User.find(params[:id])
        user.update(
            name: params[:name],
            email: params[:email],
            password: params[:password]
        ).to_json
    end

    # update a testimonial
    patch '/testimonials/:id' do
        testimonial = Testimonial.find(params[:id])
        testimonial.update(
            testimony: params[:testimony],
            article_id: params[:article_id],
            user_id: params[:user_id]
        ).to_json
    end

    # delete an article
    delete '/articles/:id' do
        Article.destroy(params[:id]).to_json
    end

    # delete a testimonial
    delete '/testimonials/:id' do
        Testimonial.destroy(params[:id]).to_json
    end

  
  end