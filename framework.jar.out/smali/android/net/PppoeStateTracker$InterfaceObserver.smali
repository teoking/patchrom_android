.class Landroid/net/PppoeStateTracker$InterfaceObserver;
.super Landroid/net/INetworkManagementEventObserver$Stub;
.source "PppoeStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/PppoeStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InterfaceObserver"
.end annotation


# instance fields
.field private mTracker:Landroid/net/PppoeStateTracker;


# direct methods
.method constructor <init>(Landroid/net/PppoeStateTracker;)V
    .locals 0
    .parameter "tracker"

    .prologue
    invoke-direct {p0}, Landroid/net/INetworkManagementEventObserver$Stub;-><init>()V

    iput-object p1, p0, Landroid/net/PppoeStateTracker$InterfaceObserver;->mTracker:Landroid/net/PppoeStateTracker;

    return-void
.end method


# virtual methods
.method public interfaceAdded(Ljava/lang/String;)V
    .locals 0
    .parameter "iface"

    .prologue
    return-void
.end method

.method public interfaceClassDataActivityChanged(Ljava/lang/String;Z)V
    .locals 0
    .parameter "label"
    .parameter "active"

    .prologue
    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 3
    .parameter "iface"
    .parameter "up"

    .prologue
    invoke-static {}, Landroid/net/PppoeStateTracker;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/net/PppoeStateTracker;->access$100()Z

    move-result v0

    if-eq v0, p2, :cond_0

    const-string v1, "PppoeStateTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " link "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string v0, "up"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/net/PppoeStateTracker;->access$102(Z)Z

    iget-object v0, p0, Landroid/net/PppoeStateTracker$InterfaceObserver;->mTracker:Landroid/net/PppoeStateTracker;

    #getter for: Landroid/net/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Landroid/net/PppoeStateTracker;->access$200(Landroid/net/PppoeStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    if-eqz p2, :cond_2

    iget-object v0, p0, Landroid/net/PppoeStateTracker$InterfaceObserver;->mTracker:Landroid/net/PppoeStateTracker;

    invoke-virtual {v0}, Landroid/net/PppoeStateTracker;->reconnect()Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, "down"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/net/PppoeStateTracker$InterfaceObserver;->mTracker:Landroid/net/PppoeStateTracker;

    invoke-virtual {v0}, Landroid/net/PppoeStateTracker;->disconnect()Z

    goto :goto_1
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 2
    .parameter "iface"

    .prologue
    const-string v0, "ppp0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/PppoeStateTracker;->pppoeDialing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/net/PppoeStateTracker;->access$300()Landroid/net/PppoeManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/PppoeManager;->setStateAndNotify(I)V

    goto :goto_0
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 3
    .parameter "iface"
    .parameter "up"

    .prologue
    const-string v1, "PppoeStateTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface status changed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string v0, "up"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "down"

    goto :goto_0
.end method

.method public limitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "limitName"
    .parameter "iface"

    .prologue
    return-void
.end method
