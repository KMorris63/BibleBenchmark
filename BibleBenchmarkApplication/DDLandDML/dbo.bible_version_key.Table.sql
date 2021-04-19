USE [bible]
GO
/****** Object:  Table [dbo].[bible_version_key] - This is the general translation information and db links ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[bible_version_key]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[bible_version_key](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[table] [nvarchar](max) NOT NULL, -- Database Table Name
	[abbreviation] [nvarchar](max) NOT NULL, -- Version Abbreviation
	[language] [nvarchar](max) NOT NULL, -- Language of bible translation (used for language key tables)
	[version] [nvarchar](max) NOT NULL, -- Version Name
	[info_text] [nvarchar](max) NOT NULL, -- About / Info
	[info_url] [nvarchar](max) NOT NULL, -- Info URL
	[publisher] [nvarchar](max) NOT NULL, -- Publisher
	[copyright] [nvarchar](max) NOT NULL, -- Copyright
	[copyright_info] [nvarchar](max) NOT NULL, -- Extended Copyright info
 CONSTRAINT [PK_bible_version_key] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[bible_version_key] ON 

INSERT [dbo].[bible_version_key] ([id], [table], [abbreviation], [language], [version], [info_text], [info_url], [publisher], [copyright], [copyright_info]) VALUES (1, N't_asv', N'ASV', N'english', N'American Standard-ASV1901', N'', N'http://en.wikipedia.org/wiki/American_Standard_Version', N'', N'Public Domain', N'')
INSERT [dbo].[bible_version_key] ([id], [table], [abbreviation], [language], [version], [info_text], [info_url], [publisher], [copyright], [copyright_info]) VALUES (2, N't_bbe', N'BBE', N'english', N'Bible in Basic English', N'', N'http://en.wikipedia.org/wiki/Bible_in_Basic_English', N'', N'Public Domain', N'')
INSERT [dbo].[bible_version_key] ([id], [table], [abbreviation], [language], [version], [info_text], [info_url], [publisher], [copyright], [copyright_info]) VALUES (3, N't_dby', N'DARBY', N'english', N'Darby English Bible', N'', N'http://en.wikipedia.org/wiki/Darby_Bible', N'', N'Public Domain', N'')
INSERT [dbo].[bible_version_key] ([id], [table], [abbreviation], [language], [version], [info_text], [info_url], [publisher], [copyright], [copyright_info]) VALUES (4, N't_kjv', N'KJV', N'english', N'King James Version', N'', N'http://en.wikipedia.org/wiki/King_James_Version', N'', N'Public Domain', N'')
INSERT [dbo].[bible_version_key] ([id], [table], [abbreviation], [language], [version], [info_text], [info_url], [publisher], [copyright], [copyright_info]) VALUES (5, N't_wbt', N'WBT', N'english', N'Webster''s Bible', N'', N'http://en.wikipedia.org/wiki/Webster%27s_Revision', N'', N'Public Domain', N'')
INSERT [dbo].[bible_version_key] ([id], [table], [abbreviation], [language], [version], [info_text], [info_url], [publisher], [copyright], [copyright_info]) VALUES (6, N't_web', N'WEB', N'english', N'World English Bible', N'', N'http://en.wikipedia.org/wiki/World_English_Bible', N'', N'Public Domain', N'')
INSERT [dbo].[bible_version_key] ([id], [table], [abbreviation], [language], [version], [info_text], [info_url], [publisher], [copyright], [copyright_info]) VALUES (7, N't_ylt', N'YLT', N'english', N'Young''s Literal Translation', N'', N'http://en.wikipedia.org/wiki/Young%27s_Literal_Translation', N'', N'Public Domain', N'')
SET IDENTITY_INSERT [dbo].[bible_version_key] OFF