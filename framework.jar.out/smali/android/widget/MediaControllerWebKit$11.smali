.class Landroid/widget/MediaControllerWebKit$11;
.super Ljava/lang/Thread;
.source "MediaControllerWebKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/MediaControllerWebKit;->showSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MediaControllerWebKit;


# direct methods
.method constructor <init>(Landroid/widget/MediaControllerWebKit;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/MediaControllerWebKit$11;->this$0:Landroid/widget/MediaControllerWebKit;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x15e

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Landroid/widget/MediaControllerWebKit$11;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->handler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/widget/MediaControllerWebKit;->access$2700(Landroid/widget/MediaControllerWebKit;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit$11;->this$0:Landroid/widget/MediaControllerWebKit;

    const/4 v2, 0x0

    #setter for: Landroid/widget/MediaControllerWebKit;->isAnima:Z
    invoke-static {v1, v2}, Landroid/widget/MediaControllerWebKit;->access$3102(Landroid/widget/MediaControllerWebKit;Z)Z

    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
