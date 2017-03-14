module ApplicationHelper

  def big_image(product,img_id)
    link_to product_path(product) do
      if product.image.present?
        image_tag(product.image.thumb.url,id:img_id)
      else
        image_tag("http://placehold.it/200x296&text=No Pic",id:img_id)
      end
    end
  end


  ###

  def small_image(product,img_id)
    link_to product_path(product) do
      if product.image.present?
        image_tag(product.image.small.url, id:img_id)
      else
        image_tag("http://placehold.it/100x149&text=No Pic", id: img_id)
      end
    end
  end


  def render_highlight_content(product_text,query_string)
    excerpt_cont = excerpt(product_text, query_string, radius: 500)
    highlight(product_text, query_string,highlighter: '<b>\1</b>')
  end



end
