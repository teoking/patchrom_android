.class Landroid/net/pppoe/PppoeStateTracker$1;
.super Ljava/lang/Object;
.source "PppoeStateTracker.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/pppoe/PppoeStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/pppoe/PppoeStateTracker;


# direct methods
.method constructor <init>(Landroid/net/pppoe/PppoeStateTracker;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/net/pppoe/PppoeStateTracker$1;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    monitor-enter p0

    const/4 v3, 0x0

    .local v3, newNetworkstate:Z
    :try_start_0
    new-instance v2, Landroid/net/pppoe/PppoeDevInfo;

    invoke-direct {v2}, Landroid/net/pppoe/PppoeDevInfo;-><init>()V

    .local v2, info:Landroid/net/pppoe/PppoeDevInfo;
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :goto_0
    monitor-exit p0

    return v7

    :pswitch_0
    iget-object v8, p0, Landroid/net/pppoe/PppoeStateTracker$1;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker$1;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    #getter for: Landroid/net/pppoe/PppoeStateTracker;->mPppInterfaceAdded:Z
    invoke-static {v6}, Landroid/net/pppoe/PppoeStateTracker;->access$000(Landroid/net/pppoe/PppoeStateTracker;)Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v7

    :goto_1
    #setter for: Landroid/net/pppoe/PppoeStateTracker;->mPppInterfaceAdded:Z
    invoke-static {v8, v6}, Landroid/net/pppoe/PppoeStateTracker;->access$002(Landroid/net/pppoe/PppoeStateTracker;Z)Z

    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker$1;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    #getter for: Landroid/net/pppoe/PppoeStateTracker;->mPppInterfaceAdded:Z
    invoke-static {v6}, Landroid/net/pppoe/PppoeStateTracker;->access$000(Landroid/net/pppoe/PppoeStateTracker;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "PppoeStateTracker"

    const-string v8, "[EVENT: PPP interface is ADDED]"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string v6, "PppoeStateTracker"

    const-string v8, "clear PPP IP Config"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "dhcp.ppp0.ipaddress"

    const-string v8, "0.0.0.0"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "dhcp.ppp0.mask"

    const-string v8, "0.0.0.0"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "dhcp.ppp0.dns1"

    const-string v8, "0.0.0.0"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "dhcp.ppp0.dns2"

    const-string v8, "0.0.0.0"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "dhcp.ppp0.gateway"

    const-string v8, "0.0.0.0"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker$1;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    #getter for: Landroid/net/pppoe/PppoeStateTracker;->mInterfaceName:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/pppoe/PppoeStateTracker;->access$100(Landroid/net/pppoe/PppoeStateTracker;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/net/pppoe/PppoeDevInfo;->setIfName(Ljava/lang/String;)V

    const-string v6, "0.0.0.0"

    invoke-virtual {v2, v6}, Landroid/net/pppoe/PppoeDevInfo;->setIpAddress(Ljava/lang/String;)V

    const-string v6, "0.0.0.0"

    invoke-virtual {v2, v6}, Landroid/net/pppoe/PppoeDevInfo;->setNetMask(Ljava/lang/String;)V

    const-string v6, "0.0.0.0"

    invoke-virtual {v2, v6}, Landroid/net/pppoe/PppoeDevInfo;->setDnsAddr(Ljava/lang/String;)V

    const-string v6, "0.0.0.0"

    invoke-virtual {v2, v6}, Landroid/net/pppoe/PppoeDevInfo;->setRouteAddr(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker$1;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    #getter for: Landroid/net/pppoe/PppoeStateTracker;->mEM:Landroid/net/pppoe/PppoeManager;
    invoke-static {v6}, Landroid/net/pppoe/PppoeStateTracker;->access$200(Landroid/net/pppoe/PppoeStateTracker;)Landroid/net/pppoe/PppoeManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/net/pppoe/PppoeManager;->UpdatePppoeDevInfo(Landroid/net/pppoe/PppoeDevInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker$1;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    #calls: Landroid/net/pppoe/PppoeStateTracker;->configureInterface(Landroid/net/pppoe/PppoeDevInfo;)Z
    invoke-static {v6, v2}, Landroid/net/pppoe/PppoeStateTracker;->access$300(Landroid/net/pppoe/PppoeStateTracker;Landroid/net/pppoe/PppoeDevInfo;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    const/4 v3, 0x0

    :try_start_2
    const-string v6, "net.ppp.errcode"

    const-string v8, "0:0"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, ppp_err:Ljava/lang/String;
    const-string v6, "PppoeStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ppp_err:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "0:0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker$1;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    const/4 v8, 0x4

    const-string v9, "0:0"

    #calls: Landroid/net/pppoe/PppoeStateTracker;->setPppoeState(ZILjava/lang/String;)V
    invoke-static {v6, v3, v8, v9}, Landroid/net/pppoe/PppoeStateTracker;->access$400(Landroid/net/pppoe/PppoeStateTracker;ZILjava/lang/String;)V

    goto/16 :goto_0

    .end local v2           #info:Landroid/net/pppoe/PppoeDevInfo;
    .end local v4           #ppp_err:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .restart local v2       #info:Landroid/net/pppoe/PppoeDevInfo;
    :cond_0
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_1
    :try_start_3
    const-string v6, "PppoeStateTracker"

    const-string v8, "[EVENT: PPP interface is REMOVED]"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .local v0, e:Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_3

    .end local v0           #e:Ljava/net/UnknownHostException;
    .restart local v4       #ppp_err:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker$1;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    const/4 v8, 0x5

    #calls: Landroid/net/pppoe/PppoeStateTracker;->setPppoeState(ZILjava/lang/String;)V
    invoke-static {v6, v3, v8, v4}, Landroid/net/pppoe/PppoeStateTracker;->access$400(Landroid/net/pppoe/PppoeStateTracker;ZILjava/lang/String;)V

    goto/16 :goto_0

    .end local v4           #ppp_err:Ljava/lang/String;
    :pswitch_1
    const-string v6, "PppoeStateTracker"

    const-string v8, "[EVENT: PPP interface is READY]"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v1, 0x0

    .local v1, i:I
    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker$1;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    #getter for: Landroid/net/pppoe/PppoeStateTracker;->mInterfaceName:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/pppoe/PppoeStateTracker;->access$100(Landroid/net/pppoe/PppoeStateTracker;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/net/pppoe/PppoeDevInfo;->setIfName(Ljava/lang/String;)V

    const/4 v5, 0x0

    .local v5, prop_val:Ljava/lang/String;
    :cond_3
    const-string v6, "dhcp.ppp0.ipaddress"

    const-string v8, "0.0.0.0"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/net/pppoe/PppoeDevInfo;->setIpAddress(Ljava/lang/String;)V

    const-string v6, "PppoeStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ip:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/16 v8, 0x3e8

    :try_start_4
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    add-int/lit8 v1, v1, 0x1

    :try_start_5
    invoke-virtual {v2}, Landroid/net/pppoe/PppoeDevInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    const-string v8, "0.0.0.0"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0xa

    if-lt v1, v6, :cond_3

    :cond_4
    const-string v6, "dhcp.ppp0.mask"

    const-string v8, "0.0.0.0"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/net/pppoe/PppoeDevInfo;->setNetMask(Ljava/lang/String;)V

    const-string v6, "PppoeStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mask:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "dhcp.ppp0.dns1"

    const-string v8, "0.0.0.0"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/net/pppoe/PppoeDevInfo;->setDnsAddr(Ljava/lang/String;)V

    const-string v6, "PppoeStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dns:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "dhcp.ppp0.gateway"

    const-string v8, "0.0.0.0"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/net/pppoe/PppoeDevInfo;->setRouteAddr(Ljava/lang/String;)V

    const-string v6, "PppoeStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "gw:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker$1;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    #getter for: Landroid/net/pppoe/PppoeStateTracker;->mEM:Landroid/net/pppoe/PppoeManager;
    invoke-static {v6}, Landroid/net/pppoe/PppoeStateTracker;->access$200(Landroid/net/pppoe/PppoeStateTracker;)Landroid/net/pppoe/PppoeManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/net/pppoe/PppoeManager;->UpdatePppoeDevInfo(Landroid/net/pppoe/PppoeDevInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker$1;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    #calls: Landroid/net/pppoe/PppoeStateTracker;->configureInterface(Landroid/net/pppoe/PppoeDevInfo;)Z
    invoke-static {v6, v2}, Landroid/net/pppoe/PppoeStateTracker;->access$300(Landroid/net/pppoe/PppoeStateTracker;Landroid/net/pppoe/PppoeDevInfo;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_1

    :goto_5
    :try_start_7
    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker$1;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    const/4 v8, 0x3

    const-string v9, "0:0"

    #calls: Landroid/net/pppoe/PppoeStateTracker;->setPppoeState(ZILjava/lang/String;)V
    invoke-static {v6, v3, v8, v9}, Landroid/net/pppoe/PppoeStateTracker;->access$400(Landroid/net/pppoe/PppoeStateTracker;ZILjava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .restart local v0       #e:Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_2
    move-exception v6

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
