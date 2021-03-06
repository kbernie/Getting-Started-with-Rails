Rails.application.routes.draw do
    get 'welcome/index'


    resources :articles do
        resources :comments
    end

    root 'welcome#index'

    # $ rails routes
    #               Prefix Verb   URI Pattern                                       Controller#Action
    #        welcome_index GET    /welcome/index(.:format)                          welcome#index
    #     article_comments GET    /articles/:article_id/comments(.:format)          comments#index
    #                      POST   /articles/:article_id/comments(.:format)          comments#create
    #  new_article_comment GET    /articles/:article_id/comments/new(.:format)      comments#new
    # edit_article_comment GET    /articles/:article_id/comments/:id/edit(.:format) comments#edit
    #      article_comment GET    /articles/:article_id/comments/:id(.:format)      comments#show
    #                      PATCH  /articles/:article_id/comments/:id(.:format)      comments#update
    #                      PUT    /articles/:article_id/comments/:id(.:format)      comments#update
    #                      DELETE /articles/:article_id/comments/:id(.:format)      comments#destroy
    #             articles GET    /articles(.:format)                               articles#index
    #                      POST   /articles(.:format)                               articles#create
    #          new_article GET    /articles/new(.:format)                           articles#new
    #         edit_article GET    /articles/:id/edit(.:format)                      articles#edit
    #              article GET    /articles/:id(.:format)                           articles#show
    #                      PATCH  /articles/:id(.:format)                           articles#update
    #                      PUT    /articles/:id(.:format)                           articles#update
    #                      DELETE /articles/:id(.:format)                           articles#destroy
    #                 root GET    /                                                 welcome#index


    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
