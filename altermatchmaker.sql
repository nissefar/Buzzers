USE [buzzerbase]
GO
/****** Object:  Trigger [dbo].[BuzzMade]    Script Date: 27/11/2019 09.10.24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER trigger [dbo].[BuzzMade]
	on [dbo].[buzz]
	after insert
	as
	begin
	declare @firstbuzzer int
	select @firstbuzzer =  buzzeeid from inserted
	declare @lastbuzzer int
	select @lastbuzzer = buzzerid from inserted
	if((select isbuzzon from inserted) = 1)
	begin
	if (select count(id) from buzz where buzzerid = @firstbuzzer AND buzzeeid = @lastbuzzer AND isbuzzon = 1) = 1
	
	begin
	insert into [match] (firstbuzzerid, lastbuzzerid) values (@firstbuzzer, @lastbuzzer)
	end
	end
	end