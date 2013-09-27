.class Landroid/webkit/HTML5VideoFullScreen$3;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Landroid/webkit/WebChromeClient$CustomViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5VideoFullScreen;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5VideoFullScreen;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen$3;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomViewHidden()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const-string v1, "media.html5videowin.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .local v0, isalwaysfull:Z
    :cond_0
    invoke-static {}, Landroid/webkit/HTML5VideoFullScreen;->access$1100()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen$3;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #calls: Landroid/webkit/HTML5VideoFullScreen;->getSurfaceView()Landroid/view/SurfaceView;
    invoke-static {v2}, Landroid/webkit/HTML5VideoFullScreen;->access$1000(Landroid/webkit/HTML5VideoFullScreen;)Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-static {}, Landroid/webkit/HTML5VideoFullScreen;->access$1200()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/webkit/HTML5VideoFullScreen;->access$1100()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-static {}, Landroid/webkit/HTML5VideoFullScreen;->access$1200()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-static {v3}, Landroid/webkit/HTML5VideoFullScreen;->access$1202(Landroid/view/View;)Landroid/view/View;

    :cond_1
    invoke-static {v3}, Landroid/webkit/HTML5VideoFullScreen;->access$1102(Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen$3;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget-object v1, v1, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/ViewManager;->showAll()V

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen$3;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #setter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1, v3}, Landroid/webkit/HTML5VideoFullScreen;->access$202(Landroid/webkit/HTML5VideoFullScreen;Landroid/widget/MediaController;)Landroid/widget/MediaController;

    const/4 v1, 0x4

    sput v1, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const-string v1, "HTML5VideoFullScreen"

    const-string v2, "mPlayer surface  WebChromeClient.CustomViewCallback .reset"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    sget-object v1, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen$3;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget-object v1, v1, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnEnded()V

    :goto_0
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen$3;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iput-object v3, v1, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    return-void

    :cond_2
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen$3;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget-object v1, v1, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen$3;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mPlayingWhenDestroyed:Z
    invoke-static {v2}, Landroid/webkit/HTML5VideoFullScreen;->access$800(Landroid/webkit/HTML5VideoFullScreen;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnStopFullScreen(Z)V

    goto :goto_0
.end method
