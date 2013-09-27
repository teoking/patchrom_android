.class Landroid/widget/MediaControllerWebKit$9;
.super Ljava/lang/Object;
.source "MediaControllerWebKit.java"

# interfaces
.implements Landroid/widget/LetvSettingSwitcher$OnSettingChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/MediaControllerWebKit;->showSetting()V
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
    iput-object p1, p0, Landroid/widget/MediaControllerWebKit$9;->this$0:Landroid/widget/MediaControllerWebKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Landroid/view/View;I)V
    .locals 5
    .parameter "view"
    .parameter "index"

    .prologue
    const/4 v4, 0x3

    const/4 v3, -0x1

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$9;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->handler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$2700(Landroid/widget/MediaControllerWebKit;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$9;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->handler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$2700(Landroid/widget/MediaControllerWebKit;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$9;->this$0:Landroid/widget/MediaControllerWebKit;

    #setter for: Landroid/widget/MediaControllerWebKit;->mIndex:I
    invoke-static {v0, p2}, Landroid/widget/MediaControllerWebKit;->access$2802(Landroid/widget/MediaControllerWebKit;I)I

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$9;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$9;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->widthProgress:Lletv/widget/LetvSeekBar;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$2300(Landroid/widget/MediaControllerWebKit;)Lletv/widget/LetvSeekBar;

    move-result-object v0

    const/16 v1, 0x4b

    invoke-virtual {v0, v1}, Lletv/widget/LetvSeekBar;->setProgress(I)V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$9;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->heightProgress:Lletv/widget/LetvSeekBar;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$2400(Landroid/widget/MediaControllerWebKit;)Lletv/widget/LetvSeekBar;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lletv/widget/LetvSeekBar;->setProgress(I)V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$9;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->widthValue:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$2100(Landroid/widget/MediaControllerWebKit;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "75"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$9;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->heightValue:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$2600(Landroid/widget/MediaControllerWebKit;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "100"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$9;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit$9;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->widthProgress:Lletv/widget/LetvSeekBar;
    invoke-static {v1}, Landroid/widget/MediaControllerWebKit;->access$2300(Landroid/widget/MediaControllerWebKit;)Lletv/widget/LetvSeekBar;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/MediaControllerWebKit$9;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->heightProgress:Lletv/widget/LetvSeekBar;
    invoke-static {v2}, Landroid/widget/MediaControllerWebKit;->access$2400(Landroid/widget/MediaControllerWebKit;)Lletv/widget/LetvSeekBar;

    move-result-object v2

    invoke-interface {v0, p2, v1, v2}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->onScreenChanged(ILletv/widget/LetvSeekBar;Lletv/widget/LetvSeekBar;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$9;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->userWidthProgress:I
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$2900(Landroid/widget/MediaControllerWebKit;)I

    move-result v0

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$9;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->widthProgress:Lletv/widget/LetvSeekBar;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$2300(Landroid/widget/MediaControllerWebKit;)Lletv/widget/LetvSeekBar;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit$9;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->userWidthProgress:I
    invoke-static {v1}, Landroid/widget/MediaControllerWebKit;->access$2900(Landroid/widget/MediaControllerWebKit;)I

    move-result v1

    invoke-virtual {v0, v1}, Lletv/widget/LetvSeekBar;->setProgress(I)V

    :cond_3
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$9;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->userHeightProgress:I
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$3000(Landroid/widget/MediaControllerWebKit;)I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$9;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->heightProgress:Lletv/widget/LetvSeekBar;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$2400(Landroid/widget/MediaControllerWebKit;)Lletv/widget/LetvSeekBar;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit$9;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->userHeightProgress:I
    invoke-static {v1}, Landroid/widget/MediaControllerWebKit;->access$3000(Landroid/widget/MediaControllerWebKit;)I

    move-result v1

    invoke-virtual {v0, v1}, Lletv/widget/LetvSeekBar;->setProgress(I)V

    goto :goto_0
.end method
