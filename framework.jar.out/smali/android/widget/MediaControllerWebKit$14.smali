.class Landroid/widget/MediaControllerWebKit$14;
.super Ljava/lang/Object;
.source "MediaControllerWebKit.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    iput-object p1, p0, Landroid/widget/MediaControllerWebKit$14;->this$0:Landroid/widget/MediaControllerWebKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .local v2, longPress:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v2, 0x1

    :cond_0
    const/16 v7, 0x59

    if-ne p2, v7, :cond_b

    const/16 p2, 0x15

    :cond_1
    :goto_0
    const/16 v7, 0x15

    if-eq p2, v7, :cond_2

    const/16 v7, 0x16

    if-ne p2, v7, :cond_3

    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Landroid/widget/MediaControllerWebKit$14;->this$0:Landroid/widget/MediaControllerWebKit;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/widget/MediaControllerWebKit;->mDoingSeek:Z

    iget-object v7, p0, Landroid/widget/MediaControllerWebKit$14;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mShowing:Z
    invoke-static {v7}, Landroid/widget/MediaControllerWebKit;->access$800(Landroid/widget/MediaControllerWebKit;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v2, :cond_3

    iget-object v7, p0, Landroid/widget/MediaControllerWebKit$14;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v7}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v7

    invoke-interface {v7}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->pause()V

    :cond_3
    const/16 v7, 0x15

    if-ne p2, v7, :cond_c

    :cond_4
    :goto_1
    const/16 v7, 0x15

    if-eq p2, v7, :cond_5

    const/16 v7, 0x16

    if-ne p2, v7, :cond_a

    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    iget-object v7, p0, Landroid/widget/MediaControllerWebKit$14;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;
    invoke-static {v7}, Landroid/widget/MediaControllerWebKit;->access$1200(Landroid/widget/MediaControllerWebKit;)Lletv/widget/LetvControllerSeekBar;

    move-result-object v7

    invoke-virtual {v7}, Lletv/widget/LetvControllerSeekBar;->getProgress()I

    move-result v6

    .local v6, progress:I
    iget-object v7, p0, Landroid/widget/MediaControllerWebKit$14;->this$0:Landroid/widget/MediaControllerWebKit;

    iget-boolean v7, v7, Landroid/widget/MediaControllerWebKit;->mDoingSeek:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .local v3, msg:Landroid/os/Message;
    const/4 v7, 0x4

    iput v7, v3, Landroid/os/Message;->what:I

    iput v6, v3, Landroid/os/Message;->arg1:I

    iget-object v7, p0, Landroid/widget/MediaControllerWebKit$14;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Landroid/widget/MediaControllerWebKit;->access$300(Landroid/widget/MediaControllerWebKit;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v3           #msg:Landroid/os/Message;
    :cond_6
    iget-object v7, p0, Landroid/widget/MediaControllerWebKit$14;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v7}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v7

    invoke-interface {v7}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->getDuration()I

    move-result v7

    int-to-long v0, v7

    .local v0, duration:J
    int-to-long v7, v6

    mul-long/2addr v7, v0

    const-wide/16 v9, 0x3e8

    div-long v4, v7, v9

    .local v4, newposition:J
    const-wide/16 v7, 0x4e20

    cmp-long v7, v0, v7

    if-lez v7, :cond_7

    cmp-long v7, v0, v4

    if-nez v7, :cond_7

    const-wide/16 v7, 0x2710

    sub-long v4, v0, v7

    :cond_7
    const-string v7, "MediaControllerWebKit"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "new position is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mShowing is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/MediaControllerWebKit$14;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mShowing:Z
    invoke-static {v9}, Landroid/widget/MediaControllerWebKit;->access$800(Landroid/widget/MediaControllerWebKit;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/widget/MediaControllerWebKit$14;->this$0:Landroid/widget/MediaControllerWebKit;

    iget-boolean v7, v7, Landroid/widget/MediaControllerWebKit;->mDoingSeek:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Landroid/widget/MediaControllerWebKit$14;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v7}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v7

    long-to-int v8, v4

    invoke-interface {v7, v8}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->seekTo(I)V

    :cond_8
    const-string v7, "MediaControllerWebKit"

    const-string v8, "seek finish "

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/widget/MediaControllerWebKit$14;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mShowing:Z
    invoke-static {v7}, Landroid/widget/MediaControllerWebKit;->access$800(Landroid/widget/MediaControllerWebKit;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Landroid/widget/MediaControllerWebKit$14;->this$0:Landroid/widget/MediaControllerWebKit;

    iget-boolean v7, v7, Landroid/widget/MediaControllerWebKit;->mDoingSeek:Z

    if-eqz v7, :cond_9

    iget-object v7, p0, Landroid/widget/MediaControllerWebKit$14;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v7}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v7

    invoke-interface {v7}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->start_after_seek()V

    iget-object v7, p0, Landroid/widget/MediaControllerWebKit$14;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Landroid/widget/MediaControllerWebKit;->access$300(Landroid/widget/MediaControllerWebKit;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    :cond_9
    iget-object v7, p0, Landroid/widget/MediaControllerWebKit$14;->this$0:Landroid/widget/MediaControllerWebKit;

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/widget/MediaControllerWebKit;->mDoingSeek:Z

    iget-object v7, p0, Landroid/widget/MediaControllerWebKit$14;->this$0:Landroid/widget/MediaControllerWebKit;

    const/4 v8, 0x0

    iput v8, v7, Landroid/widget/MediaControllerWebKit;->add_step:I

    iget-object v7, p0, Landroid/widget/MediaControllerWebKit$14;->this$0:Landroid/widget/MediaControllerWebKit;

    const/4 v8, 0x0

    iput v8, v7, Landroid/widget/MediaControllerWebKit;->dec_step:I

    .end local v0           #duration:J
    .end local v4           #newposition:J
    .end local v6           #progress:I
    :cond_a
    const/16 v7, 0x56

    if-ne p2, v7, :cond_d

    iget-object v7, p0, Landroid/widget/MediaControllerWebKit$14;->this$0:Landroid/widget/MediaControllerWebKit;

    invoke-virtual {v7}, Landroid/widget/MediaControllerWebKit;->hide()V

    const/4 v7, 0x1

    :goto_2
    return v7

    :cond_b
    const/16 v7, 0x5a

    if-ne p2, v7, :cond_1

    const/16 p2, 0x16

    goto/16 :goto_0

    :cond_c
    const/16 v7, 0x16

    if-ne p2, v7, :cond_4

    goto/16 :goto_1

    :cond_d
    const/4 v7, 0x0

    goto :goto_2
.end method
