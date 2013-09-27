.class Landroid/net/ethernet/EthernetStateTracker$2;
.super Ljava/lang/Object;
.source "EthernetStateTracker.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ethernet/EthernetStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ethernet/EthernetStateTracker;


# direct methods
.method constructor <init>(Landroid/net/ethernet/EthernetStateTracker;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .parameter "msg"

    .prologue
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    const/4 v3, 0x1

    return v3

    :pswitch_0
    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mDhcpTarget:Landroid/os/Handler;
    invoke-static {v3}, Landroid/net/ethernet/EthernetStateTracker;->access$700(Landroid/net/ethernet/EthernetStateTracker;)Landroid/os/Handler;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mInterfaceStopped:Z
    invoke-static {v3}, Landroid/net/ethernet/EthernetStateTracker;->access$800(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "EthernetStateTracker"

    const-string v5, "DhcpHandler: DHCP request started"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v5, 0x0

    iget v6, p1, Landroid/os/Message;->what:I

    #calls: Landroid/net/ethernet/EthernetStateTracker;->setEthState(ZI)V
    invoke-static {v3, v5, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$300(Landroid/net/ethernet/EthernetStateTracker;ZI)V

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/ethernet/EthernetStateTracker;->access$900(Landroid/net/ethernet/EthernetStateTracker;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    invoke-static {v5}, Landroid/net/ethernet/EthernetStateTracker;->access$1000(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/DhcpInfoInternal;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .local v1, event:I
    const-string v3, "EthernetStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DhcpHandler: DHCP request succeeded: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    invoke-static {v6}, Landroid/net/ethernet/EthernetStateTracker;->access$1000(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/DhcpInfoInternal;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/DhcpInfoInternal;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    invoke-static {v5}, Landroid/net/ethernet/EthernetStateTracker;->access$1000(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/DhcpInfoInternal;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v5

    #setter for: Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3, v5}, Landroid/net/ethernet/EthernetStateTracker;->access$1102(Landroid/net/ethernet/EthernetStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3}, Landroid/net/ethernet/EthernetStateTracker;->access$1100(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/LinkProperties;

    move-result-object v3

    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/ethernet/EthernetStateTracker;->access$900(Landroid/net/ethernet/EthernetStateTracker;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;
    invoke-static {v3}, Landroid/net/ethernet/EthernetStateTracker;->access$200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/ethernet/EthernetManager;->getSavedEthConfig()Landroid/net/ethernet/EthernetDevInfo;

    move-result-object v2

    .local v2, info:Landroid/net/ethernet/EthernetDevInfo;
    if-eqz v2, :cond_0

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;
    invoke-static {v3}, Landroid/net/ethernet/EthernetStateTracker;->access$200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/ethernet/EthernetManager;->ethConfigured()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/net/ethernet/EthernetDevInfo;->hasProxy()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3}, Landroid/net/ethernet/EthernetStateTracker;->access$1100(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/LinkProperties;

    move-result-object v3

    new-instance v5, Landroid/net/ProxyProperties;

    invoke-virtual {v2}, Landroid/net/ethernet/EthernetDevInfo;->getProxyHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/ethernet/EthernetDevInfo;->getProxyPort()I

    move-result v7

    invoke-virtual {v2}, Landroid/net/ethernet/EthernetDevInfo;->getProxyExclusionList()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .end local v2           #info:Landroid/net/ethernet/EthernetDevInfo;
    :goto_1
    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mTrackerTarget:Landroid/os/Handler;
    invoke-static {v3}, Landroid/net/ethernet/EthernetStateTracker;->access$1200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .end local v1           #event:I
    :goto_2
    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v5, 0x0

    #setter for: Landroid/net/ethernet/EthernetStateTracker;->mStartingDhcp:Z
    invoke-static {v3, v5}, Landroid/net/ethernet/EthernetStateTracker;->access$502(Landroid/net/ethernet/EthernetStateTracker;Z)Z

    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #event:I
    .restart local v2       #info:Landroid/net/ethernet/EthernetDevInfo;
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3}, Landroid/net/ethernet/EthernetStateTracker;->access$1100(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/LinkProperties;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    goto :goto_1

    .end local v1           #event:I
    .end local v2           #info:Landroid/net/ethernet/EthernetDevInfo;
    :cond_1
    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v0

    .local v0, DhcpError:Ljava/lang/String;
    const-string v3, "EthernetStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DhcpHandler: DHCP request failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "dhcpcd to start"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x6

    .restart local v1       #event:I
    goto :goto_1

    .end local v1           #event:I
    :cond_2
    const/4 v1, 0x2

    .restart local v1       #event:I
    goto :goto_1

    .end local v0           #DhcpError:Ljava/lang/String;
    .end local v1           #event:I
    :cond_3
    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v5, 0x0

    #setter for: Landroid/net/ethernet/EthernetStateTracker;->mInterfaceStopped:Z
    invoke-static {v3, v5}, Landroid/net/ethernet/EthernetStateTracker;->access$802(Landroid/net/ethernet/EthernetStateTracker;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
