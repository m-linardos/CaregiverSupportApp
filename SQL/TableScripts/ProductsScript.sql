USE [CGSdb]
GO

/****** Object:  Table [dbo].[Products]    Script Date: 9/30/2019 11:27:36 AM ******/

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PartNbr] [nvarchar](30) NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Price] [decimal](11, 2) NULL,
	[Unit] [nvarchar](30) NULL,
	[PhotoPath] [nvarchar](255) NULL,
	[VendorId] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Product_Vendor] FOREIGN KEY([VendorId])
REFERENCES [dbo].[Vendors] ([Id])
GO

ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Product_Vendor]
GO


