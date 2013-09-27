.class Landroid/widget/MediaControllerWebKit$1;
.super Ljava/lang/Object;
.source "MediaControllerWebKit.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MediaControllerWebKit;
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
    iput-object p1, p0, Landroid/widget/MediaControllerWebKit$1;->this$0:Landroid/widget/MediaControllerWebKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$1;->this$0:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v0}, Landroid/widget/MediaControllerWebKit;->isSettingViewShown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$1;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->isLoading()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$1;->this$0:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v0, v1}, Landroid/widget/MediaControllerWebKit;->show(Z)V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$1;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$1;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->pause()V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$1;->this$0:Landroid/widget/MediaControllerWebKit;

    #setter for: Landroid/widget/MediaControllerWebKit;->isPause:Z
    invoke-static {v0, v2}, Landroid/widget/MediaControllerWebKit;->access$102(Landroid/widget/MediaControllerWebKit;Z)Z

    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$1;->this$0:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v0}, Landroid/widget/MediaControllerWebKit;->updatePausePlay()V

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$1;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->start()V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$1;->this$0:Landroid/widget/MediaControllerWebKit;

    #setter for: Landroid/widget/MediaControllerWebKit;->isPause:Z
    invoke-static {v0, v1}, Landroid/widget/MediaControllerWebKit;->access$102(Landroid/widget/MediaControllerWebKit;Z)Z

    goto :goto_0
.end method
