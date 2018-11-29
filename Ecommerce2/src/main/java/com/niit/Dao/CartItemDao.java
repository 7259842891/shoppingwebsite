package com.niit.Dao;

import java.util.List;

import com.niit.models.CartItem;
import com.niit.models.CustomerOrder;

public interface CartItemDao {

	void addToCart(CartItem cartItem);
    void removeCartItem(int cartItemId);
    List<CartItem> getCart(String email);
    CustomerOrder createCustomerOrder(CustomerOrder customerOrder);
}

