.class Landroid/webkit/HTML5VideoFullScreen$7;
.super Landroid/os/Handler;
.source "HTML5VideoFullScreen.java"


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
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen$7;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$7;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->pauseFlag:Z
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$1600(Landroid/webkit/HTML5VideoFullScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$7;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mFlagImg:Landroid/widget/ImageView;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$1700(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$7;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoFullScreen;->showLoading()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$7;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoFullScreen;->dismissLoading()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
