.class public Lcom/android/server/EthernetService;
.super Landroid/net/ethernet/IEthernetManager$Stub;
.source "EthernetService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EthernetService"


# instance fields
.field private DEBUG:Z

.field private isEthernetEnabled:I

.field private mContext:Landroid/content/Context;

.field private mEthernetState:I

.field private mIface:Ljava/lang/String;

.field private mTracker:Landroid/net/EthernetDataTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/net/ethernet/IEthernetManager$Stub;-><init>()V

    iput-boolean v2, p0, Lcom/android/server/EthernetService;->DEBUG:Z

    const-string v0, "EthernetService"

    const-string v1, "instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/EthernetService;->checkDB()V

    invoke-virtual {p0}, Lcom/android/server/EthernetService;->getDatabaseInterfaceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/EthernetService;->mIface:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/EthernetService;->mEthernetState:I

    invoke-direct {p0}, Lcom/android/server/EthernetService;->getEthernetPersistedState()I

    move-result v0

    iput v0, p0, Lcom/android/server/EthernetService;->isEthernetEnabled:I

    iget v0, p0, Lcom/android/server/EthernetService;->isEthernetEnabled:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/EthernetService;->mIface:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->enableInterface(Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private checkDB()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const-string v1, "EthernetService"

    const-string v2, "checkDB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/EthernetService;->isEthernetConfigured()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "ethernet_conf"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "ethernet_ifname"

    const-string v2, "eth0"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "ethernet_ip"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "ethernet_mode"

    const-string v2, "dhcp"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "ethernet_dns1"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "ethernet_dns2"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "ethernet_iproute"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "ethernet_prefixlength"

    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/EthernetService;->setWifiDisguise(Z)V

    invoke-direct {p0, v3}, Lcom/android/server/EthernetService;->persistEthernetEnabled(Z)V

    goto :goto_0
.end method

.method private getEthernetPersistedState()I
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/EthernetService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "EthernetService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPersistedState() ETHERNET_ON:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ethernet_on"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "ethernet_on"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    iget-boolean v2, p0, Lcom/android/server/EthernetService;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "EthernetService"

    const-string v3, "getPersistedState() ETHERNET_STATE_UNKNOWN"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x2

    goto :goto_0
.end method

.method private intToAddrStr(I)Ljava/lang/String;
    .locals 2
    .parameter "addr"

    .prologue
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/AssertionError;
    const-string v1, ""

    goto :goto_0
.end method

.method private declared-synchronized persistEthernetEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/EthernetService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EthernetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persistEthernetEnabled(boolean enabled) enabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "ethernet_on"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #cr:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private registerEthernetObserver()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/EthernetDataTracker;

    invoke-virtual {v0}, Landroid/net/EthernetDataTracker;->registerEthernetObserver()V

    return-void
.end method

.method private unregisterEthernetObserver()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/EthernetDataTracker;

    invoke-virtual {v0}, Landroid/net/EthernetDataTracker;->unregisterEthernetObserver()V

    return-void
.end method


# virtual methods
.method public checkAndStartEthernet()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/net/EthernetDataTracker;->getInstance()Landroid/net/EthernetDataTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/EthernetDataTracker;

    iget v0, p0, Lcom/android/server/EthernetService;->isEthernetEnabled:I

    invoke-virtual {p0, v0}, Lcom/android/server/EthernetService;->setEthernetState(I)V

    iget v0, p0, Lcom/android/server/EthernetService;->isEthernetEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/EthernetService;->registerEthernetObserver()V

    :cond_0
    return-void
.end method

.method public enableEthernet(Z)V
    .locals 2
    .parameter "setEnable"

    .prologue
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/EthernetService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EthernetService"

    const-string v1, "enableEthernet(boolean setEnable) TurnOn Ethernet!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/EthernetService;->mIface:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->enableInterface(Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/EthernetService;->setEthernetState(I)V

    invoke-direct {p0}, Lcom/android/server/EthernetService;->registerEthernetObserver()V

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/EthernetService;->persistEthernetEnabled(Z)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/EthernetService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "EthernetService"

    const-string v1, "enableEthernet(boolean setEnable) TurnOff Ethernet!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/android/server/EthernetService;->unregisterEthernetObserver()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/EthernetService;->setEthernetState(I)V

    iget-object v0, p0, Lcom/android/server/EthernetService;->mIface:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDatabaseInterfaceName()Ljava/lang/String;
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/EthernetService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "EthernetService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDatabaseInterfaceName() InterfaceName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ethernet_ifname"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "ethernet_ifname"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v2, "EthernetService"

    const-string v3, "getDatabaseInterfaceName() read Database ERROR!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDeviceNameList()[Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/EthernetDataTracker;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/EthernetService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EthernetService"

    const-string v1, "getDeviceNameList() ok"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/EthernetDataTracker;

    invoke-virtual {v0}, Landroid/net/EthernetDataTracker;->getEthernetInterfaceNameList()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "EthernetService"

    const-string v1, "getDeviceNameList() error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEthernetMode()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "ethernet_mode"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getEthernetState()I
    .locals 3

    .prologue
    const-string v0, "EthernetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get EthernetState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/EthernetService;->mEthernetState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/EthernetService;->mEthernetState:I

    return v0
.end method

.method public declared-synchronized getSavedEthernetIpInfo()Landroid/net/DhcpInfo;
    .locals 11

    .prologue
    const/4 v8, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/EthernetService;->isEthernetConfigured()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .local v6, ipAddress:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, dns1:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, dns2:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, prefixLength:I
    const/4 v5, 0x0

    .local v5, iRoute:Ljava/net/InetAddress;
    :try_start_1
    const-string v9, "ethernet_ip"

    invoke-static {v0, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "ethernet_dns1"

    invoke-static {v0, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "ethernet_dns2"

    invoke-static {v0, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "ethernet_prefixlength"

    invoke-static {v0, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    const-string v9, "ethernet_iproute"

    invoke-static {v0, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    :try_start_2
    new-instance v1, Landroid/net/DhcpInfoInternal;

    invoke-direct {v1}, Landroid/net/DhcpInfoInternal;-><init>()V

    .local v1, dhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    iput-object v6, v1, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    new-instance v8, Landroid/net/RouteInfo;

    invoke-direct {v8, v5}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {v1, v8}, Landroid/net/DhcpInfoInternal;->addRoute(Landroid/net/RouteInfo;)V

    iput v7, v1, Landroid/net/DhcpInfoInternal;->prefixLength:I

    iput-object v2, v1, Landroid/net/DhcpInfoInternal;->dns1:Ljava/lang/String;

    iput-object v3, v1, Landroid/net/DhcpInfoInternal;->dns2:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/android/server/EthernetService;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "EthernetService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSavedEthernetIpInfo() DhcpInfoInternal ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/net/DhcpInfoInternal;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v1}, Landroid/net/DhcpInfoInternal;->makeDhcpInfo()Landroid/net/DhcpInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #dhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    .end local v2           #dns1:Ljava/lang/String;
    .end local v3           #dns2:Ljava/lang/String;
    .end local v5           #iRoute:Ljava/net/InetAddress;
    .end local v6           #ipAddress:Ljava/lang/String;
    .end local v7           #prefixLength:I
    :goto_0
    monitor-exit p0

    return-object v8

    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v2       #dns1:Ljava/lang/String;
    .restart local v3       #dns2:Ljava/lang/String;
    .restart local v5       #iRoute:Ljava/net/InetAddress;
    .restart local v6       #ipAddress:Ljava/lang/String;
    .restart local v7       #prefixLength:I
    :catch_0
    move-exception v4

    .local v4, e:Ljava/lang/Exception;
    :try_start_3
    const-string v9, "EthernetService"

    const-string v10, "getSavedEthernetIpInfo(): Can not read Database! ERROR!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v2           #dns1:Ljava/lang/String;
    .end local v3           #dns2:Ljava/lang/String;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #iRoute:Ljava/net/InetAddress;
    .end local v6           #ipAddress:Ljava/lang/String;
    .end local v7           #prefixLength:I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_1
    :try_start_4
    const-string v9, "EthernetService"

    const-string v10, "getSavedEthernetIpInfo() Ethernet is not configed, nothing in database!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public getTotalInterface()I
    .locals 3

    .prologue
    iget-boolean v0, p0, Lcom/android/server/EthernetService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EthernetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTotalInterface(), count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/EthernetService;->getDeviceNameList()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/EthernetService;->getDeviceNameList()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/EthernetService;->getDeviceNameList()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method

.method public getWifiDisguiseState()I
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/EthernetService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "EthernetService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiDisguiseState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "wifi_disguise"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "wifi_disguise"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    iget-boolean v2, p0, Lcom/android/server/EthernetService;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "EthernetService"

    const-string v3, "getWifiDisguiseState: STATE UNKNOWN"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public isEthernetConfigured()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const-string v4, "ethernet_conf"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .local v1, x:I
    if-ne v1, v2, :cond_1

    iget-boolean v3, p0, Lcom/android/server/EthernetService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "EthernetService"

    const-string v4, "isEthernetConfigured() return true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v2, "EthernetService"

    const-string v4, " isEthernetConfigured() return false"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0
.end method

.method public declared-synchronized saveEthernetIpInfo(Landroid/net/DhcpInfo;Ljava/lang/String;)V
    .locals 9
    .parameter "dhcpInfo"
    .parameter "mode"

    .prologue
    const/4 v8, 0x1

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget v6, p1, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-direct {p0, v6}, Lcom/android/server/EthernetService;->intToAddrStr(I)Ljava/lang/String;

    move-result-object v3

    .local v3, ipAddress:Ljava/lang/String;
    iget v6, p1, Landroid/net/DhcpInfo;->dns1:I

    invoke-direct {p0, v6}, Lcom/android/server/EthernetService;->intToAddrStr(I)Ljava/lang/String;

    move-result-object v1

    .local v1, dns1:Ljava/lang/String;
    iget v6, p1, Landroid/net/DhcpInfo;->dns2:I

    invoke-direct {p0, v6}, Lcom/android/server/EthernetService;->intToAddrStr(I)Ljava/lang/String;

    move-result-object v2

    .local v2, dns2:Ljava/lang/String;
    iget v6, p1, Landroid/net/DhcpInfo;->gateway:I

    invoke-direct {p0, v6}, Lcom/android/server/EthernetService;->intToAddrStr(I)Ljava/lang/String;

    move-result-object v5

    .local v5, route:Ljava/lang/String;
    iget v6, p1, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v6}, Landroid/net/NetworkUtils;->netmaskIntToPrefixLength(I)I

    move-result v4

    .local v4, prefixLength:I
    iget-object v6, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const-string v6, "ethernet_conf"

    const/4 v7, 0x1

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v6, "ethernet_ip"

    invoke-static {v0, v6, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v6, "ethernet_mode"

    invoke-static {v0, v6, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz p2, :cond_3

    const-string v6, "ethernet_mode"

    const-string v7, "manual"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .end local p2
    :goto_0
    invoke-static {v0, v6, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_1
    const-string v6, "ethernet_dns1"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v6, "ethernet_dns2"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v6, "ethernet_iproute"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v6, "ethernet_prefixlength"

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget v6, p0, Lcom/android/server/EthernetService;->mEthernetState:I

    if-ne v6, v8, :cond_1

    iget-boolean v6, p0, Lcom/android/server/EthernetService;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "EthernetService"

    const-string v7, "saveEthernetIpInfo() mEthernetState == EthernetManager.ETHERNET_STATE_ENABLED"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/server/EthernetService;->enableEthernet(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #dns1:Ljava/lang/String;
    .end local v2           #dns2:Ljava/lang/String;
    .end local v3           #ipAddress:Ljava/lang/String;
    .end local v4           #prefixLength:I
    .end local v5           #route:Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void

    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #dns1:Ljava/lang/String;
    .restart local v2       #dns2:Ljava/lang/String;
    .restart local v3       #ipAddress:Ljava/lang/String;
    .restart local v4       #prefixLength:I
    .restart local v5       #route:Ljava/lang/String;
    .restart local p2
    :cond_2
    :try_start_1
    const-string p2, "dhcp"

    goto :goto_0

    :cond_3
    const-string v6, "ethernet_mode"

    const-string v7, "dhcp"

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #dns1:Ljava/lang/String;
    .end local v2           #dns2:Ljava/lang/String;
    .end local v3           #ipAddress:Ljava/lang/String;
    .end local v4           #prefixLength:I
    .end local v5           #route:Ljava/lang/String;
    .end local p2
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized setEthernetMode(Ljava/lang/String;)V
    .locals 4
    .parameter "mode"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/EthernetService;->mIface:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "ethernet_ifname"

    iget-object v2, p0, Lcom/android/server/EthernetService;->mIface:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "ethernet_conf"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "ethernet_mode"

    const-string v1, "manual"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-boolean v1, p0, Lcom/android/server/EthernetService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EthernetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEthernetMode(String mode) mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v1, "dhcp"

    goto :goto_0

    :cond_2
    const-string v1, "EthernetService"

    const-string v2, "ERROR! No Interface name set, please setInterfaceName first!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0           #cr:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setEthernetState(I)V
    .locals 3
    .parameter "state"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "EthernetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEthernetState from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/EthernetService;->mEthernetState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/EthernetService;->mEthernetState:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/android/server/EthernetService;->mEthernetState:I

    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/EthernetService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EthernetService"

    const-string v1, "state == EthernetManager.ETHERNET_STATE_DISABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/EthernetDataTracker;

    invoke-virtual {v0}, Landroid/net/EthernetDataTracker;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/EthernetService;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "EthernetService"

    const-string v1, "state == EthernetManager.ETHERNET_STATE_ENABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/EthernetService;->isEthernetConfigured()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/EthernetService;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "EthernetService"

    const-string v1, "EthernetConfigured no config, USE DHCP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v0, "dhcp"

    invoke-virtual {p0, v0}, Lcom/android/server/EthernetService;->setEthernetMode(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/EthernetDataTracker;

    invoke-virtual {v0}, Landroid/net/EthernetDataTracker;->reconnect()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setInterfaceName(Ljava/lang/String;)Z
    .locals 9
    .parameter "iface"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/EthernetService;->mIface:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v6, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/EthernetDataTracker;

    invoke-virtual {v6, p1}, Landroid/net/EthernetDataTracker;->checkInterfaceName(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v4, "EthernetService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ethernet Interface Name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ERROR! Should be ethX!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .local v0, count:I
    invoke-virtual {p0}, Lcom/android/server/EthernetService;->getTotalInterface()I

    move-result v0

    if-gtz v0, :cond_3

    const-string v4, "EthernetService"

    const-string v6, "ERROR! No Ethernet Interface found!"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto :goto_0

    :cond_3
    new-array v3, v0, [Ljava/lang/String;

    .local v3, mInterfaces:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/EthernetService;->getDeviceNameList()[Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/EthernetService;->mIface:Ljava/lang/String;

    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    aget-object v6, v3, v2

    invoke-virtual {p1, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    iput-object p1, p0, Lcom/android/server/EthernetService;->mIface:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, cr:Landroid/content/ContentResolver;
    const-string v6, "ethernet_ifname"

    iget-object v7, p0, Lcom/android/server/EthernetService;->mIface:Ljava/lang/String;

    invoke-static {v1, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/EthernetDataTracker;

    invoke-virtual {v6}, Landroid/net/EthernetDataTracker;->setInterfaceFromDatabase()V

    .end local v1           #cr:Landroid/content/ContentResolver;
    :cond_4
    iget-object v6, p0, Lcom/android/server/EthernetService;->mIface:Ljava/lang/String;

    if-nez v6, :cond_7

    const-string v4, "EthernetService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ERROR! Can not found available interface:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/EthernetService;->getDatabaseInterfaceName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/EthernetService;->mIface:Ljava/lang/String;

    move v4, v5

    goto/16 :goto_0

    :cond_5
    iget-boolean v6, p0, Lcom/android/server/EthernetService;->DEBUG:Z

    if-eqz v6, :cond_6

    const-string v6, "EthernetService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "iface "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not matches "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    iget-boolean v5, p0, Lcom/android/server/EthernetService;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "EthernetService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setInterfaceName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/EthernetService;->mIface:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Success!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setWifiDisguise(Z)V
    .locals 4
    .parameter "setEnable"

    .prologue
    iget-boolean v1, p0, Lcom/android/server/EthernetService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EthernetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiDisguise: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "wifi_disguise"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
