.class public Landroid/net/pppoe/PppoeManager;
.super Ljava/lang/Object;
.source "PppoeManager.java"


# static fields
.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_PPPOE_ERRCODE:Ljava/lang/String; = "pppoe_errcode"

.field public static final EXTRA_PPPOE_STATE:Ljava/lang/String; = "pppoe_state"

.field public static final EXTRA_PREVIOUS_PPPOE_STATE:Ljava/lang/String; = "previous_pppoe_state"

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.pppoe.STATE_CHANGE"

.field public static final PPPOE_DEVICE_SCAN_RESULT_READY:I = 0x0

.field public static final PPPOE_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.pppoe.PPPOE_STATE_CHANGED"

.field public static final PPPOE_STATE_DISABLED:I = 0x1

.field public static final PPPOE_STATE_ENABLED:I = 0x2

.field public static final PPPOE_STATE_UNKNOWN:I = 0x0

.field public static final PROP_VAL_PPP_NOERR:Ljava/lang/String; = "0:0"

.field public static final TAG:Ljava/lang/String; = "PppoeManager"


# instance fields
.field mHandler:Landroid/os/Handler;

.field mService:Landroid/net/pppoe/IPppoeManager;


# direct methods
.method public constructor <init>(Landroid/net/pppoe/IPppoeManager;Landroid/os/Handler;)V
    .locals 2
    .parameter "service"
    .parameter "handler"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PppoeManager"

    const-string v1, "Init Pppoe Manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/net/pppoe/PppoeManager;->mService:Landroid/net/pppoe/IPppoeManager;

    iput-object p2, p0, Landroid/net/pppoe/PppoeManager;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public UpdatePppoeDevInfo(Landroid/net/pppoe/PppoeDevInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/pppoe/PppoeManager;->mService:Landroid/net/pppoe/IPppoeManager;

    invoke-interface {v1, p1}, Landroid/net/pppoe/IPppoeManager;->UpdatePppoeDevInfo(Landroid/net/pppoe/PppoeDevInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PppoeManager"

    const-string v2, "Can not update pppoe device info"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDeviceNameList()[Ljava/lang/String;
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/pppoe/PppoeManager;->mService:Landroid/net/pppoe/IPppoeManager;

    invoke-interface {v1}, Landroid/net/pppoe/IPppoeManager;->getDeviceNameList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/pppoe/PppoeManager;->mService:Landroid/net/pppoe/IPppoeManager;

    invoke-interface {v1}, Landroid/net/pppoe/IPppoeManager;->getDhcpInfo()Landroid/net/DhcpInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPppoeState()I
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/pppoe/PppoeManager;->mService:Landroid/net/pppoe/IPppoeManager;

    invoke-interface {v1}, Landroid/net/pppoe/IPppoeManager;->getPppoeState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSavedPppoeConfig()Landroid/net/pppoe/PppoeDevInfo;
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/pppoe/PppoeManager;->mService:Landroid/net/pppoe/IPppoeManager;

    invoke-interface {v1}, Landroid/net/pppoe/IPppoeManager;->getSavedPppoeConfig()Landroid/net/pppoe/PppoeDevInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PppoeManager"

    const-string v2, "Can not get pppoe config"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTotalInterface()I
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/pppoe/PppoeManager;->mService:Landroid/net/pppoe/IPppoeManager;

    invoke-interface {v1}, Landroid/net/pppoe/IPppoeManager;->getTotalInterface()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPppoeConfigured()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/pppoe/PppoeManager;->mService:Landroid/net/pppoe/IPppoeManager;

    invoke-interface {v1}, Landroid/net/pppoe/IPppoeManager;->isPppoeConfigured()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PppoeManager"

    const-string v2, "Can not check pppoe config state"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPppoeDeviceUp()Z
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/pppoe/PppoeManager;->mService:Landroid/net/pppoe/IPppoeManager;

    invoke-interface {v1}, Landroid/net/pppoe/IPppoeManager;->isPppoeDeviceUp()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pppoeConfigured()Z
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/pppoe/PppoeManager;->mService:Landroid/net/pppoe/IPppoeManager;

    invoke-interface {v1}, Landroid/net/pppoe/IPppoeManager;->isPppoeConfigured()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pppoeSetDefaultConf()V
    .locals 2

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/net/pppoe/PppoeManager;->mService:Landroid/net/pppoe/IPppoeManager;

    const-string v1, "dhcp"

    invoke-interface {v0, v1}, Landroid/net/pppoe/IPppoeManager;->setPppoeMode(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPppoeEnabled(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    :try_start_0
    iget-object v2, p0, Landroid/net/pppoe/PppoeManager;->mService:Landroid/net/pppoe/IPppoeManager;

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    :goto_0
    invoke-interface {v2, v1}, Landroid/net/pppoe/IPppoeManager;->setPppoeState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PppoeManager"

    const-string v2, "Can not set new state"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
