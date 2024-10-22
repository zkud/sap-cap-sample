using products from '../db';

service ProductsService {
    entity Products as projection on products.Products;
}