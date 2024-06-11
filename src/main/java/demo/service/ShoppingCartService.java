package demo.service;

import demo.entities.CartItem;

public interface ShoppingCartService {

	void add(CartItem item);

	Object getAllItems();

	
}
