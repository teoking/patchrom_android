.class Landroid/widget/MediaControllerWebKit$10;
.super Ljava/lang/Object;
.source "MediaControllerWebKit.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    iput-object p1, p0, Landroid/widget/MediaControllerWebKit$10;->this$0:Landroid/widget/MediaControllerWebKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$10;->this$0:Landroid/widget/MediaControllerWebKit;

    const/4 v1, 0x0

    #setter for: Landroid/widget/MediaControllerWebKit;->isAnima:Z
    invoke-static {v0, v1}, Landroid/widget/MediaControllerWebKit;->access$3102(Landroid/widget/MediaControllerWebKit;Z)Z

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$10;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mSettingLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$1800(Landroid/widget/MediaControllerWebKit;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    return-void
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
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$10;->this$0:Landroid/widget/MediaControllerWebKit;

    const/4 v1, 0x1

    #setter for: Landroid/widget/MediaControllerWebKit;->isAnima:Z
    invoke-static {v0, v1}, Landroid/widget/MediaControllerWebKit;->access$3102(Landroid/widget/MediaControllerWebKit;Z)Z

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$10;->this$0:Landroid/widget/MediaControllerWebKit;

    #getter for: Landroid/widget/MediaControllerWebKit;->mSettingLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$1800(Landroid/widget/MediaControllerWebKit;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
