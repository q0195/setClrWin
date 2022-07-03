@echo off &echo\
set xSd=C:
set xUn=Administrator

echo\&echo   清理“升级更新、缓存备份、遥测收集、崩溃报告”等冗余文件，保留使用痕迹。
echo\&echo   为获得最佳效果，请关闭运行中的程序，建议在安全模式下运行。PE下效果尤佳！

(set |find /i "x:")>nul 2>nul &&(
echo\&echo   正在 PE 下运行，请核对本地系统盘、管理员账户等参数设置...
goto :setSdUn

) ||(
set xSd=%SystemDrive%
set xUn=%USERNAME%
goto :runit
)

:ok
echo\&echo   仅在 PE 下检查磁盘错误、缩小日志大小、更新安全描述符状态！
echo N|chkdsk /x /f %xSd%
echo N|chkdsk /l:2048 %xSd%
echo N|chkdsk /sdcleanup %xSd%
echo\&echo\

:runit
echo\&echo     系统盘：%xSd%
echo\&echo     管理员：%xUn%
echo\&pause
echo\
(
set xAD=%xSd%\Users\%xUn%\AppData\Roaming
set xLA=%xSd%\Users\%xUn%\AppData\Local
set xUP=%xSd%\Users\%xUn%
set xPD=%xSd%\ProgramData
set xPF=%xSd%\Program Files
set xPx=%xSd%\Program Files ^(x86^)
set xWD=%xSd%\Windows
set xTM=%xSd%\Users\%xUn%\AppData\Local\Temp
)
set
echo\&echo\
ping 127.1 >nul 2>nul

@(
del/s/q "%xAD%\CrystalIdea Software\"
del/s/q "%xAD%\Geek Uninstaller\"
del/s/q "%xAD%\HiBit Uninstaller\"
del/s/q "%xAD%\IObit\IObit Uninstaller\"
del/s/q "%xAD%\KC Softwares\"
del/s/q "%xAD%\Wise Disk Cleaner\"
del/s/q "%xAD%\Wise Registry Cleaner\"
del/s/q "%xAD%\Wise Uninstaller\"
del/s/q "%xAD%\Adobe\Adobe Photoshop CS6\AutoRecover\"
del/s/q "%xAD%\Adobe\Common\Media Cache\"
del/s/q "%xAD%\Adobe\Common\Media Cache Files\"
del/s/q "%xAD%\Adobe\Dreamweaver CS5\zh_CN\Configuration\SiteCache\"
del/s/q "%xAD%\Adobe\Dreamweaver CS5\zh_CN\OfficeTemp\"
del/s/q "%xAD%\Adobe\Dreamweaver CS6\zh_CN\Configuration\SiteCache\"
del/s/q "%xAD%\Adobe\Flash Player\AssetCache\"
del/s/q "%xAD%\Adobe\Flash Player\NativeCache\"
del/s/q "%xAD%\Adobe\Flash Player\RuntimeCache\"
del/s/q "%xAD%\Adobe\Flash Player\VideoCache\"
del/s/q "%xAD%\Apowersoft\Streaming Audio Recorder\log\"
del/s/q "%xAD%\Apple Computer\Logs\"
del/s/q "%xAD%\Autodesk\WebServices\*.log"
del/s/q "%xAD%\BaiduYunGuanjia\logs\"
del/s/q "%xAD%\obs-studio\logs\"
del/s/q "%xAD%\CmGamebox\update\"
del/s/q "%xAD%\Code\logs\"
del/s/q "%xAD%\Code\User\History\"
del/s/q "%xAD%\CNTV\CNTV Live\"
del/s/q "%xAD%\douyin\Crashpad\reports\"
del/s/q "%xAD%\DrvMgr\"
del/s/q "%xAD%\dinglive\crashes\"
rem/s/q "%xAD%\dinglive\logs\"
rem/s/q "%xAD%\DingTalk\log\"
del/s/q "%xAD%\DingTalk\updaterlogs\"
del/s/q "%xAD%\Everything\Everything.db"
del/s/q "%xAD%\fastpdf\log\"
del/s/q "%xAD%\HD Tune Pro\"

del/s/q "%xAD%\360AP\cache\"
del/s/q "%xAD%\360browser\bkinfo\"
del/s/q "%xAD%\360browser\download\"
del/s/q "%xAD%\360CloudUI\360WangPan.dmp"
del/s/q "%xAD%\360DiagnoseScan\"
del/s/q "%xAD%\360DrvMgr\"
del/s/q "%xAD%\360Game5\"
del/s/q "%xAD%\360mobilemgr\cache\"
del/s/q "%xAD%\360Safe\360clock\Cache\Default\DailyBackup\"
del/s/q "%xAD%\360Safe\360clock\Cache\Default\HisDailyBackup\"
del/s/q "%xAD%\360safe\360DownLoad\*.log"
del/s/q "%xAD%\360safe\360ScanLog\"
del/s/q "%xAD%\360Safe\Cuttle\Cache\Default\HisDailyBackup\"
del/s/q "%xAD%\360safe\DesktopRest\Cache\Default\DailyBackup\"
del/s/q "%xAD%\360safe\DesktopRest\Cache\Default\HisDailyBackup\"
del/s/q "%xAD%\360safe\LiveUpdateLog\"
del/s/q "%xAD%\360safe\LogInfo\"
del/s/q "%xAD%\360safe\multitip\Cache\Default\DailyBackup\"
del/s/q "%xAD%\360safe\multitip\Cache\Default\HisDailyBackup\"
del/s/q "%xAD%\360safe\NewSearch\CloudNews\"
del/s/q "%xAD%\360safe\RegCleanBackup\"
del/s/q "%xAD%\360safe\safeid\"
del/s/q "%xAD%\360Safe\SoftMgr\Cache\Default\DailyBackup\"
del/s/q "%xAD%\360Safe\SoftMgr\Cache\Default\HisDailyBackup\"
del/s/q "%xAD%\360safe\SoftMgr\message\cache\"
del/s/q "%xAD%\360se6\Application\13.1.6020.0\installer\"
del/s/q "%xAD%\360se6\User Data\Default\DailyBackup\"
del/s/q "%xAD%\360se6\User Data\Default\HisDailyBackup\"
del/s/q "%xAD%\360se6\User Data\Default\IndexedDB\"
del/s/q "%xAD%\360se6\User Data\Default\JumpListIconsMostVisited\"
del/s/q "%xAD%\360se6\User Data\Default\JumpListIconsRecentClosed\"
del/s/q "%xAD%\360se6\User Data\Default\Pepper Data\Shockwave Flash\WritableRoot\*.sol"
del/s/q "%xAD%\360se6\User Data\Default\Service Worker\CacheStorage\"
del/s/q "%xAD%\360se6\User Data\tcdump\"
del/s/q "%xAD%\360se6\User Data\temp\"
del/s/q "%xAD%\360se6\User Data\v3update\"
del/s/q "%xAD%\ldslite\MiniNews\"
del/s/q "%xAD%\ldslite\run_extention\"
del/s/q "%xAD%\xundu\Mininews\"
del/s/q "%xAD%\yiwanzhushou\pdown\"

del/s/q "%xAD%\baidu\BaiduNetdisk\AutoUpdate\Download\"
del/s/q "%xAD%\Expert\cache\"
del/s/q "%xAD%\SogouExplorer\DailyBackup\"
del/s/q "%xAD%\SumatraPDF\sumatrapdfcache\"

del/s/q "%xAD%\install_com_add\"
del/s/q "%xAD%\IQIYI Video\LStyle\AutoSearchKeyword\"
del/s/q "%xAD%\KGDataBak\"
del/s/q "%xAD%\KuGou8\OfflinePackage\Package\"
del/s/q "%xAD%\KuGou8\Patch\"
del/s/q "%xAD%\kingsoft\office6\log\"
del/s/q "%xAD%\kingsoft\office6\OfficeSpace\log\"
del/s/q "%xAD%\kingsoft\office6\update\"
del/s/q "%xAD%\kingsoft\office6\workarea\preview\"
del/s/q "%xAD%\kingsoft\PDF\Trust\"
del/s/q "%xAD%\kingsoft\typeeasy\update\"
del/s/q "%xAD%\kingsoft\wpspdf\log\"
del/s/q "%xAD%\Macromedia\Flash Player\#SharedObjects\"
del/s/q "%xAD%\Macromedia\Flash Player\macromedia.com\support\flashplayer\sys\"

del/s/q "%xAD%\Microsoft\InputMethod\Chs\*.tmp"
rem/s/q "%xAD%\Microsoft\Office\Recent\*.lnk"
rem/s/q "%xAD%\Microsoft\PowerPoint\"
rem/s/q "%xAD%\Microsoft\Word\"
del/s/q "%xAD%\Microsoft\Windows\Cookies\"
del/s/q "%xAD%\Microsoft\Windows\Libraries\暴风*.library-ms"
del/s/q "%xAD%\Microsoft\Windows\Libraries\爱奇艺*.library-ms"
del/s/q "%xAD%\Microsoft\Windows\Libraries\腾讯*.library-ms"
del/s/q "%xAD%\Microsoft\Windows\Libraries\迅雷*.library-ms"
del/s/q "%xAD%\Microsoft\Windows\Libraries\优酷*.library-ms"
del/s/q "%xAD%\Microsoft\Windows\Network Shortcuts\"
del/s/q "%xAD%\Microsoft\Windows\Recent\*.automaticDestinations-ms"
del/s/q "%xAD%\Microsoft\Windows\Recent\*.customDestinations-ms"
del/s/q "%xAD%\Microsoft\Windows\Recent\*.temp"

del/s/q "%xAD%\Mozilla\Firefox\Crash Reports\"
del/s/q "%xAD%\Mozilla\Firefox\Pending Pings\"
del/s/q "%xAD%\Mozilla\Firefox\Profiles\*Telemetry.*
del/s/q "%xAD%\navplugin\icohistory\"
del/s/q "%xAD%\Oray\SunloginClient\log\"
del/s/q "%xAD%\PLogs\"
del/s/q "%xAD%\QMLogEx\*.log"
del/s/q "%xAD%\Sangfor\SSL\Log\"

del/s/q "%xAD%\ClassIn\log\"
del/s/q "%xAD%\Myou\UserBehaviorAnalysis\"

del/s/q "%xAD%\Seewo\CycloneOffice\log\"
del/s/q "%xAD%\Seewo\CycloneOfficeWrapper\log\"
del/s/q "%xAD%\Seewo\EasiAssistant\"
del/s/q "%xAD%\Seewo\EasiCamera\Log\"
del/s/q "%xAD%\Seewo\EasiLiveServer\Log\"
del/s/q "%xAD%\Seewo\EasiNote5\Log\"
del/s/q "%xAD%\Seewo\EasiNote5\Temp\"
del/s/q "%xAD%\Seewo\EasiRecorder\logs\"
del/s/q "%xAD%\Seewo\EasiUpdate\"
del/s/q "%xAD%\Seewo\ECGuardian\Log\"
del/s/q "%xAD%\Seewo\InstallPackageTool\log\"
del/s/q "%xAD%\Seewo\Log\MIS\"
del/s/q "%xAD%\Seewo\Optimization\log\"
del/s/q "%xAD%\Seewo\OtaTool\log\"
del/s/q "%xAD%\Seewo\PPTService\Log\"
del/s/q "%xAD%\Seewo\SeewoAbility\log\"
del/s/q "%xAD%\Seewo\SeewoAdBlock\log\"
del/s/q "%xAD%\Seewo\SeewoAppUtils\logs\"
del/s/q "%xAD%\Seewo\SeewoHugoService\log\"
del/s/q "%xAD%\Seewo\SeewoHugoLauncher\log\"
del/s/q "%xAD%\Seewo\SeewoLauncher\logs\"
del/s/q "%xAD%\Seewo\SeewoLink\logs\"
del/s/q "%xAD%\Seewo\SeewoLinkService\logs\"
del/s/q "%xAD%\Seewo\SeewoMcuService\log\"
del/s/q "%xAD%\Seewo\SeewoService\"
del/s/q "%xAD%\Seewo\SeewoServiceUpdater\"
del/s/q "%xAD%\Seewo\SeewoSmartPen\log\"
del/s/q "%xAD%\Seewo\UploadService\Log\"
del/s/q "%xAD%\Seewo\WifiFix\log\"
del/s/q "%xAD%\Seewo\Win10HotspotService\logs\"

del/s/q "%xAD%\StellarPlayer\logs\"
del/s/q "%xAD%\SYSTEMAX Software Development\SAI\"
del/s/q "%xAD%\TE_Desktop\log\"

del/s/q "%xAD%\qgsentry\qqgame\"
del/s/q "%xAD%\Tencent\Logs\TXEduLite\*.log"
del/s/q "%xAD%\Tencent\OD\Temp\DownloadCache\"
del/s/q "%xAD%\Tencent\OD\Temp\QQAvatarCache\"
del/s/q "%xAD%\Tencent\QQ\commonf_inst\"
del/s/q "%xAD%\Tencent\QQ\AuTemp\"
del/s/q "%xAD%\Tencent\QQ\STemp\"
del/s/q "%xAD%\Tencent\QQ\Temp\"
del/s/q "%xAD%\Tencent\QQTempSys\"
del/s/q "%xAD%\Tencent\QQLive\Episode\"
del/s/q "%xAD%\Tencent\QQLive\Log\"
del/s/q "%xAD%\Tencent\QQLive\PackageUpdate\"
del/s/q "%xAD%\Tencent\QQPlayer\Log\"
del/s/q "%xAD%\Tencent\QQPlayer\CacheFile\"
del/s/q "%xAD%\Tencent\QMDownload\*.log"
del/s/q "%xAD%\Tencent\QQBrowser\LiveupLog\"
del/s/q "%xAD%\Tencent\QQBrowser\SetupLog\"
del/s/q "%xAD%\Tencent\QQMusic\CrashDump\"
del/s/q "%xAD%\Tencent\QQMusic\QQMusicUp\"
del/s/q "%xAD%\Tencent\QQPCMgr\Download\"
del/s/q "%xAD%\Tencent\TIM\STemp\"
del/s/q "%xAD%\Tencent\TIM\Temp\"
del/s/q "%xAD%\Tencent\TXSSO\SetupLogs\"
del/s/q "%xAD%\Tencent\TXEduLite\historyLogs\"
del/s/q "%xAD%\Tencent\WeChat\log\*.log"
del/s/q "%xAD%\Tencent\WeChat\wmpf\crashpad\reports\"
del/s/q "%xAD%\Tencent\WeChat\wmpf\crashpad\Crashpad*.pma"
del/s/q "%xAD%\Tencent\WeChat\xweb\crash\"
del/s/q "%xAD%\Tencent\WeChat\XPlugin\Plugins\WeChatUpdate\"
del/s/q "%xAD%\Tencent\WeMeet\Global\Database\ModuleCrash\"
del/s/q "%xAD%\Tencent\WeMeet\Global\Logs\"
del/s/q "%xAD%\Tencent\WeMeet\Global\Upgrade\*.log"
del/s/q "%xAD%\Tencent\WeMeet\Global\ModuleCrash\"
del/s/q "%xAD%\Tencent\WeMeet\Logs\*.dump"
del/s/q "%xAD%\Tencent\WeMeet\Logs\app_installer_*.*"
del/s/q "%xAD%\Tencent\WeMeet\Logs\imsdk_*.*"
del/s/q "%xAD%\Tencent\WeMeet\Logs\launcher_*.*"
del/s/q "%xAD%\Tencent\WeMeet\Logs\quic_*.*"
del/s/q "%xAD%\Tencent\WeMeet\Logs\wmp_*.*"
del/s/q "%xAD%\Tencent\WeMeet\Logs\xcast_*.*"
del/s/q "%xAD%\Tencent\WeMeet\Logs\crash_count.log"
del/s/q "%xAD%\Tencent\WeMeet\Logs\tbs_core.log"
del/s/q "%xAD%\Tencent\WXWorkLocal\Log\*.dmp"

del/s/q "%xAD%\WNS\"
del/s/q "%xAD%\WXDrive\logs\"
del/s/q "%xAD%\yk_temp\"
del/s/q "%xAD%\youku\feedback\"
del/s/q "%xAD%\youku\logs\*.log"
del/s/q "%xAD%\youku\upgrade\"

del/s/q "%xAD%\douyin\Crashpad\settings.dat"
del/s/q "%xAD%\TDAppDesktop\login\Crashpad\settings.dat"

del/s/q "%xLA%\115Chrome\User Data\CrashpadMetrics-active.pma"
del/s/q "%xLA%\115Chrome\User Data\Crashpad\settings.dat"
del/s/q "%xLA%\2345Explorer\User Data\CrashpadMetrics-active.pma"
del/s/q "%xLA%\360Chrome\Chrome\Application\components\download\"
del/s/q "%xLA%\Google\Chrome\User Data\Crashpad\settings.dat"
del/s/q "%xLA%\Microsoft\Edge\User Data\Crashpad\settings.dat"
del/s/q "%xLA%\Microsoft\Edge\User Data\Crashpad\throttle_store.dat"

rem/s/q "%xLA%\2345Explorer\"
del/s/q "%xLA%\360Chrome\Chrome\Application\components\download\"
del/s/q "%xLA%\360Chrome\Chrome\User Data\Default\Feature Engagement Tracker\"
del/s/q "%xLA%\360Chrome\Chrome\User Data\Default\HisDailyBackup\"
del/s/q "%xLA%\360Chrome\Chrome\User Data\Default\Local Storage\"
del/s/q "%xLA%\360Chrome\Chrome\User Data\v3update\"
del/s/q "%xLA%\Adobe\*.log"
del/s/q "%xLA%\IconCache.db"
del/s/q "%xLA%\GDIPFONTCACHEV1.DAT"
del/s/q "%xLA%\dd_*.txt"
del/s/q "%xLA%\BitTorrentHelper\crashdumps\"
del/s/q "%xLA%\cache\"
del/s/q "%xLA%\CBox\userdata\log\"
del/s/q "%xLA%\CrashDumps\"
del/s/q "%xLA%\CrashRpt\"
del/s/q "%xLA%\DingTalk\dumps\"
del/s/q "%xLA%\Downloaded Installations\"
del/s/q "%xLA%\Edraw\MindMaster\autosave\"
del/s/q "%xLA%\ElevatedDiagnostics\"
del/s/q "%xLA%\eNSP\Log\"
del/s/q "%xLA%\EVCapture\log\"
del/s/q "%xLA%\EVPlayer\log\"
del/s/q "%xLA%\Everything\Everything.db"
del/s/q "%xLA%\Everything\Everything.db.tmp"
del/s/q "%xLA%\fastpdf\thumbpics\"

del/s/q "%xLA%\Google\Chrome\Application\SetupMetrics\*.pma"
del/s/q "%xLA%\Google\Chrome\User Data\Crashpad\reports\"
del/s/q "%xLA%\Google\Chrome\User Data\Crowd Deny\"
del/s/q "%xLA%\Google\Chrome\User Data\Default\Cache\Cache_Data\"
del/s/q "%xLA%\Google\Chrome\User Data\Default\Code Cache\js\"
del/s/q "%xLA%\Google\Chrome\User Data\Default\Local Storage\"
del/s/q "%xLA%\Google\Chrome\User Data\DesktopSharingHub\"
del/s/q "%xLA%\Google\Chrome\User Data\FirstPartySetsPreloaded\"
del/s/q "%xLA%\Google\Chrome\User Data\Default\Feature Engagement Tracker\"
del/s/q "%xLA%\Google\Chrome\User Data\recovery\"
del/s/q "%xLA%\Google\Chrome\User Data\SwReporter\"
del/s/q "%xLA%\Google\Chrome\User Data\ZxcvbnData\"
del/s/q "%xLA%\Google\Chromium RTM\Local Storage\"
del/s/q "%xLA%\Google\CrashReports\"
del/s/q "%xLA%\Google\Software Reporter Tool\*.log"
del/s/q "%xLA%\Google\Software Reporter Tool\reports\"
del/s/q "%xLA%\Google\Update\Download\"
del/s/q "%xLA%\Google\Update\Install\"

del/s/q "%xLA%\HiSuite\log\"
del/s/q "%xLA%\Huawei\HuaweiBrowser\User Data\Logs\"
del/s/q "%xLA%\JetBrains\PyCharmCE2020.2\conversion\*.xml"
del/s/q "%xLA%\JetBrains\PyCharmCE2020.2\log\"
del/s/q "%xLA%\JetBrains\PyCharmCE2020.2\recentFilesTimeStamps.dat"
del/s/q "%xLA%\Microsoft\Device Metadata\dmrccache\"
del/s/q "%xLA%\Microsoft\Edge\Application\SetupMetrics\*.pma"
del/s/q "%xLA%\Microsoft\Edge\User Data\Default\Feature Engagement Tracker\"
del/s/q "%xLA%\Microsoft\Edge\User Data\ZxcvbnData\"
del/s/q "%xLA%\Microsoft\EdgeUpdate\"
del/s/q "%xLA%\Microsoft\Feeds\"
del/s/q "%xLA%\Microsoft\Feeds Cache\"
del/s/q "%xLA%\Microsoft\Internet Explorer\DOMStore\"
del/s/q "%xLA%\Microsoft\Media Player\Sync Playlists\"
del/s/q "%xLA%\Microsoft\Office\OTele\"
del/s/q "%xLA%\Microsoft\OneDrive\setup\logs\"
del/s/q "%xLA%\Microsoft\OneDrive\logs\Common\"
del/s/q "%xLA%\Microsoft\OneDrive\logs\ListSync\"
del/s/q "%xLA%\Microsoft\OneDrive\logs\Personal\"
del/s/q "%xLA%\Microsoft\Windows\Temporary Internet Files\Content.IE5\"
del/s/q "%xLA%\Microsoft\Windows\Temporary Internet Files\Content.Word\"
del/s/q "%xLA%\Microsoft\Windows\WebCache.old\"
del/s/q "%xLA%\Microsoft\Windows\WER\ReportArchive\"
del/s/q "%xLA%\Microsoft\Windows\WER\ReportQueue\"
del/s/q "%xLA%\Microsoft Games\"
del/s/q "%xLA%\Netease\CloudMusic\ad\"
del/s/q "%xLA%\Netease\CloudMusic\update\"
del/s/q "%xLA%\qq_guild-updater\"
del/s/q "%xLA%\VMware\"
del/s/q "%xLA%\Rapr\"
del/s/q "%xLA%\RailCrashReport\"
del/s/q "%xLA%\Seewo\SeewoBrowser\User Data\Crashpad\reports\"
del/s/q "%xLA%\Softdeluxe\Free Download Manager\cache\"
del/s/q "%xLA%\Softdeluxe\Free Download Manager\logs\"
del/s/q "%xLA%\Temp\"
del/s/q "%xLA%\tdappdesktop-updater\"
del/s/q "%xLA%\Tencent\QQBrowser\User Data\Default\Feature Engagement Tracker\"
del/s/q "%xLA%\Tencent\QQBrowser\User Data\Liveup\Temp\"
del/s/q "%xLA%\Tencent\QQGuild\Logs\"
del/s/q "%xLA%\Thunisoft\HuayuPY\Log\"
del/s/q "%xLA%\xmind-vana-updater\"
del/s/q "%xLA%\YunPan\Bin\log\*.log"
del/s/q "%xLA%\TempMengYouCatche\"

del/s/q "%xPD%\.spider\logs\"
del/s/q "%xPD%\360SD\PopWndTrackerLog\"
del/s/q "%xPD%\Alibaba\AlibabaProtectDT\Logs\"
del/s/q "%xPD%\BaofengVideo\StormPlayer9\Update\"
del/s/q "%xPD%\BaofengVideo\StormPlayer9\temp\"
del/s/q "%xPD%\Intel\"
del/s/q "%xPD%\DriveTheLife\"
del/s/q "%xPD%\firebird\"
del/s/q "%xPD%\Foxit OnlineInstall\"
del/s/q "%xPD%\HP\Install\*.log"
del/s/q "%xPD%\Huorong\Sysdiag\Sysclean\clean.log"
del/s/q "%xPD%\Huawei\HMSCORE\log\"
del/s/q "%xPD%\Huorong\Sysdiag\PopupSnap\log\"
del/s/q "%xPD%\Kingsoft\minisite\"
del/s/q "%xPD%\Lenovo\Vantage\AddinData\LenovoSystemUpdateAddin\logs\tvsu_*.log"
del/s/q "%xPD%\LenovoQuickFixTool\"
del/s/q "%xPD%\Microsoft\Diagnosis\DownloadedSettings\telemetry.*"
del/s/q "%xPD%\Microsoft\DiagnosticLogCSP\Collectors\*.etl"
del/s/q "%xPD%\Microsoft\EdgeUpdate\"
del/s/q "%xPD%\Microsoft\Search\Data\Applications\Windows\GatherLogs\SystemIndex\"
del/s/q "%xPD%\Microsoft\Search\Data\Applications\Windows\Projects\SystemIndex\"
del/s/q "%xPD%\Microsoft\Windows\DeviceMetadataCache\"
del/s/q "%xPD%\Microsoft\Windows\DeviceMetadataStore\"
del/s/q "%xPD%\Microsoft\Windows\Power Efficiency Diagnostics\energy-report*.xml"
del/s/q "%xPD%\Microsoft\Windows\Sqm\Sessions\"
del/s/q "%xPD%\Microsoft\Windows\Sqm\Upload\"
del/s/q "%xPD%\Microsoft\Windows\WER\ReportArchive\"
del/s/q "%xPD%\Microsoft\Windows\WER\ReportQueue\"
del/s/q "%xPD%\Microsoft\Windows Defender\Definition Updates\"
del/s/q "%xPD%\Microsoft\Windows Defender\Support\"
del/s/q "%xPD%\Microsoft\Windows Defender\Scans\History\"
del/s/q "%xPD%\Microsoft\Windows Security Health\Logs\"
del/s/q "%xPD%\Mozilla\"
del/s/q "%xPD%\Oray\SunloginClient\log\"
del/s/q "%xPD%\Oray\SunloginClientLite\log\"
del/s/q "%xPD%\Realtek\"

del/s/q "%xPD%\Seewo\EasiSensoryServer\log\"
del/s/q "%xPD%\Seewo\Easiupdate\"
del/s/q "%xPD%\Seewo\Easiupdate\easiupdate\"
del/s/q "%xPD%\Seewo\Easiupdate3\"
del/s/q "%xPD%\Seewo\Easiupdate3Download\"
del/s/q "%xPD%\Seewo\Easiupdate3Logs\"
del/s/q "%xPD%\Seewo\KingstonSSDUpdate\"
del/s/q "%xPD%\Seewo\LiveProxyGuard\"
del/s/q "%xPD%\Seewo\logs\"
del/s/q "%xPD%\Seewo\OtaTool\"
del/s/q "%xPD%\Seewo\proxyLayerService\log\"
del/s/q "%xPD%\Seewo\RunswUpgrade\"
del/s/q "%xPD%\Seewo\SeewoAdminService\"
del/s/q "%xPD%\Seewo\SeewoCore\"
del/s/q "%xPD%\Seewo\SeewoCore\log\"
del/s/q "%xPD%\Seewo\SeewoFreezeInstaller\"
del/s/q "%xPD%\Seewo\SeewoFreezeUpdateAssist\"
del/s/q "%xPD%\Seewo\SeewoGuard\log\"
del/s/q "%xPD%\Seewo\SeewoHugoLauncher\log\"
del/s/q "%xPD%\Seewo\SeewoMcuService\log\"
del/s/q "%xPD%\Seewo\SeewoProxy\log\"
del/s/q "%xPD%\Seewo\SeewoServiceAdmin\log\"
del/s/q "%xPD%\Seewo\SeewoServiceAssistant\logs\"
del/s/q "%xPD%\Seewo\WifiFix\log\"

del/s/q "%xPD%\update_temp\"
del/s/q "%xPD%\sfantibot\quarantine\"
del/s/q "%xPD%\sfantibot\scanlog\"
del/s/q "%xPD%\SogouInput\Components\Picface\Cloud\"
del/s/q "%xPD%\Symantec\"
del/s/q "%xPD%\ToDesk_Lite\Logs\"
del/s/q "%xPD%\ToolLog\"
del/s/q "%xPD%\Temps\"
del/s/q "%xPD%\Tencent\GameAssist\"
del/s/q "%xPD%\Tencent\QQPCMgr\LibBackup\"
del/s/q "%xPD%\Tencent\QQPCMgr\SoftMgr\CleanLog\"
del/s/q "%xPD%\Tencent\QQPCMgr\Tfsdocpro\"
del/s/q "%xPD%\Tencent\QQPCMgr\TrojanLog\"
del/s/q "%xPD%\Tencent\QQPCMgrEnterprise\"
del/s/q "%xPD%\Tencent\QQUpDate\"
del/s/q "%xPD%\Tencent\WeChat\patch\"
del/s/q "%xPD%\Thunder Network\XLLiveUD\Download\"
del/s/q "%xPD%\TP-LINK\"
del/s/q "%xPD%\USOPrivate\UpdateStore\"
del/s/q "%xPD%\USOShared\Logs\"
del/s/q "%xPD%\VirtualBox\"
del/s/q "%xPD%\VMware\logs\"
del/s/q "%xPD%\WiseVector_BackUp\"
del/s/q "%xPD%\NVIDIA Corporation\DisplayDriverRAS\NvTelemetry\"

del/s/q "%xPF%\7-Zip\7-zip.chm"
rem/s/q "%xPF%\115Chrome\"
del/s/q "%xWD%\Prefetch\*.pf\"
del/s/q "%xWD%\System32\Macromed\Flash\"
del/s/q "%xWD%\SysWOW64\Macromed\Flash\"
del/s/q "%xUP%\AppData\Flash Player\"
del/s/q "%xUP%\AppData\Tencent\TXKeTangLite\eduCefCache\"
rem/s/q "%xUP%\AppData\Tencent\TXKeTang\historyLogs\"
del/s/q "%xUP%\MicrosoftEdgeBackups\"
del/s/q "%xSd%\2345Downloads\"
rem/s/q "%xSd%\QMDownload\"
del/s/q "%xSd%\AppData\Local\Thunisoft\"
del/s/q "%xSd%\WEXAM\"
del/s/q "%xSd%\SYSTEM.SAV\"

del/s/q "%xAD%\temp\"
del/s/q "%xTM%\"
)2>nul

@(
rd/s/q "%xAD%\Code\logs\"
rd/s/q "%xAD%\CNTV\CNTV Live\"
rd/s/q "%xAD%\CrystalIdea Software\"
rd/s/q "%xAD%\Geek Uninstaller\"
rd/s/q "%xAD%\HiBit Uninstaller\"
rd/s/q "%xAD%\IObit\IObit Uninstaller\"
rd/s/q "%xAD%\KC Softwares\"
rd/s/q "%xAD%\Wise Disk Cleaner\"
rd/s/q "%xAD%\Wise Registry Cleaner\"
rd/s/q "%xAD%\Wise Uninstaller\"
rd/s/q "%xAD%\Adobe\Common\Media Cache\"
rd/s/q "%xAD%\Adobe\Common\Media Cache Files\"
rd/s/q "%xAD%\Adobe\Dreamweaver CS5\zh_CN\Configuration\SiteCache\"
rd/s/q "%xAD%\Adobe\Dreamweaver CS5\zh_CN\OfficeTemp\"
rd/s/q "%xAD%\Apple Computer\Logs\"
rd/s/q "%xAD%\DrvMgr\"
rd/s/q "%xAD%\360DrvMgr\"
rd/s/q "%xAD%\360safe\LiveUpdateLog\"
rd/s/q "%xAD%\360Game5\"
rd/s/q "%xAD%\360se6\User Data\Default\IndexedDB\"
rd/s/q "%xAD%\360se6\User Data\Default\Service Worker\CacheStorage\"
rd/s/q "%xAD%\360se6\User Data\tcdump\"
rd/s/q "%xAD%\360se6\User Data\temp\"
rd/s/q "%xAD%\xundu\Mininews\"
rd/s/q "%xAD%\yiwanzhushou\pdown\"

rd/s/q "%xAD%\baidu\BaiduNetdisk\AutoUpdate\Download\"
rd/s/q "%xAD%\kingsoft\PDF\Trust\"
rd/s/q "%xAD%\kingsoft\typeeasy\update\"
rd/s/q "%xAD%\Macromedia\Flash Player\#SharedObjects\"
rd/s/q "%xAD%\Macromedia\Flash Player\macromedia.com\support\flashplayer\sys\"
rd/s/q "%xAD%\Microsoft\PowerPoint\"
rd/s/q "%xAD%\Microsoft\Windows\Cookies\"
rd/s/q "%xAD%\PLogs\"

rd/s/q "%xAD%\Seewo\CycloneOffice\log\"
rd/s/q "%xAD%\Seewo\CycloneOfficeWrapper\log\"
rd/s/q "%xAD%\Seewo\EasiAssistant\"
rd/s/q "%xAD%\Seewo\EasiCamera\Log\"
rd/s/q "%xAD%\Seewo\EasiLiveServer\Log\"
rd/s/q "%xAD%\Seewo\EasiNote5\Log\"
rd/s/q "%xAD%\Seewo\EasiNote5\Temp\"
rd/s/q "%xAD%\Seewo\EasiRecorder\logs\"
rd/s/q "%xAD%\Seewo\EasiUpdate\"
rd/s/q "%xAD%\Seewo\ECGuardian\Log\"
rd/s/q "%xAD%\Seewo\InstallPackageTool\log\"
rd/s/q "%xAD%\Seewo\Log\MIS\"
rd/s/q "%xAD%\Seewo\Optimization\log\"
rd/s/q "%xAD%\Seewo\OtaTool\log\"
rd/s/q "%xAD%\Seewo\PPTService\Log\"
rd/s/q "%xAD%\Seewo\SeewoAbility\log\"
rd/s/q "%xAD%\Seewo\SeewoAdBlock\log\"
rd/s/q "%xAD%\Seewo\SeewoAppUtils\logs\"
rd/s/q "%xAD%\Seewo\SeewoHugoService\log\"
rd/s/q "%xAD%\Seewo\SeewoHugoLauncher\log\"
rd/s/q "%xAD%\Seewo\SeewoLauncher\logs\"
rd/s/q "%xAD%\Seewo\SeewoLink\logs\"
rd/s/q "%xAD%\Seewo\SeewoLinkService\logs\"
rd/s/q "%xAD%\Seewo\SeewoMcuService\log\"
rd/s/q "%xAD%\Seewo\SeewoService\"
rd/s/q "%xAD%\Seewo\SeewoServiceUpdater\"
rd/s/q "%xAD%\Seewo\SeewoSmartPen\log\"
rd/s/q "%xAD%\Seewo\UploadService\Log\"
rd/s/q "%xAD%\Seewo\WifiFix\log\"
rd/s/q "%xAD%\Seewo\Win10HotspotService\logs\"

rd/s/q "%xAD%\Tencent\OD\Temp\DownloadCache\"
rd/s/q "%xAD%\Tencent\OD\Temp\QQAvatarCache\"
rd/s/q "%xAD%\Tencent\QQ\AuTemp\"
rd/s/q "%xAD%\Tencent\QQ\STemp\"
rd/s/q "%xAD%\Tencent\QQ\Temp\"
rd/s/q "%xAD%\Tencent\QQTempSys\"
rd/s/q "%xAD%\Tencent\QQMusic\CrashDump\"
rd/s/q "%xAD%\Tencent\QQPCMgr\Download\"
rd/s/q "%xAD%\Tencent\TIM\STemp\"
rd/s/q "%xAD%\Tencent\TIM\Temp\"
rd/s/q "%xAD%\Tencent\WeChat\wmpf\crashpad\reports\"
rd/s/q "%xAD%\Tencent\WeChat\XPlugin\Plugins\WeChatUpdate\"
rd/s/q "%xAD%\TE_Desktop\log\"
rd/s/q "%xAD%\WNS\"
rd/s/q "%xAD%\yk_temp\"
rd/s/q "%xAD%\youku\upgrade\"

rem/s/q "%xLA%\2345Explorer\"
rd/s/q "%xLA%\360Chrome\Chrome\Application\components\download\"
rd/s/q "%xLA%\360Chrome\Chrome\User Data\Default\Feature Engagement Tracker\"
rd/s/q "%xLA%\360Chrome\Chrome\User Data\Default\HisDailyBackup\"
rd/s/q "%xLA%\360Chrome\Chrome\User Data\Default\Local Storage\"
rd/s/q "%xLA%\360Chrome\Chrome\User Data\v3update\"
rd/s/q "%xLA%\BitTorrentHelper\crashdumps\"
rd/s/q "%xLA%\cache\"
rd/s/q "%xLA%\CrashRpt\"
rd/s/q "%xLA%\DingTalk\dumps\"
rd/s/q "%xLA%\Downloaded Installations\"
rd/s/q "%xLA%\Edraw\MindMaster\autosave\"
rd/s/q "%xLA%\eNSP\Log\"
rd/s/q "%xLA%\EVCapture\log\"
rd/s/q "%xLA%\EVPlayer\log\"
rd/s/q "%xLA%\Microsoft\Device Metadata\dmrccache\"
rd/s/q "%xLA%\Microsoft\EdgeUpdate\"
rd/s/q "%xLA%\Microsoft\Feeds\"
rd/s/q "%xLA%\Microsoft\Feeds Cache\"
rd/s/q "%xLA%\Microsoft\Office\OTele\"
rd/s/q "%xLA%\Microsoft\OneDrive\setup\logs\"
rd/s/q "%xLA%\Microsoft\OneDrive\logs\Common\"
rd/s/q "%xLA%\Microsoft\OneDrive\logs\ListSync\"
rd/s/q "%xLA%\Microsoft\OneDrive\logs\Personal\"
rd/s/q "%xLA%\Microsoft\Windows\Temporary Internet Files\Content.IE5\"
rd/s/q "%xLA%\Microsoft\Windows\WebCache.old\"
rd/s/q "%xLA%\Microsoft\Windows\WER\ReportArchive\"
rd/s/q "%xLA%\Microsoft\Windows\WER\ReportQueue\"
rd/s/q "%xLA%\Microsoft Games\"

rd/s/q "%xLA%\Google\Chrome\User Data\Crashpad\reports\"
rd/s/q "%xLA%\Google\Chrome\User Data\Crowd Deny\"
rd/s/q "%xLA%\Google\Chrome\User Data\Default\Cache\Cache_Data\"
rd/s/q "%xLA%\Google\Chrome\User Data\Default\Code Cache\js\"
rd/s/q "%xLA%\Google\Chrome\User Data\Default\Local Storage\"
rd/s/q "%xLA%\Google\Chrome\User Data\DesktopSharingHub\"
rd/s/q "%xLA%\Google\Chrome\User Data\FirstPartySetsPreloaded\"
rd/s/q "%xLA%\Google\Chrome\User Data\Default\Feature Engagement Tracker\"
rd/s/q "%xLA%\Google\Chrome\User Data\recovery\"
rd/s/q "%xLA%\Google\Chrome\User Data\SwReporter\"
rd/s/q "%xLA%\Google\Chrome\User Data\ZxcvbnData\"
rd/s/q "%xLA%\Google\Chromium RTM\Local Storage\"
rd/s/q "%xLA%\Google\CrashReports\"
rd/s/q "%xLA%\Google\Software Reporter Tool\reports\"
rd/s/q "%xLA%\Google\Update\Download\"
rd/s/q "%xLA%\Google\Update\Install\"

rd/s/q "%xLA%\VMware\"
rd/s/q "%xLA%\Rapr\"
rd/s/q "%xLA%\RailCrashReport\"
rd/s/q "%xLA%\Seewo\SeewoBrowser\User Data\Crashpad\reports\"
rd/s/q "%xLA%\Softdeluxe\Free Download Manager\cache\"
rd/s/q "%xLA%\Softdeluxe\Free Download Manager\logs\"
rd/s/q "%xLA%\Temp\"
rd/s/q "%xLA%\TempMengYouCatche\"

rd/s/q "%xPD%\.spider\logs\"
rd/s/q "%xPD%\BaofengVideo\StormPlayer9\Update\"
rd/s/q "%xPD%\BaofengVideo\StormPlayer9\temp\"
rd/s/q "%xPD%\DriveTheLife\"
rd/s/q "%xPD%\Foxit OnlineInstall\"
rd/s/q "%xPD%\Kingsoft\minisite\"
rd/s/q "%xPD%\LenovoQuickFixTool\"
rd/s/q "%xPD%\Microsoft\EdgeUpdate\"
rd/s/q "%xPD%\Microsoft\Windows\DeviceMetadataCache\"
rd/s/q "%xPD%\Microsoft\Windows\DeviceMetadataStore\"
rd/s/q "%xPD%\Microsoft\Windows\WER\ReportArchive\"
rd/s/q "%xPD%\Microsoft\Windows\WER\ReportQueue\"
rd/s/q "%xPD%\Microsoft\Windows Defender\Definition Updates\"
rd/s/q "%xPD%\Microsoft\Windows Defender\Scans\History\"
rd/s/q "%xPD%\Mozilla\"
rd/s/q "%xPD%\Oray\SunloginClient\log\"
rd/s/q "%xPD%\Oray\SunloginClientLite\log\"

rd/s/q "%xPD%\Seewo\EasiSensoryServer\log\"
rd/s/q "%xPD%\Seewo\Easiupdate\"
rd/s/q "%xPD%\Seewo\Easiupdate\easiupdate\"
rd/s/q "%xPD%\Seewo\Easiupdate3\"
rd/s/q "%xPD%\Seewo\Easiupdate3Download\"
rd/s/q "%xPD%\Seewo\Easiupdate3Logs\"
rd/s/q "%xPD%\Seewo\KingstonSSDUpdate\"
rd/s/q "%xPD%\Seewo\LiveProxyGuard\"
rd/s/q "%xPD%\Seewo\logs\"
rd/s/q "%xPD%\Seewo\OtaTool\"
rd/s/q "%xPD%\Seewo\proxyLayerService\log\"
rd/s/q "%xPD%\Seewo\RunswUpgrade\"
rd/s/q "%xPD%\Seewo\SeewoAdminService\"
rd/s/q "%xPD%\Seewo\SeewoCore\"
rd/s/q "%xPD%\Seewo\SeewoCore\log\"
rd/s/q "%xPD%\Seewo\SeewoFreezeInstaller\"
rd/s/q "%xPD%\Seewo\SeewoFreezeUpdateAssist\"
rd/s/q "%xPD%\Seewo\SeewoGuard\log\"
rd/s/q "%xPD%\Seewo\SeewoHugoLauncher\log\"
rd/s/q "%xPD%\Seewo\SeewoMcuService\log\"
rd/s/q "%xPD%\Seewo\SeewoProxy\log\"
rd/s/q "%xPD%\Seewo\SeewoServiceAdmin\log\"
rd/s/q "%xPD%\Seewo\SeewoServiceAssistant\logs\"
rd/s/q "%xPD%\Seewo\WifiFix\log\"

rd/s/q "%xPD%\update_temp\"
rd/s/q "%xPD%\sfantibot\quarantine\"
rd/s/q "%xPD%\sfantibot\scanlog\"
rd/s/q "%xPD%\Symantec\"
rd/s/q "%xPD%\Tencent\QQUpDate\"
rd/s/q "%xPD%\ToolLog\"
rd/s/q "%xPD%\USOPrivate\UpdateStore\"
rd/s/q "%xPD%\USOShared\Logs\"
rd/s/q "%xPD%\VirtualBox\"
rd/s/q "%xPD%\WiseVector_BackUp\"

rd/s/q "%xWD%\System32\Macromed\Flash\"
rd/s/q "%xWD%\SysWOW64\Macromed\Flash\"

rd/s/q "%xUP%\AppData\Flash Player\"
rd/s/q "%xUP%\MicrosoftEdgeBackups\"
rd/s/q "%xSd%\2345Downloads\"
rem/s/q "%xSd%\QMDownload\"
rd/s/q "%xSd%\AppData\Local\Thunisoft\"
rd/s/q "%xSd%\WEXAM\"
rd/s/q "%xSd%\SYSTEM.SAV\"

rd/s/q "%xPF%\115Chrome\"
rd/s/q "%xTM%\"
)2>nul

@if EXIST "%%xAD%%\Mozilla\Firefox\Profiles" (
for /f "delims=*" %%i in ('dir/s/b/ad %%xAD%%\Mozilla\Firefox\Profiles\ ^|find /i ^"telemetry^"') do (
 del/s/q "%%~i\"
  rd/s/q "%%~i\"
)2>nul

for /f "delims=*" %%i in ('dir/s/b/ad %%xAD%%\Mozilla\Firefox\Profiles\ ^|find /i ^"\datareporting\archived\^"') do (
 del/s/q "%%~i\"
  rd/s/q "%%~i\"
)2>nul

for /f "delims=*" %%i in ('dir/s/b/ad %%xAD%%\Mozilla\Firefox\Profiles\ ^|find /i ^"\minidumps\^"') do (
 del/s/q "%%~i\"
  rd/s/q "%%~i\"
)2>nul
)2>nul

@if EXIST "%%xLA%%\Mozilla\Firefox\Profiles" (
for /f "delims=*" %%i in ('dir/s/b/ad %%xLA%%\Mozilla\Firefox\Profiles\ ^|find /i ^"\trash^"') do (
 del/s/q "%%~i\"
  rd/s/q "%%~i\"
)2>nul
)2>nul

@for /f "delims=*" %%i in ('dir/s/b/ad %%xPD%%\Mozilla-*') do (
 del/s/q "%%~i\"
  rd/s/q "%%~i\"
)2>nul

@if EXIST "%%xAD%%\Tencent\Users" (
for /f "delims=*" %%i in ('dir/s/b/ad %%xAD%%\Tencent\Users\ ^|find /i ^"\QQ\WinTemp\^"') do (
 del/s/q "%%~i\"
  rd/s/q "%%~i\"
)2>nul

for /f "delims=*" %%i in ('dir/s/b/ad %%xAD%%\Tencent\Users\ ^|find /i ^"\TIM\WinTemp\^"') do (
 del/s/q "%%~i\"
  rd/s/q "%%~i\"
)2>nul
)

@for /f "delims=*" %%i in ('dir/s/b/ad %%xLA%%\ ^|find /i ^"\Application\^" ^|find /i ^"\Installer\^"') do (
 del/s/q "%%~i\"
  rd/s/q "%%~i\"
)2>nul

@for /f "delims=*" %%i in ('dir/s/b %%xAD%%\Tencent\WeChat\XPlugin\Plugins\XWeb\ ^|find /i ^"\extracted\xweb_crash_reporter.cfg^"') do (
 del/s/q "%%~i"
)2>nul

@for /f "delims=*" %%i in ('dir/s/b %%xLA%%\Google\Chrome\Application\ ^|find /i ^"\Locales\^" ^|find /i ^".pak^" ^|find /i /v ^"en-US^" ^|find /i /v ^"zh-CN^"') do (
 del/s/q "%%~i"
)2>nul

@for /f "delims=*" %%i in ('dir/s/b %%xLA%%\Microsoft\Edge\Application\ ^|find /i ^"\Locales\^" ^|find /i ^".pak^" ^|find /i /v ^"en-US^" ^|find /i /v ^"zh-CN^"') do (
 del/s/q "%%~i"
)2>nul

@for /f "delims=*" %%i in ('dir/s/b %%xLA%%\115Chrome\Application\ ^|find /i ^"\Locales\^" ^|find /i ^".pak^" ^|find /i /v ^"en-US^" ^|find /i /v ^"zh-CN^"') do (
 del/s/q "%%~i"
)2>nul


dir/s/b "%xAD%"  >%COMPUTERNAME%_%date:~0,4%%date:~5,2%%date:~8,2%.ls
dir/s/b "%xLA%" >>%COMPUTERNAME%_%date:~0,4%%date:~5,2%%date:~8,2%.ls
dir/s/b "%xPD%" >>%COMPUTERNAME%_%date:~0,4%%date:~5,2%%date:~8,2%.ls
find /i /v "\Application Data" %COMPUTERNAME%_%date:~0,4%%date:~5,2%%date:~8,2%.ls >%COMPUTERNAME%_%date:~0,4%%date:~5,2%%date:~8,2%_list.txt
del/q "%COMPUTERNAME%_%date:~0,4%%date:~5,2%%date:~8,2%.ls"

echo\&echo\
echo\&echo   清理完成，保留文件请查看 %COMPUTERNAME%_%date:~0,4%%date:~5,2%%date:~8,2%_list.txt。
echo\&echo   如能提供此文件以改进清理效果，与有荣焉！！！
echo\&echo\
ping 127.1 >nul 2>nul
ping 127.1 >nul 2>nul
ping 127.1 >nul 2>nul
goto :eof
exit




:setSdUn
if NOT EXIST "%xSd%\Users\%xUn%" (
echo\&echo 在 %xSd% 下未找到指定的 %xUn% 用户。
)
echo\&set/p xSd=    请输入 本地系统盘(如 C:)：
echo\&set/p xUn=           本地管理员(如 Administrator)：
echo\&set/p  cf=    系统盘 %xSd%，管理员 %xUn%，确认请按 Y：
if "%cf%" neq "Y" goto :setSdUn

if NOT EXIST "%xSd%\Users\%xUn%" (goto :setSdUn)
if EXIST "%xSd%\Users\%xUn%" (goto :ok)


::Write by HS_Lioncel@20220627.1056