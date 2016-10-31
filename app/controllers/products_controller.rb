class ProductsController < ApplicationController
  def index
  end

  def medicare
  end

  def medi_share
    @faqs = MediShareFaq.all.order( :position )
  end
end
