.class Landroid/net/PppoeStateTracker$1;
.super Ljava/lang/Object;
.source "PppoeStateTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/PppoeStateTracker;->runPppoe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/PppoeStateTracker;


# direct methods
.method constructor <init>(Landroid/net/PppoeStateTracker;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/net/PppoeStateTracker$1;->this$0:Landroid/net/PppoeStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v4, "PppoeStateTracker"

    const-string v5, "pppoe dialing is running!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/net/PppoeStateTracker;->access$300()Landroid/net/PppoeManager;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/net/PppoeManager;->setPppoeState(I)V

    sget-object v4, Landroid/net/PppoeStateTracker;->pppoeDialing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Landroid/net/PppoeStateTracker;->access$300()Landroid/net/PppoeManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/PppoeManager;->getSavedUser()Ljava/lang/String;

    move-result-object v3

    .local v3, user:Ljava/lang/String;
    invoke-static {}, Landroid/net/PppoeStateTracker;->access$300()Landroid/net/PppoeManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/PppoeManager;->getSavedPass()Ljava/lang/String;

    move-result-object v1

    .local v1, pass:Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string v4, "PppoeStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error:user is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " password is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Landroid/net/PppoeStateTracker;->pppoeDialing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Landroid/net/PppoeStateTracker;->access$300()Landroid/net/PppoeManager;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/net/PppoeManager;->setStateAndNotify(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Landroid/net/PppoeStateTracker$1;->this$0:Landroid/net/PppoeStateTracker;

    #getter for: Landroid/net/PppoeStateTracker;->DEBUG:Z
    invoke-static {v4}, Landroid/net/PppoeStateTracker;->access$400(Landroid/net/PppoeStateTracker;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "PppoeStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "username is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " password is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v2, ""

    .local v2, result:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v10, :cond_3

    invoke-static {}, Landroid/net/PppoeStateTracker;->access$300()Landroid/net/PppoeManager;

    move-result-object v4

    const-string v5, "connect"

    invoke-static {}, Landroid/net/PppoeStateTracker;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3, v1}, Landroid/net/PppoeManager;->execCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, p0, Landroid/net/PppoeStateTracker$1;->this$0:Landroid/net/PppoeStateTracker;

    #calls: Landroid/net/PppoeStateTracker;->sendCmdResult(Ljava/lang/String;)V
    invoke-static {v4, v2}, Landroid/net/PppoeStateTracker;->access$500(Landroid/net/PppoeStateTracker;Ljava/lang/String;)V

    if-lt v0, v10, :cond_5

    invoke-static {}, Landroid/net/PppoeStateTracker;->access$300()Landroid/net/PppoeManager;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/net/PppoeManager;->setStateAndNotify(I)V

    :goto_2
    sget-object v4, Landroid/net/PppoeStateTracker;->pppoeDialing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v0, 0x1

    shl-int/lit8 v4, v4, 0x2

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-static {}, Landroid/net/PppoeStateTracker;->access$300()Landroid/net/PppoeManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/net/PppoeManager;->setStateAndNotify(I)V

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_3
.end method
