class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  authorize_resource  
  
  def newmentee
    @user=User.new
  end
   
  def test
    @users=User.all
  end
  def registagree
  end
  def menteeagree
  end
  def mentoragree
  end
 
  def group
    @users=User.all
  end
  
  def group1
    @users=User.all
    params[:id]
  end
  def group2
    @users=User.all
    params[:id]
  end
  def group3
    @users=User.all
    params[:id]
  end
  def group4
    @users=User.all
    params[:id]
  end
  def group5
    @users=User.all
    params[:id]
  end
  def group6
    @users=User.all
    params[:id]
  end
  def group7
    @users=User.all
    params[:id]
  end 
  def group8
    @users=User.all
    params[:id]
  end
  def group9
    @users=User.all
    params[:id]
  end
  def group10
    @users=User.all
    params[:id]
  end
  def group11
    @users=User.all
    params[:id]
  end
  def group12
    @users=User.all
    params[:id]
  end
  def group13
    @users=User.all
    params[:id]
  end
  def group14
    @users=User.all
    params[:id]
  end
  def group15
    @users=User.all
    params[:id]
  end
  def group16
    @users=User.all
    params[:id]
  end
  def group17
    @users=User.all
    params[:id]
  end

 def home
    @users = User.all
  end
  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
   params[:id]    
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @user= 
    authorize! :update, @user
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        session[:user]=@user.id
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        if @user.career_id != nil
          format.html {render :new}        
          format.json { render json: @user.errors, status: :unprocessable_entity }
        else
          format.html {render :newmentee}
          format.json { render json: @user.errors, status: :unprocessable_entity }
        
        end
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name,:email,:password,:password_confirmation,:career_id,:career_id1,:career_id2,:nickname,:study,:hobby,:gifted,:other,:age,:region,:phone,:address,:avatar,:story,:future,:help,:share,:words)
    end
 
  def after_sign_in_path_for(resource)
    if resource.is_a?(User)
     if User.count == 1
      resource.add_role 'admin'
     end
     resource
    end
    root_path
  end 
end
