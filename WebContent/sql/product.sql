CREATE table if not exists product(
	p_id varchar(10) not null,
	p_name varchar(30),
	p_price varchar(30),
	p_level varchar(10),
	p_duration varchar(10),
	p_nutrition TEXT,
	p_ingredient TEXT,
	p_fileName varchar(30),
	PRIMARY KEY (p_id)
)default CHARSET=utf8;

drop table product;
desc product;

insert into product values('P1111', 'Beef Burger', '8000', '3', '40', 'Serving: 1patty | Calories: 558kcal | Carbohydrates: 23g | Protein: 33g | Fat: 35g | Saturated Fat: 13g | Cholesterol: 120mg | Sodium: 1533mg | Potassium: 556mg | Fiber: 1g | Sugar: 3g | Vitamin C: 1.1mg | Calcium: 110mg | Iron: 5mg', '2 pounds ground beef, 1 egg, beaten, �� cup dry bread crumbs, 3 tablespoons evaporated milk, 2 tablespoons Worcestershire sauce, �� teaspoon cayenne pepper, 2 cloves garlic, minced, 4 hamburger buns (4 in. wide), split, About 1/2 teaspoon salt, About 1/4 cup mayonnaise, About 1/4 cup ketchup, 4 iceberg lettuce leaves, rinsed and crisped, 1 firm-ripe tomato, cored and thinly sliced, 4 thin slices red onion', 'beef-burger-1.jpg');
insert into product values('P2222', 'Chicken Burger', '7500', '3', '40', 'Serving: 1patty | Calories: 558kcal | Carbohydrates: 23g | Protein: 33g | Fat: 35g | Saturated Fat: 13g | Cholesterol: 120mg | Sodium: 1533mg | Potassium: 556mg | Fiber: 1g | Sugar: 3g | Vitamin C: 1.1mg | Calcium: 110mg | Iron: 5mg', '2 pounds ground chicken, 1 egg, beaten, �� cup dry bread crumbs, 3 tablespoons evaporated milk, 2 tablespoons Worcestershire sauce, �� teaspoon cayenne pepper, 2 cloves garlic, minced, 4 hamburger buns (4 in. wide), split, About 1/2 teaspoon salt, About 1/4 cup mayonnaise, About 1/4 cup ketchup, 4 iceberg lettuce leaves, rinsed and crisped, 1 firm-ripe tomato, cored and thinly sliced, 4 thin slices red onion', 'chicken-burger-1.jpg');
insert into product values('P3333', 'Cinnamon Bread', '8500', '4', '60', 'Serving: 1patty | Calories: 558kcal | Carbohydrates: 23g | Protein: 33g | Fat: 35g | Saturated Fat: 13g | Cholesterol: 120mg | Sodium: 1533mg | Potassium: 556mg | Fiber: 1g | Sugar: 3g | Vitamin C: 1.1mg | Calcium: 110mg | Iron: 5mg', 'DOUGH 1 cup unsalted butter (115 g), melted, 2 cups whole milk (480 mL), warm to the touch, ½ cup granulated sugar (100 g), 2 ¼ teaspoons active dry yeast, 5 cups flour (625 g), FILLING 1 cup butter (170 g), softened, 2 cup light brown sugar (165 g), 2 tablespoons ground cinnamon, FROSTING 4 oz cream cheese (55 g), softened, 2 tablespoons butter, melted, 2 tablespoons whole milk, 1 teaspoon vanilla extract', 'cinnamon-bread-1.jpg');
insert into product values('P4444', 'Pancake', '5000', '1', '15', 'Serving: 1patty | Calories: 558kcal | Carbohydrates: 23g | Protein: 33g | Fat: 35g | Saturated Fat: 13g | Cholesterol: 120mg | Sodium: 1533mg | Potassium: 556mg | Fiber: 1g | Sugar: 3g | Vitamin C: 1.1mg | Calcium: 110mg | Iron: 5mg', '2/3 cup all-purpose flour, 1 tablespoon sugar, 1 teaspoon baking powder, 3/4 teaspoon baking soda, 1/3 cup plain yogurt, 1 large egg, beaten lightly, 1 tablespoon butter, melted and cooled, 1/2 cup whole milk', 'pancake-1.jpg');
insert into product values('P5555', 'Chicken Salad', '5800', '1', '10', 'Serving: 1patty | Calories: 558kcal | Carbohydrates: 23g | Protein: 33g | Fat: 35g | Saturated Fat: 13g | Cholesterol: 120mg | Sodium: 1533mg | Potassium: 556mg | Fiber: 1g | Sugar: 3g | Vitamin C: 1.1mg | Calcium: 110mg | Iron: 5mg', '2/3 cup all-purpose flour, 1 tablespoon sugar, 1 teaspoon baking powder, 3/4 teaspoon baking soda, 1/3 cup plain yogurt, 1 large egg, beaten lightly, 1 tablespoon butter, melted and cooled, 1/2 cup whole milk', 'chicken-salad.jpg');
insert into product values('P6666', 'Chocolate Butter Cookies', '6000', '3', '60', 'Serving: 1patty | Calories: 558kcal | Carbohydrates: 23g | Protein: 33g | Fat: 35g | Saturated Fat: 13g | Cholesterol: 120mg | Sodium: 1533mg | Potassium: 556mg | Fiber: 1g | Sugar: 3g | Vitamin C: 1.1mg | Calcium: 110mg | Iron: 5mg', '2/3 cup all-purpose flour, 1 tablespoon sugar, 1 teaspoon baking powder, 3/4 teaspoon baking soda, 1/3 cup plain yogurt, 1 large egg, beaten lightly, 1 tablespoon butter, melted and cooled, 1/2 cup whole milk', 'chocolate-butter-cookies.jpg');
insert into product values('P7777', 'Beef Taco', '6500', '2', '25', 'Serving: 1patty | Calories: 558kcal | Carbohydrates: 23g | Protein: 33g | Fat: 35g | Saturated Fat: 13g | Cholesterol: 120mg | Sodium: 1533mg | Potassium: 556mg | Fiber: 1g | Sugar: 3g | Vitamin C: 1.1mg | Calcium: 110mg | Iron: 5mg', '2/3 cup all-purpose flour, 1 tablespoon sugar, 1 teaspoon baking powder, 3/4 teaspoon baking soda, 1/3 cup plain yogurt, 1 large egg, beaten lightly, 1 tablespoon butter, melted and cooled, 1/2 cup whole milk', 'beef-taco.jpg');
insert into product values('P8888', 'Lasagna', '8000', '2', '35', 'Serving: 1patty | Calories: 558kcal | Carbohydrates: 23g | Protein: 33g | Fat: 35g | Saturated Fat: 13g | Cholesterol: 120mg | Sodium: 1533mg | Potassium: 556mg | Fiber: 1g | Sugar: 3g | Vitamin C: 1.1mg | Calcium: 110mg | Iron: 5mg', '2/3 cup all-purpose flour, 1 tablespoon sugar, 1 teaspoon baking powder, 3/4 teaspoon baking soda, 1/3 cup plain yogurt, 1 large egg, beaten lightly, 1 tablespoon butter, melted and cooled, 1/2 cup whole milk', 'lasagna.jpg');

select * from product;

delete from product where p_id='P9999';