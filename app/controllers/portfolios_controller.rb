class PortfoliosController < ApplicationController
def index
  @portfolio_items = Portfolio.all
end

  def new
  @portfolio_items = Portfolio.new
  end

def create
  @portfolio_items = Portfolio.new(params.require(:portfolio).permit(:titile,:subtitle,:body))

  respond_to do |format|
    if @portfolio_items.save
      format.html { redirect_to portfolios_path, notice: 'Portfolio item was successfully created.' }
    else
      format.html { render :new }
    end
  end
end

def edit
  @portfolio_items = Portfolio.find(params[:id])
end

  def update
    @portfolio_items = Portfolio.find(params[:id])

    respond_to do |format|
      if @portfolio_items.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html {redirect_to portfolios_path, notice: 'Portfolio item was successfully updated.'}
      else
        format.html {render :edit}
      end
    end
  end

def show
  @portfolio_items = Portfolio.find(params[:id])
end

  def destroy
    # perform  the look up
    @portfolio_items = Portfolio.find(params[:id])

    # Destroy/Delete the record
    @portfolio_items.destroy

    # Redirect
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Portfolio was successfully deleted.' }
    end
  end
  end






