Rails.application.routes.draw do

  get '/', to: 'tasks#new'
  root 'tasks#new'
end
