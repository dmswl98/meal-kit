package dto;

import java.io.Serializable;

public class Review implements Serializable{
	private static final long serialVersionUID = -4274700572038677000L;
	
	private String productName;
	private String title;
	private String starRating;
	private String content;
	private String userName;
	private String filename;
	
	public Review() {
		super();
	}
	
	public Review(String productName, String title, String starRating, String userName) {
		this.productName = productName;
		this.title = title;
		this.starRating = starRating;
		this.userName = userName;
	}
	
	public String getProductName() {
		return productName;
	}
	
	public String getTitle() {
		return title;
	}
	
	public String getStarRating() {
		return starRating;
	}
	
	public String getUserName() {
		return userName;
	}
	
	public String getContent() {
		return content;
	}
	
	public String getFilename() {
		return filename;
	}
	
	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public void setStarRating(String starRating) {
		this.starRating = starRating;
	}
	
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
	
	public void setFilename(String filename) {
		this.filename = filename;
	}
}
