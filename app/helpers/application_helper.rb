module ApplicationHelper
	
def show_product_image(product)
    link_to product_path(product) do
    if product.image.present?
      image_tag(product.image.thumb.url, class: "thumbnail")
    else
      image_tag("http://placehold.it/200x296&text=No Pic", class: "thumbnail")
    end
  end
end

def render_product_image_search(product)
    link_to product_path(product) do
    if product.image.present?
      image_tag(product.image.thumb.url,id:"search-img")
    else
      image_tag("http://placehold.it/200x296&text=No Pic",id:"search-img")
    end
  end
end

def show_cart_items_image(product)
    link_to product_path(product) do
    if product.image.present?
      image_tag(product.image.small.url, id: "cart-items-img")
    else
      image_tag("http://placehold.it/100x149&text=No Pic", id: "cart-items-img")
    end
  end
end

def render_landingpage_image(product)

    if product.image.present?
      image_tag(product.image.small.url, id: "landingpage-img")
    else
      image_tag("http://placehold.it/100x149&text=No Pic", id: "landingpage-img")
    end

end


def render_samll_img(product)
    link_to product_path(product) do
    if product.image.present?
      image_tag(product.image.small.url)
    else
      image_tag("http://placehold.it/100x149&text=No Pic")
    end
  end
end

def render_highlight_content(product_text,query_string)
    excerpt_cont = excerpt(product_text, query_string, radius: 500)
    highlight(product_text, query_string,highlighter: '<b>\1</b>')
end



end


