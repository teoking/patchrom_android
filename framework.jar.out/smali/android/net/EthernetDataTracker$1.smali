.class Landroid/net/EthernetDataTracker$1;
.super Ljava/lang/Object;
.source "EthernetDataTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/EthernetDataTracker;->runDhcp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/EthernetDataTracker;


# direct methods
.method constructor <init>(Landroid/net/EthernetDataTracker;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/net/EthernetDataTracker$1;->this$0:Landroid/net/EthernetDataTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x5

    const/4 v7, 0x1

    new-instance v0, Landroid/net/DhcpInfoInternal;

    invoke-direct {v0}, Landroid/net/DhcpInfoInternal;-><init>()V

    .local v0, dhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_0

    invoke-static {}, Landroid/net/EthernetDataTracker;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Ethernet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DHCP request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "times, error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-lt v1, v6, :cond_1

    iget-object v3, p0, Landroid/net/EthernetDataTracker$1;->this$0:Landroid/net/EthernetDataTracker;

    #calls: Landroid/net/EthernetDataTracker;->postNotification(I)V
    invoke-static {v3, v7}, Landroid/net/EthernetDataTracker;->access$500(Landroid/net/EthernetDataTracker;I)V

    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Landroid/net/EthernetDataTracker$1;->this$0:Landroid/net/EthernetDataTracker;

    invoke-virtual {v0}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    #setter for: Landroid/net/EthernetDataTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3, v4}, Landroid/net/EthernetDataTracker;->access$602(Landroid/net/EthernetDataTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    iget-object v3, p0, Landroid/net/EthernetDataTracker$1;->this$0:Landroid/net/EthernetDataTracker;

    #getter for: Landroid/net/EthernetDataTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3}, Landroid/net/EthernetDataTracker;->access$600(Landroid/net/EthernetDataTracker;)Landroid/net/LinkProperties;

    move-result-object v3

    invoke-static {}, Landroid/net/EthernetDataTracker;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/EthernetDataTracker$1;->this$0:Landroid/net/EthernetDataTracker;

    #getter for: Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Landroid/net/EthernetDataTracker;->access$800(Landroid/net/EthernetDataTracker;)Landroid/net/NetworkInfo;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/net/EthernetDataTracker$1;->this$0:Landroid/net/EthernetDataTracker;

    #getter for: Landroid/net/EthernetDataTracker;->mHwAddr:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/EthernetDataTracker;->access$700(Landroid/net/EthernetDataTracker;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/EthernetDataTracker$1;->this$0:Landroid/net/EthernetDataTracker;

    #getter for: Landroid/net/EthernetDataTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/net/EthernetDataTracker;->access$900(Landroid/net/EthernetDataTracker;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Landroid/net/EthernetDataTracker$1;->this$0:Landroid/net/EthernetDataTracker;

    #getter for: Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Landroid/net/EthernetDataTracker;->access$800(Landroid/net/EthernetDataTracker;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    iget-object v3, p0, Landroid/net/EthernetDataTracker$1;->this$0:Landroid/net/EthernetDataTracker;

    const/4 v4, 0x0

    #calls: Landroid/net/EthernetDataTracker;->postNotification(I)V
    invoke-static {v3, v4}, Landroid/net/EthernetDataTracker;->access$500(Landroid/net/EthernetDataTracker;I)V

    goto :goto_1
.end method
