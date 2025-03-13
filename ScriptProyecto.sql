
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
/****** Object:  Table [dbo].[Group]    Script Date: 13/03/2025 15:07:05 ******/
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
/****** Object:  Table [dbo].[GroupMember]    Script Date: 13/03/2025 15:07:05 ******/
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
/****** Object:  Table [dbo].[Message]    Script Date: 13/03/2025 15:07:05 ******/
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
/****** Object:  Table [dbo].[Platform]    Script Date: 13/03/2025 15:07:05 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 13/03/2025 15:07:05 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserList]    Script Date: 13/03/2025 15:07:05 ******/
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
/****** Object:  Table [dbo].[UserListVideoGame]    Script Date: 13/03/2025 15:07:05 ******/
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
/****** Object:  Table [dbo].[UserReview]    Script Date: 13/03/2025 15:07:05 ******/
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
/****** Object:  Table [dbo].[UserVideoGame]    Script Date: 13/03/2025 15:07:05 ******/
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
/****** Object:  Table [dbo].[VideoGame]    Script Date: 13/03/2025 15:07:05 ******/
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
/****** Object:  Table [dbo].[VideoGamePlatform]    Script Date: 13/03/2025 15:07:05 ******/
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
/****** Object:  StoredProcedure [dbo].[GetPlatformsByGame]    Script Date: 13/03/2025 15:07:05 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetGamesByUser]    Script Date: 13/03/2025 15:07:05 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetPlatformsByGame]    Script Date: 13/03/2025 15:07:05 ******/
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

insert into [Platform]([Name])
values
('PC'),
('PSP'),
('PlayStation2'),
('PlayStation3'),
('PlayStation4'),
('PlayStation5'),
('Xbox360'),
('XboxOne'),
('XboxSeries X|S'),
('GameBoy'),
('Nintendo'),
('Nintendo 3DS'),
('Nintendo Switch')


INSERT INTO VideoGame([Name],[Description],Genre,Developer,ReleaseYear,ImageName)
VALUES
('Minecraft', 'A sandbox game that allows players to build with blocks in a 3D procedurally generated world, requiring creativity from players.', 'Sandbox', 'Mojang Studios', 2011, 'minecraft.jpg'),
('PlayerUnknown''s Battlegrounds', 'A battle royale game where up to 100 players fight to remain the last person or team alive by killing others and avoiding getting killed themselves.', 'Battle Royale', 'PUBG Corporation', 2017, 'pubg.jpg'),
('The Sims', 'A life simulation game series where players create virtual people and control their lives while building homes and developing relationships.', 'Life Simulation', 'Maxis', 2000, 'thesims.jpg'),
('World of Warcraft', 'A massively multiplayer online role-playing game set in the Warcraft fantasy universe where players control characters in an open world.', 'MMORPG', 'Blizzard Entertainment', 2004, 'wow.jpg'),
('Diablo III', 'An action role-playing dungeon crawler game where players battle against the Lord of Terror, Diablo.', 'Action RPG', 'Blizzard Entertainment', 2012, 'diablo3.jpg'),
('Counter-Strike: Global Offensive', 'A multiplayer first-person shooter where teams compete to plant or defuse bombs and complete objectives or eliminate the enemy team.', 'FPS', 'Valve Corporation', 2012, 'csgo.jpg'),
('The Witcher 3: Wild Hunt', 'An action role-playing game set in a fantasy open world, following Geralt of Rivia, a monster hunter known as a Witcher.', 'Action RPG', 'CD Projekt Red', 2015, 'witcher3.jpg'),
('League of Legends', 'A multiplayer online battle arena game where two teams of champions compete to destroy the opposing team''s base.', 'MOBA', 'Riot Games', 2009, 'lol.jpg'),
('Grand Theft Auto V', 'An action-adventure game set in an open world environment where players can complete missions and engage in various activities in the fictional state of San Andreas.', 'Action-Adventure', 'Rockstar North', 2013, 'gtav.jpg'),
('StarCraft', 'A real-time strategy game set in a science fiction universe, focusing on three species fighting for dominance.', 'RTS', 'Blizzard Entertainment', 1998, 'starcraft.jpg'),
('Grand Theft Auto: San Andreas', 'An action-adventure game set in the fictional state of San Andreas, following Carl Johnson as he returns home and works to save his family and take control of the streets.', 'Action-Adventure', 'Rockstar North', 2004, 'gtasanandreas.jpg'),
('Gran Turismo 4', 'A racing simulator featuring over 700 cars and 50 tracks, with realistic driving physics and various racing modes.', 'Racing', 'Polyphony Digital', 2004, 'granturismo4.jpg'),
('Final Fantasy X', 'A role-playing game following Tidus, a star blitzball player who journeys with summoner Yuna to save the world of Spira from a destructive force known as Sin.', 'JRPG', 'Square Enix', 2001, 'ffx.jpg'),
('God of War II', 'An action-adventure game based on Greek mythology, following Kratos, the new God of War, as he seeks revenge against Zeus and the Olympian gods.', 'Action-Adventure', 'Santa Monica Studio', 2007, 'gow2.jpg'),
('Metal Gear Solid 3: Snake Eater', 'A stealth game set during the Cold War, following Naked Snake as he attempts to rescue a weapons designer and sabotage an experimental superweapon.', 'Stealth', 'Konami', 2004, 'mgs3.jpg'),
('The Last of Us', 'A post-apocalyptic action-adventure game following Joel and Ellie as they journey across a United States ravaged by a mutated fungal infection that turns humans into hostile creatures.', 'Action-Adventure', 'Naughty Dog', 2013, 'lastofus.jpg'),
('Uncharted 2: Among Thieves', 'An action-adventure game following treasure hunter Nathan Drake as he searches for the lost city of Shambhala and the Cintamani Stone while battling a ruthless warlord.', 'Action-Adventure', 'Naughty Dog', 2009, 'uncharted2.jpg'),
('LittleBigPlanet', 'A puzzle platformer game focused on user-generated content, allowing players to create, share, and play levels with the character Sackboy in a world filled with creativity.', 'Platformer', 'Media Molecule', 2008, 'littlebigplanet.jpg'),
('Demon Souls', 'A challenging action RPG set in the kingdom of Boletaria, which has been consumed by a dark being called the Old One, and players must defeat powerful demons to claim their souls.', 'Action RPG', 'FromSoftware', 2009, 'demonssouls.jpg'),
('Red Dead Redemption', 'An open-world western action-adventure game following former outlaw John Marston as he hunts down his former gang members to get his family back from government agents.', 'Action-Adventure', 'Rockstar San Diego', 2010, 'reddead.jpg'),
('God of War', 'A reimagining of the series that follows an older Kratos and his son Atreus as they journey through Norse mythology, dealing with gods and monsters while bonding as father and son.', 'Action-Adventure', 'Santa Monica Studio', 2018, 'godofwar.jpg'),
('Horizon Zero Dawn', 'An action RPG set in a post-apocalyptic world dominated by robotic creatures, following Aloy as she uncovers the mysteries of her past and the world around her.', 'Action RPG', 'Guerrilla Games', 2017, 'horizonzerodawn.jpg'),
('Bloodborne', 'A challenging action RPG set in the Gothic city of Yharnam, where players hunt beasts and uncover cosmic horrors while navigating a nightmarish landscape.', 'Action RPG', 'FromSoftware', 2015, 'bloodborne.jpg'),
('Spider-Man', 'An open-world action-adventure game where players control Spider-Man as he fights crime in New York City, balancing his superhero duties with his personal life as Peter Parker.', 'Action-Adventure', 'Insomniac Games', 2018, 'spiderman.jpg'),
('Ghost of Tsushima', 'An open-world action-adventure game set in feudal Japan, following samurai Jin Sakai as he fights to protect Tsushima Island during the first Mongol invasion.', 'Action-Adventure', 'Sucker Punch Productions', 2020, 'ghostoftsushima.jpg'),
('Dark Souls III', 'The final entry in the Dark Souls series, set in a dark fantasy world where players take on the role of the Ashen One, tasked with defeating powerful enemies and bringing an end to the Age of Fire.', 'Action RPG', 'FromSoftware', 2016, 'darksouls3.jpg'),
('Dark Souls II', 'An action role-playing game that continues the story set in a dark fantasy world, following the cursed protagonist seeking to uncover the mystery behind the undead curse.', 'Action RPG', 'FromSoftware', 2014, 'darksouls2.jpg'),
('Dark Souls', 'An action role-playing game set in a dark fantasy world, where players control the Undead protagonist to break the curse of the undead and confront powerful enemies and bosses.', 'Action RPG', 'FromSoftware', 2011, 'darksouls1.jpg'),
('Elden Ring', 'An open-world action role-playing game set in a dark fantasy world, following the journey of the Tarnished to seek the Elden Ring and become the Elden Lord.', 'Action RPG', 'FromSoftware', 2022, 'eldenring.jpg'),
('Sekiro: Shadows Die Twice', 'An action-adventure game where players control a shinobi named Sekiro as he seeks revenge on his kidnappers in a re-imagined late 1500s Japan, blending stealth, swordplay, and exploration.', 'Action-Adventure', 'FromSoftware', 2019, 'sekiro.jpg'),
('Red Dead Redemption 2', 'A prequel to Red Dead Redemption, set in an open world environment where players control Arthur Morgan, a member of the Van der Linde gang, as they rob, steal, and fight to survive.', 'Action-Adventure', 'Rockstar Games', 2018, 'rdr2.jpg'),
('Assassin''s Creed Valhalla', 'An action role-playing game set in the Viking era where players control Eivor, a Viking raider, exploring England and Scandinavia while engaging in combat and building settlements.', 'Action RPG', 'Ubisoft', 2020, 'acvalhalla.jpg'),
('Cyberpunk 2077', 'An open-world action role-playing game set in a dystopian future, following V, a mercenary in the cyberpunk city of Night City, as they pursue fame and survival amidst corruption and chaos.', 'Action RPG', 'CD Projekt Red', 2020, 'cyberpunk2077.jpg'),
('Pokémon Red and Blue', 'A pair of role-playing games where players control a Pokémon Trainer on their journey to catch all 151 Pokémon and become the Pokémon Champion.', 'RPG', 'Game Freak', 1996, 'pokemonredblue.jpg'),
('Pokémon Gold and Silver', 'A pair of role-playing games where players continue their journey in the Johto region, catching new Pokémon and defeating the Pokémon League.', 'RPG', 'Game Freak', 1999, 'pokemongoldsilver.jpg'),
('Pokémon Ruby and Sapphire', 'A pair of role-playing games set in the Hoenn region where players battle to become the Pokémon Champion and thwart Team Aqua and Team Magma.', 'RPG', 'Game Freak', 2002, 'pokemonrubysapphire.jpg'),
('Pokémon Diamond and Pearl', 'A pair of role-playing games set in the Sinnoh region where players catch new Pokémon and battle against the evil Team Galactic.', 'RPG', 'Game Freak', 2006, 'pokemondiamondpearl.jpg'),
('Pokémon Black and White', 'A pair of role-playing games set in the Unova region, where players catch new Pokémon and challenge the new Pokémon League.', 'RPG', 'Game Freak', 2010, 'pokemonblackwhite.jpg'),
('Pokémon Sun and Moon', 'A pair of role-playing games set in the Alola region where players catch new Pokémon, battle in unique trials, and thwart Team Skull.', 'RPG', 'Game Freak', 2016, 'pokemonsunmoon.jpg'),
('The Legend of Zelda: Breath of the Wild', 'Un innovador juego de mundo abierto donde Link despierta tras 100 años para derrotar a Calamity Ganon y salvar a Hyrule.', 'Action-Adventure', 'Nintendo', 2017, 'breathofthewild.jpg'),
('The Legend of Zelda: Tears of the Kingdom', 'Secuela de Breath of the Wild, expandiendo Hyrule con islas flotantes y nuevas habilidades para Link.', 'Action-Adventure', 'Nintendo', 2023, 'tearsofthekingdom.jpg');


INSERT INTO VideoGamePlatform (VideoGameId, PlatformId) VALUES
-- Minecraft (ID 1)
(1, 1),   -- PC
(1, 4),   -- PlayStation3
(1, 5),   -- PlayStation4
(1, 8),   -- XboxOne
(1, 13),  -- Nintendo Switch
-- PlayerUnknown's Battlegrounds (ID 2)
(2, 1),   -- PC
(2, 5),   -- PlayStation4
(2, 8),   -- XboxOne
-- The Sims (ID 3)
(3, 1),   -- PC
-- World of Warcraft (ID 4)
(4, 1),   -- PC
-- Diablo III (ID 5)
(5, 1),   -- PC
(5, 4),   -- PlayStation3
(5, 5),   -- PlayStation4
(5, 7),   -- Xbox360
(5, 8),   -- XboxOne
(5, 13),  -- Nintendo Switch
-- Counter-Strike: Global Offensive (ID 6)
(6, 1),   -- PC
(6, 4),   -- PlayStation3
(6, 7),   -- Xbox360
-- The Witcher 3: Wild Hunt (ID 7)
(7, 1),   -- PC
(7, 5),   -- PlayStation4
(7, 8),   -- XboxOne
(7, 13),  -- Nintendo Switch
-- League of Legends (ID 8)
(8, 1),   -- PC
-- Grand Theft Auto V (ID 9)
(9, 1),   -- PC
(9, 4),   -- PlayStation3
(9, 5),   -- PlayStation4
(9, 7),   -- Xbox360
(9, 8),   -- XboxOne
-- StarCraft (ID 10)
(10, 1),  -- PC
-- Grand Theft Auto: San Andreas (ID 11)
(11, 3),  -- PlayStation2
-- Gran Turismo 4 (ID 12)
(12, 3),  -- PlayStation2
-- Final Fantasy X (ID 13)
(13, 3),  -- PlayStation2
-- God of War II (ID 14)
(14, 3),  -- PlayStation2
-- Metal Gear Solid 3: Snake Eater (ID 15)
(15, 3),  -- PlayStation2
-- The Last of Us (ID 16)
(16, 4),  -- PlayStation3
(16, 5),  -- PlayStation4
-- Uncharted 2: Among Thieves (ID 17)
(17, 4),  -- PlayStation3
-- LittleBigPlanet (ID 18)
(18, 4),  -- PlayStation3
-- Demon Souls (ID 19)
(19, 4),  -- PlayStation3
-- Red Dead Redemption (ID 20)
(20, 4),  -- PlayStation3
(20, 7),  -- Xbox360
-- God of War (2018) (ID 21)
(21, 5),  -- PlayStation4
-- Horizon Zero Dawn (ID 22)
(22, 1),  -- PC
(22, 5),  -- PlayStation4
-- Bloodborne (ID 23)
(23, 5),  -- PlayStation4
-- Spider-Man (ID 24)
(24, 5),  -- PlayStation4
-- Ghost of Tsushima (ID 25)
(25, 5),  -- PlayStation4
(25, 6),  -- PlayStation5
-- Dark Souls III (ID 26)
(26, 1),  -- PC
(26, 5),  -- PlayStation4
(26, 8),  -- XboxOne
-- Dark Souls II (ID 27)
(27, 1),  -- PC
(27, 4),  -- PlayStation3
(27, 7),  -- Xbox360
-- Dark Souls (ID 28)
(28, 1),  -- PC
(28, 4),  -- PlayStation3
(28, 7),  -- Xbox360
-- Elden Ring (ID 29)
(29, 1),  -- PC
(29, 5),  -- PlayStation4
(29, 6),  -- PlayStation5
(29, 8),  -- XboxOne
(29, 9),  -- XboxSeries X|S
-- Sekiro: Shadows Die Twice (ID 30)
(30, 1),  -- PC
(30, 5),  -- PlayStation4
(30, 8),  -- XboxOne
-- Red Dead Redemption 2 (ID 31)
(31, 1),  -- PC
(31, 5),  -- PlayStation4
(31, 8),  -- XboxOne
-- Assassin's Creed Valhalla (ID 32)
(32, 1),  -- PC
(32, 5),  -- PlayStation4
(32, 6),  -- PlayStation5
(32, 8),  -- XboxOne
(32, 9),  -- XboxSeries X|S
-- Cyberpunk 2077 (ID 33)
(33, 1),  -- PC
(33, 5),  -- PlayStation4
(33, 6),  -- PlayStation5
(33, 8),  -- XboxOne
(33, 9),  -- XboxSeries X|S
-- Pokémon Red and Blue (ID 34)
(34, 10), -- GameBoy
-- Pokémon Gold and Silver (ID 35)
(35, 10), -- GameBoy
-- Pokémon Sun and Moon (ID 39)
(39, 12), -- Nintendo 3DS
-- The Legend of Zelda: Breath of the Wild (ID 40)
(40, 13), -- Nintendo Switch
-- The Legend of Zelda: Tears of the Kingdom (ID 41)
(41, 13); -- Nintendo Switch
