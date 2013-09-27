.class Landroid/widget/MediaControllerWebKit$15;
.super Ljava/lang/Object;
.source "MediaControllerWebKit.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    iput-object p1, p0, Landroid/widget/MediaControllerWebKit$15;->this$0:Landroid/widget/MediaControllerWebKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 10
    .parameter "bar"
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    const-string v2, "url"

    const-string v3, "MediaControllerWebKit.java mSeekListener onProgressChanged begin"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/widget/MediaControllerWebKit$15;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v2}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->getDuration()I

    move-result v2

    int-to-long v0, v2

    .local v0, duration:J
    if-eqz p3, :cond_0

    iget-object v2, p0, Landroid/widget/MediaControllerWebKit$15;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;
    invoke-static {v2}, Landroid/widget/MediaControllerWebKit;->access$1200(Landroid/widget/MediaControllerWebKit;)Lletv/widget/LetvControllerSeekBar;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/MediaControllerWebKit$15;->this$0:Landroid/widget/MediaControllerWebKit;

    const v4, 0x10804d1

    iget-object v5, p0, Landroid/widget/MediaControllerWebKit$15;->this$0:Landroid/widget/MediaControllerWebKit;

    int-to-double v6, p2

    const-wide v8, 0x408f400000000000L

    div-double/2addr v6, v8

    long-to-double v8, v0

    mul-double/2addr v6, v8

    double-to-int v6, v6

    #calls: Landroid/widget/MediaControllerWebKit;->stringForTime(I)Ljava/lang/String;
    invoke-static {v5, v6}, Landroid/widget/MediaControllerWebKit;->access$1000(Landroid/widget/MediaControllerWebKit;I)Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/widget/MediaControllerWebKit;->writeOnDrawable(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    invoke-static {v3, v4, v5}, Landroid/widget/MediaControllerWebKit;->access$1100(Landroid/widget/MediaControllerWebKit;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lletv/widget/LetvControllerSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$15;->this$0:Landroid/widget/MediaControllerWebKit;

    const v1, 0x36ee80

    invoke-virtual {v0, v1}, Landroid/widget/MediaControllerWebKit;->show(I)V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$15;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->showLoading()V

    const-string v0, "url"

    const-string v1, "MediaControllerWebKit.java mSeekListener onStartTrackingTouch begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$15;->this$0:Landroid/widget/MediaControllerWebKit;

    const/4 v1, 0x1

    #setter for: Landroid/widget/MediaControllerWebKit;->mDragging:Z
    invoke-static {v0, v1}, Landroid/widget/MediaControllerWebKit;->access$1302(Landroid/widget/MediaControllerWebKit;Z)Z

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$15;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$300(Landroid/widget/MediaControllerWebKit;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 10
    .parameter "bar"

    .prologue
    const-wide/16 v8, 0x3e8

    const-string v5, "url"

    const-string v6, "MediaControllerWebKit.java mSeekListener onStopTrackingTouch begin"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/widget/MediaControllerWebKit$15;->this$0:Landroid/widget/MediaControllerWebKit;

    const/4 v6, 0x0

    #setter for: Landroid/widget/MediaControllerWebKit;->mDragging:Z
    invoke-static {v5, v6}, Landroid/widget/MediaControllerWebKit;->access$1302(Landroid/widget/MediaControllerWebKit;Z)Z

    iget-object v5, p0, Landroid/widget/MediaControllerWebKit$15;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mProgress:Lletv/widget/LetvControllerSeekBar;
    invoke-static {v5}, Landroid/widget/MediaControllerWebKit;->access$1200(Landroid/widget/MediaControllerWebKit;)Lletv/widget/LetvControllerSeekBar;

    move-result-object v5

    invoke-virtual {v5}, Lletv/widget/LetvControllerSeekBar;->getProgress()I

    move-result v4

    .local v4, progress:I
    const-string v5, "MediaControllerWebKit"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cur pos is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/widget/MediaControllerWebKit$15;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v5}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->getDuration()I

    move-result v5

    int-to-long v0, v5

    .local v0, duration:J
    int-to-long v5, v4

    mul-long/2addr v5, v0

    div-long v2, v5, v8

    .local v2, newposition:J
    iget-object v5, p0, Landroid/widget/MediaControllerWebKit$15;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v5}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v5

    long-to-int v6, v2

    invoke-interface {v5, v6}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->seekTo(I)V

    iget-object v5, p0, Landroid/widget/MediaControllerWebKit$15;->this$0:Landroid/widget/MediaControllerWebKit;

    #calls: Landroid/widget/MediaControllerWebKit;->setProgress()I
    invoke-static {v5}, Landroid/widget/MediaControllerWebKit;->access$900(Landroid/widget/MediaControllerWebKit;)I

    iget-object v5, p0, Landroid/widget/MediaControllerWebKit$15;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v5}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->hidePauseFlag()V

    iget-object v5, p0, Landroid/widget/MediaControllerWebKit$15;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPauseButton:Landroid/widget/Button;
    invoke-static {v5}, Landroid/widget/MediaControllerWebKit;->access$200(Landroid/widget/MediaControllerWebKit;)Landroid/widget/Button;

    move-result-object v5

    const v6, 0x108038d

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v5, p0, Landroid/widget/MediaControllerWebKit$15;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Landroid/widget/MediaControllerWebKit;->access$300(Landroid/widget/MediaControllerWebKit;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
