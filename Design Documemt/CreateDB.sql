create table Restaurant(
	Id int not null identity(1,1) primary key,
	Address nvarchar(500) not null,
	Name nvarchar(100) not null,
	Description nvarchar(max) not null,
	Coordinate char(25) not null,
	LocationId int,
	CreatedDate datetime not null,
	UpdatedDate datetime
);

go
create table Location(
	Id int not null identity(1,1) primary key,
	Name nvarchar(500) not null,
	Coordinate char(25) not null,
	ParentId int
);
go 
create table DrinkLevel(
	Id int not null identity(1,1) primary key,
	Title nvarchar(50) not null,
	Description nvarchar(1000) not null
);
go
create table Club(
	Id int not null identity(1,1) primary key,
	Coordinate varchar(25),
	OwnerId int not null,
	Title nvarchar(50),
	Description nvarchar(max),
	LocationId int not null,
);
go
create table Party(
	Id int not null identity(1,1) primary key,
	Title nvarchar(500),
	OwnerId int not null, 
	LimitNumber tinyint,
	MenuId int,
	StartDate date not null,
	EndDate date not null,
	CreatedDate datetime not null,
	UpdatedDate datetime
);
go
create table Menu(
	Id int not null identity(1,1) primary key,
	Description nvarchar(500) not null,
	StandardPrice decimal not null,
	PartyId int not null,
	MediaObjId int
);
go
create table MediaObject(
	Id int not null identity(1,1) primary key,
	Name nvarchar(50),
	Extension varchar(5),
);
go
create table Drinker(
	Id int not null identity(1,1) primary key,
	FullName nvarchar(100) not null,
	NickName nvarchar(100),
	Avatar binary,
	LevelId int not null,
	IsDeleted bit default 0,
	CreatedDate datetime not null,
	UpdatedDate datetime not null,
	LocationId int not null,
	ClubId int
);
go
create table InviteLetter(
	DrinkerId int not null,
	PartyId int not null,
	InvitedDate datetime not null,
	JoinedDate datetime,
	IsEnd bit not null default 0,
	primary key(DrinkerId, PartyId)
);
go
create table ReviewCard(
	Id int not null identity(1,1) primary key,
	OwnerId int not null,
	CartType tinyint not null, 
	Title nvarchar(100) not null,
	LongDescription nvarchar(max) not null,
	CreatedDate datetime not null,
	UpdatedDate datetime
);
create table ReviewCardMedia(
	ReviewCardId int not null,
	MediaObjectId int not null,
	primary key(ReviewCardId, MediaObjectId)
);

