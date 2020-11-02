class DiscountsController < ApplicationController
  before_action :set_discount, only: [:show, :edit, :update, :destroy]

  # GET /Discounts
  # GET /Discounts.json
  def index
    @Discounts = Discount.all
    render_cell cell: Discount::Cell::Index
  end

  # GET /Discounts/1
  # GET /Discounts/1.json
  def show
    render_cell cell: Discount::Cell::Show
  end

#   # GET /Discounts/new
#   def new
#     @Discount = Discount.new
#   end

#   # GET /Discounts/1/edit
#   def edit
#   end

#   # POST /Discounts
#   # POST /Discounts.json
#   def create
#     @Discount = Discount.new(Discount_params)

#     respond_to do |format|
#       if @Discount.save
#         format.html { redirect_to @Discount, notice: 'Discount was successfully created.' }
#         format.json { render :show, status: :created, location: @Discount }
#       else
#         format.html { render :new }
#         format.json { render json: @Discount.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # PATCH/PUT /Discounts/1
#   # PATCH/PUT /Discounts/1.json
#   def update
#     respond_to do |format|
#       if @Discount.update(Discount_params)
#         format.html { redirect_to @Discount, notice: 'Discount was successfully updated.' }
#         format.json { render :show, status: :ok, location: @Discount }
#       else
#         format.html { render :edit }
#         format.json { render json: @Discount.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # DELETE /Discounts/1
#   # DELETE /Discounts/1.json
#   def destroy
#     @Discount.destroy
#     respond_to do |format|
#       format.html { redirect_to Discounts_url, notice: 'Discount was successfully destroyed.' }
#       format.json { head :no_content }
#     end
#   end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_Discount
#       @Discount = Discount.find(params[:id])
#     end

#     # Only allow a list of trusted parameters through.
#     def Discount_params
#       params.require(:Discount).permit(:name, :price)
#     end
 end
