package dao;

import java.util.ArrayList;
import dto.Review;

public class ReviewRepository {
	private ArrayList<Review> listOfReviews = new ArrayList<Review>();
	private static ReviewRepository instance = new ReviewRepository();
	
	public static ReviewRepository getInstance() {
		return instance;
	}
	
	public ReviewRepository() {
		Review review1 = new Review("Pancake", "Fast and easy", "5", "abcde");
		review1.setContent("The quality and freshness of the ingredients were impressive, especially for being pre-cut and prepped in the container. And the cooking instructions were clear, concise, and accurate.");
		review1.setFilename("reviews-1.jpg");
		
		Review review2 = new Review("Beef Taco", "Fast and easy", "4", "qwert");
		review2.setContent("nice!!");
		review2.setFilename("reviews-2.jpg");
		
		Review review3 = new Review("Cinnamon Bread", "Fast and easy", "3", "xcvzx");
		review3.setContent("nice!!");
		review3.setFilename("reviews-3.jpg");
		
		Review review4 = new Review("Banana Walnut Cookies", "Fast and easy", "4", "bnmvc");
		review4.setContent("nice!!");
		review4.setFilename("reviews-4.jpg");
		
		Review review5 = new Review("Chicken Salad", "Fast and easy", "4", "ertew");
		review5.setContent("nice!!");
		review5.setFilename("reviews-5.jpg");
		
		listOfReviews.add(review1);
		listOfReviews.add(review2);	
		listOfReviews.add(review3);
		listOfReviews.add(review4);	
		listOfReviews.add(review5);	
	}
	
	public ArrayList<Review> getAllReviews() {
		return listOfReviews;
	}
	
	public void addReview(Review review) {
		listOfReviews.add(review);
	}
}
