.class Lcom/android/server/WiredAccessoryManager$HdmiObserver$1;
.super Landroid/content/BroadcastReceiver;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager$HdmiObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/WiredAccessoryManager$HdmiObserver;


# direct methods
.method constructor <init>(Lcom/android/server/WiredAccessoryManager$HdmiObserver;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$HdmiObserver$1;->this$1:Lcom/android/server/WiredAccessoryManager$HdmiObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    const-string v2, "state"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .local v0, plugged:Z
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$HdmiObserver$1;->this$1:Lcom/android/server/WiredAccessoryManager$HdmiObserver;

    #getter for: Lcom/android/server/WiredAccessoryManager$HdmiObserver;->mHdmiPlugged:Z
    invoke-static {v2}, Lcom/android/server/WiredAccessoryManager$HdmiObserver;->access$800(Lcom/android/server/WiredAccessoryManager$HdmiObserver;)Z

    move-result v2

    if-eq v2, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$HdmiObserver$1;->this$1:Lcom/android/server/WiredAccessoryManager$HdmiObserver;

    #setter for: Lcom/android/server/WiredAccessoryManager$HdmiObserver;->mHdmiPlugged:Z
    invoke-static {v2, v0}, Lcom/android/server/WiredAccessoryManager$HdmiObserver;->access$802(Lcom/android/server/WiredAccessoryManager$HdmiObserver;Z)Z

    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$HdmiObserver$1;->this$1:Lcom/android/server/WiredAccessoryManager$HdmiObserver;

    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$HdmiObserver$1;->this$1:Lcom/android/server/WiredAccessoryManager$HdmiObserver;

    #getter for: Lcom/android/server/WiredAccessoryManager$HdmiObserver;->mHdmiPlugged:Z
    invoke-static {v3}, Lcom/android/server/WiredAccessoryManager$HdmiObserver;->access$800(Lcom/android/server/WiredAccessoryManager$HdmiObserver;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    #calls: Lcom/android/server/WiredAccessoryManager$HdmiObserver;->updateHdmiState(I)V
    invoke-static {v2, v1}, Lcom/android/server/WiredAccessoryManager$HdmiObserver;->access$900(Lcom/android/server/WiredAccessoryManager$HdmiObserver;I)V

    :cond_1
    return-void
.end method
