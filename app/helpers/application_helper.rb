module ApplicationHelper

  def format_gadget_price(gadget)
    gadget.price? ? "$#{gadget.price}.00" : "(unknown)"
  end

end
