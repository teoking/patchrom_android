.class Landroid/widget/MediaControllerWebKit$7;
.super Ljava/lang/Object;
.source "MediaControllerWebKit.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    iput-object p1, p0, Landroid/widget/MediaControllerWebKit$7;->this$0:Landroid/widget/MediaControllerWebKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const/4 v3, 0x5

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$7;->this$0:Landroid/widget/MediaControllerWebKit;

    #setter for: Landroid/widget/MediaControllerWebKit;->mWidthProgress:I
    invoke-static {v0, p2}, Landroid/widget/MediaControllerWebKit;->access$2002(Landroid/widget/MediaControllerWebKit;I)I

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$7;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->widthValue:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$2100(Landroid/widget/MediaControllerWebKit;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$7;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->settingSwitcher:Landroid/widget/LetvSettingSwitcher;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$2200(Landroid/widget/MediaControllerWebKit;)Landroid/widget/LetvSettingSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LetvSettingSwitcher;->getCurrentIndex()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$7;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mPlayer:Landroid/widget/MediaControllerWebKit$MediaPlayerControl;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$000(Landroid/widget/MediaControllerWebKit;)Landroid/widget/MediaControllerWebKit$MediaPlayerControl;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit$7;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->widthProgress:Lletv/widget/LetvSeekBar;
    invoke-static {v1}, Landroid/widget/MediaControllerWebKit;->access$2300(Landroid/widget/MediaControllerWebKit;)Lletv/widget/LetvSeekBar;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/MediaControllerWebKit$7;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->heightProgress:Lletv/widget/LetvSeekBar;
    invoke-static {v2}, Landroid/widget/MediaControllerWebKit;->access$2400(Landroid/widget/MediaControllerWebKit;)Lletv/widget/LetvSeekBar;

    move-result-object v2

    invoke-interface {v0, v3, v1, v2}, Landroid/widget/MediaControllerWebKit$MediaPlayerControl;->onScreenChanged(ILletv/widget/LetvSeekBar;Lletv/widget/LetvSeekBar;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    return-void
.end method
