.class Landroid/net/pppoe/PppoeMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "PppoeMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/pppoe/PppoeMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/pppoe/PppoeMonitor;


# direct methods
.method public constructor <init>(Landroid/net/pppoe/PppoeMonitor;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Landroid/net/pppoe/PppoeMonitor$MonitorThread;->this$0:Landroid/net/pppoe/PppoeMonitor;

    const-string v0, "PppoeMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method handleEvent(Ljava/lang/String;I)V
    .locals 2
    .parameter "ifname"
    .parameter "event"

    .prologue
    packed-switch p2, :pswitch_data_0

    iget-object v0, p0, Landroid/net/pppoe/PppoeMonitor$MonitorThread;->this$0:Landroid/net/pppoe/PppoeMonitor;

    #getter for: Landroid/net/pppoe/PppoeMonitor;->mTracker:Landroid/net/pppoe/PppoeStateTracker;
    invoke-static {v0}, Landroid/net/pppoe/PppoeMonitor;->access$000(Landroid/net/pppoe/PppoeMonitor;)Landroid/net/pppoe/PppoeStateTracker;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, p1, v1}, Landroid/net/pppoe/PppoeStateTracker;->notifyStateChange(Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/net/pppoe/PppoeMonitor$MonitorThread;->this$0:Landroid/net/pppoe/PppoeMonitor;

    #getter for: Landroid/net/pppoe/PppoeMonitor;->mTracker:Landroid/net/pppoe/PppoeStateTracker;
    invoke-static {v0}, Landroid/net/pppoe/PppoeMonitor;->access$000(Landroid/net/pppoe/PppoeMonitor;)Landroid/net/pppoe/PppoeStateTracker;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, p1, v1}, Landroid/net/pppoe/PppoeStateTracker;->notifyStateChange(Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/net/pppoe/PppoeMonitor$MonitorThread;->this$0:Landroid/net/pppoe/PppoeMonitor;

    #getter for: Landroid/net/pppoe/PppoeMonitor;->mTracker:Landroid/net/pppoe/PppoeStateTracker;
    invoke-static {v0}, Landroid/net/pppoe/PppoeMonitor;->access$000(Landroid/net/pppoe/PppoeMonitor;)Landroid/net/pppoe/PppoeStateTracker;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, p1, v1}, Landroid/net/pppoe/PppoeStateTracker;->notifyStateChange(Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/net/pppoe/PppoeMonitor$MonitorThread;->this$0:Landroid/net/pppoe/PppoeMonitor;

    #getter for: Landroid/net/pppoe/PppoeMonitor;->mTracker:Landroid/net/pppoe/PppoeStateTracker;
    invoke-static {v0}, Landroid/net/pppoe/PppoeMonitor;->access$000(Landroid/net/pppoe/PppoeMonitor;)Landroid/net/pppoe/PppoeStateTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/pppoe/PppoeStateTracker;->notifyPppConnected(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public run()V
    .locals 11

    .prologue
    :cond_0
    :goto_0
    const-string v8, "PppoeMonitor"

    const-string v9, "go poll events"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/net/pppoe/PppoeNative;->waitForEvent()Ljava/lang/String;

    move-result-object v2

    .local v2, eventName:Ljava/lang/String;
    const-string v8, "net.pppoe.running"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, propVal:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, n:I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    :goto_1
    if-nez v6, :cond_2

    const-string v8, "PppoeMonitor"

    const-string v9, "!net.pppoe.running. Discard event"

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v8, "PppoeMonitor"

    const-string v9, "net.pppoe.running not FOUND"

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_0

    const-string v8, "PppoeMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "got event "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, events:[Ljava/lang/String;
    array-length v5, v3

    .local v5, index:I
    const/4 v8, 0x2

    if-lt v5, v8, :cond_0

    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-eqz v5, :cond_0

    add-int/lit8 v8, v5, -0x1

    if-ge v4, v8, :cond_0

    const/4 v1, 0x0

    .local v1, event:I
    const-string v8, "PppoeMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dev: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v3, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ev "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v4, 0x1

    aget-object v10, v3, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v8, v4, 0x1

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, cmd:I
    const/16 v8, 0x11

    if-ne v0, v8, :cond_4

    const/4 v1, 0x2

    aget-object v8, v3, v4

    invoke-virtual {p0, v8, v1}, Landroid/net/pppoe/PppoeMonitor$MonitorThread;->handleEvent(Ljava/lang/String;I)V

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    :cond_4
    const/16 v8, 0x14

    if-ne v0, v8, :cond_5

    const/4 v1, 0x1

    aget-object v8, v3, v4

    invoke-virtual {p0, v8, v1}, Landroid/net/pppoe/PppoeMonitor$MonitorThread;->handleEvent(Ljava/lang/String;I)V

    goto :goto_3

    :cond_5
    const/16 v8, 0x10

    if-ne v0, v8, :cond_3

    const/4 v1, 0x3

    aget-object v8, v3, v4

    invoke-virtual {p0, v8, v1}, Landroid/net/pppoe/PppoeMonitor$MonitorThread;->handleEvent(Ljava/lang/String;I)V

    goto :goto_3

    .end local v0           #cmd:I
    .end local v1           #event:I
    .end local v3           #events:[Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #index:I
    :catch_0
    move-exception v8

    goto/16 :goto_1
.end method
