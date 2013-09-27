.class public Lcom/android/server/PppoeService;
.super Landroid/net/pppoe/IPppoeManager$Stub;
.source "PppoeService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<syncronized:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/net/pppoe/IPppoeManager$Stub;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PppoeService"


# instance fields
.field private DevName:[Ljava/lang/String;

.field private isPppoeEnabled:I

.field private mContext:Landroid/content/Context;

.field private mPppoeState:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTracker:Landroid/net/pppoe/PppoeStateTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/pppoe/PppoeStateTracker;)V
    .locals 3
    .parameter "context"
    .parameter "Tracker"

    .prologue
    .local p0, this:Lcom/android/server/PppoeService;,"Lcom/android/server/PppoeService<Tsyncronized;>;"
    invoke-direct {p0}, Landroid/net/pppoe/IPppoeManager$Stub;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/PppoeService;->mPppoeState:I

    new-instance v0, Lcom/android/server/PppoeService$1;

    invoke-direct {v0, p0}, Lcom/android/server/PppoeService$1;-><init>(Lcom/android/server/PppoeService;)V

    iput-object v0, p0, Lcom/android/server/PppoeService;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/android/server/PppoeService;->mTracker:Landroid/net/pppoe/PppoeStateTracker;

    iput-object p1, p0, Lcom/android/server/PppoeService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/PppoeService;->getPersistedState()I

    move-result v0

    iput v0, p0, Lcom/android/server/PppoeService;->isPppoeEnabled:I

    const-string v0, "PppoeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pppoe dev enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/PppoeService;->isPppoeEnabled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/PppoeService;->getDeviceNameList()[Ljava/lang/String;

    iget v0, p0, Lcom/android/server/PppoeService;->isPppoeEnabled:I

    invoke-virtual {p0, v0}, Lcom/android/server/PppoeService;->setPppoeState(I)V

    invoke-direct {p0}, Lcom/android/server/PppoeService;->registerForBroadcasts()V

    const-string v0, "PppoeService"

    const-string v1, "Trigger the pppoe monitor"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/PppoeService;->mTracker:Landroid/net/pppoe/PppoeStateTracker;

    invoke-virtual {v0}, Landroid/net/pppoe/PppoeStateTracker;->StartPolling()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/PppoeService;)Landroid/net/pppoe/PppoeStateTracker;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/PppoeService;->mTracker:Landroid/net/pppoe/PppoeStateTracker;

    return-object v0
.end method

.method private getPersistedState()I
    .locals 3

    .prologue
    .local p0, this:Lcom/android/server/PppoeService;,"Lcom/android/server/PppoeService<Tsyncronized;>;"
    iget-object v2, p0, Lcom/android/server/PppoeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "pppoe_on"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private declared-synchronized persistPppoeEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .local p0, this:Lcom/android/server/PppoeService;,"Lcom/android/server/PppoeService<Tsyncronized;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/PppoeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "pppoe_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .end local v0           #cr:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private registerForBroadcasts()V
    .locals 3

    .prologue
    .local p0, this:Lcom/android/server/PppoeService;,"Lcom/android/server/PppoeService<Tsyncronized;>;"
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/PppoeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/PppoeService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private scanPppoeDevice()I
    .locals 5

    .prologue
    .local p0, this:Lcom/android/server/PppoeService;,"Lcom/android/server/PppoeService<Tsyncronized;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-static {}, Landroid/net/pppoe/PppoeNative;->getInterfaceCnt()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "PppoeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "total found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " net devices"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/PppoeService;->DevName:[Ljava/lang/String;

    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/PppoeService;->DevName:[Ljava/lang/String;

    invoke-static {v1}, Landroid/net/pppoe/PppoeNative;->getInterfaceName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/android/server/PppoeService;->DevName:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    .end local v1           #j:I
    :cond_0
    return v0

    .restart local v1       #j:I
    :cond_1
    const-string v2, "PppoeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PppoeService;->DevName:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized UpdatePppoeDevInfo(Landroid/net/pppoe/PppoeDevInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .local p0, this:Lcom/android/server/PppoeService;,"Lcom/android/server/PppoeService<Tsyncronized;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/PppoeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "pppoe_conf"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "pppoe_ifname"

    invoke-virtual {p1}, Landroid/net/pppoe/PppoeDevInfo;->getIfName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "pppoe_ip"

    invoke-virtual {p1}, Landroid/net/pppoe/PppoeDevInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "pppoe_dns"

    invoke-virtual {p1}, Landroid/net/pppoe/PppoeDevInfo;->getDnsAddr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "pppoe_route"

    invoke-virtual {p1}, Landroid/net/pppoe/PppoeDevInfo;->getRouteAddr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "pppoe_mask"

    invoke-virtual {p1}, Landroid/net/pppoe/PppoeDevInfo;->getNetMask()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0           #cr:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getDeviceNameList()[Ljava/lang/String;
    .locals 1

    .prologue
    .local p0, this:Lcom/android/server/PppoeService;,"Lcom/android/server/PppoeService<Tsyncronized;>;"
    invoke-direct {p0}, Lcom/android/server/PppoeService;->scanPppoeDevice()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PppoeService;->DevName:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 1

    .prologue
    .local p0, this:Lcom/android/server/PppoeService;,"Lcom/android/server/PppoeService<Tsyncronized;>;"
    iget-object v0, p0, Lcom/android/server/PppoeService;->mTracker:Landroid/net/pppoe/PppoeStateTracker;

    invoke-virtual {v0}, Landroid/net/pppoe/PppoeStateTracker;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPppoeState()I
    .locals 1

    .prologue
    .local p0, this:Lcom/android/server/PppoeService;,"Lcom/android/server/PppoeService<Tsyncronized;>;"
    iget v0, p0, Lcom/android/server/PppoeService;->mPppoeState:I

    return v0
.end method

.method public declared-synchronized getSavedPppoeConfig()Landroid/net/pppoe/PppoeDevInfo;
    .locals 3

    .prologue
    .local p0, this:Lcom/android/server/PppoeService;,"Lcom/android/server/PppoeService<Tsyncronized;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/PppoeService;->isPppoeConfigured()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/PppoeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/net/pppoe/PppoeDevInfo;

    invoke-direct {v1}, Landroid/net/pppoe/PppoeDevInfo;-><init>()V

    .local v1, info:Landroid/net/pppoe/PppoeDevInfo;
    const-string v2, "pppoe_ifname"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/pppoe/PppoeDevInfo;->setIfName(Ljava/lang/String;)V

    const-string v2, "pppoe_ip"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/pppoe/PppoeDevInfo;->setIpAddress(Ljava/lang/String;)V

    const-string v2, "pppoe_dns"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/pppoe/PppoeDevInfo;->setDnsAddr(Ljava/lang/String;)V

    const-string v2, "pppoe_mask"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/pppoe/PppoeDevInfo;->setNetMask(Ljava/lang/String;)V

    const-string v2, "pppoe_route"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/pppoe/PppoeDevInfo;->setRouteAddr(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #info:Landroid/net/pppoe/PppoeDevInfo;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getTotalInterface()I
    .locals 1

    .prologue
    .local p0, this:Lcom/android/server/PppoeService;,"Lcom/android/server/PppoeService<Tsyncronized;>;"
    invoke-static {}, Landroid/net/pppoe/PppoeNative;->getInterfaceCnt()I

    move-result v0

    return v0
.end method

.method public isPppoeConfigured()Z
    .locals 6

    .prologue
    .local p0, this:Lcom/android/server/PppoeService;,"Lcom/android/server/PppoeService<Tsyncronized;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/PppoeService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const-string v4, "pppoe_conf"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .local v1, x:I
    if-nez v1, :cond_0

    const-string v4, "pppoe_ifname"

    const-string v5, "ppp0"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "pppoe_ip"

    const-string v5, "0.0.0.0"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "pppoe_dns"

    const-string v5, "0.0.0.0"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "pppoe_mask"

    const-string v5, "255.255.255.0"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "pppoe_route"

    const-string v5, "0.0.0.0"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "PppoeService"

    const-string v5, "@@@@@@NO CONFIG. set default"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "pppoe_conf"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    const-string v4, "pppoe_conf"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public isPppoeDeviceUp()Z
    .locals 8

    .prologue
    .local p0, this:Lcom/android/server/PppoeService;,"Lcom/android/server/PppoeService<Tsyncronized;>;"
    const/4 v3, 0x0

    .local v3, retval:Z
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v5, "/sys/class/net/ppp0/operstate"

    invoke-direct {v2, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .local v2, fr:Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v5, 0x20

    invoke-direct {v0, v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .local v0, br:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, status:Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v5, "up"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "PppoeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PppoeDevice status:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #fr:Ljava/io/FileReader;
    .end local v3           #retval:Z
    .end local v4           #status:Ljava/lang/String;
    :goto_1
    return v3

    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v3       #retval:Z
    .restart local v4       #status:Ljava/lang/String;
    :cond_0
    if-eqz v4, :cond_1

    const-string v5, "down"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "PppoeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PppoeDevice status:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #fr:Ljava/io/FileReader;
    .end local v4           #status:Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    const-string v5, "PppoeService"

    const-string v6, "get PppoeDevice status error"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_1
.end method

.method public declared-synchronized setPppoeMode(Ljava/lang/String;)V
    .locals 4
    .parameter "mode"

    .prologue
    .local p0, this:Lcom/android/server/PppoeService;,"Lcom/android/server/PppoeService<Tsyncronized;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/PppoeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "PppoeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set pppoe mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PppoeService;->DevName:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/PppoeService;->DevName:[Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "pppoe_ifname"

    iget-object v2, p0, Lcom/android/server/PppoeService;->DevName:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "pppoe_conf"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .end local v0           #cr:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPppoeState(I)V
    .locals 4
    .parameter "state"

    .prologue
    .local p0, this:Lcom/android/server/PppoeService;,"Lcom/android/server/PppoeService<Tsyncronized;>;"
    const/4 v3, 0x1

    monitor-enter p0

    :try_start_0
    const-string v0, "PppoeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPppoeState from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/PppoeService;->mPppoeState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/PppoeService;->mPppoeState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/server/PppoeService;->mPppoeState:I

    if-ne p1, v3, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PppoeService;->persistPppoeEnabled(Z)V

    new-instance v0, Lcom/android/server/PppoeService$2;

    const-string v1, "stopInterface"

    invoke-direct {v0, p0, v1}, Lcom/android/server/PppoeService$2;-><init>(Lcom/android/server/PppoeService;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/PppoeService$2;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/PppoeService;->persistPppoeEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/server/PppoeService;->isPppoeConfigured()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "dhcp"

    invoke-virtual {p0, v0}, Lcom/android/server/PppoeService;->setPppoeMode(Ljava/lang/String;)V

    :cond_2
    new-instance v0, Lcom/android/server/PppoeService$3;

    const-string v1, "resetInterface"

    invoke-direct {v0, p0, v1}, Lcom/android/server/PppoeService$3;-><init>(Lcom/android/server/PppoeService;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/PppoeService$3;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
