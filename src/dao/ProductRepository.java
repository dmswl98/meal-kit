package dao;

import java.util.ArrayList;
import dto.Product;
import dto.Review;

public class ProductRepository {
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();	
	private static ProductRepository instance = new ProductRepository();
	
	public static ProductRepository getInstance() {
		return instance;
	}
	
	public ProductRepository() {
		Product product1 = new Product("P1111", "Beef Burger", 8000, 3, 40);
		product1.setNutrition("Serving: 1patty | Calories: 558kcal | Carbohydrates: 23g | Protein: 33g | Fat: 35g | Saturated Fat: 13g | Cholesterol: 120mg | Sodium: 1533mg | Potassium: 556mg | Fiber: 1g | Sugar: 3g | Vitamin C: 1.1mg | Calcium: 110mg | Iron: 5mg");
		product1.setIngredient("2 pounds ground beef, 1 egg, beaten, 取 cup dry bread crumbs, 3 tablespoons evaporated milk, 2 tablespoons Worcestershire sauce, 叔 teaspoon cayenne pepper, 2 cloves garlic, minced, 4 hamburger buns (4 in. wide), split, About 1/2 teaspoon salt, About 1/4 cup mayonnaise, About 1/4 cup ketchup, 4 iceberg lettuce leaves, rinsed and crisped, 1 firm-ripe tomato, cored and thinly sliced, 4 thin slices red onion");
		product1.setMainFileName("beef-burger-1.jpg");
		product1.listOfFileName.add("beef-burger-1.jpg");
		product1.listOfFileName.add("beef-burger-2.jpg");
		product1.listOfFileName.add("beef-burger-3.jpg");
		product1.listOfFileName.add("beef-burger-4.jpg");
		product1.listOfFileName.add("beef-burger-5.jpg");
		
		Product product2 = new Product("P2222", "Chicken Burger", 7500, 3, 40);
		product2.setNutrition("Serving: 1patty | Calories: 558kcal | Carbohydrates: 23g | Protein: 33g | Fat: 35g | Saturated Fat: 13g | Cholesterol: 120mg | Sodium: 1533mg | Potassium: 556mg | Fiber: 1g | Sugar: 3g | Vitamin C: 1.1mg | Calcium: 110mg | Iron: 5mg");
		product2.setIngredient("2 pounds ground chicken, 1 egg, beaten, 取 cup dry bread crumbs, 3 tablespoons evaporated milk, 2 tablespoons Worcestershire sauce, 叔 teaspoon cayenne pepper, 2 cloves garlic, minced, 4 hamburger buns (4 in. wide), split, About 1/2 teaspoon salt, About 1/4 cup mayonnaise, About 1/4 cup ketchup, 4 iceberg lettuce leaves, rinsed and crisped, 1 firm-ripe tomato, cored and thinly sliced, 4 thin slices red onion");
		product2.setMainFileName("chicken-burger-1.jpg");
		product2.listOfFileName.add("chicken-burger-1.jpg");
		product2.listOfFileName.add("chicken-burger-2.jpg");
		product2.listOfFileName.add("chicken-burger-3.jpg");
		product2.listOfFileName.add("chicken-burger-4.jpg");
		product2.listOfFileName.add("chicken-burger-5.jpg");
		
		Product product3 = new Product("P3333", "Cinnamon Bread", 8500, 4, 60);
		product3.setNutrition("Serving: 1patty | Calories: 558kcal | Carbohydrates: 23g | Protein: 33g | Fat: 35g | Saturated Fat: 13g | Cholesterol: 120mg | Sodium: 1533mg | Potassium: 556mg | Fiber: 1g | Sugar: 3g | Vitamin C: 1.1mg | Calcium: 110mg | Iron: 5mg");
		product3.setIngredient("2 pounds ground beef, 1 egg, beaten, 取 cup dry bread crumbs, 3 tablespoons evaporated milk, 2 tablespoons Worcestershire sauce, 叔 teaspoon cayenne pepper, 2 cloves garlic, minced, 4 hamburger buns (4 in. wide), split, About 1/2 teaspoon salt, About 1/4 cup mayonnaise, About 1/4 cup ketchup, 4 iceberg lettuce leaves, rinsed and crisped, 1 firm-ripe tomato, cored and thinly sliced, 4 thin slices red onion");
		product3.setMainFileName("cinnamon-bread-1.jpg");
		product3.listOfFileName.add("cinnamon-bread-1.jpg");
		product3.listOfFileName.add("cinnamon-bread-2.jpg");
		product3.listOfFileName.add("cinnamon-bread-3.jpg");
		product3.listOfFileName.add("cinnamon-bread-4.jpg");
		product3.listOfFileName.add("cinnamon-bread-5.jpg");
		
		Product product4 = new Product("P4444", "Pancake", 5000, 1, 15);
		product4.setNutrition("Serving: 1patty | Calories: 558kcal | Carbohydrates: 23g | Protein: 33g | Fat: 35g | Saturated Fat: 13g | Cholesterol: 120mg | Sodium: 1533mg | Potassium: 556mg | Fiber: 1g | Sugar: 3g | Vitamin C: 1.1mg | Calcium: 110mg | Iron: 5mg");
		product4.setIngredient("2 pounds ground chicken, 1 egg, beaten, 取 cup dry bread crumbs, 3 tablespoons evaporated milk, 2 tablespoons Worcestershire sauce, 叔 teaspoon cayenne pepper, 2 cloves garlic, minced, 4 hamburger buns (4 in. wide), split, About 1/2 teaspoon salt, About 1/4 cup mayonnaise, About 1/4 cup ketchup, 4 iceberg lettuce leaves, rinsed and crisped, 1 firm-ripe tomato, cored and thinly sliced, 4 thin slices red onion");
		product4.setMainFileName("pancake-1.jpg");
		product4.listOfFileName.add("pancake-1.jpg");
		product4.listOfFileName.add("pancake-2.jpg");
		product4.listOfFileName.add("pancake-3.jpg");
		product4.listOfFileName.add("pancake-4.jpg");
		
		Product product5 = new Product("P5555", "Chicken Salad", 5800, 1, 10);
		product5.setNutrition("Serving: 1patty | Calories: 558kcal | Carbohydrates: 23g | Protein: 33g | Fat: 35g | Saturated Fat: 13g | Cholesterol: 120mg | Sodium: 1533mg | Potassium: 556mg | Fiber: 1g | Sugar: 3g | Vitamin C: 1.1mg | Calcium: 110mg | Iron: 5mg");
		product5.setIngredient("2 pounds ground chicken, 1 egg, beaten, 取 cup dry bread crumbs, 3 tablespoons evaporated milk, 2 tablespoons Worcestershire sauce, 叔 teaspoon cayenne pepper, 2 cloves garlic, minced, 4 hamburger buns (4 in. wide), split, About 1/2 teaspoon salt, About 1/4 cup mayonnaise, About 1/4 cup ketchup, 4 iceberg lettuce leaves, rinsed and crisped, 1 firm-ripe tomato, cored and thinly sliced, 4 thin slices red onion");
		product5.setMainFileName("chicken-salad.jpg");
		product5.listOfFileName.add("chicken-salad.jpg");
		
		Product product6 = new Product("P6666", "Chocolate Butter Cookies", 6000, 3, 60);
		product6.setNutrition("Serving: 1patty | Calories: 558kcal | Carbohydrates: 23g | Protein: 33g | Fat: 35g | Saturated Fat: 13g | Cholesterol: 120mg | Sodium: 1533mg | Potassium: 556mg | Fiber: 1g | Sugar: 3g | Vitamin C: 1.1mg | Calcium: 110mg | Iron: 5mg");
		product6.setIngredient("2 pounds ground chicken, 1 egg, beaten, 取 cup dry bread crumbs, 3 tablespoons evaporated milk, 2 tablespoons Worcestershire sauce, 叔 teaspoon cayenne pepper, 2 cloves garlic, minced, 4 hamburger buns (4 in. wide), split, About 1/2 teaspoon salt, About 1/4 cup mayonnaise, About 1/4 cup ketchup, 4 iceberg lettuce leaves, rinsed and crisped, 1 firm-ripe tomato, cored and thinly sliced, 4 thin slices red onion");
		product6.setMainFileName("chocolate-butter-cookies.jpg");
		product6.listOfFileName.add("chocolate-butter-cookies.jpg");
		
		Product product7 = new Product("P7777", "Beef Taco", 6500, 2, 25);
		product7.setNutrition("Serving: 1patty | Calories: 558kcal | Carbohydrates: 23g | Protein: 33g | Fat: 35g | Saturated Fat: 13g | Cholesterol: 120mg | Sodium: 1533mg | Potassium: 556mg | Fiber: 1g | Sugar: 3g | Vitamin C: 1.1mg | Calcium: 110mg | Iron: 5mg");
		product7.setIngredient("2 pounds ground chicken, 1 egg, beaten, 取 cup dry bread crumbs, 3 tablespoons evaporated milk, 2 tablespoons Worcestershire sauce, 叔 teaspoon cayenne pepper, 2 cloves garlic, minced, 4 hamburger buns (4 in. wide), split, About 1/2 teaspoon salt, About 1/4 cup mayonnaise, About 1/4 cup ketchup, 4 iceberg lettuce leaves, rinsed and crisped, 1 firm-ripe tomato, cored and thinly sliced, 4 thin slices red onion");
		product7.setMainFileName("beef-taco.jpg");
		product7.listOfFileName.add("beef-taco.jpg");
		
		Product product8 = new Product("P8888", "Lasagna", 8000, 2, 35);
		product8.setNutrition("Serving: 1patty | Calories: 558kcal | Carbohydrates: 23g | Protein: 33g | Fat: 35g | Saturated Fat: 13g | Cholesterol: 120mg | Sodium: 1533mg | Potassium: 556mg | Fiber: 1g | Sugar: 3g | Vitamin C: 1.1mg | Calcium: 110mg | Iron: 5mg");
		product8.setIngredient("2 pounds ground chicken, 1 egg, beaten, 取 cup dry bread crumbs, 3 tablespoons evaporated milk, 2 tablespoons Worcestershire sauce, 叔 teaspoon cayenne pepper, 2 cloves garlic, minced, 4 hamburger buns (4 in. wide), split, About 1/2 teaspoon salt, About 1/4 cup mayonnaise, About 1/4 cup ketchup, 4 iceberg lettuce leaves, rinsed and crisped, 1 firm-ripe tomato, cored and thinly sliced, 4 thin slices red onion");
		product8.setMainFileName("lasagna.jpg");
		product8.listOfFileName.add("lasagna.jpg");
		
		listOfProducts.add(product1);	
		listOfProducts.add(product2);
		listOfProducts.add(product3);	
		listOfProducts.add(product4);
		listOfProducts.add(product5);
		listOfProducts.add(product6);	
		listOfProducts.add(product7);
		listOfProducts.add(product8);
	}
	
	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
	
	public Product getProductById(String productId) {
		Product productById = null;
		
		for(int i=0; i<listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if(product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
}
