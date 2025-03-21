﻿

CREATE TABLE [dbo].[Friendship](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId1] [int] NOT NULL,
	[UserId2] [int] NOT NULL,
	[Status] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 14/03/2025 18:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[ImageName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupMember]    Script Date: 14/03/2025 18:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupMember](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GroupId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 14/03/2025 18:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GroupId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Content] [nvarchar](1000) NOT NULL,
	[SentAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Platform]    Script Date: 14/03/2025 18:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Platform](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 14/03/2025 18:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[Salt] [nvarchar](50) NULL,
	[PasswordHas] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserList]    Script Date: 14/03/2025 18:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserList](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserListVideoGame]    Script Date: 14/03/2025 18:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserListVideoGame](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserListId] [int] NOT NULL,
	[VideoGameId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserReview]    Script Date: 14/03/2025 18:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserReview](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[VideoGameId] [int] NOT NULL,
	[Score] [int] NOT NULL,
	[Review] [nvarchar](1000) NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserVideoGame]    Script Date: 14/03/2025 18:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserVideoGame](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[VideoGameId] [int] NOT NULL,
	[PlaytimeHours] [int] NULL,
	[Status] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VideoGame]    Script Date: 14/03/2025 18:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VideoGame](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Genre] [nvarchar](50) NOT NULL,
	[Developer] [nvarchar](100) NOT NULL,
	[ReleaseYear] [int] NOT NULL,
	[ImageName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VideoGamePlatform]    Script Date: 14/03/2025 18:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VideoGamePlatform](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VideoGameId] [int] NOT NULL,
	[PlatformId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Platform] ON 

INSERT [dbo].[Platform] ([Id], [Name]) VALUES (10, N'GameBoy')
INSERT [dbo].[Platform] ([Id], [Name]) VALUES (11, N'Nintendo')
INSERT [dbo].[Platform] ([Id], [Name]) VALUES (12, N'Nintendo 3DS')
INSERT [dbo].[Platform] ([Id], [Name]) VALUES (13, N'Nintendo Switch')
INSERT [dbo].[Platform] ([Id], [Name]) VALUES (1, N'PC')
INSERT [dbo].[Platform] ([Id], [Name]) VALUES (3, N'PlayStation2')
INSERT [dbo].[Platform] ([Id], [Name]) VALUES (4, N'PlayStation3')
INSERT [dbo].[Platform] ([Id], [Name]) VALUES (5, N'PlayStation4')
INSERT [dbo].[Platform] ([Id], [Name]) VALUES (6, N'PlayStation5')
INSERT [dbo].[Platform] ([Id], [Name]) VALUES (2, N'PSP')
INSERT [dbo].[Platform] ([Id], [Name]) VALUES (7, N'Xbox360')
INSERT [dbo].[Platform] ([Id], [Name]) VALUES (8, N'XboxOne')
INSERT [dbo].[Platform] ([Id], [Name]) VALUES (9, N'XboxSeries X|S')
SET IDENTITY_INSERT [dbo].[Platform] OFF
GO
INSERT [dbo].[User] ([Id], [Username], [Email], [Password], [Salt], [PasswordHas]) VALUES (1, N'alex', N'alex@mail.com', N'1234', N'=²²<GN¦]Û¡(Q¬rGÕÃÍù»qåK/]ëX¨ÑaT­#ÄéáÙ9Ê¯ni®', 0x799F6DCE60A88E5508684F6523561C794C54409172BA0891ECB922517AED1ABD95388D3CD2DF4754416B0A26F42B88444DA3F58B3BE805A24A2AF14A2CCFF70B)
INSERT [dbo].[User] ([Id], [Username], [Email], [Password], [Salt], [PasswordHas]) VALUES (2, N'user1', N'user1@mail.com', N'1234', N'Æ*.£êØ¢,;6nÄ;sÆ0Øøúu¡ 
F:8xÏïlËo	³_¬-LBuüÂ', 0x51882DD951C37D10F60FDC53B6198BBCC51BC88477AAD794D1A2564203650C574C19159876B6E395F0BF8209476F9CDD35E12ED5D9DF1051B5BAFE5CBAC9B088)
GO
SET IDENTITY_INSERT [dbo].[UserList] ON 

INSERT [dbo].[UserList] ([Id], [UserId], [Name], [Description]) VALUES (1, 2, N'Sabado', N'Mejores Juegos Para Jugar un sabado por la noche')
INSERT [dbo].[UserList] ([Id], [UserId], [Name], [Description]) VALUES (2, 2, N'Viernes', N'asdfsaf dsdfgrsbvt')
INSERT [dbo].[UserList] ([Id], [UserId], [Name], [Description]) VALUES (3, 1, N'Sabado', N'sdaff')
SET IDENTITY_INSERT [dbo].[UserList] OFF
GO
SET IDENTITY_INSERT [dbo].[UserVideoGame] ON 

INSERT [dbo].[UserVideoGame] ([Id], [UserId], [VideoGameId], [PlaytimeHours], [Status]) VALUES (1, 1, 7, 104, N'Completed')
INSERT [dbo].[UserVideoGame] ([Id], [UserId], [VideoGameId], [PlaytimeHours], [Status]) VALUES (2, 1, 8, 300, N'Playing')
INSERT [dbo].[UserVideoGame] ([Id], [UserId], [VideoGameId], [PlaytimeHours], [Status]) VALUES (3, 1, 4, 60, N'Dropped')
INSERT [dbo].[UserVideoGame] ([Id], [UserId], [VideoGameId], [PlaytimeHours], [Status]) VALUES (4, 2, 1, 90, N'Completed')
SET IDENTITY_INSERT [dbo].[UserVideoGame] OFF
GO
SET IDENTITY_INSERT [dbo].[VideoGame] ON 

INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (1, N'Minecraft', N'A sandbox game that allows players to build with blocks in a 3D procedurally generated world, requiring creativity from players.', N'Sandbox', N'Mojang Studios', 2011, N'minecraft.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (2, N'PlayerUnknown''s Battlegrounds', N'A battle royale game where up to 100 players fight to remain the last person or team alive by killing others and avoiding getting killed themselves.', N'Battle Royale', N'PUBG Corporation', 2017, N'pubg.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (3, N'The Sims', N'A life simulation game series where players create virtual people and control their lives while building homes and developing relationships.', N'Life Simulation', N'Maxis', 2000, N'thesims.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (4, N'World of Warcraft', N'A massively multiplayer online role-playing game set in the Warcraft fantasy universe where players control characters in an open world.', N'MMORPG', N'Blizzard Entertainment', 2004, N'wow.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (5, N'Diablo III', N'An action role-playing dungeon crawler game where players battle against the Lord of Terror, Diablo.', N'Action RPG', N'Blizzard Entertainment', 2012, N'diablo3.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (6, N'Counter-Strike: Global Offensive', N'A multiplayer first-person shooter where teams compete to plant or defuse bombs and complete objectives or eliminate the enemy team.', N'FPS', N'Valve Corporation', 2012, N'csgo.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (7, N'The Witcher 3: Wild Hunt', N'An action role-playing game set in a fantasy open world, following Geralt of Rivia, a monster hunter known as a Witcher.', N'Action RPG', N'CD Projekt Red', 2015, N'witcher3.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (8, N'League of Legends', N'A multiplayer online battle arena game where two teams of champions compete to destroy the opposing team''s base.', N'MOBA', N'Riot Games', 2009, N'lol.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (9, N'Grand Theft Auto V', N'An action-adventure game set in an open world environment where players can complete missions and engage in various activities in the fictional state of San Andreas.', N'Action-Adventure', N'Rockstar North', 2013, N'gtav.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (10, N'StarCraft', N'A real-time strategy game set in a science fiction universe, focusing on three species fighting for dominance.', N'RTS', N'Blizzard Entertainment', 1998, N'starcraft.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (11, N'Grand Theft Auto: San Andreas', N'An action-adventure game set in the fictional state of San Andreas, following Carl Johnson as he returns home and works to save his family and take control of the streets.', N'Action-Adventure', N'Rockstar North', 2004, N'gtasanandreas.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (12, N'Gran Turismo 4', N'A racing simulator featuring over 700 cars and 50 tracks, with realistic driving physics and various racing modes.', N'Racing', N'Polyphony Digital', 2004, N'granturismo4.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (13, N'Final Fantasy X', N'A role-playing game following Tidus, a star blitzball player who journeys with summoner Yuna to save the world of Spira from a destructive force known as Sin.', N'JRPG', N'Square Enix', 2001, N'ffx.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (14, N'God of War II', N'An action-adventure game based on Greek mythology, following Kratos, the new God of War, as he seeks revenge against Zeus and the Olympian gods.', N'Action-Adventure', N'Santa Monica Studio', 2007, N'gow2.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (15, N'Metal Gear Solid 3: Snake Eater', N'A stealth game set during the Cold War, following Naked Snake as he attempts to rescue a weapons designer and sabotage an experimental superweapon.', N'Stealth', N'Konami', 2004, N'mgs3.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (16, N'The Last of Us', N'A post-apocalyptic action-adventure game following Joel and Ellie as they journey across a United States ravaged by a mutated fungal infection that turns humans into hostile creatures.', N'Action-Adventure', N'Naughty Dog', 2013, N'lastofus.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (17, N'Uncharted 2: Among Thieves', N'An action-adventure game following treasure hunter Nathan Drake as he searches for the lost city of Shambhala and the Cintamani Stone while battling a ruthless warlord.', N'Action-Adventure', N'Naughty Dog', 2009, N'uncharted2.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (18, N'LittleBigPlanet', N'A puzzle platformer game focused on user-generated content, allowing players to create, share, and play levels with the character Sackboy in a world filled with creativity.', N'Platformer', N'Media Molecule', 2008, N'littlebigplanet.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (19, N'Demon Souls', N'A challenging action RPG set in the kingdom of Boletaria, which has been consumed by a dark being called the Old One, and players must defeat powerful demons to claim their souls.', N'Action RPG', N'FromSoftware', 2009, N'demonssouls.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (20, N'Red Dead Redemption', N'An open-world western action-adventure game following former outlaw John Marston as he hunts down his former gang members to get his family back from government agents.', N'Action-Adventure', N'Rockstar San Diego', 2010, N'reddead.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (21, N'God of War', N'A reimagining of the series that follows an older Kratos and his son Atreus as they journey through Norse mythology, dealing with gods and monsters while bonding as father and son.', N'Action-Adventure', N'Santa Monica Studio', 2018, N'godofwar.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (22, N'Horizon Zero Dawn', N'An action RPG set in a post-apocalyptic world dominated by robotic creatures, following Aloy as she uncovers the mysteries of her past and the world around her.', N'Action RPG', N'Guerrilla Games', 2017, N'horizonzerodawn.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (23, N'Bloodborne', N'A challenging action RPG set in the Gothic city of Yharnam, where players hunt beasts and uncover cosmic horrors while navigating a nightmarish landscape.', N'Action RPG', N'FromSoftware', 2015, N'bloodborne.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (24, N'Spider-Man', N'An open-world action-adventure game where players control Spider-Man as he fights crime in New York City, balancing his superhero duties with his personal life as Peter Parker.', N'Action-Adventure', N'Insomniac Games', 2018, N'spiderman.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (25, N'Ghost of Tsushima', N'An open-world action-adventure game set in feudal Japan, following samurai Jin Sakai as he fights to protect Tsushima Island during the first Mongol invasion.', N'Action-Adventure', N'Sucker Punch Productions', 2020, N'ghostoftsushima.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (26, N'Dark Souls III', N'The final entry in the Dark Souls series, set in a dark fantasy world where players take on the role of the Ashen One, tasked with defeating powerful enemies and bringing an end to the Age of Fire.', N'Action RPG', N'FromSoftware', 2016, N'darksouls3.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (27, N'Dark Souls II', N'An action role-playing game that continues the story set in a dark fantasy world, following the cursed protagonist seeking to uncover the mystery behind the undead curse.', N'Action RPG', N'FromSoftware', 2014, N'darksouls2.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (28, N'Dark Souls', N'An action role-playing game set in a dark fantasy world, where players control the Undead protagonist to break the curse of the undead and confront powerful enemies and bosses.', N'Action RPG', N'FromSoftware', 2011, N'darksouls1.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (29, N'Elden Ring', N'An open-world action role-playing game set in a dark fantasy world, following the journey of the Tarnished to seek the Elden Ring and become the Elden Lord.', N'Action RPG', N'FromSoftware', 2022, N'eldenring.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (30, N'Sekiro: Shadows Die Twice', N'An action-adventure game where players control a shinobi named Sekiro as he seeks revenge on his kidnappers in a re-imagined late 1500s Japan, blending stealth, swordplay, and exploration.', N'Action-Adventure', N'FromSoftware', 2019, N'sekiro.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (31, N'Red Dead Redemption 2', N'A prequel to Red Dead Redemption, set in an open world environment where players control Arthur Morgan, a member of the Van der Linde gang, as they rob, steal, and fight to survive.', N'Action-Adventure', N'Rockstar Games', 2018, N'rdr2.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (32, N'Assassin''s Creed Valhalla', N'An action role-playing game set in the Viking era where players control Eivor, a Viking raider, exploring England and Scandinavia while engaging in combat and building settlements.', N'Action RPG', N'Ubisoft', 2020, N'acvalhalla.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (33, N'Cyberpunk 2077', N'An open-world action role-playing game set in a dystopian future, following V, a mercenary in the cyberpunk city of Night City, as they pursue fame and survival amidst corruption and chaos.', N'Action RPG', N'CD Projekt Red', 2020, N'cyberpunk2077.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (34, N'Pokémon Red and Blue', N'A pair of role-playing games where players control a Pokémon Trainer on their journey to catch all 151 Pokémon and become the Pokémon Champion.', N'RPG', N'Game Freak', 1996, N'pokemonredblue.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (35, N'Pokémon Gold and Silver', N'A pair of role-playing games where players continue their journey in the Johto region, catching new Pokémon and defeating the Pokémon League.', N'RPG', N'Game Freak', 1999, N'pokemongoldsilver.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (36, N'Pokémon Ruby and Sapphire', N'A pair of role-playing games set in the Hoenn region where players battle to become the Pokémon Champion and thwart Team Aqua and Team Magma.', N'RPG', N'Game Freak', 2002, N'pokemonrubysapphire.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (37, N'Pokémon Diamond and Pearl', N'A pair of role-playing games set in the Sinnoh region where players catch new Pokémon and battle against the evil Team Galactic.', N'RPG', N'Game Freak', 2006, N'pokemondiamondpearl.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (38, N'Pokémon Black and White', N'A pair of role-playing games set in the Unova region, where players catch new Pokémon and challenge the new Pokémon League.', N'RPG', N'Game Freak', 2010, N'pokemonblackwhite.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (39, N'Pokémon Sun and Moon', N'A pair of role-playing games set in the Alola region where players catch new Pokémon, battle in unique trials, and thwart Team Skull.', N'RPG', N'Game Freak', 2016, N'pokemonsunmoon.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (40, N'The Legend of Zelda: Breath of the Wild', N'Un innovador juego de mundo abierto donde Link despierta tras 100 años para derrotar a Calamity Ganon y salvar a Hyrule.', N'Action-Adventure', N'Nintendo', 2017, N'breathofthewild.jpg')
INSERT [dbo].[VideoGame] ([Id], [Name], [Description], [Genre], [Developer], [ReleaseYear], [ImageName]) VALUES (41, N'The Legend of Zelda: Tears of the Kingdom', N'Secuela de Breath of the Wild, expandiendo Hyrule con islas flotantes y nuevas habilidades para Link.', N'Action-Adventure', N'Nintendo', 2023, N'tearsofthekingdom.jpg')
SET IDENTITY_INSERT [dbo].[VideoGame] OFF
GO
SET IDENTITY_INSERT [dbo].[VideoGamePlatform] ON 

INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (1, 1, 1)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (2, 1, 4)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (3, 1, 5)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (4, 1, 8)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (5, 1, 13)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (6, 2, 1)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (7, 2, 5)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (8, 2, 8)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (9, 3, 1)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (10, 4, 1)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (11, 5, 1)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (12, 5, 4)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (13, 5, 5)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (14, 5, 7)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (15, 5, 8)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (16, 5, 13)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (17, 6, 1)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (18, 6, 4)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (19, 6, 7)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (20, 7, 1)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (21, 7, 5)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (22, 7, 8)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (23, 7, 13)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (24, 8, 1)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (25, 9, 1)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (26, 9, 4)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (27, 9, 5)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (28, 9, 7)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (29, 9, 8)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (30, 10, 1)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (31, 11, 3)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (32, 12, 3)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (33, 13, 3)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (34, 14, 3)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (35, 15, 3)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (36, 16, 4)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (37, 16, 5)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (38, 17, 4)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (39, 18, 4)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (40, 19, 4)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (41, 20, 4)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (42, 20, 7)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (43, 21, 5)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (44, 22, 1)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (45, 22, 5)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (46, 23, 5)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (47, 24, 5)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (48, 25, 5)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (49, 25, 6)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (50, 26, 1)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (51, 26, 5)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (52, 26, 8)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (53, 27, 1)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (54, 27, 4)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (55, 27, 7)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (56, 28, 1)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (57, 28, 4)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (58, 28, 7)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (59, 29, 1)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (60, 29, 5)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (61, 29, 6)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (62, 29, 8)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (63, 29, 9)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (64, 30, 1)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (65, 30, 5)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (66, 30, 8)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (67, 31, 1)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (68, 31, 5)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (69, 31, 8)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (70, 32, 1)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (71, 32, 5)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (72, 32, 6)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (73, 32, 8)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (74, 32, 9)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (75, 33, 1)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (76, 33, 5)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (77, 33, 6)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (78, 33, 8)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (79, 33, 9)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (80, 34, 10)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (81, 35, 10)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (82, 39, 12)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (83, 40, 13)
INSERT [dbo].[VideoGamePlatform] ([Id], [VideoGameId], [PlatformId]) VALUES (84, 41, 13)
SET IDENTITY_INSERT [dbo].[VideoGamePlatform] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Platform__737584F61FE501D8]    Script Date: 14/03/2025 18:17:05 ******/
ALTER TABLE [dbo].[Platform] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__User__536C85E495924D68]    Script Date: 14/03/2025 18:17:05 ******/
ALTER TABLE [dbo].[User] ADD UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__User__A9D1053486B8AE22]    Script Date: 14/03/2025 18:17:05 ******/
ALTER TABLE [dbo].[User] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Message] ADD  DEFAULT (getdate()) FOR [SentAt]
GO
ALTER TABLE [dbo].[UserReview] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[UserVideoGame] ADD  DEFAULT ((0)) FOR [PlaytimeHours]
GO
ALTER TABLE [dbo].[Friendship]  WITH CHECK ADD FOREIGN KEY([UserId1])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Friendship]  WITH CHECK ADD FOREIGN KEY([UserId2])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[GroupMember]  WITH CHECK ADD FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GroupMember]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserList]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserListVideoGame]  WITH CHECK ADD FOREIGN KEY([UserListId])
REFERENCES [dbo].[UserList] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserListVideoGame]  WITH CHECK ADD FOREIGN KEY([VideoGameId])
REFERENCES [dbo].[VideoGame] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserReview]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserReview]  WITH CHECK ADD FOREIGN KEY([VideoGameId])
REFERENCES [dbo].[VideoGame] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserVideoGame]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserVideoGame]  WITH CHECK ADD FOREIGN KEY([VideoGameId])
REFERENCES [dbo].[VideoGame] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VideoGamePlatform]  WITH CHECK ADD FOREIGN KEY([PlatformId])
REFERENCES [dbo].[Platform] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VideoGamePlatform]  WITH CHECK ADD FOREIGN KEY([VideoGameId])
REFERENCES [dbo].[VideoGame] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Friendship]  WITH CHECK ADD CHECK  (([Status]='Blocked' OR [Status]='Accepted' OR [Status]='Pending'))
GO
ALTER TABLE [dbo].[UserReview]  WITH CHECK ADD CHECK  (([Score]>=(1) AND [Score]<=(10)))
GO
ALTER TABLE [dbo].[UserVideoGame]  WITH CHECK ADD CHECK  (([Status]='Replaying' OR [Status]='Wishlist' OR [Status]='Dropped' OR [Status]='Completed' OR [Status]='Playing' OR [Status]='Pending'))
GO
/****** Object:  StoredProcedure [dbo].[GetPlatformsByGame]    Script Date: 14/03/2025 18:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPlatformsByGame]
    @GameName NVARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT DISTINCT p.[Name]
    FROM [Platform] AS p
    INNER JOIN VideoGamePlatform AS vp ON p.Id = vp.PlatformId
    INNER JOIN VideoGame AS vg ON vp.VideoGameID = vg.Id
    WHERE vg.[Name] = @GameName;
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_GetGamesByUser]    Script Date: 14/03/2025 18:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_GetGamesByUser]
(@userId int)
as
select vg.Id as VideoGameId,
vg.[Name],
vg.Genre,
vg.Developer,
vg.ImageName,
uvg.PlaytimeHours,
uvg.Status
from VideoGame vg
inner join UserVideoGame uvg
on vg.Id = uvg.VideoGameId
where uvg.UserId = @userId
GO
/****** Object:  StoredProcedure [dbo].[SP_GetPlatformsByGame]    Script Date: 14/03/2025 18:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GetPlatformsByGame]
    @GameName NVARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT DISTINCT p.[Name]
    FROM [Platform] AS p
    INNER JOIN VideoGamePlatform AS vp ON p.Id = vp.PlatformId
    INNER JOIN VideoGame AS vg ON vp.VideoGameID = vg.Id
    WHERE vg.[Name] = @GameName;
END;
GO
USE [master]
GO
ALTER DATABASE [ProyectoJuegos] SET  READ_WRITE 
GO
