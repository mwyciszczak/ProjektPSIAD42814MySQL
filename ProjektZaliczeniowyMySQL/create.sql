/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     27.05.2022 01:56:00                          */
/*==============================================================*/


drop table if exists Marka;

drop table if exists Model;

drop table if exists Wpis;

/*==============================================================*/
/* Table: Marka                                                 */
/*==============================================================*/
create table Marka
(
   id_marka             int not null auto_increment,
   nazwa_marka          varchar(40) not null,
   primary key (id_marka)
);

/*==============================================================*/
/* Table: Model                                                 */
/*==============================================================*/
create table Model
(
   id_model             int not null auto_increment,
   id_marka             int not null,
   nazwa_model          varchar(40) not null,
   primary key (id_model)
);

/*==============================================================*/
/* Table: Wpis                                                  */
/*==============================================================*/
create table Wpis
(
   id_wpis              int not null auto_increment,
   id_model             int not null,
   spalanie_miasto      float(10) not null,
   spalanie_trasa       float(10) not null,
   cykl_mieszany        float(10),
   moc                  int not null,
   primary key (id_wpis)
);

alter table Model add constraint FK_Relationship_1 foreign key (id_marka)
      references Marka (id_marka) on delete restrict on update restrict;

alter table Wpis add constraint FK_Relationship_2 foreign key (id_model)
      references Model (id_model) on delete restrict on update restrict;

