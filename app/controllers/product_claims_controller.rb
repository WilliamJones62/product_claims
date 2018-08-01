class ProductClaimsController < ApplicationController
  before_action :set_product_claim, only: [:show, :edit, :update, :destroy]
  before_action :set_dropdowns, only: [:new, :edit]

  # GET /product_claims
  def index
    @product_claims = ProductClaim.all
  end

  # GET /product_claims/1
  def show
  end

  # GET /product_claims/new
  def new
    @product_claim = ProductClaim.new
  end

  # GET /product_claims/1/edit
  def edit
  end

  # POST /product_claims
  def create
    @product_claim = ProductClaim.new(product_claim_params)
    @product_claim.user_id = current_user.id

    respond_to do |format|
      if @product_claim.save
        format.html { redirect_to @product_claim, notice: 'Product claim was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /product_claims/1
  def update
    respond_to do |format|
      if @product_claim.update(product_claim_params)
        format.html { redirect_to @product_claim, notice: 'Product claim was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /product_claims/1
  def destroy
    @product_claim.destroy
    respond_to do |format|
      format.html { redirect_to product_claims_url, notice: 'Product claim was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_claim
      @product_claim = ProductClaim.find(params[:id])
    end

    def set_dropdowns
      @supermarket = ['BALDUCHI', 'ACME', 'STOPNSHOP']
      @category = ['CHICKEN', 'BEEF', 'PORK']
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_claim_params
      params.require(:product_claim).permit(:user_id, :supermarket, :category, :brand, :description, :abf, :organic, :grassfed, :never, :humane, :promo)
    end
end
