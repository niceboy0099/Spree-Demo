Spree::HomeController.class_eval do

  def index
    uniq_method = "DISTINCT (spree_products.id), spree_products.*, spree_products_taxons.position"

    slider = Spree::Taxon.where(:name => 'Slider').first
    @slider_products = slider.products.active if slider
    @slider_products = @slider_products.select(uniq_method)

    featured = Spree::Taxon.where(:name => 'Featured').first
    @featured_products = featured.products.active if featured
    @featured_products = @featured_products.select(uniq_method)

    latest = Spree::Taxon.where(:name => 'Latest').first
    @latest_products = latest.products.active if latest
    @latest_products = @latest_products.select(uniq_method)

  end

end
