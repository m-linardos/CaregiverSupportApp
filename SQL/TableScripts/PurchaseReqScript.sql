USE [CGSdb]
GO

/****** Object:  Table [dbo].[Purchase Requests]    Script Date: 9/30/2019 11:52:22 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Purchase Requests](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](80) NOT NULL,
	[Justification] [nvarchar](80) NOT NULL,
	[RejectionReason] [nvarchar](80) NULL,
	[DeliveryMode] [nvarchar](20) NOT NULL,
	[Status] [nvarchar](10) NOT NULL,
	[Total] [decimal](11, 2) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Purchase Requests] ADD  CONSTRAINT [DF_Request_DeliveryMode]  DEFAULT (N'Pickup') FOR [DeliveryMode]
GO

ALTER TABLE [dbo].[Purchase Requests] ADD  CONSTRAINT [DF_Request_Status]  DEFAULT (N'NEW') FOR [Status]
GO

ALTER TABLE [dbo].[Purchase Requests] ADD  CONSTRAINT [DF_Request_Total]  DEFAULT ((0)) FOR [Total]
GO

ALTER TABLE [dbo].[Purchase Requests]  WITH CHECK ADD  CONSTRAINT [FK_Request_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO

ALTER TABLE [dbo].[Purchase Requests] CHECK CONSTRAINT [FK_Request_User]
GO


