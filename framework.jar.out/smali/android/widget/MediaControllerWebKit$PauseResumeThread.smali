.class Landroid/widget/MediaControllerWebKit$PauseResumeThread;
.super Ljava/lang/Object;
.source "MediaControllerWebKit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MediaControllerWebKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PauseResumeThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MediaControllerWebKit;


# direct methods
.method private constructor <init>(Landroid/widget/MediaControllerWebKit;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/MediaControllerWebKit$PauseResumeThread;->this$0:Landroid/widget/MediaControllerWebKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/MediaControllerWebKit;Landroid/widget/MediaControllerWebKit$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/MediaControllerWebKit$PauseResumeThread;-><init>(Landroid/widget/MediaControllerWebKit;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$PauseResumeThread;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$PauseResumeThread;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->pause()V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$PauseResumeThread;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->showPauseFlag()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$PauseResumeThread;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->start()V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$PauseResumeThread;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->hidePauseFlag()V

    goto :goto_0
.end method
