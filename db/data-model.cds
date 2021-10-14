namespace my.bookshop;

entity Books {
  key ID : Integer @title:'ID';
  title  : String @title : 'Title';
  stock  : Integer @title : 'Stock';
}