.class Landroid/net/PppoeStateTracker$myStandby;
.super Landroid/content/BroadcastReceiver;
.source "PppoeStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/PppoeStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "myStandby"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/PppoeStateTracker;


# direct methods
.method constructor <init>(Landroid/net/PppoeStateTracker;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/net/PppoeStateTracker$myStandby;->this$0:Landroid/net/PppoeStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v0, "PppoeStateTracker"

    const-string v1, "begin standby"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/PppoeStateTracker$myStandby;->this$0:Landroid/net/PppoeStateTracker;

    invoke-virtual {v0}, Landroid/net/PppoeStateTracker;->teardown()Z

    return-void
.end method
