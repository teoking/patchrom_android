.class Lcom/android/server/WiredAccessoryManager$HdmiObserver;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HdmiObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHdmiPlugged:Z

.field private mHdmiPluggedReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/WiredAccessoryManager;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$HdmiObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/WiredAccessoryManager$HdmiObserver;->mHdmiPlugged:Z

    new-instance v0, Lcom/android/server/WiredAccessoryManager$HdmiObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/WiredAccessoryManager$HdmiObserver$1;-><init>(Lcom/android/server/WiredAccessoryManager$HdmiObserver;)V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager$HdmiObserver;->mHdmiPluggedReceiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager$HdmiObserver;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/WiredAccessoryManager$HdmiObserver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager$HdmiObserver;->mHdmiPlugged:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/WiredAccessoryManager$HdmiObserver;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/WiredAccessoryManager$HdmiObserver;->mHdmiPlugged:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/WiredAccessoryManager$HdmiObserver;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/WiredAccessoryManager$HdmiObserver;->updateHdmiState(I)V

    return-void
.end method

.method private updateHdmiState(I)V
    .locals 4
    .parameter "state"

    .prologue
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$HdmiObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    #getter for: Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/WiredAccessoryManager;->access$300(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$HdmiObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    #getter for: Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I
    invoke-static {v1}, Lcom/android/server/WiredAccessoryManager;->access$600(Lcom/android/server/WiredAccessoryManager;)I

    move-result v1

    and-int/lit8 v3, v1, -0x11

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/16 v1, 0x10

    :goto_0
    or-int v0, v3, v1

    .local v0, newState:I
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$HdmiObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    const-string v3, "hdmi"

    #calls: Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V
    invoke-static {v1, v3, v0}, Lcom/android/server/WiredAccessoryManager;->access$700(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;I)V

    monitor-exit v2

    return-void

    .end local v0           #newState:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method init()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$HdmiObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    #getter for: Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/WiredAccessoryManager;->access$300(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/WiredAccessoryManager$HdmiObserver;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/WiredAccessoryManager$HdmiObserver;->mHdmiPluggedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    const-string v4, "state"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/WiredAccessoryManager$HdmiObserver;->mHdmiPlugged:Z

    iget-boolean v4, p0, Lcom/android/server/WiredAccessoryManager$HdmiObserver;->mHdmiPlugged:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/WiredAccessoryManager$HdmiObserver;->mHdmiPlugged:Z

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/WiredAccessoryManager$HdmiObserver;->updateHdmiState(I)V

    :cond_1
    monitor-exit v3

    return-void

    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
