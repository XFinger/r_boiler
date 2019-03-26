
## Readme

### Boilerplate rails 5.1.6.2 api  > update in gemfile as needed
Easy boilerplate for rails api application with devise, jwt, and Users table seeds.

### Gems:
 - devise
 - devise-jwt
 - mysql2
 - awsome print for printing awesomely
 - mailcatcher for dev mail
 - rack-cors


### Setup:
- Clone repo
- Bundle install
- Rename using rename gem: *rails g rename:into New-Name*
- Create DB:  *rake db:create*
- Load schema: rake *db:shema:load*
- Adjust Users table to include necessary devise fields and migrate- [see devise instructions](https://github.com/plataformatec/devise#getting-started)
- Adjust users model to reflect necessary devise fields
- update secret in devise config file: *rake secret*
- Update seeds.rb to fit your seeding needs
- Seed the DB: *rake db:seed*


### Routes:
	    new_user_session GET    /auth/sign_in(.:format)        devise_token_auth/sessions#new
        user_session POST   /auth/sign_in(.:format)        devise_token_auth/sessions#create
	    destroy_user_session DELETE /auth/sign_out(.:format)       devise_token_auth/sessions#destroy
        new_user_password GET    /auth/password/new(.:format)   devise_token_auth/passwords#new
	    edit_user_password GET    /auth/password/edit(.:format)  devise_token_auth/passwords#edit
        user_password PATCH  /auth/password(.:format)       devise_token_auth/passwords#update
			          PUT    /auth/password(.:format)       devise_token_auth/passwords#update
			          POST   /auth/password(.:format)       devise_token_auth/passwords#create
		cancel_user_registration GET    /auth/cancel(.:format)         devise_token_auth/registrations#cancel
		new_user_registration GET    /auth/sign_up(.:format)        devise_token_auth/registrations#new
 	    edit_user_registration GET    /auth/edit(.:format)           devise_token_auth/registrations#edit
        user_registration PATCH  /auth(.:format)                devise_token_auth/registrations#update
                          PUT    /auth(.:format)                devise_token_auth/registrations#update
                          DELETE /auth(.:format)                devise_token_auth/registrations#destroy
                          POST   /auth(.:format)                	devise_token_auth/registrations#create
        auth_validate_token  GET    /auth/validate_token(.:format) devise_token_auth/token_validations#validate_token
