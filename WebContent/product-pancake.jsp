<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>yummy-Pancake</title>
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
                                <img src="assets/food-img/pancake-1.jpg" />
                            </figure>
                            <figcaption class="visually-hidden">
                                Pancake img-1
                            </figcaption>
                        </li>
                        <li class="slider-item" role="tabpanel" aria-labelledby="product-carousel-tab-2">
                            <figure>
                                <img src="assets/food-img/pancake-2.jpg" />
                            </figure>
                            <figcaption class="visually-hidden">
                                Pancake img-2
                            </figcaption>
                        </li>
                        <li class="slider-item" role="tabpanel" aria-labelledby="product-carousel-tab-3">
                            <figure>
                                <img src="assets/food-img/pancake-3.jpg" />
                            </figure>
                            <figcaption class="visually-hidden">
                                Pancake img-3
                            </figcaption>
                        </li>
                        <li class="slider-item" role="tabpanel" aria-labelledby="product-carousel-tab-4">
                            <figure>
                                <img src="assets/food-img/pancake-4.jpg" />
                            </figure>
                            <figcaption class="visually-hidden">
                                Pancake img-4
                            </figcaption>
                        </li>
                    </ol>
                </div>

                <div class="product-carousel-thumbnail">
                    <ol class="thumbnail-list" role="tablist">
                        <li class="thumbnail-item" id="product-carousel-tab-1" role="tab">
                            <button type="button">
                                <img src="assets/food-img/pancake-1.jpg" />
                            </button>
                        </li>
                        <li class="thumbnail-item" id="product-carousel-tab-2" role="tab">
                            <button type="button">
                                <img src="assets/food-img/pancake-2.jpg" />
                            </button>
                        </li>
                        <li class="thumbnail-item" id="product-carousel-tab-3" role="tab">
                            <button type="button">
                                <img src="assets/food-img/pancake-3.jpg" />
                            </button>
                        </li>
                        <li class="thumbnail-item" id="product-carousel-tab-4" role="tab">
                            <button type="button">
                                <img src="assets/food-img/pancake-4.jpg" />
                            </button>
                        </li>
                    </ol>
                </div>
            </div>
            <!-- <div class="product-img">
                <img src="assets/pancake.jpg">
            </div> -->
            <div class="product-desc">
                <p class="badge">Sale</p>
                <h1>Pancake</h1>
                <div class="price">
                    <p>$5.00</p>
                    <p>$7.00</p>
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
                <p>2/3 cup all-purpose flour, 1 tablespoon sugar, 1 teaspoon baking powder, 3/4 teaspoon baking soda,
                    1/3
                    cup plain yogurt, 1 large egg, beaten lightly, 1 tablespoon butter, melted and cooled, 1/2 cup whole
                    milk</p>
            </div>
            <iframe class="making-video" width="650" height="400" src="https://www.youtube.com/embed/o9IU5jXodEY"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
            <div class="detail-img">
                <img src="assets/food-img/pancake-1.jpg" />
                <img src="assets/food-img/pancake-2.jpg" />
                <img src="assets/food-img/pancake-3.jpg" />
                <img src="assets/food-img/pancake-4.jpg" />

            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.2/min/tiny-slider.js"></script>
	<script src="product-carousel.js"></script>
</body>
</html>