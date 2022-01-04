<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>yummy-Chicken-Burger</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@400;500;700&family=Noto+Sans:wght@400;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/b8ba35d266.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.4/tiny-slider.css">
    <link rel="stylesheet" href="product-style.css">
</head>
<body>
    <jsp:include page="navbar.jsp" />
    <div class="container">
        <div class="product">
            <div class="product-carousel" role="region">
                <div class="product-carousel-slider">
                    <ol class="slider-list">
                        <li class="slider-item" role="tabpanel" aria-labelledby="product-carousel-tab-1">
                            <figure>
                                <img src="assets/food-img/chicken-burger-1.jpg" />
                            </figure>
                            <figcaption class="visually-hidden">
                                Chicken Burger img-1
                            </figcaption>
                        </li>
                        <li class="slider-item" role="tabpanel" aria-labelledby="product-carousel-tab-2">
                            <figure>
                                <img src="assets/food-img/chicken-burger-2.jpg" />
                            </figure>
                            <figcaption class="visually-hidden">
                                Chicken Burger img-2
                            </figcaption>
                        </li>
                        <li class="slider-item" role="tabpanel" aria-labelledby="product-carousel-tab-3">
                            <figure>
                                <img src="assets/food-img/chicken-burger-3.jpg" />
                            </figure>
                            <figcaption class="visually-hidden">
                                Chicken Burger img-3
                            </figcaption>
                        </li>
                        <li class="slider-item" role="tabpanel" aria-labelledby="product-carousel-tab-4">
                            <figure>
                                <img src="assets/food-img/chicken-burger-4.jpg" />
                            </figure>
                            <figcaption class="visually-hidden">
                                Chicken Burger img-4
                            </figcaption>
                        </li>
                        <li class="slider-item" role="tabpanel" aria-labelledby="product-carousel-tab-5">
                            <figure>
                                <img src="assets/food-img/chicken-burger-5.jpg" />
                            </figure>
                            <figcaption class="visually-hidden">
                                Chicken Burger img-5
                            </figcaption>
                        </li>
                    </ol>
                </div>

                <div class="product-carousel-thumbnail">
                    <ol class="thumbnail-list" role="tablist">
                        <li class="thumbnail-item" id="product-carousel-tab-2" role="tab">
                            <button type="button">
                                <img src="assets/food-img/chicken-burger-1.jpg" />
                            </button>
                        </li>
                        <li class="thumbnail-item" id="product-carousel-tab-3" role="tab">
                            <button type="button">
                                <img src="assets/food-img/chicken-burger-2.jpg" />
                            </button>
                        </li>
                        <li class="thumbnail-item" id="product-carousel-tab-4" role="tab">
                            <button type="button">
                                <img src="assets/food-img/chicken-burger-3.jpg" />
                            </button>
                        </li>
                        <li class="thumbnail-item" id="product-carousel-tab-4" role="tab">
                            <button type="button">
                                <img src="assets/food-img/chicken-burger-4.jpg" />
                            </button>
                        </li>
                        <li class="thumbnail-item" id="product-carousel-tab-4" role="tab">
                            <button type="button">
                                <img src="assets/food-img/chicken-burger-5.jpg" />
                            </button>
                        </li>
                    </ol>
                </div>
            </div>
            <!-- <div class="product-img">
                <img src="assets/chicken burger.jpg">
            </div> -->
            <div class="product-desc">
                <p class="badge">Best</p>
                <h1>Chicken Burger</h1>
                <div class="price">
                    <p>$20.00</p>
                    <p></p>
                </div>
                <div class="nutrition">
                    <h3>Nutrition</h3>
                    <p>
                        Serving: 1patty | Calories: 558kcal | Carbohydrates: 23g | Protein: 33g | Fat: 35g | Saturated
                        Fat: 13g | Cholesterol: 120mg | Sodium: 1533mg | Potassium: 556mg | Fiber: 1g | Sugar: 3g |
                        Vitamin C: 1.1mg | Calcium: 110mg | Iron: 5mg
                    </p>
                </div>
                <div class="buy-button">
                    <a href="#" class="fill-button buy">Add to Cart</a>
                    <a href="#" class="fill-button inverted buy">Buy Now</a>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="product-detail">
            <h2>Product details</h2>
            <div class="ingredient">
                <h3>Ingredient</h3>
                <p>2 pounds ground chicken, 1 egg, beaten, ¾ cup dry bread crumbs, 3 tablespoons evaporated milk, 2
                    tablespoons Worcestershire sauce, ⅛ teaspoon cayenne pepper, 2 cloves garlic, minced, 4 hamburger
                    buns (4 in. wide), split, About 1/2 teaspoon salt, About 1/4 cup mayonnaise, About 1/4 cup ketchup, 4
                    iceberg
                    lettuce leaves, rinsed and crisped, 1 firm-ripe tomato, cored and thinly sliced, 4 thin slices red
                    onion
                </p>
            </div>
            <iframe class="making-video" width="650" height="400" src="https://www.youtube.com/embed/s5koV0fQmHk"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
            <div class="detail-img">
                <img src="assets/food-img/chicken-burger-1.jpg" />
                <img src="assets/food-img/chicken-burger-2.jpg" />
                <img src="assets/food-img/chicken-burger-3.jpg" />
                <img src="assets/food-img/chicken-burger-4.jpg" />
                <img src="assets/food-img/chicken-burger-5.jpg" />
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.2/min/tiny-slider.js"></script>
	 <script src="product-carousel.js"></script>
</body>
</html>