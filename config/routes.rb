# frozen_string_literal: true

Rails.application.routes.draw do
  root 'pages#root'

  get 'csrf', to: 'pages#csrf'
  get 'csrf_send_mail', to: 'pages#csrf_send_mail'
  delete 'csrf_on/:id(.:format)', to: 'pages#destroy_csrf_on', as: 'csrf_on_destroy'
  delete 'csrf_off/:id(.:format)', to: 'pages#destroy_csrf_off', as: 'csrf_off_destroy'
  get 'xss', to: 'pages#xss'
  get 'xss_vulnerable', to: 'pages#xss_vulnerable'
  get 'xss_free', to: 'pages#xss_free'
  get 'sql_injection', to: 'pages#sql_injection'
end
