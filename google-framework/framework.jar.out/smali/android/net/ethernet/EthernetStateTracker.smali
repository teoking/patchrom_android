.class public Landroid/net/ethernet/EthernetStateTracker;
.super Ljava/lang/Object;
.source "EthernetStateTracker.java"

# interfaces
.implements Landroid/net/NetworkStateTracker;


# static fields
.field public static final EVENT_DHCP_START:I = 0x0

.field public static final EVENT_HW_CHANGED:I = 0x7

.field public static final EVENT_HW_CONNECTED:I = 0x3

.field public static final EVENT_HW_DISCONNECTED:I = 0x4

.field public static final EVENT_HW_PHYCONNECTED:I = 0x5

.field public static final EVENT_HW_PHYDISCONNECTED:I = 0x6

.field public static final EVENT_INTERFACE_CONFIGURATION_FAILED:I = 0x2

.field public static final EVENT_INTERFACE_CONFIGURATION_SUCCEEDED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EthernetStateTracker"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDhcpHandlerCallback:Landroid/os/Handler$Callback;

.field private mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

.field private mDhcpTarget:Landroid/os/Handler;

.field private mEM:Landroid/net/ethernet/EthernetManager;

.field private mHWConnected:Z

.field private mInterfaceName:Ljava/lang/String;

.field private mInterfaceStopped:Z

.field private mLastState:Landroid/net/NetworkInfo$State;

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMonitor:Landroid/net/ethernet/EthernetMonitor;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mServiceStarted:Z

.field private mStackConnected:Z

.field private mStartingDhcp:Z

.field private mTarget:Landroid/os/Handler;

.field private mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTrackerHandlerCallback:Landroid/os/Handler$Callback;

.field private mTrackerTarget:Landroid/os/Handler;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 4
    .parameter "netType"
    .parameter "networkName"

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mLastState:Landroid/net/NetworkInfo$State;

    new-instance v1, Landroid/net/ethernet/EthernetStateTracker$1;

    invoke-direct {v1, p0}, Landroid/net/ethernet/EthernetStateTracker$1;-><init>(Landroid/net/ethernet/EthernetStateTracker;)V

    iput-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mTrackerHandlerCallback:Landroid/os/Handler$Callback;

    new-instance v1, Landroid/net/ethernet/EthernetStateTracker$2;

    invoke-direct {v1, p0}, Landroid/net/ethernet/EthernetStateTracker$2;-><init>(Landroid/net/ethernet/EthernetStateTracker;)V

    iput-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpHandlerCallback:Landroid/os/Handler$Callback;

    const-string v1, "EthernetStateTracker"

    const-string v2, "Starts..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/net/NetworkInfo;

    const-string v2, ""

    invoke-direct {v1, p1, v3, p2, v2}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v1, Landroid/net/LinkCapabilities;

    invoke-direct {v1}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v3}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    invoke-virtual {p0, v3}, Landroid/net/ethernet/EthernetStateTracker;->setTeardownRequested(Z)V

    invoke-static {}, Landroid/net/ethernet/EthernetNative;->initEthernetNative()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EthernetStateTracker"

    const-string v2, "Can not init ethernet device layers"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "EthernetStateTracker"

    const-string v2, "Success"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mServiceStarted:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DHCP Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v0, dhcpThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpTarget:Landroid/os/Handler;

    new-instance v1, Landroid/net/ethernet/EthernetMonitor;

    invoke-direct {v1, p0}, Landroid/net/ethernet/EthernetMonitor;-><init>(Landroid/net/ethernet/EthernetStateTracker;)V

    iput-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mMonitor:Landroid/net/ethernet/EthernetMonitor;

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/net/ethernet/EthernetStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z

    return v0
.end method

.method static synthetic access$002(Landroid/net/ethernet/EthernetStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z

    return p1
.end method

.method static synthetic access$100(Landroid/net/ethernet/EthernetStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/DhcpInfoInternal;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/ethernet/EthernetStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/LinkProperties;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/net/ethernet/EthernetStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mTrackerTarget:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/ethernet/EthernetStateTracker;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/ethernet/EthernetStateTracker;->setEthState(ZI)V

    return-void
.end method

.method static synthetic access$400(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/ethernet/EthernetStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mStartingDhcp:Z

    return v0
.end method

.method static synthetic access$502(Landroid/net/ethernet/EthernetStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/ethernet/EthernetStateTracker;->mStartingDhcp:Z

    return p1
.end method

.method static synthetic access$600(Landroid/net/ethernet/EthernetStateTracker;Landroid/net/ethernet/EthernetDevInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Landroid/net/ethernet/EthernetStateTracker;->configureInterface(Landroid/net/ethernet/EthernetDevInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/net/ethernet/EthernetStateTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpTarget:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Landroid/net/ethernet/EthernetStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceStopped:Z

    return v0
.end method

.method static synthetic access$802(Landroid/net/ethernet/EthernetStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceStopped:Z

    return p1
.end method

.method static synthetic access$900(Landroid/net/ethernet/EthernetStateTracker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method private configureInterface(Landroid/net/ethernet/EthernetDevInfo;)Z
    .locals 7
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getIfName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    iput-boolean v5, p0, Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z

    iput-boolean v5, p0, Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z

    iput-boolean v5, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceStopped:Z

    new-instance v2, Landroid/net/DhcpInfoInternal;

    invoke-direct {v2}, Landroid/net/DhcpInfoInternal;-><init>()V

    iput-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getConnectMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dhcp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mStartingDhcp:Z

    if-nez v2, :cond_0

    const-string v2, "EthernetStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trigger dhcp for device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getIfName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Landroid/net/ethernet/EthernetStateTracker;->mStartingDhcp:Z

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpTarget:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    new-instance v3, Landroid/net/RouteInfo;

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getRouteAddr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {v2, v3}, Landroid/net/DhcpInfoInternal;->addRoute(Landroid/net/RouteInfo;)V

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getNetMask()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .local v1, ia:Ljava/net/InetAddress;
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-static {v1}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/InetAddress;)I

    move-result v3

    invoke-static {v3}, Landroid/net/NetworkUtils;->netmaskIntToPrefixLength(I)I

    move-result v3

    iput v3, v2, Landroid/net/DhcpInfoInternal;->prefixLength:I

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getDnsAddr()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/DhcpInfoInternal;->dns1:Ljava/lang/String;

    const-string v2, "EthernetStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set ip manually "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v4}, Landroid/net/DhcpInfoInternal;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getIfName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getIfName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    :cond_2
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-direct {p0, p1, v2}, Landroid/net/ethernet/EthernetStateTracker;->configureInterfaceStatic(Landroid/net/ethernet/EthernetDevInfo;Landroid/net/DhcpInfoInternal;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    .local v0, event:I
    const-string v2, "EthernetStateTracker"

    const-string v3, "Static IP configuration succeeded"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mTrackerTarget:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .end local v0           #event:I
    :cond_3
    const/4 v0, 0x2

    .restart local v0       #event:I
    const-string v2, "EthernetStateTracker"

    const-string v3, "Static IP configuration failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private configureInterfaceStatic(Landroid/net/ethernet/EthernetDevInfo;Landroid/net/DhcpInfoInternal;)Z
    .locals 12
    .parameter "info"
    .parameter "dhcpInfoInternal"

    .prologue
    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getIfName()Ljava/lang/String;

    move-result-object v3

    .local v3, ifname:Ljava/lang/String;
    const-string v7, "network_management"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    .local v4, netd:Landroid/os/INetworkManagementService;
    new-instance v2, Landroid/net/InterfaceConfiguration;

    invoke-direct {v2}, Landroid/net/InterfaceConfiguration;-><init>()V

    .local v2, ifcg:Landroid/net/InterfaceConfiguration;
    invoke-virtual {p2}, Landroid/net/DhcpInfoInternal;->makeLinkAddress()Landroid/net/LinkAddress;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    invoke-virtual {v2}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    :try_start_0
    invoke-interface {v4, v3, v2}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    invoke-virtual {p2}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    iput-object v7, p0, Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v3}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->hasProxy()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v8, Landroid/net/ProxyProperties;

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getProxyHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getProxyPort()I

    move-result v10

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getProxyExclusionList()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    :goto_0
    const-string v7, "EthernetStateTracker"

    const-string v8, "Static IP configuration succeeded"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    :goto_1
    return v6

    :cond_0
    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v5

    .local v5, re:Landroid/os/RemoteException;
    const-string v7, "EthernetStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Static IP configuration failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v5           #re:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v7, "EthernetStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Static IP configuration failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private postNotification(I)V
    .locals 2
    .parameter "event"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.ethernet.ETH_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "eth_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setEthState(ZI)V
    .locals 6
    .parameter "state"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "EthernetStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEthState state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eq v1, p1, :cond_1

    if-eqz p1, :cond_2

    const-string v1, "EthernetStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***isConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v4, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "EthernetStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***isConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, p1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v2, 0x3

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mTarget:Landroid/os/Handler;

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    invoke-direct {p0, p2}, Landroid/net/ethernet/EthernetStateTracker;->postNotification(I)V

    return-void

    :cond_2
    const-string v1, "EthernetStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***isConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v4, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "EthernetStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***isConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    if-ne v1, p2, :cond_0

    const-string v1, "EthernetStateTracker"

    const-string v2, "EVENT_HW_DISCONNECTED: StopInterface"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Landroid/net/ethernet/EthernetStateTracker;->stopInterface(Z)Z

    goto :goto_0
.end method


# virtual methods
.method public StartPolling()V
    .locals 2

    .prologue
    const-string v0, "EthernetStateTracker"

    const-string v1, "start polling"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mMonitor:Landroid/net/ethernet/EthernetMonitor;

    invoke-virtual {v0}, Landroid/net/ethernet/EthernetMonitor;->startMonitoring()V

    return-void
.end method

.method public captivePortalCheckComplete()V
    .locals 0

    .prologue
    return-void
.end method

.method public defaultRouteSet(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v0}, Landroid/net/DhcpInfoInternal;->makeDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .prologue
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

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

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v1}, Landroid/net/ethernet/EthernetManager;->getTotalInterface()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v1}, Landroid/net/ethernet/EthernetManager;->getEthState()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTeardownRequested()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public notifyPhyConnected(Ljava/lang/String;)V
    .locals 4
    .parameter "ifname"

    .prologue
    const-string v1, "EthernetStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "report interface is up for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mTrackerTarget:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit p0

    return-void

    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyStateChange(Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3
    .parameter "ifname"
    .parameter "state"

    .prologue
    const-string v0, "EthernetStateTracker"

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

    const-string v2, " current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EthernetStateTracker"

    const-string v1, "update network state tracker"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mTrackerTarget:Landroid/os/Handler;

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p2, v0}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit p0

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const-string v0, "(pulledout)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/net/ethernet/EthernetStateTracker;->postNotification(I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/net/ethernet/EthernetStateTracker;->postNotification(I)V

    goto :goto_1
.end method

.method public privateDnsRouteSet(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public reconnect()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z

    if-eqz v2, :cond_0

    const-string v2, "EthernetStateTracker"

    const-string v3, "$$reconnect() returns DIRECTLY)"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    :goto_0
    return v1

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v2}, Landroid/net/ethernet/EthernetManager;->getEthState()I

    move-result v2

    if-eq v2, v1, :cond_2

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/ethernet/EthernetManager;->setEthEnabled(Z)V

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v1}, Landroid/net/ethernet/EthernetManager;->ethConfigured()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v1}, Landroid/net/ethernet/EthernetManager;->ethSetDefaultConf()V

    :cond_1
    const-string v1, "EthernetStateTracker"

    const-string v2, "$$reconnect call resetInterface()"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/net/ethernet/EthernetStateTracker;->resetInterface()Z
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .end local v0           #e:Ljava/net/UnknownHostException;
    :cond_2
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
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v1}, Landroid/net/ethernet/EthernetManager;->getSavedEthConfig()Landroid/net/ethernet/EthernetDevInfo;

    move-result-object v0

    .local v0, info:Landroid/net/ethernet/EthernetDevInfo;
    if-eqz v0, :cond_5

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v1}, Landroid/net/ethernet/EthernetManager;->ethConfigured()Z

    move-result v1

    if-eqz v1, :cond_5

    monitor-enter p0

    :try_start_0
    invoke-virtual {v0}, Landroid/net/ethernet/EthernetDevInfo;->getIfName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    const-string v1, "EthernetStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    :cond_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpTarget:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpTarget:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mStartingDhcp:Z

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "EthernetStateTracker"

    const-string v2, "Could not stop DHCP"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v1, "EthernetStateTracker"

    const-string v2, "Force the connection disconnected before configuration"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Landroid/net/ethernet/EthernetStateTracker;->setEthState(ZI)V

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->enableInterface(Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0, v0}, Landroid/net/ethernet/EthernetStateTracker;->configureInterface(Landroid/net/ethernet/EthernetDevInfo;)Z

    monitor-exit p0

    .end local v0           #info:Landroid/net/ethernet/EthernetDevInfo;
    :cond_4
    :goto_0
    const/4 v1, 0x1

    return v1

    .restart local v0       #info:Landroid/net/ethernet/EthernetDevInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_5
    const-string v1, "EthernetStateTracker"

    const-string v2, "Failed to resetInterface for EthernetManager is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
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
    const-string v0, "EthernetStateTracker"

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
    .locals 1
    .parameter "isRequested"

    .prologue
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const-string v0, "EthernetStateTracker"

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
    .locals 5
    .parameter "context"
    .parameter "target"

    .prologue
    const/4 v4, 0x1

    const-string v1, "EthernetStateTracker"

    const-string v2, "start to monitor the Ethernet devices"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mServiceStarted:Z

    if-eqz v1, :cond_0

    iput-object p1, p0, Landroid/net/ethernet/EthernetStateTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mContext:Landroid/content/Context;

    const-string v2, "ethernet"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ethernet/EthernetManager;

    iput-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    iput-object p2, p0, Landroid/net/ethernet/EthernetStateTracker;->mTarget:Landroid/os/Handler;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mTrackerHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mTrackerTarget:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v1}, Landroid/net/ethernet/EthernetManager;->getEthState()I

    move-result v0

    .local v0, state:I
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    if-eq v0, v4, :cond_0

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v1, v4}, Landroid/net/ethernet/EthernetManager;->setEthEnabled(Z)V

    .end local v0           #state:I
    :cond_0
    :goto_0
    return-void

    .restart local v0       #state:I
    :cond_1
    const-string v1, "EthernetStateTracker"

    const-string v2, "$$ DISABLE startMonitoring call resetInterface()"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopInterface(Z)Z
    .locals 6
    .parameter "suspend"

    .prologue
    const/4 v5, 0x1

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v2}, Landroid/net/ethernet/EthernetManager;->getSavedEthConfig()Landroid/net/ethernet/EthernetDevInfo;

    move-result-object v1

    .local v1, info:Landroid/net/ethernet/EthernetDevInfo;
    if-eqz v1, :cond_3

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v2}, Landroid/net/ethernet/EthernetManager;->ethConfigured()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpTarget:Landroid/os/Handler;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceStopped:Z

    const-string v2, "EthernetStateTracker"

    const-string v4, "stop dhcp and interface"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpTarget:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mStartingDhcp:Z

    invoke-virtual {v1}, Landroid/net/ethernet/EthernetDevInfo;->getIfName()Ljava/lang/String;

    move-result-object v0

    .local v0, ifname:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "EthernetStateTracker"

    const-string v4, "Could not stop DHCP"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    :cond_1
    if-nez p1, :cond_2

    invoke-static {v0}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    :cond_2
    monitor-exit v3

    .end local v0           #ifname:Ljava/lang/String;
    .end local v1           #info:Landroid/net/ethernet/EthernetDevInfo;
    :cond_3
    return v5

    .restart local v1       #info:Landroid/net/ethernet/EthernetDevInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public teardown()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/net/ethernet/EthernetStateTracker;->stopInterface(Z)Z

    move-result v0

    :cond_0
    return v0
.end method
