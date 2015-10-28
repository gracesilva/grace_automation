class Add
  include PageObject

  page_url 'http://www.williams-sonoma.com'

  a :agrarian,                  :class => 'topnav-agrarian-garden'
  a :pet,                       :href => 'http://www.williams-sonoma.com/shop/agrarian-garden/agrarian-pet/?cm_type=gnav'
  a :treats,                    :href => 'http://www.williams-sonoma.com/products/chalkboard-treat-jar/?pkey=cagrarian-pet%7Cagrarian-pet-treats%7C'
  button :add_to_cart,          :class => 'btn btn_addtobasket btn_addtobasket_add'
  div :overlay_add_to_cart_btn, :id => 'racOverlay'
  button :checkout_btn,         :id => 'anchor-btn-checkout'
  div :shop_cart_page,          :id => 'suborder-1'
  text_field :search_field,     :id => 'search-field'
  a :search_btn,                :id => 'btnSearch'
  div :product_thumb,           :class => 'product-thumb'
  span :quick_look_btn,         :class => 'quicklook-link'
  div :open_overlay,            :id => 'overlay-content'
  div :results_sumary,          :id => 'results-sumary'
  span :price_on_page,          :class => 'price-amount', :xpath=> '//*[@id="subCatListContainer"]/ul[2]/li/span/span[1]/span/span[2]'
  span :price_on_page_overlay,  :class => 'price-amount', :xpath=>'//*[@id="itemselection"]/div/section/section/div/div/div/div[2]/span/span[1]/span'
  a :product_name,              :class =>'product-name', :xpath=> '//*[@id="subCatListContainer"]/ul[2]/li/a'
  a :product_name_overlay,      :itemprop => 'name', :xpath =>'//*[@id="purchasing-container"]/div[2]/div/h1'



   def choose_product
    agrarian_element.hover
    sleep 2
    pet_element.click
    sleep 6
    treats_element.click
    sleep 2
  end

  def click_add_cart_btn
    add_to_cart_element.click
    sleep 2
  end

  def verify_add_to_cart
    fail unless add_to_cart_element.visible?
  end

  def verify_overlay_add_to_cart_btn
    fail unless overlay_add_to_cart_btn_element.visible?
  end

  def checkout_btn
    checkout_btn_element.click
    sleep 2
  end

  def shop_cart_page
    shop_cart_page.visible?
    end

  def see_checkout_btn
    checkout_btn_element.visible?
  end

  def product_added_scp
  shop_cart_page.include? 'Chalkboard Treat'
  end

  def search_product
    search_btn_element.click
  end

  def finding_product(set_product)
    self.search= set_product
    search_btn_element.click
  end

  def results_displayed
    results_sumary_element.visible?
  end

  def check_quick_look
    quick_look_btn_element.visible?
  end

  def click_quick_look
    quick_look_btn_element.click
  end

  def check_overlay
    open_overlay_element.visible?
  end

  def price_matching
    @price_product = price_on_page.text.to_sym!
    @price_overlay = price_on_page_overlay.text.to_sym!
    fail unless price_product != price_overlay
  end


  def product_name_matching
    @name_product = product_name.text
    @name_product_overlay = product_name_overlay.text
    fail unless name_product != @name_product_overlay

  end

end





