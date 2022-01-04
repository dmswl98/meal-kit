<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>yummy-Recipes</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
        integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@400;500;700&family=Noto+Sans:wght@400;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/b8ba35d266.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="./style.css">
    <link rel="stylesheet" href="./recipes-style.css">
</head>
<body>
	<jsp:include page="navbar.jsp" />	
    <div class="search">
        <div class="container">
            <div class="meal-wrapper">
                <div class="meal-search">
                    <h1 class="title">Cook with what you have.</h1>
                    <h2 class="subtitle">Find Meals For Your Ingredients</h2>
                    <p class="desc">
                        Don't want to go to the store? No problem! <br>Enter the ingredients you have on hand, <br>and
                        we'll
                        show you recipes you could make.
                    </p>
                    <div class="meal-search-box">
                        <input type="text" class="search-control" placeholder="Enter an ingredient" id="search-input">
                        <button type="submit" class="search-btn btn" id="search-btn">
                            <i class="fas fa-search"></i>
                        </button>
                    </div>
                </div>

                <div class="meal-result">
                    <h2 class="result-title">Your Search Results</h2>
                    <p class="result"></p>
                    <div id="meal">
                        <!-- meal item -->
                        <!-- <div class="meal-item">
                            <div class="meal-img">
                                <img src="assets/beef taco.jpg" alt="food">
                            </div>
                            <div class="meal-name">
                                <h3>Potato Chips</h3>
                                <a href="#" class="recipe-btn">Get Recipe</a>
                            </div>
                        </div> -->
                        <!-- meal item -->
                        <!-- <div class="meal-item">
                                    <div class="meal-img">
                                        <img src="assets/beef taco.jpg" alt="food">
                                    </div>
                                    <div class="meal-name">
                                        <h3>Potato Chips</h3>
                                        <a href="#" class="recipe-btn">Get Recipe</a>
                                    </div>
                                </div> -->
                        <!-- meal item -->
                        <!-- <div class="meal-item">
                                    <div class="meal-img">
                                        <img src="assets/beef taco.jpg" alt="food">
                                    </div>
                                    <div class="meal-name">
                                        <h3>Potato Chips</h3>
                                        <a href="#" class="recipe-btn">Get Recipe</a>
                                    </div>
                                </div> -->
                    </div>
                </div>

                <div class="meal-details">
                    <!-- recipe close btn -->
                    <a type="button" class="btn recipe-close-btn" id="recipe-close-btn">
                        <i class="fas fa-times"></i>
                    </a>

                    <!-- meal content -->
                    <div class="meal-details-content">
                    <!-- <h2 class="recipe-title">Meals Name Here</h2>
                    <p class="recipe-category">Category Name</p>
                    <div class="recipe-instruct">
                        <h3>Instructions:</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusantium deserunt magni aut
                            tempora pariatur rerum modi labore aliquid. Beatae quibusdam perferendis quam inventore quia
                            necessitatibus! Ipsa quam reiciendis at consequuntur!
                            Iure quasi quam harum et dolorem, odit aut commodi culpa natus, voluptatibus modi magnam
                            itaque, ratione corrupti aliquid. Veniam repudiandae non necessitatibus autem error. Atque
                            blanditiis iste saepe autem deserunt?
                            Explicabo est ab rem non? Vel reiciendis distinctio fugiat ipsa dolorum soluta eius, beatae
                            optio eaque commodi eum laboriosam quis, quos voluptatibus quidem. Totam accusamus velit sed
                            maiores. Possimus, quaerat.
                            Aliquam commodi quidem aliquid consequuntur rem velit suscipit eaque esse perferendis,
                            maiores dolorum eius earum eos quia vitae consectetur officia aut quam voluptas incidunt
                            culpa omnis pariatur. Enim, exercitationem in.
                            Minima corrupti neque est error hic nam, eius necessitatibus unde voluptates expedita.
                            Voluptatem obcaecati amet repellendus, rerum libero aut eius ea commodi, necessitatibus
                            architecto cumque sapiente modi assumenda, hic repudiandae?</p>
                    </div>
                    <div class="recipe-meal-img">
                        <img src="/food.jpg" alt="">
                    </div>
                    <div class="recipe-link">
                        <a href="#" target="_blank">Watch Video</a>
                    </div> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="overlay"></div>

    <script src="recipes-script.js"></script>
</body>
</html>