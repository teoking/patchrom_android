.class public Landroid/widget/MediaControllerWebKit;
.super Landroid/widget/FrameLayout;
.source "MediaControllerWebKit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MediaControllerWebKit$MediaPlayerControl;,
        Landroid/widget/MediaControllerWebKit$PauseResumeThread;
    }
.end annotation


# static fields
.field public static final DEFUALT_FORWARD_SPEED:I = 0x4e20

.field public static final DEFUALT_REWIND_SPEED:I = 0x4e20

.field private static final DISMISS_SETTING:I = 0x2

.field private static final FADE_OUT:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = "MediaControllerWebKit"

.field private static final MIN_LIMIT:J = 0xf4240L

.field private static final PLAY_PAUSE_DONE:I = 0x3

.field private static final SETTING_ANIM_OUT:I = 0x3

.field private static final SETTING_REQUEST:I = 0x1

.field private static final SHOW_CUR_TIME:I = 0x4

.field private static final SHOW_PROGRESS:I = 0x2

.field private static final UPDATE_CLOCK:I = 0xa

.field private static mFfwdSpeed:I = 0x0

.field private static mRewindSpeed:I = 0x0

.field private static final sDefaultTimeout:I = 0xbb8


# instance fields
.field add_step:I

.field private curTime:J

.field dec_step:I

.field private handler:Landroid/os/Handler;

.field private heightLayout:Landroid/widget/RelativeLayout;

.field private heightProgress:Lletv/widget/LetvSeekBar;

.field private heightValue:Landroid/widget/TextView;

.field private isAdded:Z

.field private isAnima:Z

.field private isControll:Z

.field private isFF:Z

.field private isFR:Z

.field private isMenuShown:Z

.field private isPause:Z

.field private isSettingShown:Z

.field private lastPos:I

.field private lastTime:J

.field private mAnchor:Landroid/view/View;

.field private mAnimAlphaIn:Landroid/view/animation/Animation;

.field private mAnimAlphaOut:Landroid/view/animation/Animation;

.field private mAnimBottomIn:Landroid/view/animation/Animation;

.field private mAnimBottomOut:Landroid/view/animation/Animation;

.field private mAnimTopIn:Landroid/view/animation/Animation;

.field private mAnimTopOut:Landroid/view/animation/Animation;

.field private mContext:Landroid/content/Context;

.field private mController:Landroid/widget/RelativeLayout;

.field private mControllerDisplayLayout:Landroid/widget/LinearLayout;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDecor:Landroid/view/View;

.field mDoingSeek:Z

.field private mDragging:Z

.field private mEndTime:Landroid/widget/TextView;

.field private mFfwdListener:Landroid/view/View$OnClickListener;

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private mFromXml:Z

.field private mHandler:Landroid/os/Handler;

.field private mHeightProgress:I

.field private mIndex:I

.field private mKeyFlag:Z

.field private mKeyListener:Landroid/view/View$OnKeyListener;

.field private mLastActionTime:J

.field private mListenersSet:Z

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mOptimize:Z

.field private mPauseButton:Landroid/widget/Button;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mProgress:Lletv/widget/LetvControllerSeekBar;

.field private mRewListener:Landroid/view/View$OnClickListener;

.field private mRoot:Landroid/widget/FrameLayout;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekStep:I

.field private mSettingLayout:Landroid/widget/RelativeLayout;

.field private mShowing:Z

.field private mSystemClockTv:Landroid/widget/TextView;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mUseFastForward:Z

.field private mVideoClick:I

.field private mWidthProgress:I

.field private mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;

.field private settingPic:Landroid/widget/RelativeLayout;

.field private settingSwitcher:Landroid/widget/LetvSettingSwitcher;

.field private userHeightProgress:I

.field private userWidthProgress:I

.field private widthLayout:Landroid/widget/RelativeLayout;

.field private widthProgress:Lletv/widget/LetvSeekBar;

.field private widthValue:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x4e20

    sput v0, Landroid/widget/MediaControllerWebKit;->mRewindSpeed:I

    sput v0, Landroid/widget/MediaControllerWebKit;->mFfwdSpeed:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v2, p0, Landroid/widget/MediaControllerWebKit;->mVideoClick:I

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->isSettingShown:Z

    iput v3, p0, Landroid/widget/MediaControllerWebKit;->userWidthProgress:I

    iput v3, p0, Landroid/widget/MediaControllerWebKit;->userHeightProgress:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/MediaControllerWebKit;->mLastActionTime:J

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->isAnima:Z

    iput v3, p0, Landroid/widget/MediaControllerWebKit;->mWidthProgress:I

    iput v3, p0, Landroid/widget/MediaControllerWebKit;->mHeightProgress:I

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->isFF:Z

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->isFR:Z

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->mKeyFlag:Z

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->isPause:Z

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->isMenuShown:Z

    new-instance v0, Landroid/widget/MediaControllerWebKit$1;

    invoke-direct {v0, p0}, Landroid/widget/MediaControllerWebKit$1;-><init>(Landroid/widget/MediaControllerWebKit;)V

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Landroid/widget/MediaControllerWebKit$4;

    invoke-direct {v0, p0}, Landroid/widget/MediaControllerWebKit$4;-><init>(Landroid/widget/MediaControllerWebKit;)V

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/widget/MediaControllerWebKit$5;

    invoke-direct {v0, p0}, Landroid/widget/MediaControllerWebKit$5;-><init>(Landroid/widget/MediaControllerWebKit;)V

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mPauseListener:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->isControll:Z

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->isAdded:Z

    new-instance v0, Landroid/widget/MediaControllerWebKit$6;

    invoke-direct {v0, p0}, Landroid/widget/MediaControllerWebKit$6;-><init>(Landroid/widget/MediaControllerWebKit;)V

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->handler:Landroid/os/Handler;

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->mDoingSeek:Z

    iput v2, p0, Landroid/widget/MediaControllerWebKit;->add_step:I

    iput v2, p0, Landroid/widget/MediaControllerWebKit;->dec_step:I

    new-instance v0, Landroid/widget/MediaControllerWebKit$14;

    invoke-direct {v0, p0}, Landroid/widget/MediaControllerWebKit$14;-><init>(Landroid/widget/MediaControllerWebKit;)V

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Landroid/widget/MediaControllerWebKit$15;

    invoke-direct {v0, p0}, Landroid/widget/MediaControllerWebKit$15;-><init>(Landroid/widget/MediaControllerWebKit;)V

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Landroid/widget/MediaControllerWebKit$16;

    invoke-direct {v0, p0}, Landroid/widget/MediaControllerWebKit$16;-><init>(Landroid/widget/MediaControllerWebKit;)V

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mRewListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/widget/MediaControllerWebKit$17;

    invoke-direct {v0, p0}, Landroid/widget/MediaControllerWebKit$17;-><init>(Landroid/widget/MediaControllerWebKit;)V

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mFfwdListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Landroid/widget/MediaControllerWebKit;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MediaControllerWebKit;->mUseFastForward:Z

    invoke-direct {p0}, Landroid/widget/MediaControllerWebKit;->initFloatingWindow()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Landroid/widget/MediaControllerWebKit;->mVideoClick:I

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->isSettingShown:Z

    iput v3, p0, Landroid/widget/MediaControllerWebKit;->userWidthProgress:I

    iput v3, p0, Landroid/widget/MediaControllerWebKit;->userHeightProgress:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/MediaControllerWebKit;->mLastActionTime:J

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->isAnima:Z

    iput v3, p0, Landroid/widget/MediaControllerWebKit;->mWidthProgress:I

    iput v3, p0, Landroid/widget/MediaControllerWebKit;->mHeightProgress:I

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->isFF:Z

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->isFR:Z

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->mKeyFlag:Z

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->isPause:Z

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->isMenuShown:Z

    new-instance v0, Landroid/widget/MediaControllerWebKit$1;

    invoke-direct {v0, p0}, Landroid/widget/MediaControllerWebKit$1;-><init>(Landroid/widget/MediaControllerWebKit;)V

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Landroid/widget/MediaControllerWebKit$4;

    invoke-direct {v0, p0}, Landroid/widget/MediaControllerWebKit$4;-><init>(Landroid/widget/MediaControllerWebKit;)V

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/widget/MediaControllerWebKit$5;

    invoke-direct {v0, p0}, Landroid/widget/MediaControllerWebKit$5;-><init>(Landroid/widget/MediaControllerWebKit;)V

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mPauseListener:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->isControll:Z

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->isAdded:Z

    new-instance v0, Landroid/widget/MediaControllerWebKit$6;

    invoke-direct {v0, p0}, Landroid/widget/MediaControllerWebKit$6;-><init>(Landroid/widget/MediaControllerWebKit;)V

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->handler:Landroid/os/Handler;

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->mDoingSeek:Z

    iput v2, p0, Landroid/widget/MediaControllerWebKit;->add_step:I

    iput v2, p0, Landroid/widget/MediaControllerWebKit;->dec_step:I

    new-instance v0, Landroid/widget/MediaControllerWebKit$14;

    invoke-direct {v0, p0}, Landroid/widget/MediaControllerWebKit$14;-><init>(Landroid/widget/MediaControllerWebKit;)V

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Landroid/widget/MediaControllerWebKit$15;

    invoke-direct {v0, p0}, Landroid/widget/MediaControllerWebKit$15;-><init>(Landroid/widget/MediaControllerWebKit;)V

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Landroid/widget/MediaControllerWebKit$16;

    invoke-direct {v0, p0}, Landroid/widget/MediaControllerWebKit$16;-><init>(Landroid/widget/MediaControllerWebKit;)V

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mRewListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/widget/MediaControllerWebKit$17;

    invoke-direct {v0, p0}, Landroid/widget/MediaControllerWebKit$17;-><init>(Landroid/widget/MediaControllerWebKit;)V

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mFfwdListener:Landroid/view/View$OnClickListener;

    iput-object p0, p0, Landroid/widget/MediaControllerWebKit;->mRoot:Landroid/widget/FrameLayout;

    iput-object p1, p0, Landroid/widget/MediaControllerWebKit;->mContext:Landroid/content/Context;

    iput-boolean v4, p0, Landroid/widget/MediaControllerWebKit;->mUseFastForward:Z

    iput-boolean v4, p0, Landroid/widget/MediaControllerWebKit;->mFromXml:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "useFastForward"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v2, p0, Landroid/widget/MediaControllerWebKit;->mVideoClick:I

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->isSettingShown:Z

    iput v3, p0, Landroid/widget/MediaControllerWebKit;->userWidthProgress:I

    iput v3, p0, Landroid/widget/MediaControllerWebKit;->userHeightProgress:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/MediaControllerWebKit;->mLastActionTime:J

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->isAnima:Z

    iput v3, p0, Landroid/widget/MediaControllerWebKit;->mWidthProgress:I

    iput v3, p0, Landroid/widget/MediaControllerWebKit;->mHeightProgress:I

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->isFF:Z

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->isFR:Z

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->mKeyFlag:Z

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->isPause:Z

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->isMenuShown:Z

    new-instance v0, Landroid/widget/MediaControllerWebKit$1;

    invoke-direct {v0, p0}, Landroid/widget/MediaControllerWebKit$1;-><init>(Landroid/widget/MediaControllerWebKit;)V

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Landroid/widget/MediaControllerWebKit$4;

    invoke-direct {v0, p0}, Landroid/widget/MediaControllerWebKit$4;-><init>(Landroid/widget/MediaControllerWebKit;)V

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/widget/MediaControllerWebKit$5;

    invoke-direct {v0, p0}, Landroid/widget/MediaControllerWebKit$5;-><init>(Landroid/widget/MediaControllerWebKit;)V

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mPauseListener:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->isControll:Z

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->isAdded:Z

    new-instance v0, Landroid/widget/MediaControllerWebKit$6;

    invoke-direct {v0, p0}, Landroid/widget/MediaControllerWebKit$6;-><init>(Landroid/widget/MediaControllerWebKit;)V

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->handler:Landroid/os/Handler;

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->mDoingSeek:Z

    iput v2, p0, Landroid/widget/MediaControllerWebKit;->add_step:I

    iput v2, p0, Landroid/widget/MediaControllerWebKit;->dec_step:I

    new-instance v0, Landroid/widget/MediaControllerWebKit$14;

    invoke-direct {v0, p0}, Landroid/widget/MediaControllerWebKit$14;-><init>(Landroid/widget/MediaControllerWebKit;)V

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Landroid/widget/MediaControllerWebKit$15;

    invoke-direct {v0, p0}, Landroid/widget/MediaControllerWebKit$15;-><init>(Landroid/widget/MediaControllerWebKit;)V

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Landroid/widget/MediaControllerWebKit$16;

    invoke-direct {v0, p0}, Landroid/widget/MediaControllerWebKit$16;-><init>(Landroid/widget/MediaControllerWebKit;)V

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mRewListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/widget/MediaControllerWebKit$17;

    invoke-direct {v0, p0}, Landroid/widget/MediaControllerWebKit$17;-><init>(Landroid/widget/MediaControllerWebKit;)V

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mFfwdListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Landroid/widget/MediaControllerWebKit;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Landroid/widget/MediaControllerWebKit;->mUseFastForward:Z

    invoke-direct {p0}, Landroid/widget/MediaControllerWebKit;->initFloatingWindow()V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/MediaControllerWebKit;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/MediaControllerWebKit;->stringForTime(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/MediaControllerWebKit;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/widget/MediaControllerWebKit;->isPause:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/MediaControllerWebKit;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/MediaControllerWebKit;->writeOnDrawable(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/MediaControllerWebKit;)Lletv/widget/LetvControllerSeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/MediaControllerWebKit;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/widget/MediaControllerWebKit;->mDragging:Z

    return v0
.end method

.method static synthetic access$1302(Landroid/widget/MediaControllerWebKit;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/widget/MediaControllerWebKit;->mDragging:Z

    return p1
.end method

.method static synthetic access$1400(Landroid/widget/MediaControllerWebKit;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/widget/MediaControllerWebKit;->isMenuShown:Z

    return v0
.end method

.method static synthetic access$1402(Landroid/widget/MediaControllerWebKit;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/widget/MediaControllerWebKit;->isMenuShown:Z

    return p1
.end method

.method static synthetic access$1500(Landroid/widget/MediaControllerWebKit;ZLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/MediaControllerWebKit;->showClockView(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/widget/MediaControllerWebKit;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/MediaControllerWebKit;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/widget/MediaControllerWebKit;->doPauseResume()V

    return-void
.end method

.method static synthetic access$1800(Landroid/widget/MediaControllerWebKit;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mSettingLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/widget/MediaControllerWebKit;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mRoot:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/MediaControllerWebKit;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mPauseButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2002(Landroid/widget/MediaControllerWebKit;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/widget/MediaControllerWebKit;->mWidthProgress:I

    return p1
.end method

.method static synthetic access$2100(Landroid/widget/MediaControllerWebKit;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->widthValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/widget/MediaControllerWebKit;)Landroid/widget/LetvSettingSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->settingSwitcher:Landroid/widget/LetvSettingSwitcher;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/widget/MediaControllerWebKit;)Lletv/widget/LetvSeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->widthProgress:Lletv/widget/LetvSeekBar;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/widget/MediaControllerWebKit;)Lletv/widget/LetvSeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->heightProgress:Lletv/widget/LetvSeekBar;

    return-object v0
.end method

.method static synthetic access$2502(Landroid/widget/MediaControllerWebKit;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/widget/MediaControllerWebKit;->mHeightProgress:I

    return p1
.end method

.method static synthetic access$2600(Landroid/widget/MediaControllerWebKit;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->heightValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/widget/MediaControllerWebKit;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2802(Landroid/widget/MediaControllerWebKit;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/widget/MediaControllerWebKit;->mIndex:I

    return p1
.end method

.method static synthetic access$2900(Landroid/widget/MediaControllerWebKit;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/widget/MediaControllerWebKit;->userWidthProgress:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/MediaControllerWebKit;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/widget/MediaControllerWebKit;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/widget/MediaControllerWebKit;->userHeightProgress:I

    return v0
.end method

.method static synthetic access$3102(Landroid/widget/MediaControllerWebKit;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/widget/MediaControllerWebKit;->isAnima:Z

    return p1
.end method

.method static synthetic access$3200(Landroid/widget/MediaControllerWebKit;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/widget/MediaControllerWebKit;->isAdded:Z

    return v0
.end method

.method static synthetic access$3202(Landroid/widget/MediaControllerWebKit;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/widget/MediaControllerWebKit;->isAdded:Z

    return p1
.end method

.method static synthetic access$3400()I
    .locals 1

    .prologue
    sget v0, Landroid/widget/MediaControllerWebKit;->mRewindSpeed:I

    return v0
.end method

.method static synthetic access$3500()I
    .locals 1

    .prologue
    sget v0, Landroid/widget/MediaControllerWebKit;->mFfwdSpeed:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/MediaControllerWebKit;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mDecor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/MediaControllerWebKit;)Landroid/view/WindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/MediaControllerWebKit;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mController:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/MediaControllerWebKit;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mSystemClockTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/MediaControllerWebKit;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/widget/MediaControllerWebKit;->mShowing:Z

    return v0
.end method

.method static synthetic access$802(Landroid/widget/MediaControllerWebKit;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/widget/MediaControllerWebKit;->mShowing:Z

    return p1
.end method

.method static synthetic access$900(Landroid/widget/MediaControllerWebKit;)I
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/widget/MediaControllerWebKit;->setProgress()I

    move-result v0

    return v0
.end method

.method private convertDipToPx(I)I
    .locals 4
    .parameter "dip"

    .prologue
    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .local v0, scale:F
    int-to-float v1, p1

    mul-float v2, v1, v0

    const/high16 v3, 0x3f00

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private disableUnsupportedButtons()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mPauseButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v1}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->canPause()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mPauseButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v1}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->isLiveStream()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mPauseButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mPauseButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lletv/widget/LetvControllerSeekBar;->setEnabled(Z)V

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lletv/widget/LetvControllerSeekBar;->setMax(I)V

    :cond_2
    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mControllerDisplayLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lletv/widget/LetvControllerSeekBar;->setVisibility(I)V

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mEndTime:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mPauseButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/IncompatibleClassChangeError;
    const-string v1, "MediaControllerWebKit"

    const-string v2, "disableUnsupportedButtons() exception!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doPauseResume()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/MediaControllerWebKit;->mOptimize:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/MediaControllerWebKit;->doPauseResumeInThread()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->pause()V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->showPauseFlag()V

    :goto_1
    invoke-virtual {p0}, Landroid/widget/MediaControllerWebKit;->updatePausePlay()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->start()V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->hidePauseFlag()V

    goto :goto_1
.end method

.method private doPauseResumeInThread()V
    .locals 4

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/MediaControllerWebKit;->mLastActionTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/MediaControllerWebKit;->mLastActionTime:J

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mPauseButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/widget/MediaControllerWebKit$PauseResumeThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/MediaControllerWebKit$PauseResumeThread;-><init>(Landroid/widget/MediaControllerWebKit;Landroid/widget/MediaControllerWebKit$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private initControllerView(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mContext:Landroid/content/Context;

    const v1, 0x10a0018

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mAnimAlphaIn:Landroid/view/animation/Animation;

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mContext:Landroid/content/Context;

    const v1, 0x10a0077

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mAnimTopIn:Landroid/view/animation/Animation;

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mContext:Landroid/content/Context;

    const v1, 0x10a0078

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mAnimTopOut:Landroid/view/animation/Animation;

    const v0, 0x1020336

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mController:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/MediaControllerWebKit$2;

    invoke-direct {v0, p0}, Landroid/widget/MediaControllerWebKit$2;-><init>(Landroid/widget/MediaControllerWebKit;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x102034a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->settingPic:Landroid/widget/RelativeLayout;

    const v0, 0x1020339

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mPauseButton:Landroid/widget/Button;

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mPauseButton:Landroid/widget/Button;

    const v1, 0x108038d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mPauseButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mPauseButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mPauseButton:Landroid/widget/Button;

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x1020337

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lletv/widget/LetvControllerSeekBar;

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    const v1, 0x10804d1

    const-string v2, "00:00:00"

    invoke-direct {p0, v1, v2}, Landroid/widget/MediaControllerWebKit;->writeOnDrawable(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lletv/widget/LetvControllerSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lletv/widget/LetvControllerSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v0, 0x1020359

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mControllerDisplayLayout:Landroid/widget/LinearLayout;

    const v0, 0x1020335

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mSystemClockTv:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mController:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mSystemClockTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x102033c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mEndTime:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mFormatBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mFormatter:Ljava/util/Formatter;

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/MediaControllerWebKit;->show(Z)V

    return-void
.end method

.method private initFloatingWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mWindow:Landroid/view/Window;

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v0, v1, v3, v3}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MediaControllerWebKit;->mDecor:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mDecor:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mWindow:Landroid/view/Window;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0, v2}, Landroid/widget/MediaControllerWebKit;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Landroid/widget/MediaControllerWebKit;->setFocusableInTouchMode(Z)V

    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/MediaControllerWebKit;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Landroid/widget/MediaControllerWebKit;->requestFocus()Z

    return-void
.end method

.method private setProgress()I
    .locals 8

    .prologue
    iget-object v4, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/widget/MediaControllerWebKit;->mDragging:Z

    if-eqz v4, :cond_2

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return v3

    :cond_2
    iget-object v4, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v4}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->getCurrentPosition()I

    move-result v3

    .local v3, position:I
    iget-object v4, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v4}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->getDuration()I

    move-result v0

    .local v0, duration:I
    iget-object v4, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    if-eqz v4, :cond_3

    if-lez v0, :cond_3

    const-wide/16 v4, 0x3e8

    int-to-long v6, v3

    mul-long/2addr v4, v6

    int-to-long v6, v0

    div-long v1, v4, v6

    .local v1, pos:J
    iget-boolean v4, p0, Landroid/widget/MediaControllerWebKit;->mDoingSeek:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    long-to-int v5, v1

    invoke-virtual {v4, v5}, Lletv/widget/LetvControllerSeekBar;->setProgress(I)V

    .end local v1           #pos:J
    :cond_3
    iget-object v4, p0, Landroid/widget/MediaControllerWebKit;->mEndTime:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/widget/MediaControllerWebKit;->mEndTime:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/widget/MediaControllerWebKit;->stringForTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v4, p0, Landroid/widget/MediaControllerWebKit;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/MediaControllerWebKit;->mCurrentTime:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Landroid/widget/MediaControllerWebKit;->stringForTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showClockView(ZLjava/lang/String;)V
    .locals 2
    .parameter "alarm"
    .parameter "time"

    .prologue
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/widget/MediaControllerWebKit;->show(I)V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mSystemClockTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mSystemClockTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mSystemClockTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mSystemClockTv:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mAnimAlphaIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mSystemClockTv:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mSystemClockTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mSystemClockTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mSystemClockTv:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mAnimTopIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private stringForTime(I)Ljava/lang/String;
    .locals 9
    .parameter "timeMs"

    .prologue
    const/4 v8, 0x0

    div-int/lit16 v3, p1, 0x3e8

    .local v3, totalSeconds:I
    rem-int/lit8 v2, v3, 0x3c

    .local v2, seconds:I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .local v1, minutes:I
    div-int/lit16 v0, v3, 0xe10

    .local v0, hours:I
    iget-object v4, p0, Landroid/widget/MediaControllerWebKit;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v4, p0, Landroid/widget/MediaControllerWebKit;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%02d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private writeOnDrawable(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .parameter "drawableId"
    .parameter "text"

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x41c8

    const/4 v9, 0x1

    invoke-virtual {p0}, Landroid/widget/MediaControllerWebKit;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v7, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v8}, Lletv/widget/LetvControllerSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    invoke-virtual {v7}, Lletv/widget/LetvControllerSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .local v3, h:I
    iget-object v7, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    invoke-virtual {v7}, Lletv/widget/LetvControllerSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .local v6, w:I
    invoke-static {v0, v6, v3, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, bmpScaled:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .local v5, paint:Landroid/graphics/Paint;
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setFlags(I)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v2, canvas:Landroid/graphics/Canvas;
    const/high16 v7, 0x4220

    invoke-virtual {v2, p2, v10, v7, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/MediaControllerWebKit;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v4, v7, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .local v4, newThumb:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v4, v11, v11, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object v4
.end method


# virtual methods
.method public afterSeek()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/MediaControllerWebKit;->isSettingViewShown()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->showLoading()V

    iget-boolean v3, p0, Landroid/widget/MediaControllerWebKit;->isFF:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->hideFFFlag()V

    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mPauseButton:Landroid/widget/Button;

    const v4, 0x108038d

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    iput-boolean v7, p0, Landroid/widget/MediaControllerWebKit;->isFF:Z

    iput-boolean v7, p0, Landroid/widget/MediaControllerWebKit;->isFR:Z

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->getDuration()I

    move-result v0

    .local v0, duration:I
    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    invoke-virtual {v3}, Lletv/widget/LetvControllerSeekBar;->getProgress()I

    move-result v2

    .local v2, progress:I
    int-to-double v3, v2

    const-wide v5, 0x408f400000000000L

    div-double/2addr v3, v5

    int-to-double v5, v0

    mul-double/2addr v3, v5

    double-to-int v1, v3

    .local v1, pos:I
    iput-boolean v7, p0, Landroid/widget/MediaControllerWebKit;->isPause:Z

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v3, v1}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->seekTo(I)V

    iput-boolean v7, p0, Landroid/widget/MediaControllerWebKit;->mDoingSeek:Z

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-wide v9, p0, Landroid/widget/MediaControllerWebKit;->curTime:J

    iput-wide v9, p0, Landroid/widget/MediaControllerWebKit;->lastTime:J

    .end local v0           #duration:I
    .end local v1           #pos:I
    .end local v2           #progress:I
    :cond_2
    return-void

    :cond_3
    iget-boolean v3, p0, Landroid/widget/MediaControllerWebKit;->isFR:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->hideFRFlag()V

    goto :goto_0
.end method

.method public dismissAll()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mController:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mSystemClockTv:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/widget/MediaControllerWebKit;->mDecor:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const-string v1, "csl"

    const-string v2, "already removed dismissAll"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/MediaControllerWebKit;->mShowing:Z

    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaController"

    const-string v2, "already removed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dismissSetting()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->handler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mContext:Landroid/content/Context;

    const v2, 0x10a004f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .local v0, anim:Landroid/view/animation/Animation;
    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mSettingLayout:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mSettingLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->clearAnimation()V

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mSettingLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/widget/MediaControllerWebKit$12;

    invoke-direct {v1, p0}, Landroid/widget/MediaControllerWebKit$12;-><init>(Landroid/widget/MediaControllerWebKit;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    new-instance v1, Landroid/widget/MediaControllerWebKit$13;

    invoke-direct {v1, p0}, Landroid/widget/MediaControllerWebKit$13;-><init>(Landroid/widget/MediaControllerWebKit;)V

    invoke-virtual {v1}, Landroid/widget/MediaControllerWebKit$13;->start()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/16 v6, 0xbb8

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .local v0, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x4f

    if-eq v0, v3, :cond_0

    const/16 v3, 0x55

    if-eq v0, v3, :cond_0

    const/16 v3, 0x3e

    if-ne v0, v3, :cond_2

    :cond_0
    invoke-direct {p0}, Landroid/widget/MediaControllerWebKit;->doPauseResume()V

    invoke-virtual {p0, v6}, Landroid/widget/MediaControllerWebKit;->show(I)V

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mPauseButton:Landroid/widget/Button;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mPauseButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->requestFocus()Z

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/16 v3, 0x56

    if-ne v0, v3, :cond_3

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->pause()V

    invoke-virtual {p0}, Landroid/widget/MediaControllerWebKit;->updatePausePlay()V

    goto :goto_0

    :cond_3
    const/16 v3, 0x57

    if-ne v0, v3, :cond_5

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->getCurrentPosition()I

    move-result v1

    .local v1, pos:I
    const-string v3, "url"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaController.java dispatchkeyevent KEYCODE_MEDIA_NEXT pos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    sget v3, Landroid/widget/MediaControllerWebKit;->mFfwdSpeed:I

    add-int/2addr v1, v3

    :cond_4
    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v3, v1}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->seekTo(I)V

    invoke-direct {p0}, Landroid/widget/MediaControllerWebKit;->setProgress()I

    invoke-virtual {p0, v6}, Landroid/widget/MediaControllerWebKit;->show(I)V

    goto :goto_0

    .end local v1           #pos:I
    :cond_5
    const/16 v3, 0x58

    if-ne v0, v3, :cond_8

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->getCurrentPosition()I

    move-result v1

    .restart local v1       #pos:I
    const-string v3, "url"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaController.java dispatchkeyevent KEYCODE_MEDIA_PREVIOUS pos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_6

    sget v3, Landroid/widget/MediaControllerWebKit;->mRewindSpeed:I

    if-le v1, v3, :cond_7

    sget v3, Landroid/widget/MediaControllerWebKit;->mRewindSpeed:I

    sub-int/2addr v1, v3

    :cond_6
    :goto_1
    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v3, v1}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->seekTo(I)V

    invoke-direct {p0}, Landroid/widget/MediaControllerWebKit;->setProgress()I

    invoke-virtual {p0, v6}, Landroid/widget/MediaControllerWebKit;->show(I)V

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    .end local v1           #pos:I
    :cond_8
    const/16 v3, 0x5a

    if-ne v0, v3, :cond_9

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->getCurrentPosition()I

    move-result v1

    .restart local v1       #pos:I
    const-string v3, "url"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaController.java dispatchkeyevent KEYCODE_MEDIA_FAST_FORWARD pos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Landroid/widget/MediaControllerWebKit;->mFfwdSpeed:I

    add-int/2addr v1, v3

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v3, v1}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->seekTo(I)V

    invoke-direct {p0}, Landroid/widget/MediaControllerWebKit;->setProgress()I

    invoke-virtual {p0, v6}, Landroid/widget/MediaControllerWebKit;->show(I)V

    goto/16 :goto_0

    .end local v1           #pos:I
    :cond_9
    const/16 v3, 0x59

    if-ne v0, v3, :cond_b

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->getCurrentPosition()I

    move-result v1

    .restart local v1       #pos:I
    const-string v3, "url"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaController.java dispatchkeyevent KEYCODE_MEDIA_REWIND pos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Landroid/widget/MediaControllerWebKit;->mRewindSpeed:I

    if-le v1, v3, :cond_a

    sget v3, Landroid/widget/MediaControllerWebKit;->mRewindSpeed:I

    sub-int/2addr v1, v3

    :goto_2
    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v3, v1}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->seekTo(I)V

    invoke-direct {p0}, Landroid/widget/MediaControllerWebKit;->setProgress()I

    invoke-virtual {p0, v6}, Landroid/widget/MediaControllerWebKit;->show(I)V

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x0

    goto :goto_2

    .end local v1           #pos:I
    :cond_b
    const/16 v3, 0x15

    if-ne v0, v3, :cond_d

    iget-boolean v3, p0, Landroid/widget/MediaControllerWebKit;->mShowing:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_c

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->mKeyFlag:Z

    invoke-virtual {p0}, Landroid/widget/MediaControllerWebKit;->setFR()V

    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-boolean v3, p0, Landroid/widget/MediaControllerWebKit;->mKeyFlag:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/MediaControllerWebKit;->afterSeek()V

    iput-boolean v5, p0, Landroid/widget/MediaControllerWebKit;->mKeyFlag:Z

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x16

    if-ne v0, v3, :cond_f

    iget-boolean v3, p0, Landroid/widget/MediaControllerWebKit;->mShowing:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_e

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->mKeyFlag:Z

    const-string v3, "csl"

    const-string v4, "webkit ACTION_DOWN"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/MediaControllerWebKit;->setFF()V

    :cond_e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-boolean v3, p0, Landroid/widget/MediaControllerWebKit;->mKeyFlag:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/MediaControllerWebKit;->afterSeek()V

    iput-boolean v5, p0, Landroid/widget/MediaControllerWebKit;->mKeyFlag:Z

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0x17

    if-ne v0, v3, :cond_13

    invoke-virtual {p0}, Landroid/widget/MediaControllerWebKit;->isSettingViewShown()Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->isLoading()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {p0, v5}, Landroid/widget/MediaControllerWebKit;->show(Z)V

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->pause()V

    iput-boolean v2, p0, Landroid/widget/MediaControllerWebKit;->isPause:Z

    :cond_10
    :goto_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v2, v3, :cond_11

    invoke-virtual {p0}, Landroid/widget/MediaControllerWebKit;->updatePausePlay()V

    :cond_11
    :goto_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :cond_12
    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->start()V

    iput-boolean v5, p0, Landroid/widget/MediaControllerWebKit;->isPause:Z

    goto :goto_3

    :cond_13
    const/16 v3, 0x19

    if-eq v0, v3, :cond_14

    const/16 v3, 0x18

    if-ne v0, v3, :cond_15

    :cond_14
    invoke-virtual {p0}, Landroid/widget/MediaControllerWebKit;->hide()V

    goto/16 :goto_0

    :cond_15
    const/4 v3, 0x4

    if-ne v0, v3, :cond_17

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Landroid/widget/MediaControllerWebKit;->isAnima:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/MediaControllerWebKit;->isSettingViewShown()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {p0}, Landroid/widget/MediaControllerWebKit;->dismissSetting()V

    goto/16 :goto_0

    :cond_16
    const-string v3, "csl"

    const-string v4, "KEYCODE_BACK"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->hideCustomView()V

    invoke-virtual {p0}, Landroid/widget/MediaControllerWebKit;->dismissAll()V

    goto/16 :goto_0

    :cond_17
    const/16 v3, 0x52

    if-ne v0, v3, :cond_18

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Landroid/widget/MediaControllerWebKit;->isAnima:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/MediaControllerWebKit;->isSettingViewShown()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/MediaControllerWebKit;->showSetting()V

    goto/16 :goto_0

    :cond_18
    invoke-virtual {p0, v6}, Landroid/widget/MediaControllerWebKit;->show(I)V

    goto :goto_4
.end method

.method public getMediaPlayerVideoClick()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/MediaControllerWebKit;->mVideoClick:I

    return v0
.end method

.method public getUserHeight()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->heightProgress:Lletv/widget/LetvSeekBar;

    invoke-virtual {v0}, Lletv/widget/LetvSeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public getUserWidth()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->widthProgress:Lletv/widget/LetvSeekBar;

    invoke-virtual {v0}, Lletv/widget/LetvSeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v1, "csl"

    const-string v2, "hide"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mAnchor:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Landroid/widget/MediaControllerWebKit;->mShowing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mController:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mContext:Landroid/content/Context;

    const v2, 0x10a001c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/MediaControllerWebKit;->mAnimBottomOut:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mAnimBottomOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mController:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->clearAnimation()V

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mController:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Landroid/widget/MediaControllerWebKit;->mAnimBottomOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mSystemClockTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->clearAnimation()V

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mSystemClockTv:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/MediaControllerWebKit;->mAnimTopOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mAnimBottomOut:Landroid/view/animation/Animation;

    new-instance v2, Landroid/widget/MediaControllerWebKit$3;

    invoke-direct {v2, p0}, Landroid/widget/MediaControllerWebKit$3;-><init>(Landroid/widget/MediaControllerWebKit;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v1}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/widget/MediaControllerWebKit;->isSettingViewShown()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "csl"

    const-string v2, "remove mDecor"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/widget/MediaControllerWebKit;->mDecor:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mController:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mSystemClockTv:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iput-boolean v3, p0, Landroid/widget/MediaControllerWebKit;->mShowing:Z

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaController"

    const-string v2, "already removed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isSettingRequestFocus()V
    .locals 0

    .prologue
    return-void
.end method

.method public isSettingViewShown()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/MediaControllerWebKit;->isMenuShown:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/MediaControllerWebKit;->mShowing:Z

    return v0
.end method

.method protected makeControllerView()Landroid/view/View;
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .local v0, inflate:Landroid/view/LayoutInflater;
    const v1, 0x1090086

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Landroid/widget/MediaControllerWebKit;->mRoot:Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mRoot:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1}, Landroid/widget/MediaControllerWebKit;->initControllerView(Landroid/view/View;)V

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit;->mRoot:Landroid/widget/FrameLayout;

    return-object v1
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mRoot:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Landroid/widget/MediaControllerWebKit;->initControllerView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/widget/MediaControllerWebKit;->show(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/widget/MediaControllerWebKit;->show(I)V

    const/4 v0, 0x0

    return v0
.end method

.method public releaseUpdateSystemClockView()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, -0x1

    iput-object p1, p0, Landroid/widget/MediaControllerWebKit;->mAnchor:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v0, frameParams:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/MediaControllerWebKit;->removeAllViews()V

    invoke-virtual {p0}, Landroid/widget/MediaControllerWebKit;->makeControllerView()Landroid/view/View;

    move-result-object v1

    .local v1, v:Landroid/view/View;
    invoke-virtual {p0, v1, v0}, Landroid/widget/MediaControllerWebKit;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mPauseButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mPauseButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    invoke-virtual {v0, p1}, Lletv/widget/LetvControllerSeekBar;->setEnabled(Z)V

    :cond_1
    invoke-direct {p0}, Landroid/widget/MediaControllerWebKit;->disableUnsupportedButtons()V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return-void
.end method

.method public setFF()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/high16 v12, 0x447a

    const-wide v10, 0x3f847ae147ae147bL

    const/4 v8, 0x1

    invoke-virtual {p0}, Landroid/widget/MediaControllerWebKit;->isSettingViewShown()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "csl"

    const-string v7, "----------start seek-------------"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v6}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->getDuration()I

    move-result v0

    .local v0, duration:I
    iput-boolean v8, p0, Landroid/widget/MediaControllerWebKit;->isFF:Z

    iput-boolean v9, p0, Landroid/widget/MediaControllerWebKit;->isFR:Z

    iget-object v6, p0, Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v6}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v6}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->pause()V

    iput-boolean v8, p0, Landroid/widget/MediaControllerWebKit;->isPause:Z

    :cond_0
    iget-object v6, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v6}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->showFFFlag()V

    iput-boolean v8, p0, Landroid/widget/MediaControllerWebKit;->mDoingSeek:Z

    iget-object v6, p0, Landroid/widget/MediaControllerWebKit;->mController:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v6, p0, Landroid/widget/MediaControllerWebKit;->mPauseButton:Landroid/widget/Button;

    const v7, 0x108038b

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/4 v5, 0x0

    .local v5, step:I
    iget v6, p0, Landroid/widget/MediaControllerWebKit;->mSeekStep:I

    mul-int/lit16 v4, v6, 0x3e8

    .local v4, seekStep:I
    int-to-long v6, v0

    const-wide/32 v8, 0xf4240

    cmp-long v6, v6, v8

    if-lez v6, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/MediaControllerWebKit;->curTime:J

    iget-wide v6, p0, Landroid/widget/MediaControllerWebKit;->lastTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    invoke-virtual {v6}, Lletv/widget/LetvControllerSeekBar;->getProgress()I

    move-result v6

    iput v6, p0, Landroid/widget/MediaControllerWebKit;->lastPos:I

    :cond_1
    iget-wide v6, p0, Landroid/widget/MediaControllerWebKit;->curTime:J

    iget-wide v8, p0, Landroid/widget/MediaControllerWebKit;->lastTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xc8

    cmp-long v6, v6, v8

    if-gez v6, :cond_8

    iget-object v6, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    invoke-virtual {v6}, Lletv/widget/LetvControllerSeekBar;->getProgress()I

    move-result v6

    iget v7, p0, Landroid/widget/MediaControllerWebKit;->lastPos:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v12

    int-to-float v7, v0

    mul-float/2addr v6, v7

    const v7, 0x49dbba00

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_5

    if-lez v4, :cond_4

    const-wide v6, 0x3f947ae147ae147bL

    int-to-double v8, v0

    mul-double/2addr v6, v8

    int-to-double v8, v4

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_3

    const/16 v5, 0x14

    :goto_0
    iget-wide v6, p0, Landroid/widget/MediaControllerWebKit;->curTime:J

    iput-wide v6, p0, Landroid/widget/MediaControllerWebKit;->lastTime:J

    :goto_1
    iget-object v6, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    invoke-virtual {v6}, Lletv/widget/LetvControllerSeekBar;->getProgress()I

    move-result v3

    .local v3, progress:I
    add-int v6, v3, v5

    const/16 v7, 0x3e8

    if-ge v6, v7, :cond_c

    add-int/2addr v3, v5

    :goto_2
    iget-object v6, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    invoke-virtual {v6, v3}, Lletv/widget/LetvControllerSeekBar;->setProgress(I)V

    iget-object v6, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v6}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->getBufferPercentage()I

    move-result v1

    .local v1, m:I
    iget-object v6, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    mul-int v7, v1, v5

    invoke-virtual {v6, v7}, Lletv/widget/LetvControllerSeekBar;->setSecondaryProgress(I)V

    int-to-double v6, v3

    const-wide v8, 0x408f400000000000L

    div-double/2addr v6, v8

    iget-object v8, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v8}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->getDuration()I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v6, v8

    double-to-int v2, v6

    .local v2, position:I
    iget-object v6, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    const v7, 0x10804d1

    invoke-direct {p0, v2}, Landroid/widget/MediaControllerWebKit;->stringForTime(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Landroid/widget/MediaControllerWebKit;->writeOnDrawable(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lletv/widget/LetvControllerSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .end local v0           #duration:I
    .end local v1           #m:I
    .end local v2           #position:I
    .end local v3           #progress:I
    .end local v4           #seekStep:I
    .end local v5           #step:I
    :cond_2
    return-void

    .restart local v0       #duration:I
    .restart local v4       #seekStep:I
    .restart local v5       #step:I
    :cond_3
    mul-int/lit8 v6, v4, 0x2

    mul-int/lit16 v6, v6, 0x3e8

    div-int v5, v6, v0

    goto :goto_0

    :cond_4
    const/16 v5, 0x14

    goto :goto_0

    :cond_5
    if-lez v4, :cond_7

    int-to-double v6, v0

    mul-double/2addr v6, v10

    int-to-double v8, v4

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_6

    const/16 v5, 0xa

    goto :goto_0

    :cond_6
    mul-int/lit16 v6, v4, 0x3e8

    div-int v5, v6, v0

    goto :goto_0

    :cond_7
    const/16 v5, 0xa

    goto :goto_0

    :cond_8
    if-lez v4, :cond_a

    int-to-double v6, v0

    mul-double/2addr v6, v10

    int-to-double v8, v4

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_9

    const/16 v5, 0xa

    goto :goto_0

    :cond_9
    mul-int/lit16 v6, v4, 0x3e8

    div-int v5, v6, v0

    goto :goto_0

    :cond_a
    const/16 v5, 0xa

    goto :goto_0

    :cond_b
    const v6, 0x461c4000

    iget-object v7, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v7}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->getDuration()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v6, v12

    float-to-int v5, v6

    goto :goto_1

    .restart local v3       #progress:I
    :cond_c
    const/16 v3, 0x3e8

    goto :goto_2
.end method

.method public setFR()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/high16 v12, 0x447a

    const-wide v10, 0x3f847ae147ae147bL

    const/4 v8, 0x1

    invoke-virtual {p0}, Landroid/widget/MediaControllerWebKit;->isSettingViewShown()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "csl"

    const-string v7, "----------start seek-------------"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v6}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->getDuration()I

    move-result v0

    .local v0, duration:I
    iget-object v6, p0, Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v9, p0, Landroid/widget/MediaControllerWebKit;->isFF:Z

    iput-boolean v8, p0, Landroid/widget/MediaControllerWebKit;->isFR:Z

    iget-object v6, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v6}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v6}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->pause()V

    iput-boolean v8, p0, Landroid/widget/MediaControllerWebKit;->isPause:Z

    :cond_0
    iput-boolean v8, p0, Landroid/widget/MediaControllerWebKit;->mDoingSeek:Z

    iget-object v6, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v6}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->showFRFlag()V

    iget-object v6, p0, Landroid/widget/MediaControllerWebKit;->mController:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v6, p0, Landroid/widget/MediaControllerWebKit;->mPauseButton:Landroid/widget/Button;

    const v7, 0x108038c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v6, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    invoke-virtual {v6}, Lletv/widget/LetvControllerSeekBar;->getProgress()I

    move-result v3

    .local v3, progress:I
    const/4 v5, 0x0

    .local v5, step:I
    iget v6, p0, Landroid/widget/MediaControllerWebKit;->mSeekStep:I

    mul-int/lit16 v4, v6, 0x3e8

    .local v4, seekStep:I
    int-to-long v6, v0

    const-wide/32 v8, 0xf4240

    cmp-long v6, v6, v8

    if-lez v6, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/MediaControllerWebKit;->curTime:J

    iget-wide v6, p0, Landroid/widget/MediaControllerWebKit;->lastTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    invoke-virtual {v6}, Lletv/widget/LetvControllerSeekBar;->getProgress()I

    move-result v6

    iput v6, p0, Landroid/widget/MediaControllerWebKit;->lastPos:I

    :cond_1
    iget-wide v6, p0, Landroid/widget/MediaControllerWebKit;->curTime:J

    iget-wide v8, p0, Landroid/widget/MediaControllerWebKit;->lastTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xc8

    cmp-long v6, v6, v8

    if-gez v6, :cond_8

    iget v6, p0, Landroid/widget/MediaControllerWebKit;->lastPos:I

    iget-object v7, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    invoke-virtual {v7}, Lletv/widget/LetvControllerSeekBar;->getProgress()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v12

    int-to-float v7, v0

    mul-float/2addr v6, v7

    const v7, 0x49dbba00

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_5

    if-lez v4, :cond_4

    const-wide v6, 0x3f947ae147ae147bL

    int-to-double v8, v0

    mul-double/2addr v6, v8

    int-to-double v8, v4

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_3

    const/16 v5, 0x14

    :goto_0
    iget-wide v6, p0, Landroid/widget/MediaControllerWebKit;->curTime:J

    iput-wide v6, p0, Landroid/widget/MediaControllerWebKit;->lastTime:J

    :goto_1
    const/16 v6, 0xa

    if-lt v3, v6, :cond_c

    sub-int/2addr v3, v5

    :goto_2
    iget-object v6, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    invoke-virtual {v6, v3}, Lletv/widget/LetvControllerSeekBar;->setProgress(I)V

    iget-object v6, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v6}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->getBufferPercentage()I

    move-result v1

    .local v1, m:I
    iget-object v6, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    mul-int/lit8 v7, v1, 0xa

    invoke-virtual {v6, v7}, Lletv/widget/LetvControllerSeekBar;->setSecondaryProgress(I)V

    int-to-double v6, v3

    const-wide v8, 0x408f400000000000L

    div-double/2addr v6, v8

    iget-object v8, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v8}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->getDuration()I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v6, v8

    double-to-int v2, v6

    .local v2, position:I
    iget-object v6, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    const v7, 0x10804d1

    invoke-direct {p0, v2}, Landroid/widget/MediaControllerWebKit;->stringForTime(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Landroid/widget/MediaControllerWebKit;->writeOnDrawable(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lletv/widget/LetvControllerSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .end local v0           #duration:I
    .end local v1           #m:I
    .end local v2           #position:I
    .end local v3           #progress:I
    .end local v4           #seekStep:I
    .end local v5           #step:I
    :cond_2
    return-void

    .restart local v0       #duration:I
    .restart local v3       #progress:I
    .restart local v4       #seekStep:I
    .restart local v5       #step:I
    :cond_3
    mul-int/lit8 v6, v4, 0x2

    mul-int/lit16 v6, v6, 0x3e8

    div-int v5, v6, v0

    goto :goto_0

    :cond_4
    const/16 v5, 0x14

    goto :goto_0

    :cond_5
    if-lez v4, :cond_7

    int-to-double v6, v0

    mul-double/2addr v6, v10

    int-to-double v8, v4

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_6

    const/16 v5, 0xa

    goto :goto_0

    :cond_6
    mul-int/lit16 v6, v4, 0x3e8

    div-int v5, v6, v0

    goto :goto_0

    :cond_7
    const/16 v5, 0xa

    goto :goto_0

    :cond_8
    if-lez v4, :cond_a

    int-to-double v6, v0

    mul-double/2addr v6, v10

    int-to-double v8, v4

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_9

    const/16 v5, 0xa

    goto :goto_0

    :cond_9
    mul-int/lit16 v6, v4, 0x3e8

    div-int v5, v6, v0

    goto :goto_0

    :cond_a
    const/16 v5, 0xa

    goto :goto_0

    :cond_b
    const v6, 0x461c4000

    iget-object v7, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v7}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->getDuration()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v6, v12

    float-to-int v5, v6

    goto :goto_1

    :cond_c
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public setForwardSpeed(I)V
    .locals 0
    .parameter "forward"

    .prologue
    sput p1, Landroid/widget/MediaControllerWebKit;->mFfwdSpeed:I

    return-void
.end method

.method public setMediaPlayer(Landroid/widget/MediaControllerWebKit$MediaPlayerControl;)V
    .locals 0
    .parameter "player"

    .prologue
    iput-object p1, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-virtual {p0}, Landroid/widget/MediaControllerWebKit;->updatePausePlay()V

    return-void
.end method

.method public setMediaPlayerVideoClick(I)V
    .locals 0
    .parameter "videoclick"

    .prologue
    iput p1, p0, Landroid/widget/MediaControllerWebKit;->mVideoClick:I

    return-void
.end method

.method public setOptimize(Z)V
    .locals 0
    .parameter "optimize"

    .prologue
    iput-boolean p1, p0, Landroid/widget/MediaControllerWebKit;->mOptimize:Z

    return-void
.end method

.method public setRewindSpeed(I)V
    .locals 0
    .parameter "rewind"

    .prologue
    sput p1, Landroid/widget/MediaControllerWebKit;->mRewindSpeed:I

    return-void
.end method

.method public setSeekStep(I)V
    .locals 0
    .parameter "mSeekStep"

    .prologue
    iput p1, p0, Landroid/widget/MediaControllerWebKit;->mSeekStep:I

    return-void
.end method

.method public setVideoMode(I)V
    .locals 0
    .parameter "mIndex"

    .prologue
    iput p1, p0, Landroid/widget/MediaControllerWebKit;->mIndex:I

    return-void
.end method

.method public settingRequestFocus()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mSettingLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    return-void
.end method

.method public show(I)V
    .locals 9
    .parameter "timeout"

    .prologue
    const/4 v8, 0x2

    const/4 v5, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v4, p0, Landroid/widget/MediaControllerWebKit;->mShowing:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/widget/MediaControllerWebKit;->mAnchor:Landroid/view/View;

    if-eqz v4, :cond_2

    invoke-direct {p0}, Landroid/widget/MediaControllerWebKit;->setProgress()I

    iget-object v4, p0, Landroid/widget/MediaControllerWebKit;->mPauseButton:Landroid/widget/Button;

    if-eqz v4, :cond_0

    :cond_0
    iget-object v4, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v4}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->isLiveStream()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    invoke-virtual {v4}, Lletv/widget/LetvControllerSeekBar;->requestFocus()Z

    :cond_1
    invoke-direct {p0}, Landroid/widget/MediaControllerWebKit;->disableUnsupportedButtons()V

    new-array v0, v8, [I

    .local v0, anchorpos:[I
    iget-object v4, p0, Landroid/widget/MediaControllerWebKit;->mAnchor:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .local v2, p:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x30

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v4, -0x3

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v4, 0x3e8

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x2

    or-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v4, 0x0

    iput-object v4, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :try_start_0
    iget-object v4, p0, Landroid/widget/MediaControllerWebKit;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Landroid/widget/MediaControllerWebKit;->mDecor:Landroid/view/View;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-boolean v7, p0, Landroid/widget/MediaControllerWebKit;->mShowing:Z

    .end local v0           #anchorpos:[I
    .end local v2           #p:Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-object v4, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v4}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v8, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    iget-object v4, p0, Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    if-eqz p1, :cond_3

    iget-object v4, p0, Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v4, p0, Landroid/widget/MediaControllerWebKit;->isControll:Z

    if-nez v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/MediaControllerWebKit;->isSettingViewShown()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v4}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;

    int-to-long v5, p1

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    return-void

    .end local v1           #msg:Landroid/os/Message;
    :cond_4
    iget-object v4, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v4}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->getCurrentPosition()I

    move-result v3

    .local v3, position:I
    iget-object v4, p0, Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;

    const v5, 0x10804d1

    invoke-direct {p0, v3}, Landroid/widget/MediaControllerWebKit;->stringForTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Landroid/widget/MediaControllerWebKit;->writeOnDrawable(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lletv/widget/LetvControllerSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .end local v3           #position:I
    .restart local v0       #anchorpos:[I
    .restart local v2       #p:Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public show(Z)V
    .locals 6
    .parameter "isFirst"

    .prologue
    const/16 v3, 0xbb8

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0, v3}, Landroid/widget/MediaControllerWebKit;->show(I)V

    :goto_0
    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mController:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Landroid/widget/MediaControllerWebKit;->mShowing:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mController:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mContext:Landroid/content/Context;

    const v4, 0x10a001b

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/MediaControllerWebKit;->mAnimBottomIn:Landroid/view/animation/Animation;

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mController:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->clearAnimation()V

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mController:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Landroid/widget/MediaControllerWebKit;->mAnimBottomIn:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .local v2, sdf:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .local v0, date:Ljava/util/Date;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .local v1, hms:Ljava/lang/String;
    invoke-direct {p0, v5, v1}, Landroid/widget/MediaControllerWebKit;->showClockView(ZLjava/lang/String;)V

    .end local v0           #date:Ljava/util/Date;
    .end local v1           #hms:Ljava/lang/String;
    .end local v2           #sdf:Ljava/text/SimpleDateFormat;
    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/MediaControllerWebKit;->show(I)V

    goto :goto_0
.end method

.method public showSetting()V
    .locals 10

    .prologue
    const/16 v9, 0x64

    const/16 v4, 0x8

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, -0x1

    iput-boolean v7, p0, Landroid/widget/MediaControllerWebKit;->isMenuShown:Z

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mController:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mSystemClockTv:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const/16 v3, 0xbb8

    invoke-virtual {p0, v3}, Landroid/widget/MediaControllerWebKit;->show(I)V

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x10900db

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .local v1, layout:Landroid/widget/RelativeLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x1e4

    invoke-direct {p0, v3}, Landroid/widget/MediaControllerWebKit;->convertDipToPx(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-direct {v2, v3, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .local v2, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-boolean v3, p0, Landroid/widget/MediaControllerWebKit;->isAdded:Z

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mRoot:Landroid/widget/FrameLayout;

    iget-object v4, p0, Landroid/widget/MediaControllerWebKit;->mSettingLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/MediaControllerWebKit;->isAdded:Z

    :cond_1
    iget-boolean v3, p0, Landroid/widget/MediaControllerWebKit;->isAdded:Z

    if-nez v3, :cond_2

    iput-object v1, p0, Landroid/widget/MediaControllerWebKit;->mSettingLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mRoot:Landroid/widget/FrameLayout;

    iget-object v4, p0, Landroid/widget/MediaControllerWebKit;->mSettingLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v7, p0, Landroid/widget/MediaControllerWebKit;->isAdded:Z

    :cond_2
    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mSettingLayout:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mSettingLayout:Landroid/widget/RelativeLayout;

    const v4, 0x1020355

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lletv/widget/LetvSeekBar;

    iput-object v3, p0, Landroid/widget/MediaControllerWebKit;->widthProgress:Lletv/widget/LetvSeekBar;

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mSettingLayout:Landroid/widget/RelativeLayout;

    const v4, 0x1020358

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lletv/widget/LetvSeekBar;

    iput-object v3, p0, Landroid/widget/MediaControllerWebKit;->heightProgress:Lletv/widget/LetvSeekBar;

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mSettingLayout:Landroid/widget/RelativeLayout;

    const v4, 0x1020351

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Landroid/widget/MediaControllerWebKit;->widthLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mSettingLayout:Landroid/widget/RelativeLayout;

    const v4, 0x1020352

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Landroid/widget/MediaControllerWebKit;->heightLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mSettingLayout:Landroid/widget/RelativeLayout;

    const v4, 0x1020354

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/MediaControllerWebKit;->widthValue:Landroid/widget/TextView;

    iget v3, p0, Landroid/widget/MediaControllerWebKit;->mWidthProgress:I

    if-ne v3, v6, :cond_3

    iput v9, p0, Landroid/widget/MediaControllerWebKit;->mWidthProgress:I

    :cond_3
    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->widthProgress:Lletv/widget/LetvSeekBar;

    iget v4, p0, Landroid/widget/MediaControllerWebKit;->mWidthProgress:I

    invoke-virtual {v3, v4}, Lletv/widget/LetvSeekBar;->setProgress(I)V

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->widthValue:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Landroid/widget/MediaControllerWebKit;->mWidthProgress:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mSettingLayout:Landroid/widget/RelativeLayout;

    const v4, 0x1020357

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/MediaControllerWebKit;->heightValue:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mSettingLayout:Landroid/widget/RelativeLayout;

    const v4, 0x1020350

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LetvSettingSwitcher;

    iput-object v3, p0, Landroid/widget/MediaControllerWebKit;->settingSwitcher:Landroid/widget/LetvSettingSwitcher;

    iget v3, p0, Landroid/widget/MediaControllerWebKit;->mHeightProgress:I

    if-ne v3, v6, :cond_4

    iput v9, p0, Landroid/widget/MediaControllerWebKit;->mHeightProgress:I

    :cond_4
    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->heightProgress:Lletv/widget/LetvSeekBar;

    iget v4, p0, Landroid/widget/MediaControllerWebKit;->mHeightProgress:I

    invoke-virtual {v3, v4}, Lletv/widget/LetvSeekBar;->setProgress(I)V

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->heightValue:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Landroid/widget/MediaControllerWebKit;->mHeightProgress:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->widthProgress:Lletv/widget/LetvSeekBar;

    new-instance v4, Landroid/widget/MediaControllerWebKit$7;

    invoke-direct {v4, p0}, Landroid/widget/MediaControllerWebKit$7;-><init>(Landroid/widget/MediaControllerWebKit;)V

    invoke-virtual {v3, v4}, Lletv/widget/LetvSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->heightProgress:Lletv/widget/LetvSeekBar;

    new-instance v4, Landroid/widget/MediaControllerWebKit$8;

    invoke-direct {v4, p0}, Landroid/widget/MediaControllerWebKit$8;-><init>(Landroid/widget/MediaControllerWebKit;)V

    invoke-virtual {v3, v4}, Lletv/widget/LetvSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->settingSwitcher:Landroid/widget/LetvSettingSwitcher;

    new-instance v4, Landroid/widget/MediaControllerWebKit$9;

    invoke-direct {v4, p0}, Landroid/widget/MediaControllerWebKit$9;-><init>(Landroid/widget/MediaControllerWebKit;)V

    invoke-virtual {v3, v4}, Landroid/widget/LetvSettingSwitcher;->setOnSettingChangedListener(Landroid/widget/LetvSettingSwitcher$OnSettingChangedListener;)V

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->settingSwitcher:Landroid/widget/LetvSettingSwitcher;

    iget v4, p0, Landroid/widget/MediaControllerWebKit;->mIndex:I

    invoke-virtual {v3, v4}, Landroid/widget/LetvSettingSwitcher;->setValue(I)V

    :cond_5
    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mContext:Landroid/content/Context;

    const v4, 0x10a004e

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .local v0, anim:Landroid/view/animation/Animation;
    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mSettingLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->clearAnimation()V

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->mSettingLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    new-instance v3, Landroid/widget/MediaControllerWebKit$10;

    invoke-direct {v3, p0}, Landroid/widget/MediaControllerWebKit$10;-><init>(Landroid/widget/MediaControllerWebKit;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    new-instance v3, Landroid/widget/MediaControllerWebKit$11;

    invoke-direct {v3, p0}, Landroid/widget/MediaControllerWebKit$11;-><init>(Landroid/widget/MediaControllerWebKit;)V

    invoke-virtual {v3}, Landroid/widget/MediaControllerWebKit$11;->start()V

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit;->handler:Landroid/os/Handler;

    const-wide/16 v4, 0xdac

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    return-void

    .end local v0           #anim:Landroid/view/animation/Animation;
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method public updatePausePlay()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/MediaControllerWebKit;->isControll:Z

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mPauseButton:Landroid/widget/Button;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mPauseButton:Landroid/widget/Button;

    const v1, 0x108038d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->hidePauseFlag()V

    :goto_1
    iget-boolean v0, p0, Landroid/widget/MediaControllerWebKit;->isControll:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/MediaControllerWebKit;->isSettingViewShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mPauseButton:Landroid/widget/Button;

    const v1, 0x108038e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->showPauseFlag()V

    goto :goto_1
.end method
