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
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const-string v2, "media.html5videowin.enable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    .local v0, isalwaysfull:Z
    :goto_0
    invoke-static {}, Landroid/webkit/HTML5VideoFullScreen;->access$1200()Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen$3;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #calls: Landroid/webkit/HTML5VideoFullScreen;->getSurfaceView()Landroid/view/SurfaceView;
    invoke-static {v3}, Landroid/webkit/HTML5VideoFullScreen;->access$1100(Landroid/webkit/HTML5VideoFullScreen;)Landroid/view/SurfaceView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-static {}, Landroid/webkit/HTML5VideoFullScreen;->access$1300()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/webkit/HTML5VideoFullScreen;->access$1200()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-static {}, Landroid/webkit/HTML5VideoFullScreen;->access$1300()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-static {v4}, Landroid/webkit/HTML5VideoFullScreen;->access$1302(Landroid/view/View;)Landroid/view/View;

    :cond_0
    invoke-static {v4}, Landroid/webkit/HTML5VideoFullScreen;->access$1202(Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen$3;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget-object v2, v2, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ViewManager;->showAll()V

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen$3;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #setter for: Landroid/webkit/HTML5VideoFullScreen;->mThreadFlag:Z
    invoke-static {v2, v1}, Landroid/webkit/HTML5VideoFullScreen;->access$1402(Landroid/webkit/HTML5VideoFullScreen;Z)Z

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen$3;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;
    invoke-static {v1}, Landroid/webkit/HTML5VideoFullScreen;->access$800(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaControllerWebKit;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "csl"

    const-string v2, "onCustomViewHidden"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen$3;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;
    invoke-static {v1}, Landroid/webkit/HTML5VideoFullScreen;->access$800(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaControllerWebKit;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/MediaControllerWebKit;->dismissAll()V

    :cond_1
    const-string v1, "csl"

    const-string v2, "onCustomViewHidden"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen$3;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #setter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;
    invoke-static {v1, v4}, Landroid/webkit/HTML5VideoFullScreen;->access$802(Landroid/webkit/HTML5VideoFullScreen;Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit;

    const/4 v1, 0x5

    sput v1, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const-string v1, "HTML5VideoFullScreen"

    const-string v2, "mPlayer surface  WebChromeClient.CustomViewCallback .reset"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    sget-object v1, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen$3;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget-object v1, v1, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->exitFullScreenVideo()V

    :goto_1
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen$3;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iput-object v4, v1, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    return-void

    .end local v0           #isalwaysfull:Z
    :cond_2
    move v0, v1

    goto :goto_0

    .restart local v0       #isalwaysfull:Z
    :cond_3
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen$3;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget-object v1, v1, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen$3;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mPlayingWhenDestroyed:Z
    invoke-static {v2}, Landroid/webkit/HTML5VideoFullScreen;->access$700(Landroid/webkit/HTML5VideoFullScreen;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnStopFullScreen(Z)V

    goto :goto_1
.end method
