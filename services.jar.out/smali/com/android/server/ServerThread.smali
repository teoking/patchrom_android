.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public run()V
    .locals 153

    .prologue
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroid/util/EventLog;->writeEvent(IJ)I

    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v125

    .local v125, shutdownAction:Ljava/lang/String;
    if-eqz v125, :cond_0

    invoke-virtual/range {v125 .. v125}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    const/4 v7, 0x0

    move-object/from16 v0, v125

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_f

    const/16 v119, 0x1

    .local v119, reboot:Z
    :goto_0
    invoke-virtual/range {v125 .. v125}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_10

    const/4 v7, 0x1

    invoke-virtual/range {v125 .. v125}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v125

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v118

    .local v118, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v119

    move-object/from16 v1, v118

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .end local v118           #reason:Ljava/lang/String;
    .end local v119           #reboot:Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v89

    .local v89, factoryTestStr:Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v89

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    const/16 v88, 0x0

    .local v88, factoryTest:I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v11, "0"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .local v33, headless:Z
    const/16 v95, 0x0

    .local v95, installer:Lcom/android/server/pm/Installer;
    const/16 v60, 0x0

    .local v60, accountManager:Landroid/accounts/AccountManagerService;
    const/16 v73, 0x0

    .local v73, contentService:Landroid/content/ContentService;
    const/16 v98, 0x0

    .local v98, lights:Lcom/android/server/LightsService;
    const/16 v115, 0x0

    .local v115, power:Lcom/android/server/power/PowerManagerService;
    const/16 v79, 0x0

    .local v79, display:Lcom/android/server/display/DisplayManagerService;
    const/16 v65, 0x0

    .local v65, battery:Lcom/android/server/BatteryService;
    const/16 v142, 0x0

    .local v142, vibrator:Lcom/android/server/VibratorService;
    const/16 v62, 0x0

    .local v62, alarm:Lcom/android/server/AlarmManagerService;
    const/16 v104, 0x0

    .local v104, mountService:Lcom/android/server/MountService;
    const/16 v30, 0x0

    .local v30, networkManagement:Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .local v29, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v106, 0x0

    .local v106, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v71, 0x0

    .local v71, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v86, 0x0

    .local v86, ethernet:Lcom/android/server/EthernetService;
    const/16 v116, 0x0

    .local v116, pppoe:Lcom/android/server/PppoeService;
    const/16 v149, 0x0

    .local v149, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v147, 0x0

    .local v147, wifi:Lcom/android/server/WifiService;
    const/16 v124, 0x0

    .local v124, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v114, 0x0

    .local v114, pm:Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .local v5, context:Landroid/content/Context;
    const/16 v151, 0x0

    .local v151, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v66, 0x0

    .local v66, bluetooth:Lcom/android/server/BluetoothManagerService;
    const/16 v81, 0x0

    .local v81, dock:Lcom/android/server/DockObserver;
    const/16 v140, 0x0

    .local v140, usb:Lcom/android/server/usb/UsbService;
    const/16 v122, 0x0

    .local v122, serial:Lcom/android/server/SerialService;
    const/16 v135, 0x0

    .local v135, twilight:Lcom/android/server/TwilightService;
    const/16 v138, 0x0

    .local v138, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v120, 0x0

    .local v120, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v131, 0x0

    .local v131, throttle:Lcom/android/server/ThrottleService;
    const/16 v108, 0x0

    .local v108, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v68, 0x0

    .local v68, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v94, 0x0

    .local v94, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v129, 0x0

    .local v129, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    const/16 v112, 0x0

    .local v112, overlayview:Lcom/android/server/OverlayViewService;
    new-instance v137, Landroid/os/HandlerThread;

    const-string v7, "UI"

    move-object/from16 v0, v137

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v137, uiHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v137 .. v137}, Landroid/os/HandlerThread;->start()V

    new-instance v20, Landroid/os/Handler;

    invoke-virtual/range {v137 .. v137}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .local v20, uiHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v152, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v152

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v152, wmHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v152 .. v152}, Landroid/os/HandlerThread;->start()V

    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v152 .. v152}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .local v21, wmHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/16 v24, 0x0

    .local v24, onlyCore:Z
    :try_start_0
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v96, Lcom/android/server/pm/Installer;

    invoke-direct/range {v96 .. v96}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_52

    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .local v96, installer:Lcom/android/server/pm/Installer;
    :try_start_1
    invoke-virtual/range {v96 .. v96}, Lcom/android/server/pm/Installer;->ping()Z

    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/power/PowerManagerService;

    invoke-direct {v4}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_53

    .end local v115           #power:Lcom/android/server/power/PowerManagerService;
    .local v4, power:Lcom/android/server/power/PowerManagerService;
    :try_start_2
    const-string v7, "power"

    invoke-static {v7, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v88 .. v88}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v5

    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v10, v5, v0, v1}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_54

    .end local v79           #display:Lcom/android/server/display/DisplayManagerService;
    .local v10, display:Lcom/android/server/display/DisplayManagerService;
    :try_start_3
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v10, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v130, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v130

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_55

    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .local v130, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :try_start_4
    const-string v7, "telephony.registry"

    move-object/from16 v0, v130

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    invoke-virtual {v10}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v76

    .local v76, cryptState:Ljava/lang/String;
    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v76

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    :cond_2
    :goto_3
    if-eqz v88, :cond_13

    const/4 v7, 0x1

    :goto_4
    move-object/from16 v0, v96

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v114

    const/16 v90, 0x0

    .local v90, firstBoot:Z
    :try_start_5
    invoke-interface/range {v114 .. v114}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_39
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v90

    :goto_5
    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    :try_start_7
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v61, Landroid/accounts/AccountManagerService;

    move-object/from16 v0, v61

    invoke-direct {v0, v5}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .end local v60           #accountManager:Landroid/accounts/AccountManagerService;
    .local v61, accountManager:Landroid/accounts/AccountManagerService;
    :try_start_8
    const-string v7, "account"

    move-object/from16 v0, v61

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5e
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_56

    move-object/from16 v60, v61

    .end local v61           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v60       #accountManager:Landroid/accounts/AccountManagerService;
    :goto_6
    :try_start_9
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    move/from16 v0, v88

    if-ne v0, v7, :cond_14

    const/4 v7, 0x1

    :goto_7
    invoke-static {v5, v7}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/ContentService;

    move-result-object v73

    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    .end local v98           #lights:Lcom/android/server/LightsService;
    .local v6, lights:Lcom/android/server/LightsService;
    :try_start_a
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_57

    .end local v65           #battery:Lcom/android/server/BatteryService;
    .local v8, battery:Lcom/android/server/BatteryService;
    :try_start_b
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v143, Lcom/android/server/VibratorService;

    move-object/from16 v0, v143

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_58

    .end local v142           #vibrator:Lcom/android/server/VibratorService;
    .local v143, vibrator:Lcom/android/server/VibratorService;
    :try_start_c
    const-string v7, "vibrator"

    move-object/from16 v0, v143

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/display/DisplayManagerService;)V

    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Lcom/android/server/AlarmManagerService;

    invoke-direct {v15, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_59

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .local v15, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_d
    const-string v7, "alarm"

    invoke-static {v7, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "OverlayView Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v113, Lcom/android/server/OverlayViewService;

    move-object/from16 v0, v113

    invoke-direct {v0, v5}, Lcom/android/server/OverlayViewService;-><init>(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_5a

    .end local v112           #overlayview:Lcom/android/server/OverlayViewService;
    .local v113, overlayview:Lcom/android/server/OverlayViewService;
    :try_start_e
    const-string v7, "overlayview"

    move-object/from16 v0, v113

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "System Write Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v128, Lcom/android/server/SystemWriteService;

    move-object/from16 v0, v128

    invoke-direct {v0, v5}, Lcom/android/server/SystemWriteService;-><init>(Landroid/content/Context;)V

    .local v128, systemWrite:Lcom/android/server/SystemWriteService;
    const-string v7, "system_write"

    move-object/from16 v0, v128

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "System Key Services"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v97, Lcom/android/server/SystemKeyServices;

    move-object/from16 v0, v97

    invoke-direct {v0, v5}, Lcom/android/server/SystemKeyServices;-><init>(Landroid/content/Context;)V

    .local v97, keyServices:Lcom/android/server/SystemKeyServices;
    invoke-virtual/range {v97 .. v97}, Lcom/android/server/SystemKeyServices;->registerSystemKeyReceiver()V

    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v16

    move-object v12, v5

    move-object v13, v8

    move-object v14, v4

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v19, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_5b

    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .local v19, inputManager:Lcom/android/server/input/InputManagerService;
    :try_start_f
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    move/from16 v0, v88

    if-eq v0, v7, :cond_15

    const/16 v22, 0x1

    :goto_8
    if-nez v90, :cond_16

    const/16 v23, 0x1

    :goto_9
    move-object/from16 v16, v5

    move-object/from16 v17, v4

    move-object/from16 v18, v10

    invoke-static/range {v16 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v151

    const-string v7, "window"

    move-object/from16 v0, v151

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "input"

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v151

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual/range {v151 .. v151}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/input/InputManagerService;->start()V

    move-object/from16 v0, v151

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    new-instance v80, Lletv/desktop/DesktopManagerService;

    move-object/from16 v0, v80

    invoke-direct {v0, v5}, Lletv/desktop/DesktopManagerService;-><init>(Landroid/content/Context;)V

    .local v80, dm:Lletv/desktop/DesktopManagerService;
    const-string v7, "desktop_manager"

    move-object/from16 v0, v80

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_2

    const/16 v91, 0x1

    .local v91, hasBluetooth:Z
    :try_start_10
    const-string v7, "android.hardware.bluetooth"

    move-object/from16 v0, v114

    invoke-interface {v0, v7}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_5d
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_2

    move-result v91

    :goto_a
    :try_start_11
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_2

    :goto_b
    move-object/from16 v112, v113

    .end local v113           #overlayview:Lcom/android/server/OverlayViewService;
    .restart local v112       #overlayview:Lcom/android/server/OverlayViewService;
    move-object/from16 v129, v130

    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v142, v143

    .end local v143           #vibrator:Lcom/android/server/VibratorService;
    .restart local v142       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v95, v96

    .end local v76           #cryptState:Ljava/lang/String;
    .end local v80           #dm:Lletv/desktop/DesktopManagerService;
    .end local v90           #firstBoot:Z
    .end local v91           #hasBluetooth:Z
    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .end local v97           #keyServices:Lcom/android/server/SystemKeyServices;
    .end local v128           #systemWrite:Lcom/android/server/SystemWriteService;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    :goto_c
    const/16 v77, 0x0

    .local v77, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v126, 0x0

    .local v126, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v92, 0x0

    .local v92, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v63, 0x0

    .local v63, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v110, 0x0

    .local v110, notification:Lcom/android/server/NotificationManagerService;
    const/16 v145, 0x0

    .local v145, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v99, 0x0

    .local v99, location:Lcom/android/server/LocationManagerService;
    const/16 v74, 0x0

    .local v74, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v133, 0x0

    .local v133, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v101, 0x0

    .local v101, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v83, 0x0

    .local v83, dreamy:Lcom/android/server/dreams/DreamManagerService;
    const/4 v7, 0x1

    move/from16 v0, v88

    if-eq v0, v7, :cond_3

    :try_start_12
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v93, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v93

    move-object/from16 v1, v151

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_3

    .end local v92           #imm:Lcom/android/server/InputMethodManagerService;
    .local v93, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_13
    const-string v7, "input_method"

    move-object/from16 v0, v93

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_51

    move-object/from16 v92, v93

    .end local v93           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v92       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_d
    :try_start_14
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_4

    :cond_3
    :goto_e
    :try_start_15
    invoke-virtual/range {v151 .. v151}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_5

    :goto_f
    :try_start_16
    invoke-interface/range {v114 .. v114}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_6

    :goto_10
    :try_start_17
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x10403f0

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v7, v9, v11}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_50

    :goto_11
    const/4 v7, 0x1

    move/from16 v0, v88

    if-eq v0, v7, :cond_1b

    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    :try_start_18
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v105, Lcom/android/server/MountService;

    move-object/from16 v0, v105

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_7

    .end local v104           #mountService:Lcom/android/server/MountService;
    .local v105, mountService:Lcom/android/server/MountService;
    :try_start_19
    const-string v7, "mount"

    move-object/from16 v0, v105

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_4f

    move-object/from16 v104, v105

    .end local v105           #mountService:Lcom/android/server/MountService;
    .restart local v104       #mountService:Lcom/android/server/MountService;
    :cond_4
    :goto_12
    :try_start_1a
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v102, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v102

    invoke-direct {v0, v5}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_8

    .end local v101           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v102, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_1b
    const-string v7, "lock_settings"

    move-object/from16 v0, v102

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_4e

    move-object/from16 v101, v102

    .end local v102           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v101       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_13
    :try_start_1c
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v78, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v78

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_9

    .end local v77           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v78, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_1d
    const-string v7, "device_policy"

    move-object/from16 v0, v78

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_4d

    move-object/from16 v77, v78

    .end local v78           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v77       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_14
    :try_start_1e
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v127, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v127

    move-object/from16 v1, v151

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_a

    .end local v126           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v127, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_1f
    const-string v7, "statusbar"

    move-object/from16 v0, v127

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_4c

    move-object/from16 v126, v127

    .end local v127           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v126       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_15
    :try_start_20
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_b

    :goto_16
    :try_start_21
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_c

    :goto_17
    :try_start_22
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v134, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v134

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_d

    .end local v133           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v134, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_23
    const-string v7, "textservices"

    move-object/from16 v0, v134

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_4b

    move-object/from16 v133, v134

    .end local v134           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v133       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_18
    :try_start_24
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v107, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v107

    move-object/from16 v1, v30

    invoke-direct {v0, v5, v1, v15}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_e

    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v107, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_25
    const-string v7, "netstats"

    move-object/from16 v0, v107

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_4a

    move-object/from16 v29, v107

    .end local v107           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_19
    :try_start_26
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_f

    .end local v106           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_27
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_49

    :goto_1a
    :try_start_28
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v150, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v150

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_10

    .end local v149           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v150, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_29
    const-string v7, "wifip2p"

    move-object/from16 v0, v150

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_48

    move-object/from16 v149, v150

    .end local v150           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v149       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1b
    :try_start_2a
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v148, Lcom/android/server/WifiService;

    move-object/from16 v0, v148

    invoke-direct {v0, v5}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_11

    .end local v147           #wifi:Lcom/android/server/WifiService;
    .local v148, wifi:Lcom/android/server/WifiService;
    :try_start_2b
    const-string v7, "wifi"

    move-object/from16 v0, v148

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_47

    move-object/from16 v147, v148

    .end local v148           #wifi:Lcom/android/server/WifiService;
    .restart local v147       #wifi:Lcom/android/server/WifiService;
    :goto_1c
    :try_start_2c
    const-string v7, "SystemServer"

    const-string v9, "Ethernet Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v87, Lcom/android/server/EthernetService;

    move-object/from16 v0, v87

    invoke-direct {v0, v5}, Lcom/android/server/EthernetService;-><init>(Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_12

    .end local v86           #ethernet:Lcom/android/server/EthernetService;
    .local v87, ethernet:Lcom/android/server/EthernetService;
    :try_start_2d
    const-string v7, "ethernet"

    move-object/from16 v0, v87

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_46

    move-object/from16 v86, v87

    .end local v87           #ethernet:Lcom/android/server/EthernetService;
    .restart local v86       #ethernet:Lcom/android/server/EthernetService;
    :goto_1d
    :try_start_2e
    const-string v7, "SystemServer"

    const-string v9, "Pppoe Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v117, Lcom/android/server/PppoeService;

    move-object/from16 v0, v117

    invoke-direct {v0, v5}, Lcom/android/server/PppoeService;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_13

    .end local v116           #pppoe:Lcom/android/server/PppoeService;
    .local v117, pppoe:Lcom/android/server/PppoeService;
    :try_start_2f
    const-string v7, "pppoe"

    move-object/from16 v0, v117

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_45

    move-object/from16 v116, v117

    .end local v117           #pppoe:Lcom/android/server/PppoeService;
    .restart local v116       #pppoe:Lcom/android/server/PppoeService;
    :goto_1e
    :try_start_30
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v72, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v72

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_14

    .end local v71           #connectivity:Lcom/android/server/ConnectivityService;
    .local v72, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_31
    const-string v7, "connectivity"

    move-object/from16 v0, v72

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    invoke-virtual/range {v147 .. v147}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    invoke-virtual/range {v149 .. v149}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V

    invoke-virtual/range {v86 .. v86}, Lcom/android/server/EthernetService;->checkAndStartEthernet()V

    invoke-virtual/range {v116 .. v116}, Lcom/android/server/PppoeService;->checkPppoeAndStart()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_44

    move-object/from16 v71, v72

    .end local v72           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v71       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1f
    :try_start_32
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v124

    const-string v7, "servicediscovery"

    move-object/from16 v0, v124

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_15

    :goto_20
    :try_start_33
    const-string v7, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v132, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v132

    invoke-direct {v0, v5}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_16

    .end local v131           #throttle:Lcom/android/server/ThrottleService;
    .local v132, throttle:Lcom/android/server/ThrottleService;
    :try_start_34
    const-string v7, "throttle"

    move-object/from16 v0, v132

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_43

    move-object/from16 v131, v132

    .end local v132           #throttle:Lcom/android/server/ThrottleService;
    .restart local v131       #throttle:Lcom/android/server/ThrottleService;
    :goto_21
    :try_start_35
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_17

    :goto_22
    if-eqz v104, :cond_5

    invoke-virtual/range {v104 .. v104}, Lcom/android/server/MountService;->waitForAsecScan()V

    :cond_5
    if-eqz v60, :cond_6

    :try_start_36
    invoke-virtual/range {v60 .. v60}, Landroid/accounts/AccountManagerService;->systemReady()V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_18

    :cond_6
    :goto_23
    if-eqz v73, :cond_7

    :try_start_37
    invoke-virtual/range {v73 .. v73}, Landroid/content/ContentService;->systemReady()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_19

    :cond_7
    :goto_24
    :try_start_38
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v111, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v111

    move-object/from16 v1, v126

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1a

    .end local v110           #notification:Lcom/android/server/NotificationManagerService;
    .local v111, notification:Lcom/android/server/NotificationManagerService;
    :try_start_39
    const-string v7, "notification"

    move-object/from16 v0, v111

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v111

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_42

    move-object/from16 v110, v111

    .end local v111           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v110       #notification:Lcom/android/server/NotificationManagerService;
    :goto_25
    :try_start_3a
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_1b

    :goto_26
    :try_start_3b
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v100, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v100

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_1c

    .end local v99           #location:Lcom/android/server/LocationManagerService;
    .local v100, location:Lcom/android/server/LocationManagerService;
    :try_start_3c
    const-string v7, "location"

    move-object/from16 v0, v100

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_41

    move-object/from16 v99, v100

    .end local v100           #location:Lcom/android/server/LocationManagerService;
    .restart local v99       #location:Lcom/android/server/LocationManagerService;
    :goto_27
    :try_start_3d
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v75, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v75

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_1d

    .end local v74           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v75, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_3e
    const-string v7, "country_detector"

    move-object/from16 v0, v75

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_40

    move-object/from16 v74, v75

    .end local v75           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v74       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_28
    :try_start_3f
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_1e

    :goto_29
    :try_start_40
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v11, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v11}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_1f

    :goto_2a
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111002b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_8

    :try_start_41
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v33, :cond_8

    new-instance v146, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v146

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_20

    .end local v145           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v146, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_42
    const-string v7, "wallpaper"

    move-object/from16 v0, v146

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_3f

    move-object/from16 v145, v146

    .end local v146           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v145       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_8
    :goto_2b
    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    :try_start_43
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_21

    :cond_9
    :goto_2c
    :try_start_44
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v82, Lcom/android/server/DockObserver;

    move-object/from16 v0, v82

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_22

    .end local v81           #dock:Lcom/android/server/DockObserver;
    .local v82, dock:Lcom/android/server/DockObserver;
    move-object/from16 v81, v82

    .end local v82           #dock:Lcom/android/server/DockObserver;
    .restart local v81       #dock:Lcom/android/server/DockObserver;
    :goto_2d
    :try_start_45
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v19

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_23

    :goto_2e
    :try_start_46
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v141, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v141

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_24

    .end local v140           #usb:Lcom/android/server/usb/UsbService;
    .local v141, usb:Lcom/android/server/usb/UsbService;
    :try_start_47
    const-string v7, "usb"

    move-object/from16 v0, v141

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_3e

    move-object/from16 v140, v141

    .end local v141           #usb:Lcom/android/server/usb/UsbService;
    .restart local v140       #usb:Lcom/android/server/usb/UsbService;
    :goto_2f
    :try_start_48
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v123, Lcom/android/server/SerialService;

    move-object/from16 v0, v123

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_25

    .end local v122           #serial:Lcom/android/server/SerialService;
    .local v123, serial:Lcom/android/server/SerialService;
    :try_start_49
    const-string v7, "serial"

    move-object/from16 v0, v123

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_3d

    move-object/from16 v122, v123

    .end local v123           #serial:Lcom/android/server/SerialService;
    .restart local v122       #serial:Lcom/android/server/SerialService;
    :goto_30
    :try_start_4a
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v136, Lcom/android/server/TwilightService;

    move-object/from16 v0, v136

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_26

    .end local v135           #twilight:Lcom/android/server/TwilightService;
    .local v136, twilight:Lcom/android/server/TwilightService;
    move-object/from16 v135, v136

    .end local v136           #twilight:Lcom/android/server/TwilightService;
    .restart local v135       #twilight:Lcom/android/server/TwilightService;
    :goto_31
    :try_start_4b
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v139, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v139

    move-object/from16 v1, v135

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_27

    .end local v138           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v139, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v138, v139

    .end local v139           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v138       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_32
    :try_start_4c
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_28

    :goto_33
    :try_start_4d
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v64, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v64

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_29

    .end local v63           #appWidget:Lcom/android/server/AppWidgetService;
    .local v64, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_4e
    const-string v7, "appwidget"

    move-object/from16 v0, v64

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_3c

    move-object/from16 v63, v64

    .end local v64           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v63       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_34
    :try_start_4f
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v121, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v121

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_2a

    .end local v120           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v121, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v120, v121

    .end local v121           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v120       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_35
    :try_start_50
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_2b

    :goto_36
    :try_start_51
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_2c

    :goto_37
    :try_start_52
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v109, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v109

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_2d

    .end local v108           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v109, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v108, v109

    .end local v109           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v108       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_38
    :try_start_53
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v69, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v69

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_2e

    .end local v68           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v69, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_54
    const-string v7, "commontime_management"

    move-object/from16 v0, v69

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_3b

    move-object/from16 v68, v69

    .end local v69           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v68       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_39
    :try_start_55
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_2f

    :goto_3a
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110040

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_a

    :try_start_56
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v84, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v84

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_30

    .end local v83           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .local v84, dreamy:Lcom/android/server/dreams/DreamManagerService;
    :try_start_57
    const-string v7, "dreams"

    move-object/from16 v0, v84

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_3a

    move-object/from16 v83, v84

    .end local v84           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v83       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    :cond_a
    :goto_3b
    invoke-virtual/range {v151 .. v151}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v47

    .local v47, safeMode:Z
    if-eqz v47, :cond_1a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    :goto_3c
    :try_start_58
    invoke-virtual/range {v142 .. v142}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_31

    :goto_3d
    :try_start_59
    invoke-virtual/range {v101 .. v101}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_32

    :goto_3e
    if-eqz v77, :cond_b

    :try_start_5a
    invoke-virtual/range {v77 .. v77}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_33

    :cond_b
    :goto_3f
    if-eqz v110, :cond_c

    :try_start_5b
    invoke-virtual/range {v110 .. v110}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_34

    :cond_c
    :goto_40
    :try_start_5c
    invoke-virtual/range {v151 .. v151}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_35

    :goto_41
    if-eqz v47, :cond_d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    :cond_d
    invoke-virtual/range {v151 .. v151}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v70

    .local v70, config:Landroid/content/res/Configuration;
    new-instance v103, Landroid/util/DisplayMetrics;

    invoke-direct/range {v103 .. v103}, Landroid/util/DisplayMetrics;-><init>()V

    .local v103, metrics:Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v144

    check-cast v144, Landroid/view/WindowManager;

    .local v144, w:Landroid/view/WindowManager;
    invoke-interface/range {v144 .. v144}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v103

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v70

    move-object/from16 v1, v103

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :try_start_5d
    move-object/from16 v0, v135

    move-object/from16 v1, v83

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_36

    :goto_42
    :try_start_5e
    invoke-interface/range {v114 .. v114}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_37

    :goto_43
    :try_start_5f
    move/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_38

    :goto_44
    move-object/from16 v34, v5

    .local v34, contextF:Landroid/content/Context;
    move-object/from16 v35, v104

    .local v35, mountServiceF:Lcom/android/server/MountService;
    move-object/from16 v36, v8

    .local v36, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v37, v30

    .local v37, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v38, v29

    .local v38, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v39, v25

    .local v39, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v40, v71

    .local v40, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v41, v81

    .local v41, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v42, v140

    .local v42, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v53, v131

    .local v53, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v43, v135

    .local v43, twilightF:Lcom/android/server/TwilightService;
    move-object/from16 v44, v138

    .local v44, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v46, v63

    .local v46, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v48, v145

    .local v48, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v49, v92

    .local v49, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v45, v120

    .local v45, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v51, v99

    .local v51, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v52, v74

    .local v52, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v54, v108

    .local v54, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v55, v68

    .local v55, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v56, v133

    .local v56, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v50, v126

    .local v50, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v57, v83

    .local v57, dreamyF:Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v58, v19

    .local v58, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v59, v129

    .local v59, telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$3;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v59}, Lcom/android/server/ServerThread$3;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-static {}, Landroid/os/Looper;->loop()V

    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v5           #context:Landroid/content/Context;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v20           #uiHandler:Landroid/os/Handler;
    .end local v21           #wmHandler:Landroid/os/Handler;
    .end local v24           #onlyCore:Z
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v30           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v33           #headless:Z
    .end local v34           #contextF:Landroid/content/Context;
    .end local v35           #mountServiceF:Lcom/android/server/MountService;
    .end local v36           #batteryF:Lcom/android/server/BatteryService;
    .end local v37           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v38           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v39           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v41           #dockF:Lcom/android/server/DockObserver;
    .end local v42           #usbF:Lcom/android/server/usb/UsbService;
    .end local v43           #twilightF:Lcom/android/server/TwilightService;
    .end local v44           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v45           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v46           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v47           #safeMode:Z
    .end local v48           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v49           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v50           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v51           #locationF:Lcom/android/server/LocationManagerService;
    .end local v52           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v53           #throttleF:Lcom/android/server/ThrottleService;
    .end local v54           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v55           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v56           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v57           #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .end local v58           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v59           #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .end local v60           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v63           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v66           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v68           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v70           #config:Landroid/content/res/Configuration;
    .end local v71           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v73           #contentService:Landroid/content/ContentService;
    .end local v74           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v77           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v81           #dock:Lcom/android/server/DockObserver;
    .end local v83           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v86           #ethernet:Lcom/android/server/EthernetService;
    .end local v88           #factoryTest:I
    .end local v89           #factoryTestStr:Ljava/lang/String;
    .end local v92           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .end local v99           #location:Lcom/android/server/LocationManagerService;
    .end local v101           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v103           #metrics:Landroid/util/DisplayMetrics;
    .end local v104           #mountService:Lcom/android/server/MountService;
    .end local v108           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v110           #notification:Lcom/android/server/NotificationManagerService;
    .end local v112           #overlayview:Lcom/android/server/OverlayViewService;
    .end local v114           #pm:Landroid/content/pm/IPackageManager;
    .end local v116           #pppoe:Lcom/android/server/PppoeService;
    .end local v120           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v122           #serial:Lcom/android/server/SerialService;
    .end local v124           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v126           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v131           #throttle:Lcom/android/server/ThrottleService;
    .end local v133           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v135           #twilight:Lcom/android/server/TwilightService;
    .end local v137           #uiHandlerThread:Landroid/os/HandlerThread;
    .end local v138           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v140           #usb:Lcom/android/server/usb/UsbService;
    .end local v142           #vibrator:Lcom/android/server/VibratorService;
    .end local v144           #w:Landroid/view/WindowManager;
    .end local v145           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v147           #wifi:Lcom/android/server/WifiService;
    .end local v149           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v151           #wm:Lcom/android/server/wm/WindowManagerService;
    .end local v152           #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_f
    const/16 v119, 0x0

    goto/16 :goto_0

    .restart local v119       #reboot:Z
    :cond_10
    const/16 v118, 0x0

    .restart local v118       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .end local v118           #reason:Ljava/lang/String;
    .end local v119           #reboot:Z
    .restart local v89       #factoryTestStr:Ljava/lang/String;
    :cond_11
    invoke-static/range {v89 .. v89}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v88

    goto/16 :goto_2

    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    .restart local v5       #context:Landroid/content/Context;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v20       #uiHandler:Landroid/os/Handler;
    .restart local v21       #wmHandler:Landroid/os/Handler;
    .restart local v24       #onlyCore:Z
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v30       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v33       #headless:Z
    .restart local v60       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v66       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v68       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v71       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v73       #contentService:Landroid/content/ContentService;
    .restart local v76       #cryptState:Ljava/lang/String;
    .restart local v81       #dock:Lcom/android/server/DockObserver;
    .restart local v86       #ethernet:Lcom/android/server/EthernetService;
    .restart local v88       #factoryTest:I
    .restart local v94       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #lights:Lcom/android/server/LightsService;
    .restart local v104       #mountService:Lcom/android/server/MountService;
    .restart local v106       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v108       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v112       #overlayview:Lcom/android/server/OverlayViewService;
    .restart local v114       #pm:Landroid/content/pm/IPackageManager;
    .restart local v116       #pppoe:Lcom/android/server/PppoeService;
    .restart local v120       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v122       #serial:Lcom/android/server/SerialService;
    .restart local v124       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v131       #throttle:Lcom/android/server/ThrottleService;
    .restart local v135       #twilight:Lcom/android/server/TwilightService;
    .restart local v137       #uiHandlerThread:Landroid/os/HandlerThread;
    .restart local v138       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v140       #usb:Lcom/android/server/usb/UsbService;
    .restart local v142       #vibrator:Lcom/android/server/VibratorService;
    .restart local v147       #wifi:Lcom/android/server/WifiService;
    .restart local v149       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v151       #wm:Lcom/android/server/wm/WindowManagerService;
    .restart local v152       #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_12
    :try_start_60
    const-string v7, "1"

    move-object/from16 v0, v76

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    goto/16 :goto_3

    :cond_13
    const/4 v7, 0x0

    goto/16 :goto_4

    .restart local v90       #firstBoot:Z
    :catch_0
    move-exception v85

    .local v85, e:Ljava/lang/Throwable;
    :goto_45
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v85

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_60
    .catch Ljava/lang/RuntimeException; {:try_start_60 .. :try_end_60} :catch_1

    goto/16 :goto_6

    .end local v76           #cryptState:Ljava/lang/String;
    .end local v85           #e:Ljava/lang/Throwable;
    .end local v90           #firstBoot:Z
    :catch_1
    move-exception v85

    move-object/from16 v129, v130

    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v94

    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v62

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v65

    .end local v65           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v98

    .end local v98           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v95, v96

    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .local v85, e:Ljava/lang/RuntimeException;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    :goto_46
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v85

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v85           #e:Ljava/lang/RuntimeException;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v76       #cryptState:Ljava/lang/String;
    .restart local v90       #firstBoot:Z
    .restart local v94       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #lights:Lcom/android/server/LightsService;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :cond_14
    const/4 v7, 0x0

    goto/16 :goto_7

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v65           #battery:Lcom/android/server/BatteryService;
    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v98           #lights:Lcom/android/server/LightsService;
    .end local v112           #overlayview:Lcom/android/server/OverlayViewService;
    .end local v142           #vibrator:Lcom/android/server/VibratorService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v97       #keyServices:Lcom/android/server/SystemKeyServices;
    .restart local v113       #overlayview:Lcom/android/server/OverlayViewService;
    .restart local v128       #systemWrite:Lcom/android/server/SystemWriteService;
    .restart local v143       #vibrator:Lcom/android/server/VibratorService;
    :cond_15
    const/16 v22, 0x0

    goto/16 :goto_8

    :cond_16
    const/16 v23, 0x0

    goto/16 :goto_9

    .restart local v80       #dm:Lletv/desktop/DesktopManagerService;
    .restart local v91       #hasBluetooth:Z
    :cond_17
    const/4 v7, 0x1

    move/from16 v0, v88

    if-ne v0, v7, :cond_18

    :try_start_61
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .end local v80           #dm:Lletv/desktop/DesktopManagerService;
    .end local v91           #hasBluetooth:Z
    :catch_2
    move-exception v85

    move-object/from16 v112, v113

    .end local v113           #overlayview:Lcom/android/server/OverlayViewService;
    .restart local v112       #overlayview:Lcom/android/server/OverlayViewService;
    move-object/from16 v129, v130

    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v142, v143

    .end local v143           #vibrator:Lcom/android/server/VibratorService;
    .restart local v142       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v95, v96

    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    goto :goto_46

    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .end local v112           #overlayview:Lcom/android/server/OverlayViewService;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v142           #vibrator:Lcom/android/server/VibratorService;
    .restart local v80       #dm:Lletv/desktop/DesktopManagerService;
    .restart local v91       #hasBluetooth:Z
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v113       #overlayview:Lcom/android/server/OverlayViewService;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v143       #vibrator:Lcom/android/server/VibratorService;
    :cond_18
    if-nez v91, :cond_19

    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (no bluetooth feature)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_19
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v67, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v67

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_61
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_61} :catch_2

    .end local v66           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .local v67, bluetooth:Lcom/android/server/BluetoothManagerService;
    :try_start_62
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v67

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_62
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_62} :catch_5c

    move-object/from16 v66, v67

    .end local v67           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v66       #bluetooth:Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_b

    .end local v76           #cryptState:Ljava/lang/String;
    .end local v80           #dm:Lletv/desktop/DesktopManagerService;
    .end local v90           #firstBoot:Z
    .end local v91           #hasBluetooth:Z
    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .end local v97           #keyServices:Lcom/android/server/SystemKeyServices;
    .end local v113           #overlayview:Lcom/android/server/OverlayViewService;
    .end local v128           #systemWrite:Lcom/android/server/SystemWriteService;
    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v143           #vibrator:Lcom/android/server/VibratorService;
    .restart local v63       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v74       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v77       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v83       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v92       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    .restart local v99       #location:Lcom/android/server/LocationManagerService;
    .restart local v101       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v110       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v112       #overlayview:Lcom/android/server/OverlayViewService;
    .restart local v126       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v133       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v142       #vibrator:Lcom/android/server/VibratorService;
    .restart local v145       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3
    move-exception v85

    .local v85, e:Ljava/lang/Throwable;
    :goto_47
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_48
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_49
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_4a
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_4b
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_4c
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_4d
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v85

    move-object/from16 v25, v106

    .end local v106           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_4e
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_4f
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v7, "starting ETHERNET Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v7, "starting PPPOE Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v7, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_59
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_5a
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v85

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v85

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_5b
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_5c
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_30
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_5d
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .end local v85           #e:Ljava/lang/Throwable;
    .restart local v47       #safeMode:Z
    :cond_1a
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_3c

    :catch_31
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_33
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_34
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_35
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .end local v85           #e:Ljava/lang/Throwable;
    .restart local v70       #config:Landroid/content/res/Configuration;
    .restart local v103       #metrics:Landroid/util/DisplayMetrics;
    .restart local v144       #w:Landroid/view/WindowManager;
    :catch_36
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_37
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .end local v85           #e:Ljava/lang/Throwable;
    :catch_38
    move-exception v85

    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v47           #safeMode:Z
    .end local v63           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v70           #config:Landroid/content/res/Configuration;
    .end local v74           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v77           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v83           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v85           #e:Ljava/lang/Throwable;
    .end local v92           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .end local v99           #location:Lcom/android/server/LocationManagerService;
    .end local v101           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v103           #metrics:Landroid/util/DisplayMetrics;
    .end local v110           #notification:Lcom/android/server/NotificationManagerService;
    .end local v126           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v133           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v144           #w:Landroid/view/WindowManager;
    .end local v145           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v76       #cryptState:Ljava/lang/String;
    .restart local v90       #firstBoot:Z
    .restart local v94       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #lights:Lcom/android/server/LightsService;
    .restart local v106       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_39
    move-exception v7

    goto/16 :goto_5

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v65           #battery:Lcom/android/server/BatteryService;
    .end local v76           #cryptState:Ljava/lang/String;
    .end local v90           #firstBoot:Z
    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .end local v98           #lights:Lcom/android/server/LightsService;
    .end local v106           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v63       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v74       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v77       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v84       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v92       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    .restart local v99       #location:Lcom/android/server/LocationManagerService;
    .restart local v101       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v110       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v126       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v133       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v145       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3a
    move-exception v85

    move-object/from16 v83, v84

    .end local v84           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v83       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    goto :goto_5d

    .end local v68           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v69       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_3b
    move-exception v85

    move-object/from16 v68, v69

    .end local v69           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v68       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_5c

    .end local v63           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v64       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_3c
    move-exception v85

    move-object/from16 v63, v64

    .end local v64           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v63       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_5b

    .end local v122           #serial:Lcom/android/server/SerialService;
    .restart local v123       #serial:Lcom/android/server/SerialService;
    :catch_3d
    move-exception v85

    move-object/from16 v122, v123

    .end local v123           #serial:Lcom/android/server/SerialService;
    .restart local v122       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_5a

    .end local v140           #usb:Lcom/android/server/usb/UsbService;
    .restart local v141       #usb:Lcom/android/server/usb/UsbService;
    :catch_3e
    move-exception v85

    move-object/from16 v140, v141

    .end local v141           #usb:Lcom/android/server/usb/UsbService;
    .restart local v140       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_59

    .end local v145           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v146       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3f
    move-exception v85

    move-object/from16 v145, v146

    .end local v146           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v145       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_58

    .end local v74           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v75       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_40
    move-exception v85

    move-object/from16 v74, v75

    .end local v75           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v74       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_57

    .end local v99           #location:Lcom/android/server/LocationManagerService;
    .restart local v100       #location:Lcom/android/server/LocationManagerService;
    :catch_41
    move-exception v85

    move-object/from16 v99, v100

    .end local v100           #location:Lcom/android/server/LocationManagerService;
    .restart local v99       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_56

    .end local v110           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v111       #notification:Lcom/android/server/NotificationManagerService;
    :catch_42
    move-exception v85

    move-object/from16 v110, v111

    .end local v111           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v110       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_55

    .end local v131           #throttle:Lcom/android/server/ThrottleService;
    .restart local v132       #throttle:Lcom/android/server/ThrottleService;
    :catch_43
    move-exception v85

    move-object/from16 v131, v132

    .end local v132           #throttle:Lcom/android/server/ThrottleService;
    .restart local v131       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_54

    .end local v71           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v72       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_44
    move-exception v85

    move-object/from16 v71, v72

    .end local v72           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v71       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_53

    .end local v116           #pppoe:Lcom/android/server/PppoeService;
    .restart local v117       #pppoe:Lcom/android/server/PppoeService;
    :catch_45
    move-exception v85

    move-object/from16 v116, v117

    .end local v117           #pppoe:Lcom/android/server/PppoeService;
    .restart local v116       #pppoe:Lcom/android/server/PppoeService;
    goto/16 :goto_52

    .end local v86           #ethernet:Lcom/android/server/EthernetService;
    .restart local v87       #ethernet:Lcom/android/server/EthernetService;
    :catch_46
    move-exception v85

    move-object/from16 v86, v87

    .end local v87           #ethernet:Lcom/android/server/EthernetService;
    .restart local v86       #ethernet:Lcom/android/server/EthernetService;
    goto/16 :goto_51

    .end local v147           #wifi:Lcom/android/server/WifiService;
    .restart local v148       #wifi:Lcom/android/server/WifiService;
    :catch_47
    move-exception v85

    move-object/from16 v147, v148

    .end local v148           #wifi:Lcom/android/server/WifiService;
    .restart local v147       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_50

    .end local v149           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v150       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_48
    move-exception v85

    move-object/from16 v149, v150

    .end local v150           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v149       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_4f

    :catch_49
    move-exception v85

    goto/16 :goto_4e

    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v106       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v107       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_4a
    move-exception v85

    move-object/from16 v29, v107

    .end local v107           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_4d

    .end local v133           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v134       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_4b
    move-exception v85

    move-object/from16 v133, v134

    .end local v134           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v133       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_4c

    .end local v126           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v127       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_4c
    move-exception v85

    move-object/from16 v126, v127

    .end local v127           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v126       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_4b

    .end local v77           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v78       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_4d
    move-exception v85

    move-object/from16 v77, v78

    .end local v78           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v77       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_4a

    .end local v101           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v102       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_4e
    move-exception v85

    move-object/from16 v101, v102

    .end local v102           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v101       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_49

    .end local v104           #mountService:Lcom/android/server/MountService;
    .restart local v105       #mountService:Lcom/android/server/MountService;
    :catch_4f
    move-exception v85

    move-object/from16 v104, v105

    .end local v105           #mountService:Lcom/android/server/MountService;
    .restart local v104       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_48

    :catch_50
    move-exception v7

    goto/16 :goto_11

    .end local v92           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v93       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_51
    move-exception v85

    move-object/from16 v92, v93

    .end local v93           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v92       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_47

    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v63           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v74           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v77           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v83           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v92           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v99           #location:Lcom/android/server/LocationManagerService;
    .end local v101           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v110           #notification:Lcom/android/server/NotificationManagerService;
    .end local v126           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v133           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v145           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v79       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v94       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v98       #lights:Lcom/android/server/LightsService;
    .restart local v115       #power:Lcom/android/server/power/PowerManagerService;
    :catch_52
    move-exception v85

    move-object/from16 v19, v94

    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v62

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v65

    .end local v65           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v79

    .end local v79           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v115

    .end local v115           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v98

    .end local v98           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_46

    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v79       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v94       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #lights:Lcom/android/server/LightsService;
    .restart local v115       #power:Lcom/android/server/power/PowerManagerService;
    :catch_53
    move-exception v85

    move-object/from16 v19, v94

    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v62

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v65

    .end local v65           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v79

    .end local v79           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v115

    .end local v115           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v98

    .end local v98           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v95, v96

    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_46

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v79       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v94       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #lights:Lcom/android/server/LightsService;
    :catch_54
    move-exception v85

    move-object/from16 v19, v94

    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v62

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v65

    .end local v65           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v79

    .end local v79           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v98

    .end local v98           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v95, v96

    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_46

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v94       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #lights:Lcom/android/server/LightsService;
    :catch_55
    move-exception v85

    move-object/from16 v19, v94

    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v62

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v65

    .end local v65           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v98

    .end local v98           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v95, v96

    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_46

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v60           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v61       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v76       #cryptState:Ljava/lang/String;
    .restart local v90       #firstBoot:Z
    .restart local v94       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #lights:Lcom/android/server/LightsService;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_56
    move-exception v85

    move-object/from16 v129, v130

    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v94

    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v62

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v65

    .end local v65           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v98

    .end local v98           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v60, v61

    .end local v61           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v60       #accountManager:Landroid/accounts/AccountManagerService;
    move-object/from16 v95, v96

    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_46

    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v94       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_57
    move-exception v85

    move-object/from16 v129, v130

    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v94

    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v62

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v65

    .end local v65           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v95, v96

    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_46

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v94       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_58
    move-exception v85

    move-object/from16 v129, v130

    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v94

    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v62

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v95, v96

    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_46

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v142           #vibrator:Lcom/android/server/VibratorService;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v94       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v143       #vibrator:Lcom/android/server/VibratorService;
    :catch_59
    move-exception v85

    move-object/from16 v129, v130

    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v94

    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v62

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v142, v143

    .end local v143           #vibrator:Lcom/android/server/VibratorService;
    .restart local v142       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v95, v96

    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_46

    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v142           #vibrator:Lcom/android/server/VibratorService;
    .restart local v94       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v143       #vibrator:Lcom/android/server/VibratorService;
    :catch_5a
    move-exception v85

    move-object/from16 v129, v130

    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v94

    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v142, v143

    .end local v143           #vibrator:Lcom/android/server/VibratorService;
    .restart local v142       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v95, v96

    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_46

    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .end local v112           #overlayview:Lcom/android/server/OverlayViewService;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v142           #vibrator:Lcom/android/server/VibratorService;
    .restart local v94       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v113       #overlayview:Lcom/android/server/OverlayViewService;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v143       #vibrator:Lcom/android/server/VibratorService;
    :catch_5b
    move-exception v85

    move-object/from16 v112, v113

    .end local v113           #overlayview:Lcom/android/server/OverlayViewService;
    .restart local v112       #overlayview:Lcom/android/server/OverlayViewService;
    move-object/from16 v129, v130

    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v94

    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v142, v143

    .end local v143           #vibrator:Lcom/android/server/VibratorService;
    .restart local v142       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v95, v96

    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_46

    .end local v66           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .end local v112           #overlayview:Lcom/android/server/OverlayViewService;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v142           #vibrator:Lcom/android/server/VibratorService;
    .restart local v67       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v80       #dm:Lletv/desktop/DesktopManagerService;
    .restart local v91       #hasBluetooth:Z
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v97       #keyServices:Lcom/android/server/SystemKeyServices;
    .restart local v113       #overlayview:Lcom/android/server/OverlayViewService;
    .restart local v128       #systemWrite:Lcom/android/server/SystemWriteService;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v143       #vibrator:Lcom/android/server/VibratorService;
    :catch_5c
    move-exception v85

    move-object/from16 v112, v113

    .end local v113           #overlayview:Lcom/android/server/OverlayViewService;
    .restart local v112       #overlayview:Lcom/android/server/OverlayViewService;
    move-object/from16 v129, v130

    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v66, v67

    .end local v67           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v66       #bluetooth:Lcom/android/server/BluetoothManagerService;
    move-object/from16 v142, v143

    .end local v143           #vibrator:Lcom/android/server/VibratorService;
    .restart local v142       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v95, v96

    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_46

    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .end local v112           #overlayview:Lcom/android/server/OverlayViewService;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v142           #vibrator:Lcom/android/server/VibratorService;
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v113       #overlayview:Lcom/android/server/OverlayViewService;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v143       #vibrator:Lcom/android/server/VibratorService;
    :catch_5d
    move-exception v7

    goto/16 :goto_a

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v60           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v80           #dm:Lletv/desktop/DesktopManagerService;
    .end local v91           #hasBluetooth:Z
    .end local v97           #keyServices:Lcom/android/server/SystemKeyServices;
    .end local v113           #overlayview:Lcom/android/server/OverlayViewService;
    .end local v128           #systemWrite:Lcom/android/server/SystemWriteService;
    .end local v143           #vibrator:Lcom/android/server/VibratorService;
    .restart local v61       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v94       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v98       #lights:Lcom/android/server/LightsService;
    .restart local v112       #overlayview:Lcom/android/server/OverlayViewService;
    .restart local v142       #vibrator:Lcom/android/server/VibratorService;
    :catch_5e
    move-exception v85

    move-object/from16 v60, v61

    .end local v61           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v60       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_45

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v65           #battery:Lcom/android/server/BatteryService;
    .end local v76           #cryptState:Ljava/lang/String;
    .end local v90           #firstBoot:Z
    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .end local v98           #lights:Lcom/android/server/LightsService;
    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v63       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v74       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v77       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v83       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v92       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    .restart local v99       #location:Lcom/android/server/LocationManagerService;
    .restart local v101       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v110       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v126       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v133       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v145       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_1b
    move-object/from16 v25, v106

    .end local v106           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_3b
.end method
