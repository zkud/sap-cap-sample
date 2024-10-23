# Sample SAP CAP Service with Tasks

## Context

There are next domain entities in the service:
- Products.
- Ingredients.

Each product includes several ingredients. Each ingredient includes macronutrients per 100 gramm: fats, carbohydrates, protein; and each ingredient has amount in gramms.

Task numbers here emulate ordering by sprints.

## Task 1: Add Basic Business Function

Calculate the total calories for each ingredient using the formula:

Calories in ingredients = fat * 9 + carbohydrates * 4 + protein * 4

Sum the calories of all ingredients to get the total calorie count for the product.

## Task 2: Add Advanced Business Functions

Add alcohol to calories calculation, take each 1g of it as 7 calories.

Count process evaporation, add avarage evaporation coefficient (from 0% to 100%) to ingredients, and recaluclate amount by multiplying by (1 - evaporation coefficient).

## Task 3: Adjust by Requirements Refinements

Amount of ingredients is actually in KG, adjust previous calculation logic.

Evaporation coefficient is actually in percents, adjust logic as well.

## Task 4: Bug found

We've just had a precision critical issue, and now architects say to use Fraction.js instead of numbers.

## Task 5: Another refinement

Amount of fat, carbohydrates, protein, alcohol is actually in KG as well
