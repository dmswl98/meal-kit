package dto;

import java.io.Serializable;
import java.util.ArrayList;

public class Product implements Serializable{
	private static final long serialVersionUID = -4274700572038677111L;
	
	private String productId;
	private String productName;
	private Integer price;
	private Integer level;
	private Integer duration;
	private String nutrition;
	private String ingredient;
	private String mainFileName;
	public ArrayList<String> listOfFileName = new ArrayList<String>();
	private int quantity;

	public Product() {
		super();
	}

	public Product(String productId, String productName, Integer price, Integer level, Integer duration) {
		this.productId = productId;
		this.productName = productName;
		this.price = price;
		this.level = level;
		this.duration = duration;
	}

	public String getProductId() {
		return productId;
	}
	
	public String getProductName() {
		return productName;
	}
	
	public Integer getPrice() {
		return price;
	}
	
	public Integer getLevel() {
		return level;
	}
	
	public Integer getDuration() {
		return duration;
	}
	
	public String getNutrition() {
		return nutrition;
	}
	
	public String getMainFileName() {
		return mainFileName;
	}
	
	public void setProductId(String productId) {
		this.productId = productId;
	}
	
	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	public void setPrice(Integer price) {
		this.price = price;
	}
	
	public void setLevel(Integer level) {
		this.level = level;
	}
	
	public void setDuration(Integer duration) {
		this.duration = duration;
	}
	
	public void setNutrition(String nutrition) {
		this.nutrition = nutrition;
	}

	
	public void setMainFileName(String mainFileName) {
		this.mainFileName = mainFileName;
	}
	
	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	public ArrayList<String> getAllFiles() {
		return listOfFileName;
	}
	
	public String getIngredient() {
		return ingredient;
	}

	public void setIngredient(String ingredient) {
		this.ingredient = ingredient;
	}
}
