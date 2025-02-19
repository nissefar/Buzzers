  
USE [buzzerbase]
GO
/****** Object:  StoredProcedure [dbo].[CreateUserWithLogin]    Script Date: 25/11/2019 08.14.48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[CreateUserWithLogin] @usertypeid int, @genderid int, @firstname nvarchar(50), @lastname nvarchar(50),@email nvarchar(100), @birthdate date, @jobtitle nvarchar(50), @pass nvarchar(30), @image nvarchar(255)
AS
declare @success bit
BEGIN TRY
INSERT INTO hivemember (usertypeid, genderid, firstname, lastname, email, birthdate, jobtitle) values (@usertypeid, @genderid,@firstname,@lastname,@email,@birthdate,@jobtitle)
declare @insertedid as int
set @insertedid = SCOPE_Identity()
INSERT INTO userlogin (userid, pass) values (@insertedid, @pass)
INSERT INTO image (hivememberid, imagename) values (@insertedid, @image)
SET @success = 1
END TRY
BEGIN CATCH
SET @success = 0
END CATCH
SELECT @success

