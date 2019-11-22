USE [CGSdb]
GO

/****** Object:  Table [dbo].[Users]    Script Date: 9/30/2019 3:17:57 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](30) NOT NULL,
	[Password] [nvarchar](30) NOT NULL,
	[Firstname] [nvarchar](30) NOT NULL,
	[Lastname] [nvarchar](30) NOT NULL,
	[Role] [nvarchar](30) NULL,
	[Relationship] [nvarchar](30) NULL,
	[Address] [nvarchar](30) NULL,
	[Address2] [nvarchar](30) NULL,
	[City] [nvarchar](30) NULL,
	[State] [nvarchar](2) NULL,
	[Zip] [nvarchar](5) NULL,
	[Phone] [nvarchar](12) NULL,
	[Email] [nvarchar](255) NULL,
	[IsReviewer] [bit] NOT NULL,
	[IsAdmin] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsReviewer]  DEFAULT ((0)) FOR [IsReviewer]
GO

ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsAdmin]  DEFAULT ((0)) FOR [IsAdmin]
GO

--ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [CK_User] CHECK  (([Phone] like '[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]'))
GO

--ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [CK_User]
GO


