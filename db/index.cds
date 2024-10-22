namespace products;

using { cuid, managed } from '@sap/cds/common';

entity Products : cuid, managed {
    name: String(50);
    description: String(200);
    ingredients: Composition of many Ingredients on ingredients.product = $self;
}

@cds.autoexpand
entity Ingredients : cuid, managed {
    amount: Decimal(20, 10); // Gramms
    name: String(50);
    fat: Decimal(20, 10); // Per 100 Gramms
    protein: Decimal(20, 10); // Per 100 Gramms
    carbohydrates: Decimal(20, 10); // Per 100 Gramms
    product: Association to one Products;
};
