.class Landroid/widget/MediaControllerWebKit$6;
.super Landroid/os/Handler;
.source "MediaControllerWebKit.java"


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
    iput-object p1, p0, Landroid/widget/MediaControllerWebKit$6;->this$0:Landroid/widget/MediaControllerWebKit;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Landroid/widget/MediaControllerWebKit$6;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mSettingLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Landroid/widget/MediaControllerWebKit;->access$1800(Landroid/widget/MediaControllerWebKit;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->requestFocus()Z

    goto :goto_0

    :pswitch_1
    :try_start_0
    iget-object v1, p0, Landroid/widget/MediaControllerWebKit$6;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mRoot:Landroid/widget/FrameLayout;
    invoke-static {v1}, Landroid/widget/MediaControllerWebKit;->access$1900(Landroid/widget/MediaControllerWebKit;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/MediaControllerWebKit$6;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mSettingLayout:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Landroid/widget/MediaControllerWebKit;->access$1800(Landroid/widget/MediaControllerWebKit;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v1, p0, Landroid/widget/MediaControllerWebKit$6;->this$0:Landroid/widget/MediaControllerWebKit;

    #setter for: Landroid/widget/MediaControllerWebKit;->isMenuShown:Z
    invoke-static {v1, v3}, Landroid/widget/MediaControllerWebKit;->access$1402(Landroid/widget/MediaControllerWebKit;Z)Z

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit$6;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v1}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Landroid/widget/MediaControllerWebKit$6;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/widget/MediaControllerWebKit;->access$300(Landroid/widget/MediaControllerWebKit;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit$6;->this$0:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v1}, Landroid/widget/MediaControllerWebKit;->isSettingViewShown()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "csl"

    const-string v2, "remove mDecor by dismissSetting"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit$6;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Landroid/widget/MediaControllerWebKit;->access$500(Landroid/widget/MediaControllerWebKit;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/MediaControllerWebKit$6;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mDecor:Landroid/view/View;
    invoke-static {v2}, Landroid/widget/MediaControllerWebKit;->access$400(Landroid/widget/MediaControllerWebKit;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit$6;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mController:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Landroid/widget/MediaControllerWebKit;->access$600(Landroid/widget/MediaControllerWebKit;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit$6;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mSystemClockTv:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/MediaControllerWebKit;->access$700(Landroid/widget/MediaControllerWebKit;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_2
    iget-object v1, p0, Landroid/widget/MediaControllerWebKit$6;->this$0:Landroid/widget/MediaControllerWebKit;

    #setter for: Landroid/widget/MediaControllerWebKit;->mShowing:Z
    invoke-static {v1, v3}, Landroid/widget/MediaControllerWebKit;->access$802(Landroid/widget/MediaControllerWebKit;Z)Z

    :cond_1
    iget-object v1, p0, Landroid/widget/MediaControllerWebKit$6;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/widget/MediaControllerWebKit;->access$300(Landroid/widget/MediaControllerWebKit;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit$6;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/widget/MediaControllerWebKit;->access$300(Landroid/widget/MediaControllerWebKit;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/widget/MediaControllerWebKit$6;->removeMessages(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaController"

    const-string v2, "already removed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :pswitch_2
    iget-object v1, p0, Landroid/widget/MediaControllerWebKit$6;->this$0:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v1}, Landroid/widget/MediaControllerWebKit;->dismissSetting()V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
