.class Landroid/widget/MediaControllerWebKit$2;
.super Ljava/lang/Object;
.source "MediaControllerWebKit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/MediaControllerWebKit;->initControllerView(Landroid/view/View;)V
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
    iput-object p1, p0, Landroid/widget/MediaControllerWebKit$2;->this$0:Landroid/widget/MediaControllerWebKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$2;->this$0:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v0}, Landroid/widget/MediaControllerWebKit;->isSettingViewShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$2;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$2;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->dismissLoading()V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$2;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->start()V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$2;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->hidePauseFlag()V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$2;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPauseButton:Landroid/widget/Button;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$200(Landroid/widget/MediaControllerWebKit;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x108038d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$2;->this$0:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v0}, Landroid/widget/MediaControllerWebKit;->updatePausePlay()V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$2;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$2;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$2;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->pause()V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$2;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->showPauseFlag()V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$2;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPauseButton:Landroid/widget/Button;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$200(Landroid/widget/MediaControllerWebKit;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x108038e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method
