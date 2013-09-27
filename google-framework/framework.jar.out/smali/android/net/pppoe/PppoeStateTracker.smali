.class public Landroid/net/pppoe/PppoeStateTracker;
.super Ljava/lang/Object;
.source "PppoeStateTracker.java"

# interfaces
.implements Landroid/net/NetworkStateTracker;


# static fields
.field public static final EVENT_CONNECTED:I = 0x3

.field public static final EVENT_CONNECT_FAILED:I = 0x5

.field public static final EVENT_DISCONNECTED:I = 0x4

.field public static final EVENT_DISCONNECT_FAILED:I = 0x6

.field private static final PROP_NAME_PPP_ERRCODE:Ljava/lang/String; = "net.ppp.errcode"

.field private static final PROP_PPP_ADDR:Ljava/lang/String; = "dhcp.ppp0.ipaddress"

.field private static final PROP_PPP_DNS1:Ljava/lang/String; = "dhcp.ppp0.dns1"

.field private static final PROP_PPP_DNS2:Ljava/lang/String; = "dhcp.ppp0.dns2"

.field private static final PROP_PPP_GW:Ljava/lang/String; = "dhcp.ppp0.gateway"

.field private static final PROP_PPP_MASK:Ljava/lang/String; = "dhcp.ppp0.mask"

.field private static final PROP_VAL_PPP_NOERR:Ljava/lang/String; = "0:0"

.field private static final TAG:Ljava/lang/String; = "PppoeStateTracker"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

.field private mEM:Landroid/net/pppoe/PppoeManager;

.field private mInterfaceName:Ljava/lang/String;

.field private mInterfaceStopped:Z

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMonitor:Landroid/net/pppoe/PppoeMonitor;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPppInterfaceAdded:Z

.field private mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mServiceStarted:Z

.field private mTarget:Landroid/os/Handler;

.field private mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTrackerHandlerCallback:Landroid/os/Handler$Callback;

.field private mTrackerTarget:Landroid/os/Handler;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 3
    .parameter "netType"
    .parameter "networkName"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppInterfaceAdded:Z

    const-string v0, "ppp0"

    iput-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mInterfaceName:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/net/pppoe/PppoeStateTracker$1;

    invoke-direct {v0, p0}, Landroid/net/pppoe/PppoeStateTracker$1;-><init>(Landroid/net/pppoe/PppoeStateTracker;)V

    iput-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mTrackerHandlerCallback:Landroid/os/Handler$Callback;

    const-string v0, "PppoeStateTracker"

    const-string v1, "Starts ..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/net/NetworkInfo;

    const-string v1, ""

    invoke-direct {v0, p1, v2, p2, v1}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    invoke-virtual {p0, v2}, Landroid/net/pppoe/PppoeStateTracker;->setTeardownRequested(Z)V

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v0, Landroid/net/LinkCapabilities;

    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-static {}, Landroid/net/pppoe/PppoeNative;->initPppoeNative()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PppoeStateTracker"

    const-string v1, "Can not init pppoe device layers"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "PppoeStateTracker"

    const-string v1, "Successed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mServiceStarted:Z

    new-instance v0, Landroid/net/pppoe/PppoeMonitor;

    invoke-direct {v0, p0}, Landroid/net/pppoe/PppoeMonitor;-><init>(Landroid/net/pppoe/PppoeStateTracker;)V

    iput-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mMonitor:Landroid/net/pppoe/PppoeMonitor;

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/net/pppoe/PppoeStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppInterfaceAdded:Z

    return v0
.end method

.method static synthetic access$002(Landroid/net/pppoe/PppoeStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppInterfaceAdded:Z

    return p1
.end method

.method static synthetic access$100(Landroid/net/pppoe/PppoeStateTracker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/pppoe/PppoeStateTracker;)Landroid/net/pppoe/PppoeManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mEM:Landroid/net/pppoe/PppoeManager;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/pppoe/PppoeStateTracker;Landroid/net/pppoe/PppoeDevInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Landroid/net/pppoe/PppoeStateTracker;->configureInterface(Landroid/net/pppoe/PppoeDevInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/net/pppoe/PppoeStateTracker;ZILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/net/pppoe/PppoeStateTracker;->setPppoeState(ZILjava/lang/String;)V

    return-void
.end method

.method private configureInterface(Landroid/net/pppoe/PppoeDevInfo;)Z
    .locals 4
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mInterfaceStopped:Z

    new-instance v1, Landroid/net/DhcpInfoInternal;

    invoke-direct {v1}, Landroid/net/DhcpInfoInternal;-><init>()V

    iput-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {p1}, Landroid/net/pppoe/PppoeDevInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    new-instance v2, Landroid/net/RouteInfo;

    invoke-virtual {p1}, Landroid/net/pppoe/PppoeDevInfo;->getRouteAddr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {v1, v2}, Landroid/net/DhcpInfoInternal;->addRoute(Landroid/net/RouteInfo;)V

    invoke-virtual {p1}, Landroid/net/pppoe/PppoeDevInfo;->getNetMask()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .local v0, ia:Ljava/net/InetAddress;
    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-static {v0}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/InetAddress;)I

    move-result v2

    invoke-static {v2}, Landroid/net/NetworkUtils;->netmaskIntToPrefixLength(I)I

    move-result v2

    iput v2, v1, Landroid/net/DhcpInfoInternal;->prefixLength:I

    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {p1}, Landroid/net/pppoe/PppoeDevInfo;->getDnsAddr()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/DhcpInfoInternal;->dns1:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/pppoe/PppoeDevInfo;->getIfName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/net/pppoe/PppoeStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-direct {p0, v1, v2}, Landroid/net/pppoe/PppoeStateTracker;->configureInterfaceStatic(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)Z

    const/4 v1, 0x1

    return v1
.end method

.method private configureInterfaceStatic(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)Z
    .locals 9
    .parameter "ifname"
    .parameter "dhcpInfoInternal"

    .prologue
    const/4 v5, 0x0

    const-string v6, "network_management"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    .local v3, netd:Landroid/os/INetworkManagementService;
    new-instance v2, Landroid/net/InterfaceConfiguration;

    invoke-direct {v2}, Landroid/net/InterfaceConfiguration;-><init>()V

    .local v2, ifcg:Landroid/net/InterfaceConfiguration;
    invoke-virtual {p2}, Landroid/net/DhcpInfoInternal;->makeLinkAddress()Landroid/net/LinkAddress;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    const-string v6, "PppoeStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "configureInterfaceStatic: ifname:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-interface {v3, p1, v2}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    invoke-virtual {p2}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v6

    iput-object v6, p0, Landroid/net/pppoe/PppoeStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6, p1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    const-string v6, "PppoeStateTracker"

    const-string v7, "IP configuration succeeded"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x1

    :goto_0
    return v5

    :catch_0
    move-exception v4

    .local v4, re:Landroid/os/RemoteException;
    const-string v6, "PppoeStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IP configuration failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v4           #re:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v6, "PppoeStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IP configuration failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private postNotification(ILjava/lang/String;)V
    .locals 3
    .parameter "event"
    .parameter "errcode"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.pppoe.PPPOE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "pppoe_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "pppoe_errcode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "PppoeStateTracker"

    const-string v2, "Send PPPOE_STATE_CHANGED_ACTION"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setPppoeState(ZILjava/lang/String;)V
    .locals 6
    .parameter "state"
    .parameter "event"
    .parameter "errcode"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "PppoeStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PST.setPppoeState()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/pppoe/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eq v1, p1, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, p1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    invoke-direct {p0, p2, p3}, Landroid/net/pppoe/PppoeStateTracker;->postNotification(ILjava/lang/String;)V

    :cond_1
    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eq v1, p1, :cond_3

    if-eqz p1, :cond_4

    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v4, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v2, 0x3

    iget-object v3, p0, Landroid/net/pppoe/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mTarget:Landroid/os/Handler;

    iget-object v2, p0, Landroid/net/pppoe/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .end local v0           #msg:Landroid/os/Message;
    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v4, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    if-ne v1, p2, :cond_2

    const-string v1, "PppoeStateTracker"

    const-string v2, "EVENT_DISCONNECTED: StopInterface"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Landroid/net/pppoe/PppoeStateTracker;->stopInterface(Z)Z

    goto :goto_0
.end method


# virtual methods
.method public StartPolling()V
    .locals 2

    .prologue
    const-string v0, "PppoeStateTracker"

    const-string v1, "start monitoring"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mMonitor:Landroid/net/pppoe/PppoeMonitor;

    invoke-virtual {v0}, Landroid/net/pppoe/PppoeMonitor;->startMonitoring()V

    return-void
.end method

.method public captivePortalCheckComplete()V
    .locals 0

    .prologue
    return-void
.end method

.method public defaultRouteSet(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const-string v0, "PppoeStateTracker"

    const-string v1, "defaultRouteSet"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v0}, Landroid/net/DhcpInfoInternal;->makeDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .prologue
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "net.tcp.buffersize.default"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mEM:Landroid/net/pppoe/PppoeManager;

    invoke-virtual {v1}, Landroid/net/pppoe/PppoeManager;->getTotalInterface()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mEM:Landroid/net/pppoe/PppoeManager;

    invoke-virtual {v1}, Landroid/net/pppoe/PppoeManager;->getPppoeState()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultRouteSet()Z
    .locals 2

    .prologue
    const-string v0, "PppoeStateTracker"

    const-string v1, "isDefaultRouteSet"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 2

    .prologue
    const-string v0, "PppoeStateTracker"

    const-string v1, "isPrivateDnsRouteSet"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTeardownRequested()Z
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .local v0, flag:Z
    const-string v1, "PppoeStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTeardownRequested: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public notifyPppConnected(Ljava/lang/String;)V
    .locals 3
    .parameter "ifname"

    .prologue
    const-string v0, "PppoeStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report interface is up for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mTrackerTarget:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyStateChange(Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3
    .parameter "ifname"
    .parameter "state"

    .prologue
    const-string v0, "PppoeStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report new state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on dev "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PppoeStateTracker"

    const-string v1, "update network state tracker"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mTrackerTarget:Landroid/os/Handler;

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p2, v0}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit p0

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public privateDnsRouteSet(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const-string v0, "PppoeStateTracker"

    const-string v1, "privateDnsRouteSet"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public reconnect()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const-string v1, "PppoeStateTracker"

    const-string v2, ">>>reconnect"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mEM:Landroid/net/pppoe/PppoeManager;

    invoke-virtual {v1}, Landroid/net/pppoe/PppoeManager;->getPppoeState()I

    move-result v1

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mEM:Landroid/net/pppoe/PppoeManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/pppoe/PppoeManager;->setPppoeEnabled(Z)V

    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mEM:Landroid/net/pppoe/PppoeManager;

    invoke-virtual {v1}, Landroid/net/pppoe/PppoeManager;->pppoeConfigured()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mEM:Landroid/net/pppoe/PppoeManager;

    invoke-virtual {v1}, Landroid/net/pppoe/PppoeManager;->pppoeSetDefaultConf()V

    :cond_0
    invoke-virtual {p0}, Landroid/net/pppoe/PppoeStateTracker;->resetInterface()Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .end local v0           #e:Ljava/net/UnknownHostException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetInterface()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const-string v1, "PppoeStateTracker"

    const-string v2, ">>>resetInterface"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mEM:Landroid/net/pppoe/PppoeManager;

    if-eqz v1, :cond_1

    const-string v1, "PppoeStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pppoeConfigured: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/pppoe/PppoeStateTracker;->mEM:Landroid/net/pppoe/PppoeManager;

    invoke-virtual {v3}, Landroid/net/pppoe/PppoeManager;->pppoeConfigured()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mEM:Landroid/net/pppoe/PppoeManager;

    invoke-virtual {v1}, Landroid/net/pppoe/PppoeManager;->getSavedPppoeConfig()Landroid/net/pppoe/PppoeDevInfo;

    move-result-object v0

    .local v0, info:Landroid/net/pppoe/PppoeDevInfo;
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mEM:Landroid/net/pppoe/PppoeManager;

    invoke-virtual {v1}, Landroid/net/pppoe/PppoeManager;->pppoeConfigured()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "PppoeStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IfName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/pppoe/PppoeDevInfo;->getIfName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "PppoeStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IP:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/pppoe/PppoeDevInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "PppoeStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mask:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/pppoe/PppoeDevInfo;->getNetMask()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "PppoeStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DNS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/pppoe/PppoeDevInfo;->getDnsAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mInterfaceName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "PppoeStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/pppoe/PppoeStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mInterfaceName:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    :cond_0
    const-string v1, "PppoeStateTracker"

    const-string v2, "Force the connection disconnected before configuration"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x4

    const-string v3, "0:0"

    invoke-direct {p0, v1, v2, v3}, Landroid/net/pppoe/PppoeStateTracker;->setPppoeState(ZILjava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/net/pppoe/PppoeStateTracker;->configureInterface(Landroid/net/pppoe/PppoeDevInfo;)Z

    monitor-exit p0

    .end local v0           #info:Landroid/net/pppoe/PppoeDevInfo;
    :cond_1
    const/4 v1, 0x1

    return v1

    .restart local v0       #info:Landroid/net/pppoe/PppoeDevInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDependencyMet(Z)V
    .locals 0
    .parameter "met"

    .prologue
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

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setRadio(Z)Z
    .locals 1
    .parameter "turnOn"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public setTeardownRequested(Z)V
    .locals 3
    .parameter "isRequested"

    .prologue
    const-string v0, "PppoeStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTeardownRequested("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6
    .parameter "context"
    .parameter "target"

    .prologue
    const/4 v5, 0x1

    const-string v2, "PppoeStateTracker"

    const-string v3, "start to monitor the pppoe devices"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Landroid/net/pppoe/PppoeStateTracker;->mServiceStarted:Z

    if-eqz v2, :cond_0

    iput-object p1, p0, Landroid/net/pppoe/PppoeStateTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/pppoe/PppoeStateTracker;->mContext:Landroid/content/Context;

    const-string v3, "pppoe"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/pppoe/PppoeManager;

    iput-object v2, p0, Landroid/net/pppoe/PppoeStateTracker;->mEM:Landroid/net/pppoe/PppoeManager;

    iput-object p2, p0, Landroid/net/pppoe/PppoeStateTracker;->mTarget:Landroid/os/Handler;

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Landroid/net/pppoe/PppoeStateTracker;->mTrackerHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Landroid/net/pppoe/PppoeStateTracker;->mTrackerTarget:Landroid/os/Handler;

    iget-object v2, p0, Landroid/net/pppoe/PppoeStateTracker;->mEM:Landroid/net/pppoe/PppoeManager;

    if-nez v2, :cond_1

    const-string v2, "PppoeStateTracker"

    const-string v3, "failed to start startMonitoring"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/net/pppoe/PppoeStateTracker;->mEM:Landroid/net/pppoe/PppoeManager;

    invoke-virtual {v2}, Landroid/net/pppoe/PppoeManager;->getPppoeState()I

    move-result v1

    .local v1, state:I
    iget-object v2, p0, Landroid/net/pppoe/PppoeStateTracker;->mEM:Landroid/net/pppoe/PppoeManager;

    if-eq v1, v5, :cond_0

    iget-object v2, p0, Landroid/net/pppoe/PppoeStateTracker;->mEM:Landroid/net/pppoe/PppoeManager;

    if-nez v1, :cond_2

    iget-object v2, p0, Landroid/net/pppoe/PppoeStateTracker;->mEM:Landroid/net/pppoe/PppoeManager;

    invoke-virtual {v2, v5}, Landroid/net/pppoe/PppoeManager;->setPppoeEnabled(Z)V

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/net/pppoe/PppoeStateTracker;->resetInterface()Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/net/UnknownHostException;
    const-string v2, "PppoeStateTracker"

    const-string v3, "Wrong pppoe configuration"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopInterface(Z)Z
    .locals 5
    .parameter "suspend"

    .prologue
    const/4 v4, 0x1

    iget-object v2, p0, Landroid/net/pppoe/PppoeStateTracker;->mEM:Landroid/net/pppoe/PppoeManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/pppoe/PppoeStateTracker;->mEM:Landroid/net/pppoe/PppoeManager;

    invoke-virtual {v2}, Landroid/net/pppoe/PppoeManager;->getSavedPppoeConfig()Landroid/net/pppoe/PppoeDevInfo;

    move-result-object v1

    .local v1, info:Landroid/net/pppoe/PppoeDevInfo;
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/net/pppoe/PppoeStateTracker;->mEM:Landroid/net/pppoe/PppoeManager;

    invoke-virtual {v2}, Landroid/net/pppoe/PppoeManager;->pppoeConfigured()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v4, p0, Landroid/net/pppoe/PppoeStateTracker;->mInterfaceStopped:Z

    const-string v2, "PppoeStateTracker"

    const-string v3, "stop interface"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/net/pppoe/PppoeDevInfo;->getIfName()Ljava/lang/String;

    move-result-object v0

    .local v0, ifname:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    if-nez p1, :cond_0

    invoke-static {v0}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    .end local v0           #ifname:Ljava/lang/String;
    .end local v1           #info:Landroid/net/pppoe/PppoeDevInfo;
    :cond_0
    return v4
.end method

.method public teardown()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mEM:Landroid/net/pppoe/PppoeManager;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/net/pppoe/PppoeStateTracker;->stopInterface(Z)Z

    move-result v0

    :cond_0
    return v0
.end method
