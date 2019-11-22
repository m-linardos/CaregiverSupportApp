USE [CGSdb]
GO

/****** Object:  Table [dbo].[Vendors]    Script Date: 9/30/2019 3:43:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Medications](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](30) NULL,
	[Drug Type] [nvarchar](30) NULL,
	[Brand Name] [nvarchar](30) NULL,
	[Generic Name] [nvarchar](30) NULL,
	[Dosage] [nvarchar](30) NULL,
	[Dosage Unit] [nvarchar](8) NULL,
	[How Often] [nvarchar](30) NULL,
	[Route] [nvarchar](30) NULL,
	[Start Date] [nvarchar](30) NULL,
	[End Date] [nvarchar](30) NULL,
	[Prescribing Providor] [nvarchar](30) NULL,
	[Filling Pharmacy] [nvarchar](30) NULL,

	
 CONSTRAINT [PK_Medications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


