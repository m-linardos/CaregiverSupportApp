USE [CGSdb]
GO

/****** Object:  Table [dbo].[Vendors]    Script Date: 9/30/2019 3:43:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Vendors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](30) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Address] [nvarchar](30) NULL,
	[City] [nvarchar](30) NULL,
	[State] [nvarchar](30) NULL,
	[Zip] [nvarchar](30) NULL,
	[Phone] [nvarchar](12) NULL,
	[Email] [nvarchar](255) NULL,
 CONSTRAINT [PK_Vendors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


