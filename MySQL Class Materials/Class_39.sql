----------------------Server side trace ----------------

/****************************************************/
/* Created by: SQL Server 2017 Profiler          */
/* Date: 08/05/2018  10:08:09 PM         */
/****************************************************/


-- Create a Queue
declare @rc int
declare @TraceID int
declare @maxfilesize bigint
declare @DateTime datetime

set @DateTime = '2018-08-06 05:00:00.000'
set @maxfilesize = 50

-- Please replace the text InsertFileNameHere, with an appropriate
-- filename prefixed by a path, e.g., c:\MyFolder\MyTrace. The .trc extension
-- will be appended to the filename automatically. If you are writing from
-- remote server to local drive, please use UNC path and make sure server has
-- write access to your network share

exec @rc = sp_trace_create @TraceID output, 0, N'C:\MyTraceFiles\MyTrace5_Output', @maxfilesize, @Datetime

if (@rc != 0) goto error

-- Client side File and Table cannot be scripted

-- Set the events
declare @on bit
set @on = 1
exec sp_trace_setevent @TraceID, 45, 1, @on
exec sp_trace_setevent @TraceID, 45, 9, @on
exec sp_trace_setevent @TraceID, 45, 3, @on
exec sp_trace_setevent @TraceID, 45, 4, @on
exec sp_trace_setevent @TraceID, 45, 5, @on
exec sp_trace_setevent @TraceID, 45, 6, @on
exec sp_trace_setevent @TraceID, 45, 7, @on
exec sp_trace_setevent @TraceID, 45, 8, @on
exec sp_trace_setevent @TraceID, 45, 10, @on
exec sp_trace_setevent @TraceID, 45, 11, @on
exec sp_trace_setevent @TraceID, 45, 12, @on
exec sp_trace_setevent @TraceID, 45, 13, @on
exec sp_trace_setevent @TraceID, 45, 14, @on
exec sp_trace_setevent @TraceID, 45, 15, @on
exec sp_trace_setevent @TraceID, 45, 16, @on
exec sp_trace_setevent @TraceID, 45, 17, @on
exec sp_trace_setevent @TraceID, 45, 18, @on
exec sp_trace_setevent @TraceID, 45, 22, @on
exec sp_trace_setevent @TraceID, 45, 25, @on
exec sp_trace_setevent @TraceID, 45, 26, @on
exec sp_trace_setevent @TraceID, 45, 28, @on
exec sp_trace_setevent @TraceID, 45, 29, @on
exec sp_trace_setevent @TraceID, 45, 34, @on
exec sp_trace_setevent @TraceID, 45, 35, @on
exec sp_trace_setevent @TraceID, 45, 41, @on
exec sp_trace_setevent @TraceID, 45, 48, @on
exec sp_trace_setevent @TraceID, 45, 49, @on
exec sp_trace_setevent @TraceID, 45, 50, @on
exec sp_trace_setevent @TraceID, 45, 51, @on
exec sp_trace_setevent @TraceID, 45, 55, @on
exec sp_trace_setevent @TraceID, 45, 60, @on
exec sp_trace_setevent @TraceID, 45, 61, @on
exec sp_trace_setevent @TraceID, 45, 62, @on
exec sp_trace_setevent @TraceID, 45, 64, @on
exec sp_trace_setevent @TraceID, 45, 66, @on
exec sp_trace_setevent @TraceID, 41, 1, @on
exec sp_trace_setevent @TraceID, 41, 9, @on
exec sp_trace_setevent @TraceID, 41, 3, @on
exec sp_trace_setevent @TraceID, 41, 4, @on
exec sp_trace_setevent @TraceID, 41, 5, @on
exec sp_trace_setevent @TraceID, 41, 6, @on
exec sp_trace_setevent @TraceID, 41, 7, @on
exec sp_trace_setevent @TraceID, 41, 8, @on
exec sp_trace_setevent @TraceID, 41, 10, @on
exec sp_trace_setevent @TraceID, 41, 11, @on
exec sp_trace_setevent @TraceID, 41, 12, @on
exec sp_trace_setevent @TraceID, 41, 13, @on
exec sp_trace_setevent @TraceID, 41, 14, @on
exec sp_trace_setevent @TraceID, 41, 15, @on
exec sp_trace_setevent @TraceID, 41, 16, @on
exec sp_trace_setevent @TraceID, 41, 17, @on
exec sp_trace_setevent @TraceID, 41, 18, @on
exec sp_trace_setevent @TraceID, 41, 25, @on
exec sp_trace_setevent @TraceID, 41, 26, @on
exec sp_trace_setevent @TraceID, 41, 29, @on
exec sp_trace_setevent @TraceID, 41, 35, @on
exec sp_trace_setevent @TraceID, 41, 41, @on
exec sp_trace_setevent @TraceID, 41, 48, @on
exec sp_trace_setevent @TraceID, 41, 49, @on
exec sp_trace_setevent @TraceID, 41, 50, @on
exec sp_trace_setevent @TraceID, 41, 51, @on
exec sp_trace_setevent @TraceID, 41, 55, @on
exec sp_trace_setevent @TraceID, 41, 60, @on
exec sp_trace_setevent @TraceID, 41, 61, @on
exec sp_trace_setevent @TraceID, 41, 64, @on
exec sp_trace_setevent @TraceID, 41, 66, @on


-- Set the Filters
declare @intfilter int
declare @bigintfilter bigint

exec sp_trace_setfilter @TraceID, 35, 0, 6, N'adventureworks'

-- Set the trace status to start
exec sp_trace_setstatus @TraceID, 1

-- display trace id for future references
select TraceID=@TraceID
goto finish

error: 
select ErrorCode=@rc

finish: 
go

-----------------------------------------------------------------
