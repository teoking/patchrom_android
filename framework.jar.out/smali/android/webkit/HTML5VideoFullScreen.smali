.class public Landroid/webkit/HTML5VideoFullScreen;
.super Landroid/webkit/HTML5VideoView;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;,
        Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0x2eeL

.field private static final ANIMATION_STATE_FINISHED:I = 0x2

.field private static final ANIMATION_STATE_NONE:I = 0x0

.field private static final ANIMATION_STATE_STARTED:I = 0x1

.field private static final DISMISS_LOADING:I = 0x5

.field public static final DISPLAY_MODE_16V9:I = 0x3

.field public static final DISPLAY_MODE_4V3:I = 0x4

.field public static final DISPLAY_MODE_DEFAULT:I = 0x1

.field public static final DISPLAY_MODE_FULLSCREEN:I = 0x0

.field public static final DISPLAY_MODE_ORIGINAL:I = 0x2

.field public static final DISPLAY_MODE_UNKNOWN:I = 0x5

.field static final FULLSCREEN_OFF:I = 0x0

.field static final FULLSCREEN_SURFACECREATED:I = 0x2

.field static final FULLSCREEN_SURFACECREATING:I = 0x1

.field private static final HIDE_FLAG:I = 0x6

.field private static final IMEDIA_PLAYER:Ljava/lang/String; = "android.media.IMediaPlayer"

.field private static final LOGTAG:Ljava/lang/String; = "HTML5VideoFullScreen"

.field private static final SHOW_LOADING:I = 0x4

.field private static mLayout:Landroid/widget/FrameLayout;

.field private static mProgressView:Landroid/view/View;


# instance fields
.field private deviceHeight:I

.field private deviceWidth:I

.field private mAnimAlphaPlayStatusIn:Landroid/view/animation/Animation;

.field private mAnimAlphaTipOut:Landroid/view/animation/Animation;

.field private mAnimCancel:Z

.field private mAnimationState:I

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private final mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentBufferPercentage:I

.field private mFlagDecor:Landroid/view/View;

.field private mFlagImg:Landroid/widget/ImageView;

.field private mFlagShowing:Z

.field private mFlagWindow:Landroid/view/Window;

.field private mFullScreenMode:I

.field private mHandler:Landroid/os/Handler;

.field private mIsFullscreen:Z

.field private mMedia:Landroid/media/MediaPlayer;

.field private mMediaController:Landroid/widget/MediaControllerWebKit;

.field private mPlayingWhenDestroyed:Z

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mThreadFlag:Z

.field private mVideoHeight:I

.field private mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

.field private mVideoWidth:I

.field private pauseFlag:Z

.field private seekFlag:Z

.field private settingView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;IIZ)V
    .locals 2
    .parameter "context"
    .parameter "videoLayerId"
    .parameter "position"
    .parameter "skipPrepare"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mThreadFlag:Z

    iput-boolean v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mPlayingWhenDestroyed:Z

    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$1;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoFullScreen$1;-><init>(Landroid/webkit/HTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$2;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoFullScreen$2;-><init>(Landroid/webkit/HTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$3;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoFullScreen$3;-><init>(Landroid/webkit/HTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$4;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoFullScreen$4;-><init>(Landroid/webkit/HTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$5;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoFullScreen$5;-><init>(Landroid/webkit/HTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    iput-boolean v1, p0, Landroid/webkit/HTML5VideoFullScreen;->pauseFlag:Z

    iput-boolean v1, p0, Landroid/webkit/HTML5VideoFullScreen;->seekFlag:Z

    iput-boolean v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mFlagShowing:Z

    iput-boolean v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mAnimCancel:Z

    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$7;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoFullScreen$7;-><init>(Landroid/webkit/HTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-direct {v0, p0, p1}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;-><init>(Landroid/webkit/HTML5VideoFullScreen;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    iput v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mFullScreenMode:I

    iput v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I

    iput v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I

    invoke-virtual {p0, p2, p3, p4}, Landroid/webkit/HTML5VideoFullScreen;->init(IIZ)V

    return-void
.end method

.method static synthetic access$000(Landroid/webkit/HTML5VideoFullScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$002(Landroid/webkit/HTML5VideoFullScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Landroid/webkit/HTML5VideoFullScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$102(Landroid/webkit/HTML5VideoFullScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Landroid/webkit/HTML5VideoFullScreen;)Landroid/view/SurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullScreen;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0
    .parameter "x0"

    .prologue
    sput-object p0, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1300()Landroid/view/View;
    .locals 1

    .prologue
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"

    .prologue
    sput-object p0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1402(Landroid/webkit/HTML5VideoFullScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mThreadFlag:Z

    return p1
.end method

.method static synthetic access$1502(Landroid/webkit/HTML5VideoFullScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$1600(Landroid/webkit/HTML5VideoFullScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->pauseFlag:Z

    return v0
.end method

.method static synthetic access$1700(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mFlagImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/webkit/HTML5VideoFullScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Landroid/webkit/HTML5VideoFullScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/webkit/HTML5VideoFullScreen;->deviceWidth:I

    return p1
.end method

.method static synthetic access$302(Landroid/webkit/HTML5VideoFullScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/webkit/HTML5VideoFullScreen;->deviceHeight:I

    return p1
.end method

.method static synthetic access$402(Landroid/webkit/HTML5VideoFullScreen;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$502(Landroid/webkit/HTML5VideoFullScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mFullScreenMode:I

    return p1
.end method

.method static synthetic access$600(Landroid/webkit/HTML5VideoFullScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullScreen;->prepareForFullScreen()V

    return-void
.end method

.method static synthetic access$700(Landroid/webkit/HTML5VideoFullScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mPlayingWhenDestroyed:Z

    return v0
.end method

.method static synthetic access$702(Landroid/webkit/HTML5VideoFullScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mPlayingWhenDestroyed:Z

    return p1
.end method

.method static synthetic access$800(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaControllerWebKit;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    return-object v0
.end method

.method static synthetic access$802(Landroid/webkit/HTML5VideoFullScreen;Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    return-object p1
.end method

.method static synthetic access$900(Landroid/webkit/HTML5VideoFullScreen;)Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    return-object v0
.end method

.method private attachFlagDisplay(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x2

    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .local v2, inflate:Landroid/view/LayoutInflater;
    const v4, 0x1090081

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, flagView:Landroid/view/View;
    const v4, 0x109008a

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/HTML5VideoFullScreen;->settingView:Landroid/view/View;

    const v4, 0x1020329

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Landroid/webkit/HTML5VideoFullScreen;->mFlagImg:Landroid/widget/ImageView;

    const v4, 0x10a0018

    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/HTML5VideoFullScreen;->mAnimAlphaPlayStatusIn:Landroid/view/animation/Animation;

    const v4, 0x10a0019

    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/HTML5VideoFullScreen;->mAnimAlphaTipOut:Landroid/view/animation/Animation;

    iget-object v4, p0, Landroid/webkit/HTML5VideoFullScreen;->mFlagImg:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Landroid/webkit/HTML5VideoFullScreen;->mFlagImg:Landroid/widget/ImageView;

    new-instance v5, Landroid/webkit/HTML5VideoFullScreen$6;

    invoke-direct {v5, p0}, Landroid/webkit/HTML5VideoFullScreen$6;-><init>(Landroid/webkit/HTML5VideoFullScreen;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v0, v6, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .local v0, Params:Landroid/widget/FrameLayout$LayoutParams;
    sget-object v4, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, 0x5

    invoke-direct {v3, v6, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .local v3, lParams:Landroid/widget/FrameLayout$LayoutParams;
    sget-object v4, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    iget-object v5, p0, Landroid/webkit/HTML5VideoFullScreen;->settingView:Landroid/view/View;

    invoke-virtual {v4, v5, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private attachMediaController()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    if-nez v1, :cond_0

    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, v2}, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .local v0, mc:Landroid/widget/MediaControllerWebKit;
    sget-object v1, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/MediaControllerWebKit;->setSystemUiVisibility(I)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    .end local v0           #mc:Landroid/widget/MediaControllerWebKit;
    :cond_0
    sget-object v1, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v1, p0}, Landroid/widget/MediaControllerWebKit;->setMediaPlayer(Landroid/widget/MediaControllerWebKit$MediaPlayerControl;)V

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v1, v2}, Landroid/widget/MediaControllerWebKit;->setAnchorView(Landroid/view/View;)V

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/MediaControllerWebKit;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    return-object v0
.end method

.method private hideAllFlag()V
    .locals 3

    .prologue
    iget-boolean v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mFlagShowing:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mFlagImg:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mFlagShowing:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "ImageDisplay"

    const-string v2, "already removed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isFilmClub()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "www.videozaixian.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isInPlaybackState()Z
    .locals 1

    .prologue
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareForFullScreen()V
    .locals 3

    .prologue
    sget-object v1, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, v2}, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .local v0, mc:Landroid/widget/MediaControllerWebKit;
    sget-object v1, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/MediaControllerWebKit;->setSystemUiVisibility(I)V

    invoke-direct {p0, v0}, Landroid/webkit/HTML5VideoFullScreen;->setMediaController(Landroid/widget/MediaControllerWebKit;)V

    sget-object v1, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    sget-object v1, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoFullScreen;->prepareDataAndDisplayMode(Landroid/webkit/HTML5VideoViewProxy;)V

    return-void
.end method

.method private setMediaController(Landroid/widget/MediaControllerWebKit;)V
    .locals 0
    .parameter "m"

    .prologue
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullScreen;->attachMediaController()V

    return-void
.end method

.method private showAllFlag()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mFlagShowing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mFlagShowing:Z

    :cond_0
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 2

    .prologue
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v0}, Landroid/widget/MediaControllerWebKit;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v0}, Landroid/widget/MediaControllerWebKit;->hide()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaControllerWebKit;->show(Z)V

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanSeekForward:Z

    return v0
.end method

.method public decideDisplayMode()V
    .locals 2

    .prologue
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public dismissLoading()V
    .locals 3

    .prologue
    const-string v0, "csl"

    const-string v1, "dismissLoading"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "csl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mProgressView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public enterFullScreenVideoState(ILandroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V
    .locals 7
    .parameter "layerId"
    .parameter "proxy"
    .parameter "webView"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    const/4 v4, 0x1

    iput v4, p0, Landroid/webkit/HTML5VideoFullScreen;->mFullScreenMode:I

    iput v6, p0, Landroid/webkit/HTML5VideoFullScreen;->mCurrentBufferPercentage:I

    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iput-object p2, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2, v4}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->setFocusable(Z)V

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2, v4}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->setFocusableInTouchMode(Z)V

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->requestFocus()Z

    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v3}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v5, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .local v1, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullScreen;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p3}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_1

    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    invoke-virtual {p3}, Landroid/webkit/WebViewClassic;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Landroid/webkit/WebViewClassic;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ViewManager;->hideAll()V

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v2

    sput-object v2, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    if-eqz v2, :cond_1

    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    sget-object v3, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/webkit/HTML5VideoFullScreen;->showLoading()V

    :cond_1
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/HTML5VideoFullScreen;->attachFlagDisplay(Landroid/content/Context;)V

    return-void
.end method

.method public fullScreenExited()Z
    .locals 1

    .prologue
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBuffer(Landroid/media/MediaPlayer;)I
    .locals 5
    .parameter "mp"

    .prologue
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .local v2, request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.media.IMediaPlayer"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v2, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .local v3, step:I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .end local v3           #step:I
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v3

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, -0x1

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mCurrentBufferPercentage:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSeekStep(Landroid/media/MediaPlayer;)I
    .locals 5
    .parameter "mp"

    .prologue
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .local v2, request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.media.IMediaPlayer"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/16 v4, 0x65

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v2, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .local v3, step:I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .end local v3           #step:I
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v3

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, -0x1

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public hideCustomView()V
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v1}, Landroid/widget/MediaControllerWebKit;->dismissSetting()V

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v1}, Landroid/widget/MediaControllerWebKit;->hide()V

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :cond_1
    return-void
.end method

.method public hideFFFlag()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/HTML5VideoFullScreen;->seekFlag:Z

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mFlagImg:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mAnimAlphaTipOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mAnimAlphaTipOut:Landroid/view/animation/Animation;

    new-instance v2, Landroid/webkit/HTML5VideoFullScreen$8;

    invoke-direct {v2, p0}, Landroid/webkit/HTML5VideoFullScreen$8;-><init>(Landroid/webkit/HTML5VideoFullScreen;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public hideFRFlag()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/HTML5VideoFullScreen;->seekFlag:Z

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mFlagImg:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mAnimAlphaTipOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mAnimAlphaTipOut:Landroid/view/animation/Animation;

    new-instance v2, Landroid/webkit/HTML5VideoFullScreen$9;

    invoke-direct {v2, p0}, Landroid/webkit/HTML5VideoFullScreen$9;-><init>(Landroid/webkit/HTML5VideoFullScreen;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public hideMuteFlag()V
    .locals 0

    .prologue
    return-void
.end method

.method public hidePauseFlag()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/HTML5VideoFullScreen;->pauseFlag:Z

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mFlagImg:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mAnimAlphaTipOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mAnimAlphaTipOut:Landroid/view/animation/Animation;

    new-instance v2, Landroid/webkit/HTML5VideoFullScreen$10;

    invoke-direct {v2, p0}, Landroid/webkit/HTML5VideoFullScreen$10;-><init>(Landroid/webkit/HTML5VideoFullScreen;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public isFullScreenMode()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public isLiveStream()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v3, "HTML5VideoFullScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKey is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "HTML5VideoFullScreen"

    const-string v4, "event.isDown"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x52

    if-ne p2, v3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v1}, Landroid/widget/MediaControllerWebKit;->isSettingViewShown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v1}, Landroid/widget/MediaControllerWebKit;->showSetting()V

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/16 v3, 0x17

    if-eq p2, v3, :cond_3

    const/16 v3, 0x55

    if-ne p2, v3, :cond_6

    :cond_3
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoFullScreen;->isLoading()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isDown()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "HTML5VideoFullScreen"

    const-string v4, "keyCode is KeyEvent.KEYCODE_DPAD_CENTER"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/webkit/HTML5VideoFullScreen;->isLiveStream()Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/webkit/HTML5VideoFullScreen;->pause()V

    invoke-virtual {p0}, Landroid/webkit/HTML5VideoFullScreen;->showPauseFlag()V

    :cond_4
    :goto_1
    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v3, v2}, Landroid/widget/MediaControllerWebKit;->show(Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoFullScreen;->start()V

    invoke-virtual {p0}, Landroid/webkit/HTML5VideoFullScreen;->hidePauseFlag()V

    goto :goto_1

    :cond_6
    const/4 v3, 0x4

    if-ne p2, v3, :cond_8

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->settingView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->settingView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_0

    :cond_8
    const/16 v3, 0x15

    if-eq p2, v3, :cond_9

    const/16 v3, 0x59

    if-ne p2, v3, :cond_c

    :cond_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "csl"

    const-string v4, "FullScreen ACTION_DOWN"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v3}, Landroid/widget/MediaControllerWebKit;->isShowing()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v3, v2}, Landroid/widget/MediaControllerWebKit;->show(Z)V

    :cond_a
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v1, v2, :cond_b

    :cond_b
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoFullScreen;->hidePauseFlag()V

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x16

    if-eq p2, v3, :cond_d

    const/16 v3, 0x5a

    if-ne p2, v3, :cond_10

    :cond_d
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "csl"

    const-string v4, "FullScreen ACTION_DOWN"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v3}, Landroid/widget/MediaControllerWebKit;->isShowing()Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v3, v2}, Landroid/widget/MediaControllerWebKit;->show(Z)V

    :cond_e
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v1, v2, :cond_f

    :cond_f
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoFullScreen;->hidePauseFlag()V

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0x56

    if-ne p2, v3, :cond_0

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    if-eqz v2, :cond_11

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v2}, Landroid/widget/MediaControllerWebKit;->dismissSetting()V

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v2}, Landroid/widget/MediaControllerWebKit;->hide()V

    :cond_11
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    const/4 v2, -0x1

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v3}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "www.videozaixian.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_12

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setShouldGobackOnepage(Z)V

    :cond_12
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto/16 :goto_0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 5
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "oldLeft"
    .parameter "oldTop"
    .parameter "oldRight"
    .parameter "oldBottom"

    .prologue
    const/4 v0, 0x0

    .local v0, Rotation:I
    const-string v2, "HTML5VideoFullScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Layout changed,left="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " top="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " right="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HTML5VideoFullScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Layout changed,oldLeft="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " oldTop="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " oldRight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " oldBottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, builder:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".left="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".top="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".right="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".bottom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".oldLeft="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".oldTop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".oldRight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".oldBottom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".Rotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "HTML5VideoFullScreen"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #builder:Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 9
    .parameter "mp"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/webkit/HTML5VideoView;->onPrepared(Landroid/media/MediaPlayer;)V

    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMedia:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v3, p0}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v3, p0}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p1, v4, v4}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v0

    .local v0, data:Landroid/media/Metadata;
    if-eqz v0, :cond_c

    invoke-virtual {v0, v5}, Landroid/media/Metadata;->has(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v5}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_0
    move v3, v5

    :goto_0
    iput-boolean v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanPause:Z

    invoke-virtual {v0, v6}, Landroid/media/Metadata;->has(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v6}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_1
    move v3, v5

    :goto_1
    iput-boolean v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanSeekBack:Z

    invoke-virtual {v0, v7}, Landroid/media/Metadata;->has(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v7}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_2
    move v3, v5

    :goto_2
    iput-boolean v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanSeekForward:Z

    :goto_3
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoFullScreen;->dismissLoading()V

    const-string v3, "HTML5VideoFullScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPrepared()--mSavePauseTime"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Landroid/webkit/HTML5VideoFullScreen;->mSavePauseTime:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "--getStartWhenPrepared--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/webkit/HTML5VideoFullScreen;->getStartWhenPrepared()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/webkit/HTML5VideoFullScreen;->getStartWhenPrepared()Z

    move-result v3

    if-nez v3, :cond_3

    sget v3, Landroid/webkit/HTML5VideoFullScreen;->mSavePauseTime:I

    if-lez v3, :cond_5

    :cond_3
    sget v3, Landroid/webkit/HTML5VideoFullScreen;->mSavePauseTime:I

    if-lez v3, :cond_4

    sget-object v3, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    sget v6, Landroid/webkit/HTML5VideoFullScreen;->mSavePauseTime:I

    invoke-virtual {v3, v6}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_4
    sput v4, Landroid/webkit/HTML5VideoFullScreen;->mSavePauseTime:I

    sget-object v3, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    invoke-virtual {p0, v4}, Landroid/webkit/HTML5VideoFullScreen;->setStartWhenPrepared(Z)V

    :cond_5
    sget-object v3, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Landroid/webkit/HTML5VideoFullScreen;->isLiveStream()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v3, v5}, Landroid/widget/MediaControllerWebKit;->setEnabled(Z)V

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    const/16 v6, 0x1388

    invoke-virtual {v3, v6}, Landroid/widget/MediaControllerWebKit;->show(I)V

    :cond_6
    sget-object v3, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    if-eqz v3, :cond_7

    sget-object v3, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v3

    iput v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    iput v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I

    iget v3, p0, Landroid/webkit/HTML5VideoFullScreen;->deviceWidth:I

    if-eqz v3, :cond_e

    iget v3, p0, Landroid/webkit/HTML5VideoFullScreen;->deviceHeight:I

    if-eqz v3, :cond_e

    iget v3, p0, Landroid/webkit/HTML5VideoFullScreen;->deviceHeight:I

    int-to-float v3, v3

    iget v6, p0, Landroid/webkit/HTML5VideoFullScreen;->deviceWidth:I

    int-to-float v6, v6

    div-float v1, v3, v6

    .local v1, deviceRate:F
    iget v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I

    if-eqz v3, :cond_8

    iget v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I

    if-eqz v3, :cond_8

    iget v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I

    int-to-float v3, v3

    iget v6, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I

    int-to-float v6, v6

    div-float v2, v3, v6

    .local v2, rate:F
    cmpg-float v3, v2, v1

    if-gez v3, :cond_d

    invoke-virtual {p0, v5, v8, v8}, Landroid/webkit/HTML5VideoFullScreen;->onScreenChanged(ILletv/widget/LetvSeekBar;Lletv/widget/LetvSeekBar;)V

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v3, v5}, Landroid/widget/MediaControllerWebKit;->setVideoMode(I)V

    .end local v1           #deviceRate:F
    .end local v2           #rate:F
    :cond_8
    :goto_4
    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    sget-object v4, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v4}, Landroid/webkit/HTML5VideoFullScreen;->getSeekStep(Landroid/media/MediaPlayer;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/MediaControllerWebKit;->setSeekStep(I)V

    return-void

    :cond_9
    move v3, v4

    goto/16 :goto_0

    :cond_a
    move v3, v4

    goto/16 :goto_1

    :cond_b
    move v3, v4

    goto/16 :goto_2

    :cond_c
    iput-boolean v5, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanSeekForward:Z

    iput-boolean v5, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanSeekBack:Z

    iput-boolean v5, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanPause:Z

    goto/16 :goto_3

    .restart local v1       #deviceRate:F
    .restart local v2       #rate:F
    :cond_d
    invoke-virtual {p0, v4, v8, v8}, Landroid/webkit/HTML5VideoFullScreen;->onScreenChanged(ILletv/widget/LetvSeekBar;Lletv/widget/LetvSeekBar;)V

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v3, v4}, Landroid/widget/MediaControllerWebKit;->setVideoMode(I)V

    goto :goto_4

    .end local v1           #deviceRate:F
    .end local v2           #rate:F
    :cond_e
    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    #calls: Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->setIsFirst(Z)V
    invoke-static {v3, v5}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->access$1000(Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;Z)V

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v3}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iget v4, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I

    iget v5, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I

    invoke-interface {v3, v4, v5}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto :goto_4
.end method

.method public onScreenChanged(ILletv/widget/LetvSeekBar;Lletv/widget/LetvSeekBar;)V
    .locals 12
    .parameter "mode"
    .parameter "widthProgress"
    .parameter "heightProgress"

    .prologue
    const/16 v11, 0x64

    const/4 v10, 0x0

    iget-object v8, p0, Landroid/webkit/HTML5VideoFullScreen;->mMedia:Landroid/media/MediaPlayer;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x0

    .local v6, width:I
    const/4 v3, 0x0

    .local v3, height:I
    const/4 v5, 0x0

    .local v5, rate:F
    const/high16 v0, 0x3f10

    .local v0, RATE_16V9:F
    const/high16 v1, 0x3f40

    .local v1, RATE_4V3:F
    iget v8, p0, Landroid/webkit/HTML5VideoFullScreen;->deviceHeight:I

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/HTML5VideoFullScreen;->deviceWidth:I

    int-to-float v9, v9

    div-float v2, v8, v9

    .local v2, deviceRate:F
    iget-object v8, p0, Landroid/webkit/HTML5VideoFullScreen;->mMedia:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v8

    iput v8, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I

    iget-object v8, p0, Landroid/webkit/HTML5VideoFullScreen;->mMedia:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v8

    iput v8, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v8, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    #calls: Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->setIsFirst(Z)V
    invoke-static {v8, v10}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->access$1000(Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;Z)V

    iget-object v8, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v8}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v8

    iget v9, p0, Landroid/webkit/HTML5VideoFullScreen;->deviceWidth:I

    iget v10, p0, Landroid/webkit/HTML5VideoFullScreen;->deviceHeight:I

    invoke-interface {v8, v9, v10}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iget v6, p0, Landroid/webkit/HTML5VideoFullScreen;->deviceWidth:I

    iget v3, p0, Landroid/webkit/HTML5VideoFullScreen;->deviceHeight:I

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p2, v11}, Lletv/widget/LetvSeekBar;->setProgress(I)V

    invoke-virtual {p3, v11}, Lletv/widget/LetvSeekBar;->setProgress(I)V

    goto :goto_0

    :pswitch_2
    iget v8, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I

    if-eqz v8, :cond_3

    iget v8, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I

    if-eqz v8, :cond_3

    iget v8, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I

    int-to-float v9, v9

    div-float v5, v8, v9

    cmpl-float v8, v5, v2

    if-lez v8, :cond_2

    iget v3, p0, Landroid/webkit/HTML5VideoFullScreen;->deviceHeight:I

    :goto_1
    iget v6, p0, Landroid/webkit/HTML5VideoFullScreen;->deviceWidth:I

    :goto_2
    iget-object v8, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    #calls: Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->setIsFirst(Z)V
    invoke-static {v8, v10}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->access$1000(Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;Z)V

    iget-object v8, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v8}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v8

    invoke-interface {v8, v6, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto :goto_0

    :cond_2
    iget v8, p0, Landroid/webkit/HTML5VideoFullScreen;->deviceWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v5

    float-to-int v3, v8

    goto :goto_1

    :cond_3
    iget v3, p0, Landroid/webkit/HTML5VideoFullScreen;->deviceHeight:I

    iget v6, p0, Landroid/webkit/HTML5VideoFullScreen;->deviceWidth:I

    goto :goto_2

    :pswitch_3
    iget v6, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I

    iget v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I

    if-eqz v6, :cond_5

    if-eqz v3, :cond_5

    int-to-float v8, v3

    int-to-float v9, v6

    div-float v5, v8, v9

    cmpg-float v8, v5, v2

    if-gez v8, :cond_4

    iget v8, p0, Landroid/webkit/HTML5VideoFullScreen;->deviceWidth:I

    mul-int/2addr v8, v3

    div-int v3, v8, v6

    iget v6, p0, Landroid/webkit/HTML5VideoFullScreen;->deviceWidth:I

    :goto_3
    iget-object v8, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    #calls: Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->setIsFirst(Z)V
    invoke-static {v8, v10}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->access$1000(Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;Z)V

    iget-object v8, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v8}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v8

    invoke-interface {v8, v6, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    mul-int/lit8 v8, v6, 0x64

    iget v9, p0, Landroid/webkit/HTML5VideoFullScreen;->deviceWidth:I

    div-int v7, v8, v9

    .local v7, widthRate:I
    mul-int/lit8 v8, v3, 0x64

    iget v9, p0, Landroid/webkit/HTML5VideoFullScreen;->deviceHeight:I

    div-int v4, v8, v9

    .local v4, heightRate:I
    invoke-virtual {p2, v7}, Lletv/widget/LetvSeekBar;->setProgress(I)V

    invoke-virtual {p3, v4}, Lletv/widget/LetvSeekBar;->setProgress(I)V

    goto/16 :goto_0

    .end local v4           #heightRate:I
    .end local v7           #widthRate:I
    :cond_4
    iget v8, p0, Landroid/webkit/HTML5VideoFullScreen;->deviceHeight:I

    mul-int/2addr v8, v6

    div-int v6, v8, v3

    iget v3, p0, Landroid/webkit/HTML5VideoFullScreen;->deviceHeight:I

    goto :goto_3

    :cond_5
    iget v3, p0, Landroid/webkit/HTML5VideoFullScreen;->deviceHeight:I

    iget v6, p0, Landroid/webkit/HTML5VideoFullScreen;->deviceHeight:I

    goto :goto_3

    :pswitch_4
    iget v8, p0, Landroid/webkit/HTML5VideoFullScreen;->deviceWidth:I

    iget-object v9, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v9}, Landroid/widget/MediaControllerWebKit;->getUserWidth()I

    move-result v9

    mul-int/2addr v8, v9

    div-int/lit8 v6, v8, 0x64

    iget v8, p0, Landroid/webkit/HTML5VideoFullScreen;->deviceHeight:I

    iget-object v9, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v9}, Landroid/widget/MediaControllerWebKit;->getUserHeight()I

    move-result v9

    mul-int/2addr v8, v9

    div-int/lit8 v3, v8, 0x64

    iget-object v8, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    #calls: Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->setIsFirst(Z)V
    invoke-static {v8, v10}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->access$1000(Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;Z)V

    iget-object v8, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v8}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v8

    invoke-interface {v8, v6, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "HTML5VideoFullScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouch"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "csl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FullScreen onTouch"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v2}, Landroid/widget/MediaControllerWebKit;->isSettingViewShown()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/webkit/HTML5VideoFullScreen;->isLoading()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v2, v1}, Landroid/widget/MediaControllerWebKit;->show(Z)V

    sget-object v1, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v1}, Landroid/widget/MediaControllerWebKit;->updatePausePlay()V

    :cond_1
    :goto_1
    return v0

    :cond_2
    sget-object v1, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public pause()V
    .locals 1

    .prologue
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/webkit/HTML5VideoView;->release()V

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :cond_0
    return-void
.end method

.method public releaseFulllayer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v1, "HTML5VideoFullScreen"

    const-string v2, "releaseFulllayer()----------------begin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    :try_start_0
    sget-object v1, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullScreen;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v1, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    sput-object v3, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    :cond_0
    sget-object v1, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    const-string v1, "HTML5VideoFullScreen"

    const-string v2, "releaseFulllayer()---------------in---end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v3, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    :cond_1
    sget-object v1, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    if-eqz v1, :cond_2

    sput-object v3, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "HTML5VideoFullScreen"

    const-string v2, "mLayout.removeView(getSurfaceView()) exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/webkit/HTML5VideoView;->reset()V

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :cond_0
    return-void
.end method

.method public showControllerInFullScreen()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaControllerWebKit;->show(I)V

    :cond_0
    return-void
.end method

.method public showFFFlag()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->seekFlag:Z

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mFlagImg:Landroid/widget/ImageView;

    const v1, 0x108038a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mFlagImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mFlagImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mFlagImg:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mAnimAlphaPlayStatusIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public showFRFlag()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->seekFlag:Z

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mFlagImg:Landroid/widget/ImageView;

    const v1, 0x1080389

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mFlagImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mFlagImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mFlagImg:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mAnimAlphaPlayStatusIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public showLoading()V
    .locals 3

    .prologue
    const-string v0, "csl"

    const-string v1, "showLoading"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "csl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mProgressView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showMuteFlag()V
    .locals 0

    .prologue
    return-void
.end method

.method public showPauseFlag()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->pauseFlag:Z

    const-string v0, "csl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPauseFlag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mFlagImg:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->isShown()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mFlagImg:Landroid/widget/ImageView;

    const v1, 0x108039e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mFlagImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mFlagImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mFlagImg:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mAnimAlphaPlayStatusIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaControllerWebKit;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/MediaControllerWebKit;->show(I)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-virtual {p0}, Landroid/webkit/HTML5VideoFullScreen;->hidePauseFlag()V

    :cond_0
    return-void
.end method

.method public start_after_seek()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullScreen;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HTML5VideoFullScreen;->hidePauseFlag()V

    :cond_0
    return-void
.end method

.method protected switchProgressView(Z)V
    .locals 2
    .parameter "playerBuffering"

    .prologue
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
