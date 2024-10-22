using calories from '../db';

service ProductsService {
    entity Products as projection on calories.Items;
}