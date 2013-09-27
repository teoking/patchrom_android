.class Landroid/widget/MediaControllerWebKit$4;
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
    iput-object p1, p0, Landroid/widget/MediaControllerWebKit$4;->this$0:Landroid/widget/MediaControllerWebKit;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v9, p0, Landroid/widget/MediaControllerWebKit$4;->this$0:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v9}, Landroid/widget/MediaControllerWebKit;->isSettingViewShown()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Landroid/widget/MediaControllerWebKit$4;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v9}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v9

    invoke-interface {v9}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/widget/MediaControllerWebKit$4;->this$0:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v9}, Landroid/widget/MediaControllerWebKit;->hide()V

    goto :goto_0

    :cond_1
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Landroid/widget/MediaControllerWebKit$4;->removeMessages(I)V

    goto :goto_0

    :pswitch_2
    iget-object v9, p0, Landroid/widget/MediaControllerWebKit$4;->this$0:Landroid/widget/MediaControllerWebKit;

    #calls: Landroid/widget/MediaControllerWebKit;->setProgress()I
    invoke-static {v9}, Landroid/widget/MediaControllerWebKit;->access$900(Landroid/widget/MediaControllerWebKit;)I

    move-result v6

    .local v6, pos:I
    iget-object v9, p0, Landroid/widget/MediaControllerWebKit$4;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v9}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v9

    invoke-interface {v9}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->getCurrentPosition()I

    move-result v7

    .local v7, position:I
    iget-object v9, p0, Landroid/widget/MediaControllerWebKit$4;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;
    invoke-static {v9}, Landroid/widget/MediaControllerWebKit;->access$1200(Landroid/widget/MediaControllerWebKit;)Lletv/widget/LetvControllerSeekBar;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/MediaControllerWebKit$4;->this$0:Landroid/widget/MediaControllerWebKit;

    const v11, 0x10804d1

    iget-object v12, p0, Landroid/widget/MediaControllerWebKit$4;->this$0:Landroid/widget/MediaControllerWebKit;

    #calls: Landroid/widget/MediaControllerWebKit;->stringForTime(I)Ljava/lang/String;
    invoke-static {v12, v7}, Landroid/widget/MediaControllerWebKit;->access$1000(Landroid/widget/MediaControllerWebKit;I)Ljava/lang/String;

    move-result-object v12

    #calls: Landroid/widget/MediaControllerWebKit;->writeOnDrawable(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    invoke-static {v10, v11, v12}, Landroid/widget/MediaControllerWebKit;->access$1100(Landroid/widget/MediaControllerWebKit;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lletv/widget/LetvControllerSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, p0, Landroid/widget/MediaControllerWebKit$4;->this$0:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v9}, Landroid/widget/MediaControllerWebKit;->isSettingViewShown()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Landroid/widget/MediaControllerWebKit$4;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mDragging:Z
    invoke-static {v9}, Landroid/widget/MediaControllerWebKit;->access$1300(Landroid/widget/MediaControllerWebKit;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Landroid/widget/MediaControllerWebKit$4;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mShowing:Z
    invoke-static {v9}, Landroid/widget/MediaControllerWebKit;->access$800(Landroid/widget/MediaControllerWebKit;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Landroid/widget/MediaControllerWebKit$4;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v9}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v9

    invoke-interface {v9}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Landroid/widget/MediaControllerWebKit$4;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    rem-int/lit16 v9, v6, 0x3e8

    rsub-int v9, v9, 0x3e8

    int-to-long v9, v9

    invoke-virtual {p0, p1, v9, v10}, Landroid/widget/MediaControllerWebKit$4;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Landroid/widget/MediaControllerWebKit$4;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x1

    const-wide/16 v10, 0x3e8

    invoke-virtual {p0, v9, v10, v11}, Landroid/widget/MediaControllerWebKit$4;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_2
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Landroid/widget/MediaControllerWebKit$4;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v9, 0x3e8

    invoke-virtual {p0, p1, v9, v10}, Landroid/widget/MediaControllerWebKit$4;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .end local v6           #pos:I
    .end local v7           #position:I
    :pswitch_3
    iget-object v9, p0, Landroid/widget/MediaControllerWebKit$4;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->isMenuShown:Z
    invoke-static {v9}, Landroid/widget/MediaControllerWebKit;->access$1400(Landroid/widget/MediaControllerWebKit;)Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .local v8, sdf:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v0, v9, v10}, Ljava/util/Date;-><init>(J)V

    .local v0, date:Ljava/util/Date;
    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .local v3, hms:Ljava/lang/String;
    const-string v9, "00"

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "30"

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    iget-object v9, p0, Landroid/widget/MediaControllerWebKit$4;->this$0:Landroid/widget/MediaControllerWebKit;

    const/4 v10, 0x1

    #calls: Landroid/widget/MediaControllerWebKit;->showClockView(ZLjava/lang/String;)V
    invoke-static {v9, v10, v3}, Landroid/widget/MediaControllerWebKit;->access$1500(Landroid/widget/MediaControllerWebKit;ZLjava/lang/String;)V

    :cond_4
    const/16 v9, 0xa

    const-wide/16 v10, 0x7530

    invoke-virtual {p0, v9, v10, v11}, Landroid/widget/MediaControllerWebKit$4;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .end local v0           #date:Ljava/util/Date;
    .end local v3           #hms:Ljava/lang/String;
    .end local v8           #sdf:Ljava/text/SimpleDateFormat;
    :pswitch_4
    iget-object v9, p0, Landroid/widget/MediaControllerWebKit$4;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPauseButton:Landroid/widget/Button;
    invoke-static {v9}, Landroid/widget/MediaControllerWebKit;->access$200(Landroid/widget/MediaControllerWebKit;)Landroid/widget/Button;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v9, p0, Landroid/widget/MediaControllerWebKit$4;->this$0:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v9}, Landroid/widget/MediaControllerWebKit;->updatePausePlay()V

    iget-object v9, p0, Landroid/widget/MediaControllerWebKit$4;->this$0:Landroid/widget/MediaControllerWebKit;

    const/16 v10, 0xbb8

    invoke-virtual {v9, v10}, Landroid/widget/MediaControllerWebKit;->show(I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v9, p0, Landroid/widget/MediaControllerWebKit$4;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v9}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v9

    invoke-interface {v9}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->getDuration()I

    move-result v9

    int-to-long v1, v9

    .local v1, duration:J
    iget v9, p1, Landroid/os/Message;->arg1:I

    int-to-long v9, v9

    mul-long/2addr v9, v1

    const-wide/16 v11, 0x3e8

    div-long v4, v9, v11

    .local v4, newposition:J
    iget-object v9, p0, Landroid/widget/MediaControllerWebKit$4;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/MediaControllerWebKit;->access$1600(Landroid/widget/MediaControllerWebKit;)Landroid/widget/TextView;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/widget/MediaControllerWebKit$4;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/MediaControllerWebKit;->access$1600(Landroid/widget/MediaControllerWebKit;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/MediaControllerWebKit$4;->this$0:Landroid/widget/MediaControllerWebKit;

    long-to-int v11, v4

    #calls: Landroid/widget/MediaControllerWebKit;->stringForTime(I)Ljava/lang/String;
    invoke-static {v10, v11}, Landroid/widget/MediaControllerWebKit;->access$1000(Landroid/widget/MediaControllerWebKit;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
