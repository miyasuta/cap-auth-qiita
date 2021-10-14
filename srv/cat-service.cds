using my.bookshop as my from '../db/data-model';

@requires: 'authenticated-user'
service CatalogService {
     @(restrict: [
            { grant: ['READ', 'WRITE'], to: 'Admin' }
        ])    
    @readonly entity Books as projection on my.Books;
}

annotate CatalogService.Books with @(
    UI: {
        SelectionFields  : [
            ID,
            title
        ],
        LineItem  : [
            {
                $Type : 'UI.DataField',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Value : stock,
            }
        ],
    }
);