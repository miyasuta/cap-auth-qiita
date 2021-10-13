using my.bookshop as my from '../db/data-model';

@requires: 'authenticated-user'
service CatalogService {
     @(restrict: [
            { grant: ['READ', 'WRITE'], to: 'Admin' }
        ])    
    @readonly entity Books as projection on my.Books;
}