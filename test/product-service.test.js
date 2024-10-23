const ProductsService = require('../srv/products-service');

describe('Trivial Product Service Test', () => {
    test('It creates a service object', () => {
        new ProductsService();
    });
});