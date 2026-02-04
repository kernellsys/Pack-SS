@echo off
sc config "pcasvc" start=auto
sc start "pcasvc"

sc config "CDPSvc" start=auto
sc start "CDPSvc"

sc config "DPS" start=auto
sc start "DPS"

sc config "SSDPSRV" start=auto
sc start "SSDPSRV"

sc config "UmRdpService" start=auto
sc start "UmRdpService"

sc config "Diagtrack" start=auto
sc start "DiagTrack"

sc config "sysmain" start=auto
sc start "sysmain"

sc config "eventlog" start=auto
sc start "eventlog"

powershell -Command "Get-Service PcaSvc, DPS, DiagTrack, SysMain, EventLog | Format-Table Status,Name,DisplayName"

pause
