USE [GeorgiaJoseph]
GO
/****** Object:  Table [dbo].[programs]    Script Date: 2/19/2024 1:49:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[programs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[program_code] [int] NOT NULL,
	[program_name] [varchar](255) NOT NULL,
	[program_email] [varchar](255) NOT NULL,
	[program_cname] [varchar](255) NOT NULL,
	[startdate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[program_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[AddProgram]    Script Date: 2/19/2024 1:49:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddProgram]
    @program_code INT,
    @program_name VARCHAR(255),
    @program_email VARCHAR(255),
    @program_cname VARCHAR(255),
    @startdate DATE
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO programs (program_code, program_name, program_email, program_cname, startdate)
    VALUES (@program_code, @program_name, @program_email, @program_cname, @startdate);
END;
GO
