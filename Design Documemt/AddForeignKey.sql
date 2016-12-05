alter table Restaurant add constraint fk_restaurant_location foreign key(LocationId) references Location(Id);
go
alter table Location add constraint fk_parent_location foreign key(ParentId) references Location(Id);
go
alter table Drinker add constraint fk_drinker_level foreign key(LevelId) references DrinkLevel(Id);
go
alter table Drinker add constraint fk_drinker_location foreign key(LocationId) references Location(Id);
go
alter table Drinker add constraint fk_drinker_club foreign key(ClubId) references Club(Id);
go
alter table Club add constraint fk_club_owner foreign key(OwnerId) references Drinker(Id);
go
alter table ReviewCard add constraint fk_reviewcard_owner foreign key(OwnerId) references Drinker(Id);
go
alter table InviteLetter add constraint fk_invited_drinker foreign key(DrinkerId) references Drinker(Id);
go
alter table InviteLetter add constraint fk_invited_party foreign key(PartyId) references Party(Id);
go
alter table Menu add constraint fk_menu_party foreign key(PartyId) references Party(Id);
go
alter table Menu add constraint fk_menu_party foreign key(MediaObjId) references MediaObject(Id);
go
alter table ReviewCardMedia add constraint fk_ReviewCardMedia_MediaObject foreign key(MediaObjectId) references MediaObject(Id);
go
alter table ReviewCardMedia add constraint fk_ReviewCardMedia_ReviewCard foreign key(ReviewCardId) references ReviewCard(Id);







