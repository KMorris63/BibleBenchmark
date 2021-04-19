USE [bible]
GO
/****** Object:  Table [dbo].[key_genre_english] - Table mapping genre IDs to genre names for book table lookup ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[key_genre_english]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[key_genre_english](
	[g] [int] IDENTITY(1,1) NOT NULL, -- Genre ID
	[n] [nvarchar](max) NOT NULL, -- Name of genre
 CONSTRAINT [PK_key_genre_english] PRIMARY KEY CLUSTERED 
(
	[g] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[key_genre_english] ON 

INSERT [dbo].[key_genre_english] ([g], [n]) VALUES (1, N'Law')
INSERT [dbo].[key_genre_english] ([g], [n]) VALUES (2, N'History')
INSERT [dbo].[key_genre_english] ([g], [n]) VALUES (3, N'Wisdom')
INSERT [dbo].[key_genre_english] ([g], [n]) VALUES (4, N'Prophets')
INSERT [dbo].[key_genre_english] ([g], [n]) VALUES (5, N'Gospels')
INSERT [dbo].[key_genre_english] ([g], [n]) VALUES (6, N'Acts')
INSERT [dbo].[key_genre_english] ([g], [n]) VALUES (7, N'Epistles')
INSERT [dbo].[key_genre_english] ([g], [n]) VALUES (8, N'Apocalyptic')
SET IDENTITY_INSERT [dbo].[key_genre_english] OFF