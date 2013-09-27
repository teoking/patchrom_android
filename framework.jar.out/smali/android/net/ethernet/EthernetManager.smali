.class public Landroid/net/ethernet/EthernetManager;
.super Ljava/lang/Object;
.source "EthernetManager.java"


# static fields
.field public static final ETHERNET_CONNECT_MODE_DHCP:Ljava/lang/String; = "dhcp"

.field public static final ETHERNET_CONNECT_MODE_MANUAL:Ljava/lang/String; = "manual"

.field public static final ETHERNET_DEVICE_SCAN_RESULT_READY:I = 0x0

.field public static final ETHERNET_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.ethernet.ETHERNET_STATE_CHANGE"

.field public static final ETHERNET_STATE_DISABLED:I = 0x0

.field public static final ETHERNET_STATE_ENABLED:I = 0x1

.field public static final ETHERNET_STATE_UNKNOWN:I = 0x2

.field public static final EVENT_DHCP_CONNECT_FAILED:I = 0x1

.field public static final EVENT_DHCP_CONNECT_SUCCESSED:I = 0x0

.field public static final EVENT_DHCP_DISCONNECT_FAILED:I = 0x3

.field public static final EVENT_DHCP_DISCONNECT_SUCCESSED:I = 0x2

.field public static final EVENT_STATIC_CONNECT_FAILED:I = 0x5

.field public static final EVENT_STATIC_CONNECT_SUCCESSED:I = 0x4

.field public static final EVENT_STATIC_DISCONNECT_SUCCESSED:I = 0x6

.field public static final EXTRA_ETHERNET_STATE:Ljava/lang/String; = "ethernet_state"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_PREVIOUS_ETHERNET_STATE:Ljava/lang/String; = "previous_ethernet_state"

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.ethernet.STATE_CHANGE"

.field public static final TAG:Ljava/lang/String; = "EthernetManager"

.field public static final WIFI_DISGUISE_DISABLED:I = 0x0

.field public static final WIFI_DISGUISE_ENABLED:I = 0x1

.field public static final WIFI_DISGUISE_STATE_UNKNOWN:I = 0x2


# instance fields
.field private DEBUG:Z

.field mHandler:Landroid/os/Handler;

.field mService:Landroid/net/ethernet/IEthernetManager;


# direct methods
.method public constructor <init>(Landroid/net/ethernet/IEthernetManager;Landroid/os/Handler;)V
    .locals 2
    .parameter "service"
    .parameter "handler"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/ethernet/EthernetManager;->DEBUG:Z

    iget-boolean v0, p0, Landroid/net/ethernet/EthernetManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EthernetManager"

    const-string v1, "Init EthernetManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    iput-object p2, p0, Landroid/net/ethernet/EthernetManager;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public enableEthernet(Z)V
    .locals 4
    .parameter "setEnable"

    .prologue
    :try_start_0
    iget-boolean v1, p0, Landroid/net/ethernet/EthernetManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EthernetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableEthernet(boolean setEnable) setEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1, p1}, Landroid/net/ethernet/IEthernetManager;->enableEthernet(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableEthernet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "! ERROR!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDatabaseInterfaceName()Ljava/lang/String;
    .locals 3

    .prologue
    :try_start_0
    iget-boolean v1, p0, Landroid/net/ethernet/EthernetManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EthernetManager"

    const-string v2, "getDatabaseInterfaceName()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->getDatabaseInterfaceName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "getDatabaseInterfaceName() read Database ERROR!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceNameList()[Ljava/lang/String;
    .locals 3

    .prologue
    :try_start_0
    iget-boolean v1, p0, Landroid/net/ethernet/EthernetManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EthernetManager"

    const-string v2, "getDeviceNameList() ok"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->getDeviceNameList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "getDeviceNameList() ERROR!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEthernetMode()Ljava/lang/String;
    .locals 4

    .prologue
    :try_start_0
    iget-boolean v1, p0, Landroid/net/ethernet/EthernetManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EthernetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEthernetMode() Mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v3}, Landroid/net/ethernet/IEthernetManager;->getEthernetMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->getEthernetMode()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "Can not get Ethernet Mode! ERROR!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEthernetState()I
    .locals 4

    .prologue
    :try_start_0
    iget-boolean v1, p0, Landroid/net/ethernet/EthernetManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EthernetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEthernetState(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v3}, Landroid/net/ethernet/IEthernetManager;->getEthernetState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->getEthernetState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "getEthernetState() ERROR!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getSavedEthernetIpInfo()Landroid/net/DhcpInfo;
    .locals 3

    .prologue
    :try_start_0
    iget-boolean v1, p0, Landroid/net/ethernet/EthernetManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EthernetManager"

    const-string v2, "getSavedEthernetIpInfo()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->getSavedEthernetIpInfo()Landroid/net/DhcpInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "Can not get Ethernet getSavedEthernetIpInfo! ERROR!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTotalInterface()I
    .locals 4

    .prologue
    :try_start_0
    iget-boolean v1, p0, Landroid/net/ethernet/EthernetManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EthernetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTotalInterface(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v3}, Landroid/net/ethernet/IEthernetManager;->getTotalInterface()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->getTotalInterface()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "getTotalInterface() ERROR!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEthernetConfigured()Z
    .locals 4

    .prologue
    :try_start_0
    iget-boolean v1, p0, Landroid/net/ethernet/EthernetManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EthernetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEthernetConfigured():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v3}, Landroid/net/ethernet/IEthernetManager;->isEthernetConfigured()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->isEthernetConfigured()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "Can not check Ethernet config state! ERROR!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveEthernetIpInfo(Landroid/net/DhcpInfo;Ljava/lang/String;)V
    .locals 4
    .parameter "dhcpInfo"
    .parameter "mode"

    .prologue
    :try_start_0
    iget-boolean v1, p0, Landroid/net/ethernet/EthernetManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EthernetManager"

    const-string v2, "saveEthernetIpInfo(DhcpInfo dhcpInfo, String mode)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Landroid/net/ethernet/EthernetManager;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "EthernetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DhcpInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/DhcpInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v1, p0, Landroid/net/ethernet/EthernetManager;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "EthernetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1, p1, p2}, Landroid/net/ethernet/IEthernetManager;->saveEthernetIpInfo(Landroid/net/DhcpInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "Can not update Ethernet IP info! ERROR!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEthernetDefaultConf()V
    .locals 3

    .prologue
    :try_start_0
    iget-boolean v1, p0, Landroid/net/ethernet/EthernetManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EthernetManager"

    const-string v2, "setEthernetDefaultConf() DHCP"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    const-string v2, "dhcp"

    invoke-interface {v1, v2}, Landroid/net/ethernet/IEthernetManager;->setEthernetMode(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "setEthernetDefaultConf() ERROR!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEthernetEnabled(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    iget-boolean v1, p0, Landroid/net/ethernet/EthernetManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EthernetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEthernetEnabled(boolean enable) enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v2, v1}, Landroid/net/ethernet/IEthernetManager;->setEthernetState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not set new state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "! ERROR!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setInterfaceName(Ljava/lang/String;)Z
    .locals 4
    .parameter "iface"

    .prologue
    :try_start_0
    iget-boolean v1, p0, Landroid/net/ethernet/EthernetManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EthernetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInterfaceName(String iface), iface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1, p1}, Landroid/net/ethernet/IEthernetManager;->setInterfaceName(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInterfaceName(String iface) ERROR! iface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method
