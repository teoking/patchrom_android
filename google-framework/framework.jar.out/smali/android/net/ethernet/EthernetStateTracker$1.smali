.class Landroid/net/ethernet/EthernetStateTracker$1;
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
    iput-object p1, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    monitor-enter p0

    const/4 v3, 0x0

    .local v3, newNetworkstate:Z
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v8

    :pswitch_0
    const-string v5, "EthernetStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Old status stackConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$000(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HWConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$100(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "EthernetStateTracker"

    const-string v6, "[EVENT_INTERFACE_CONFIGURATION_SUCCEEDED]"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v6, 0x1

    #setter for: Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z
    invoke-static {v5, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$002(Landroid/net/ethernet/EthernetStateTracker;Z)Z

    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v6, 0x1

    #setter for: Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z
    invoke-static {v5, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$102(Landroid/net/ethernet/EthernetStateTracker;Z)Z

    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;
    invoke-static {v5}, Landroid/net/ethernet/EthernetStateTracker;->access$200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/ethernet/EthernetManager;->isEthDeviceAdded()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "EthernetStateTracker"

    const-string v6, "Ether is added"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :cond_1
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    iget v6, p1, Landroid/os/Message;->what:I

    #calls: Landroid/net/ethernet/EthernetStateTracker;->setEthState(ZI)V
    invoke-static {v5, v3, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$300(Landroid/net/ethernet/EthernetStateTracker;ZI)V

    const-string v5, "EthernetStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New status, stackConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$000(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HWConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$100(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :pswitch_1
    :try_start_1
    const-string v5, "EthernetStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Old status stackConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$000(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HWConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$100(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "EthernetStateTracker"

    const-string v6, "[EVENT_INTERFACE_CONFIGURATION_FAILED]"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v6, 0x0

    #setter for: Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z
    invoke-static {v5, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$002(Landroid/net/ethernet/EthernetStateTracker;Z)Z

    const-string v5, "EthernetStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New status, stackConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$000(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HWConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$100(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    iget v6, p1, Landroid/os/Message;->what:I

    #calls: Landroid/net/ethernet/EthernetStateTracker;->setEthState(ZI)V
    invoke-static {v5, v3, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$300(Landroid/net/ethernet/EthernetStateTracker;ZI)V

    goto/16 :goto_0

    :pswitch_2
    const-string v5, "EthernetStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Old status stackConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$000(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HWConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$100(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "EthernetStateTracker"

    const-string v6, "[EVENT: IP is configured]"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v6, 0x1

    #setter for: Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z
    invoke-static {v5, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$102(Landroid/net/ethernet/EthernetStateTracker;Z)Z

    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;
    invoke-static {v5}, Landroid/net/ethernet/EthernetStateTracker;->access$200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/ethernet/EthernetManager;->isEthDeviceAdded()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "EthernetStateTracker"

    const-string v6, "Ether is added"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :cond_2
    const-string v5, "EthernetStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New status, stackConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$000(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HWConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$100(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_3
    const-string v5, "EthernetStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Old status stackConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$000(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HWConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$100(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "EthernetStateTracker"

    const-string v6, "[EVENT: ether is removed]"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v6, 0x0

    #setter for: Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z
    invoke-static {v5, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$102(Landroid/net/ethernet/EthernetStateTracker;Z)Z

    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v6, 0x0

    iget v7, p1, Landroid/os/Message;->what:I

    #calls: Landroid/net/ethernet/EthernetStateTracker;->setEthState(ZI)V
    invoke-static {v5, v6, v7}, Landroid/net/ethernet/EthernetStateTracker;->access$300(Landroid/net/ethernet/EthernetStateTracker;ZI)V

    const-string v5, "EthernetStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New status, stackConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$000(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HWConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$100(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_4
    const-string v5, "EthernetStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Old status stackConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$000(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HWConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$100(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "EthernetStateTracker"

    const-string v6, "[EVENT: Ether is up]"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v6, 0x1

    #setter for: Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z
    invoke-static {v5, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$102(Landroid/net/ethernet/EthernetStateTracker;Z)Z

    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5}, Landroid/net/ethernet/EthernetStateTracker;->access$400(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;
    invoke-static {v5}, Landroid/net/ethernet/EthernetStateTracker;->access$200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/ethernet/EthernetManager;->getSavedEthConfig()Landroid/net/ethernet/EthernetDevInfo;

    move-result-object v2

    .local v2, info:Landroid/net/ethernet/EthernetDevInfo;
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;
    invoke-static {v5}, Landroid/net/ethernet/EthernetStateTracker;->access$200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/ethernet/EthernetManager;->isEthDeviceAdded()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/ethernet/EthernetDevInfo;->getConnectMode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "manual"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x1

    const-string v5, "EthernetStateTracker"

    const-string v6, "Ether is added"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "EthernetStateTracker"

    const-string v6, "Static IP configured, make network connected"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v6, 0x5

    #calls: Landroid/net/ethernet/EthernetStateTracker;->setEthState(ZI)V
    invoke-static {v5, v3, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$300(Landroid/net/ethernet/EthernetStateTracker;ZI)V

    const-string v5, "EthernetStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New status, stackConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$000(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HWConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$100(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mStartingDhcp:Z
    invoke-static {v5}, Landroid/net/ethernet/EthernetStateTracker;->access$500(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;
    invoke-static {v5}, Landroid/net/ethernet/EthernetStateTracker;->access$200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/ethernet/EthernetManager;->getEthState()I

    move-result v4

    .local v4, state:I
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;
    invoke-static {v5}, Landroid/net/ethernet/EthernetStateTracker;->access$200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    if-eq v4, v8, :cond_0

    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;
    invoke-static {v5}, Landroid/net/ethernet/EthernetStateTracker;->access$200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/ethernet/EthernetManager;->getSavedEthConfig()Landroid/net/ethernet/EthernetDevInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;
    invoke-static {v5}, Landroid/net/ethernet/EthernetStateTracker;->access$200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/ethernet/EthernetManager;->ethConfigured()Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .local v1, ifname:Ljava/lang/String;
    new-instance v2, Landroid/net/ethernet/EthernetDevInfo;

    .end local v2           #info:Landroid/net/ethernet/EthernetDevInfo;
    invoke-direct {v2}, Landroid/net/ethernet/EthernetDevInfo;-><init>()V

    .restart local v2       #info:Landroid/net/ethernet/EthernetDevInfo;
    invoke-virtual {v2, v1}, Landroid/net/ethernet/EthernetDevInfo;->setIfName(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;
    invoke-static {v5}, Landroid/net/ethernet/EthernetStateTracker;->access$200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/net/ethernet/EthernetManager;->updateEthDevInfo(Landroid/net/ethernet/EthernetDevInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1           #ifname:Ljava/lang/String;
    :cond_5
    :try_start_2
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #calls: Landroid/net/ethernet/EthernetStateTracker;->configureInterface(Landroid/net/ethernet/EthernetDevInfo;)Z
    invoke-static {v5, v2}, Landroid/net/ethernet/EthernetStateTracker;->access$600(Landroid/net/ethernet/EthernetStateTracker;Landroid/net/ethernet/EthernetDevInfo;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/net/UnknownHostException;
    :try_start_3
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
