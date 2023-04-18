select * from [burger-king-menu];

--Total count of the categories.

Select Category, COUNT(Category) as TCount from [burger-king-menu]
group by Category;

--Showing the item which has highest calorie.

select * from [burger-king-menu]
where Calories = (select MAX(Calories) from [burger-king-menu]);

--Selecting the item from each category that has maximum calorie. 

select * from [burger-king-menu]
where Category = 'Breakfast'	
and Calories = (select MAX(Calories) from [burger-king-menu]
where Category = 'Breakfast');

select * from [burger-king-menu]
where Category = 'Burgers'
and Calories = (select MAX(Calories) from [burger-king-menu]
where Category = 'Burgers');

select * from [burger-king-menu]
where Category = 'Chicken'
and Calories = (select MAX(Calories) from [burger-king-menu]
where Category = 'Chicken');

--Food items which have Calories less than or equal to 700.

select * from [burger-king-menu]
where Calories <= 700
order by Category, Calories;

--Food items which have Calories and Sodium less than or equal to 700, sugar less than or qual to 15g and Saturated Fats less than or equal to 5g.

select * from [burger-king-menu]
where Calories <= 700
and Sodium_mg <= 700
and Sugars_g <= 15
and Saturated_Fat_g <=5
order by Category,Calories;

--Food items which have Fats less than or equal to 28g, Protein less than or equal to 30g, Carbohydrates less than or qual to 105g 
--and Dietary Fiber is not equal to 0.

select * from [burger-king-menu]
where Fat_g <= 28
and Protein_g <= 30
and Total_Carb_g <= 105
and Dietary_Fiber_g != 0
order by Category,Calories;
