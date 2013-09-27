.class public Landroid/net/PppoeStateTracker;
.super Landroid/os/Handler;
.source "PppoeStateTracker.java"

# interfaces
.implements Landroid/net/NetworkStateTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/PppoeStateTracker$myResume;,
        Landroid/net/PppoeStateTracker$myStandby;,
        Landroid/net/PppoeStateTracker$InterfaceObserver;
    }
.end annotation


# static fields
.field private static final EVENT_NETWORK_STATE_CHANGED:I = 0x3

.field private static final EVENT_NETWORK_STATE_CONNECT:I = 0x1

.field private static final EVENT_NETWORK_STATE_DISCONNECT:I = 0x2

.field private static final NETWORKTYPE:Ljava/lang/String; = "PPPOE"

.field private static final TAG:Ljava/lang/String; = "PppoeStateTracker"

.field private static ifname:Ljava/lang/String;

.field private static mLinkUp:Z

.field private static pm:Landroid/net/PppoeManager;

.field public static pppoeDialing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sInstance:Landroid/net/PppoeStateTracker;


# instance fields
.field private DEBUG:Z

.field private hasRegist:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mContext:Landroid/content/Context;

.field private mCsHandler:Landroid/os/Handler;

.field private mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mInterfaceObserver:Landroid/net/PppoeStateTracker$InterfaceObserver;

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mLinkState:I

.field private mNMService:Landroid/os/INetworkManagementService;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPrevLinkState:I

.field private mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private pppState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "eth0"

    sput-object v0, Landroid/net/PppoeStateTracker;->ifname:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Landroid/net/PppoeStateTracker;->pppoeDialing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/PppoeStateTracker;->DEBUG:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/PppoeStateTracker;->hasRegist:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v4, p0, Landroid/net/PppoeStateTracker;->mPrevLinkState:I

    iput-boolean v4, p0, Landroid/net/PppoeStateTracker;->pppState:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/PppoeStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/PppoeStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/PppoeStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/net/NetworkInfo;

    const/16 v1, 0xe

    const-string v2, "PPPOE"

    const-string v3, ""

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/PppoeStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v0, Landroid/net/LinkCapabilities;

    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v0, p0, Landroid/net/PppoeStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    iget-object v0, p0, Landroid/net/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v4}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    invoke-virtual {p0, v4}, Landroid/net/PppoeStateTracker;->setTeardownRequested(Z)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/PppoeStateTracker;->ifname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    sget-boolean v0, Landroid/net/PppoeStateTracker;->mLinkUp:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    sput-boolean p0, Landroid/net/PppoeStateTracker;->mLinkUp:Z

    return p0
.end method

.method static synthetic access$200(Landroid/net/PppoeStateTracker;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$300()Landroid/net/PppoeManager;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/PppoeStateTracker;->pm:Landroid/net/PppoeManager;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/PppoeStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/PppoeStateTracker;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Landroid/net/PppoeStateTracker;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/PppoeStateTracker;->sendCmdResult(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/net/PppoeStateTracker;
    .locals 2

    .prologue
    const-class v1, Landroid/net/PppoeStateTracker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/net/PppoeStateTracker;->sInstance:Landroid/net/PppoeStateTracker;

    if-nez v0, :cond_0

    new-instance v0, Landroid/net/PppoeStateTracker;

    invoke-direct {v0}, Landroid/net/PppoeStateTracker;-><init>()V

    sput-object v0, Landroid/net/PppoeStateTracker;->sInstance:Landroid/net/PppoeStateTracker;

    :cond_0
    sget-object v0, Landroid/net/PppoeStateTracker;->sInstance:Landroid/net/PppoeStateTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private notifyConnectivity()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroid/net/PppoeStateTracker;->isTeardownRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Landroid/net/PppoeStateTracker;->ifname:Ljava/lang/String;

    const-string v2, "wlan[0-9]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/net/PppoeStateTracker;->mCsHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/net/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, myMsg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private runPppoe()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/net/PppoeStateTracker$1;

    invoke-direct {v1, p0}, Landroid/net/PppoeStateTracker$1;-><init>(Landroid/net/PppoeStateTracker;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .local v0, pppoeThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendCmdResult(Ljava/lang/String;)V
    .locals 2
    .parameter "event"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "CMD_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "EXTRA_CMD_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Landroid/net/PppoeStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private updateNetworkInfo()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0}, Landroid/net/PppoeStateTracker;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    return-void
.end method


# virtual methods
.method public captivePortalCheckComplete()V
    .locals 0

    .prologue
    return-void
.end method

.method public defaultRouteSet(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    iget-object v0, p0, Landroid/net/PppoeStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public disconnect()Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    sget-object v1, Landroid/net/PppoeStateTracker;->pm:Landroid/net/PppoeManager;

    invoke-virtual {v1}, Landroid/net/PppoeManager;->getPppoeState()I

    move-result v0

    .local v0, x:I
    const-string v1, "PppoeStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PPPOE disconnect x is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v6, :cond_0

    sget-object v1, Landroid/net/PppoeStateTracker;->pm:Landroid/net/PppoeManager;

    const-string v2, "disconnect"

    sget-object v3, Landroid/net/PppoeStateTracker;->ifname:Ljava/lang/String;

    const-string v4, " "

    const-string v5, " "

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/net/PppoeManager;->execCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "PppoeStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exeCmd disconnect , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/net/PppoeStateTracker;->ifname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Landroid/net/PppoeStateTracker;->updateNetworkInfo()V

    sget-object v1, Landroid/net/PppoeStateTracker;->pm:Landroid/net/PppoeManager;

    invoke-virtual {v1, v6}, Landroid/net/PppoeManager;->setStateAndNotify(I)V

    const/4 v1, 0x1

    return v1
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .prologue
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/PppoeStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/PppoeStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Landroid/net/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "net.tcp.buffersize.default"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/net/PppoeStateTracker;->notifyConnectivity()V

    return-void

    :pswitch_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/net/PppoeStateTracker;->pppState:Z

    invoke-virtual {p0, v4}, Landroid/net/PppoeStateTracker;->setTeardownRequested(Z)V

    invoke-direct {p0}, Landroid/net/PppoeStateTracker;->updateNetworkInfo()V

    iget-object v3, p0, Landroid/net/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3, v4, v5, v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/PppoeStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v3, :cond_1

    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3}, Landroid/net/LinkProperties;-><init>()V

    iput-object v3, p0, Landroid/net/PppoeStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/net/PppoeStateTracker;->mNMService:Landroid/os/INetworkManagementService;

    const-string v4, "ppp0"

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v2

    .local v2, linkAddress:Landroid/net/LinkAddress;
    if-eqz v2, :cond_2

    iget-object v3, p0, Landroid/net/PppoeStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3, v2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2           #linkAddress:Landroid/net/LinkAddress;
    :cond_2
    :goto_1
    const-string v3, "net.ppp0.hisaddr"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, ip:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/net/PppoeStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v4, Landroid/net/RouteInfo;

    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    :cond_3
    const-string v3, "net.ppp0.dns1"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/net/PppoeStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    :cond_4
    const-string v3, "net.ppp0.dns2"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/net/PppoeStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    :cond_5
    iget-object v3, p0, Landroid/net/PppoeStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    const-string v4, "ppp0"

    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/net/PppoeStateTracker;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "PppoeStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLinkProperties is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/PppoeStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1           #ip:Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "PppoeStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get linkAddress fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "PppoeStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not get list of interfaces "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_1
    invoke-direct {p0}, Landroid/net/PppoeStateTracker;->updateNetworkInfo()V

    goto/16 :goto_0

    :pswitch_2
    iput-boolean v4, p0, Landroid/net/PppoeStateTracker;->pppState:Z

    invoke-direct {p0}, Landroid/net/PppoeStateTracker;->updateNetworkInfo()V

    iget-object v3, p0, Landroid/net/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3, v4, v5, v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/PppoeStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->clear()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized isAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    sget-object v1, Landroid/net/PppoeStateTracker;->ifname:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->getNetlinkStatus(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/PppoeStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/PppoeStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTeardownRequested()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/PppoeStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public notifyCHANGED()V
    .locals 1

    .prologue
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/net/PppoeStateTracker;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyCONNECT()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/PppoeStateTracker;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyDISCONNECT()V
    .locals 1

    .prologue
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/net/PppoeStateTracker;->sendEmptyMessage(I)Z

    return-void
.end method

.method public privateDnsRouteSet(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    iget-object v0, p0, Landroid/net/PppoeStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public reconnect()Z
    .locals 2

    .prologue
    sget-boolean v0, Landroid/net/PppoeStateTracker;->mLinkUp:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/net/PppoeStateTracker;->pm:Landroid/net/PppoeManager;

    invoke-virtual {v0}, Landroid/net/PppoeManager;->getPppoeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/PppoeStateTracker;->pppoeDialing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PppoeStateTracker"

    const-string v1, "reconnect run! pppoe_on is true"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/net/PppoeStateTracker;->runPppoe()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "PppoeStateTracker"

    const-string v1, "pppoe_on is false or pppoeDialing is true"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "PppoeStateTracker"

    const-string v1, "no run reconnect because link down"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerPppoeObserver()V
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/net/PppoeStateTracker;->hasRegist:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/net/PppoeStateTracker;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/PppoeStateTracker;->mInterfaceObserver:Landroid/net/PppoeStateTracker$InterfaceObserver;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    invoke-virtual {p0}, Landroid/net/PppoeStateTracker;->isAvailable()Z

    move-result v1

    sput-boolean v1, Landroid/net/PppoeStateTracker;->mLinkUp:Z

    iget-boolean v1, p0, Landroid/net/PppoeStateTracker;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "PppoeStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerPppoeObserver mLinkUp is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/net/PppoeStateTracker;->mLinkUp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Landroid/net/PppoeStateTracker;->hasRegist:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-boolean v1, p0, Landroid/net/PppoeStateTracker;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "PppoeStateTracker"

    const-string v2, "register InterfaceObserver Success!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PppoeStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not register InterfaceObserver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDependencyMet(Z)V
    .locals 0
    .parameter "met"

    .prologue
    return-void
.end method

.method public setInterfaceName(Ljava/lang/String;)V
    .locals 0
    .parameter "iface"

    .prologue
    sput-object p1, Landroid/net/PppoeStateTracker;->ifname:Ljava/lang/String;

    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const-string v0, "PppoeStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring setPolicyDataEnable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setRadio(Z)Z
    .locals 1
    .parameter "turnOn"

    .prologue
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/PppoeStateTracker;->ifname:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->enableInterface(Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    sget-object v0, Landroid/net/PppoeStateTracker;->ifname:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setTeardownRequested(Z)V
    .locals 1
    .parameter "isRequested"

    .prologue
    iget-object v0, p0, Landroid/net/PppoeStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const-string v0, "PppoeStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring setUserDataEnable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "target"

    .prologue
    invoke-static {}, Landroid/net/PppoeManager;->getInstance()Landroid/net/PppoeManager;

    move-result-object v2

    sput-object v2, Landroid/net/PppoeStateTracker;->pm:Landroid/net/PppoeManager;

    iput-object p1, p0, Landroid/net/PppoeStateTracker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/PppoeStateTracker;->mCsHandler:Landroid/os/Handler;

    sget-object v2, Landroid/net/PppoeStateTracker;->pm:Landroid/net/PppoeManager;

    invoke-virtual {v2}, Landroid/net/PppoeManager;->getSavedInterface()Ljava/lang/String;

    move-result-object v1

    .local v1, iface:Ljava/lang/String;
    if-eqz v1, :cond_0

    sput-object v1, Landroid/net/PppoeStateTracker;->ifname:Ljava/lang/String;

    :cond_0
    new-instance v2, Landroid/net/PppoeStateTracker$InterfaceObserver;

    invoke-direct {v2, p0}, Landroid/net/PppoeStateTracker$InterfaceObserver;-><init>(Landroid/net/PppoeStateTracker;)V

    iput-object v2, p0, Landroid/net/PppoeStateTracker;->mInterfaceObserver:Landroid/net/PppoeStateTracker$InterfaceObserver;

    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Landroid/net/PppoeStateTracker;->mNMService:Landroid/os/INetworkManagementService;

    invoke-virtual {p0}, Landroid/net/PppoeStateTracker;->isAvailable()Z

    move-result v2

    sput-boolean v2, Landroid/net/PppoeStateTracker;->mLinkUp:Z

    return-void
.end method

.method public startUsingNetworkFeature(Ljava/lang/String;II)I
    .locals 1
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public stopUsingNetworkFeature(Ljava/lang/String;II)I
    .locals 1
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public teardown()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    iget-object v1, p0, Landroid/net/PppoeStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pppoe_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, x:I
    const-string v1, "PppoeStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PPPOE teardown x is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6}, Landroid/net/PppoeStateTracker;->setTeardownRequested(Z)V

    if-ne v0, v6, :cond_0

    sget-object v1, Landroid/net/PppoeStateTracker;->pm:Landroid/net/PppoeManager;

    const-string v2, "disconnect"

    sget-object v3, Landroid/net/PppoeStateTracker;->ifname:Ljava/lang/String;

    const-string v4, " "

    const-string v5, " "

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/net/PppoeManager;->execCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "PppoeStateTracker"

    const-string v2, "exeCmd teardown , eth0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Landroid/net/PppoeStateTracker;->pm:Landroid/net/PppoeManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/net/PppoeManager;->setStateAndNotify(I)V

    invoke-direct {p0}, Landroid/net/PppoeStateTracker;->updateNetworkInfo()V

    return v6
.end method

.method public unregisterPppoeObserver()V
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/net/PppoeStateTracker;->hasRegist:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/net/PppoeStateTracker;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/PppoeStateTracker;->mInterfaceObserver:Landroid/net/PppoeStateTracker$InterfaceObserver;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    iget-object v1, p0, Landroid/net/PppoeStateTracker;->hasRegist:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-boolean v1, p0, Landroid/net/PppoeStateTracker;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "PppoeStateTracker"

    const-string v2, "unregister InterfaceObserver Success!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PppoeStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not unregister InterfaceObserver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
