.class Landroid/widget/MediaControllerWebKit$12;
.super Ljava/lang/Object;
.source "MediaControllerWebKit.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/MediaControllerWebKit;->dismissSetting()V
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
    iput-object p1, p0, Landroid/widget/MediaControllerWebKit$12;->this$0:Landroid/widget/MediaControllerWebKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$12;->this$0:Landroid/widget/MediaControllerWebKit;

    #setter for: Landroid/widget/MediaControllerWebKit;->isAnima:Z
    invoke-static {v0, v2}, Landroid/widget/MediaControllerWebKit;->access$3102(Landroid/widget/MediaControllerWebKit;Z)Z

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$12;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->isAdded:Z
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$3200(Landroid/widget/MediaControllerWebKit;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$12;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mRoot:Landroid/widget/FrameLayout;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$1900(Landroid/widget/MediaControllerWebKit;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/MediaControllerWebKit$12;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mSettingLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Landroid/widget/MediaControllerWebKit;->access$1800(Landroid/widget/MediaControllerWebKit;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$12;->this$0:Landroid/widget/MediaControllerWebKit;

    #setter for: Landroid/widget/MediaControllerWebKit;->isAdded:Z
    invoke-static {v0, v2}, Landroid/widget/MediaControllerWebKit;->access$3202(Landroid/widget/MediaControllerWebKit;Z)Z

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$12;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->handler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$2700(Landroid/widget/MediaControllerWebKit;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$12;->this$0:Landroid/widget/MediaControllerWebKit;

    const/4 v1, 0x1

    #setter for: Landroid/widget/MediaControllerWebKit;->isAnima:Z
    invoke-static {v0, v1}, Landroid/widget/MediaControllerWebKit;->access$3102(Landroid/widget/MediaControllerWebKit;Z)Z

    return-void
.end method
