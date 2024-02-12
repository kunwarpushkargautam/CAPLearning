using { cuid, managed } from '@sap/cds/common';

entity Books : cuid,managed{
  title  : String;
  descr  : String;
  genre  : Genre;
  author : Association to Authors;
}

entity Authors : cuid {
  name   : String;
  books  : Association to many Books on books.author = $self;
}

type Genre : String enum {
  Mystery; Fiction; Drama;
}