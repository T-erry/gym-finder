class AuthController < ApplicationController
skip_before_action :authorized, only: [:create]

def create
@admin = Admin.find_by(adminname: admin_login_params[:adminname])
#admin#authenticate comes from BCrypt
if @admin&.authenticate(admin_login_params[:password])
  # encode token comes from ApplicationController
  token = encode_token({ admin_id: @admin.id })
  render json: { admin: AdminSerializer.new(@admin), jwt: token , adminname: admin_login_params[:adminname]}, status: :accepted
else
  render json: { message: 'Invalid Admin Name or Password' }, status: :unauthorized
end
end

private

def admin_login_params
# params { admin: {adminname: 'Chandler Bing', password: 'hi' } }
params.permit(:adminname, :password)
end
end