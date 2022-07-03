@echo off
cd/d "%~dp0"
set t=性能-数据收集-事件跟踪
rem mode con cols=40 lines=6
echo.&title %t% &echo   %t%
echo     * 停用事件跟踪，除 事件日志 外

logman -ets
ping 127.1>nul 2>nul
logman -ets stop "Admin_PS_Provider"
logman -ets stop "AppModel"
logman -ets stop "Audio"
logman -ets stop "AutoLogger-Diagtrack-Listener"
logman -ets stop "Circular Kernel Context Logger"
logman -ets stop "CloudExperienceHostOobe"
logman -ets stop "DiagLog"
logman -ets stop "Diagtrack-Listener"
logman -ets stop "EventLog-DebugChannel"
logman -ets stop "LwtNetLog"
logman -ets stop "MSDTC_TRACE_SESSION"
logman -ets stop "NetCore"
logman -ets stop "NetCfgTrace"
logman -ets stop "NtfsLog"
logman -ets stop "RadioMgr"
logman -ets stop "ReadyBoot"
logman -ets stop "SCM"
logman -ets stop "SUM"
logman -ets stop "SpoolerLogger"
logman -ets stop "TileStore"
logman -ets stop "Tpm"
logman -ets stop "UBPM"
logman -ets stop "UserNotPresentTraceSession"
logman -ets stop "WbadminUIInBuiltTracing"
logman -ets stop "WdiContextLog"
logman -ets stop "WiFiDriverIHVSession"
logman -ets stop "WiFiSession"
logman -ets stop "WindowsUpdate_trace_log"
logman -ets stop "QQPCMgr HungDetect Session"
logman -ets stop "QQPCMgr Perf Track Session"
logman -ets stop "QQPCMgr Krnl Track Session"

rem oth
logman -ets stop "WUDFTrace"

rem win11
logman -ets stop "Microsoft-Windows-Rdp-Graphics-RdpIdd-Trace"
logman -ets stop "ReFSLog"
logman -ets stop "SleepStudyTraceSession"
logman -ets stop "SgrmEtwSession"
logman -ets stop "UnionFS-Filter"
(
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AppModel" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Audio" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Circular Kernel Context Logger" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\CloudExperienceHostOobe" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DataMarket" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DiagLog" /v "Start" /t reg_dword /d 0 /f
rem add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-DebugChannel" /v "Start" /t reg_dword /d 0 /f
rem add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Security" /v "Start" /t reg_dword /d 0 /f
rem add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Mellanox-Kernel" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-AssignedAccess-Trace" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Setup" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\MSDTC_TRACE_SESSION" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NBSMBLOGGER" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NetCfgTrace" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NetCore" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NtfsLog" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\PEAuthLog" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RdrLog" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReadyBoot" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatformTel" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TCPIPLOGGER" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TileStore" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Tpm" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\UBPM" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WdiContextLog" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WFP-IPsec Trace" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSession" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSessionRepro" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession" /v "Start" /t reg_dword /d 0 /f

rem oth
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WUDFTrace" /v "Start" /t reg_dword /d 0 /f

rem win11
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Rdp-Graphics-RdpIdd-Trace" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReFSLog" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SleepStudyTraceSession" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SgrmEtwSession" /v "Start" /t reg_dword /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\UnionFS-Filter" /v "Start" /t reg_dword /d 0 /f
)2>nul

logman -ets

rem runERR esentutl /p %windir%\Security\Database\Secedit.sdb
winmgmt /resyncperf /salvagerepository /resetrepository

ping 127.1 >nul 2>nul
goto :eof
exit
-----------
logman -ets

数据收集器集                         类型                          状态
-------------------------------------------------------------------------------
EventLog-Application                    跟踪                            正在运行
EventLog-System                         跟踪                            正在运行
SCM                                     跟踪                            正在运行
UserNotPresentTraceSession              跟踪                            正在运行
UBPM                                    跟踪                            正在运行
Diagtrack-Listener                      跟踪                            正在运行
SHS-01052020-212456-7-2f                跟踪                            正在运行


Data Collector Set                      Type                          Status
-------------------------------------------------------------------------------
Eventlog-Security                       Trace                         Running
Diagtrack-Listener                      Trace                         Running
EventLog-Application                    Trace                         Running
EventLog-System                         Trace                         Running
UBPM                                    Trace                         Running
SHS-06272021-073119-7-1ff               Trace                         Running


数据收集器集                         类型                          状态
-------------------------------------------------------------------------------
Eventlog-Security                       跟踪                            正在运行
Diagtrack-Listener                      跟踪                            正在运行
EventLog-Application                    跟踪                            正在运行
EventLog-System                         跟踪                            正在运行
UnionFS-Filter                          跟踪                            正在运行
UBPM                                    跟踪                            正在运行
SHS-10132021-223323-7-1ff               跟踪                            正在运行


esentutl /k %windir%/Security/Database/Secedit.sdb
esentutl /g %windir%/Security/Database/Secedit.sdb
esentutl /p %windir%\Security\Database\Secedit.sdb
esentutl /d /p %windir%\Security\Database\Secedit.sdb
winmgmt /resyncperf /salvagerepository /resetrepository