USE [bible]
GO
/****** Object:  Table [dbo].[key_english] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[key_english]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[key_english](
	[b] [int] NOT NULL, -- Book #
	[n] [nvarchar](max) NOT NULL, -- Name
	[t] [nvarchar](max) NOT NULL, -- Which Testament this book is in
	[g] [int] NOT NULL, -- A genre ID to identify the type of book this is
 CONSTRAINT [PK_key_english] PRIMARY KEY CLUSTERED 
(
	[b] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (1, N'Genesis', N'OT', 1)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (2, N'Exodus', N'OT', 1)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (3, N'Leviticus', N'OT', 1)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (4, N'Numbers', N'OT', 1)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (5, N'Deuteronomy', N'OT', 1)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (6, N'Joshua', N'OT', 2)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (7, N'Judges', N'OT', 2)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (8, N'Ruth', N'OT', 2)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (9, N'1 Samuel', N'OT', 2)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (10, N'2 Samuel', N'OT', 2)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (11, N'1 Kings', N'OT', 2)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (12, N'2 Kings', N'OT', 2)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (13, N'1 Chronicles', N'OT', 2)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (14, N'2 Chronicles', N'OT', 2)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (15, N'Ezra', N'OT', 2)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (16, N'Nehemiah', N'OT', 2)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (17, N'Esther', N'OT', 2)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (18, N'Job', N'OT', 3)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (19, N'Psalms', N'OT', 3)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (20, N'Proverbs', N'OT', 3)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (21, N'Ecclesiastes', N'OT', 3)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (22, N'Song of Solomon', N'OT', 3)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (23, N'Isaiah', N'OT', 4)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (24, N'Jeremiah', N'OT', 4)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (25, N'Lamentations', N'OT', 4)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (26, N'Ezekiel', N'OT', 4)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (27, N'Daniel', N'OT', 4)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (28, N'Hosea', N'OT', 4)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (29, N'Joel', N'OT', 4)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (30, N'Amos', N'OT', 4)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (31, N'Obadiah', N'OT', 4)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (32, N'Jonah', N'OT', 4)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (33, N'Micah', N'OT', 4)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (34, N'Nahum', N'OT', 4)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (35, N'Habakkuk', N'OT', 4)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (36, N'Zephaniah', N'OT', 4)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (37, N'Haggai', N'OT', 4)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (38, N'Zechariah', N'OT', 4)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (39, N'Malachi', N'OT', 4)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (40, N'Matthew', N'NT', 5)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (41, N'Mark', N'NT', 5)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (42, N'Luke', N'NT', 5)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (43, N'John', N'NT', 5)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (44, N'Acts', N'NT', 6)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (45, N'Romans', N'NT', 7)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (46, N'1 Corinthians', N'NT', 7)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (47, N'2 Corinthians', N'NT', 7)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (48, N'Galatians', N'NT', 7)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (49, N'Ephesians', N'NT', 7)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (50, N'Philippians', N'NT', 7)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (51, N'Colossians', N'NT', 7)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (52, N'1 Thessalonians', N'NT', 7)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (53, N'2 Thessalonians', N'NT', 7)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (54, N'1 Timothy', N'NT', 7)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (55, N'2 Timothy', N'NT', 7)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (56, N'Titus', N'NT', 7)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (57, N'Philemon', N'NT', 7)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (58, N'Hebrews', N'NT', 7)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (59, N'James', N'NT', 7)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (60, N'1 Peter', N'NT', 7)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (61, N'2 Peter', N'NT', 7)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (62, N'1 John', N'NT', 7)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (63, N'2 John', N'NT', 7)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (64, N'3 John', N'NT', 7)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (65, N'Jude', N'NT', 7)
INSERT [dbo].[key_english] ([b], [n], [t], [g]) VALUES (66, N'Revelation', N'NT', 8)