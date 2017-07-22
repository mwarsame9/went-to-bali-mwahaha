$('#item<%= @item.id %>').remove();

$('#total').empty().html("Your Order Total: <%= number_to_currency(@order.total_price) %>");

$('.cart-amount').empty().html('<%= j link_to "Cart | Total items: #{ cart_items }", cart_path %>');
