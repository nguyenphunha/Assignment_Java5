package demo.service;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import demo.entities.CartItem;

@SessionScope
@Service
public class ShoppingCartServiceImpl implements ShoppingCartService{
	
	Map<Integer, CartItem> maps = new HashMap<>();
	
	public void  add(CartItem item) {
		CartItem cartItem = maps.get(item.getProductId());
		if(cartItem == null) {
			maps.put(item.getProductId(), item);
		}else {
			cartItem.setQty(cartItem.getQty() + 1);
		}
	}
	
	public void remove(int id) {
		maps.remove(id);
	}
	public CartItem update(int proID, int qty) {
		CartItem cartItem = maps.get(proID);
		cartItem.setQty(qty);
		return cartItem;
	}
	public void clear() {
		maps.clear();
	}
	public Collection<CartItem> getAllItems(){
		return maps.values();
		
	}
	public int getCount() {
		return maps.values().size();
	}
	public double getAmount() {
		return maps.values().stream().mapToDouble(item -> item.getQty() * item.getPrice()).sum();
		
	}
}
