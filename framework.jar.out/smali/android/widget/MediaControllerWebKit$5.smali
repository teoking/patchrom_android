.class Landroid/widget/MediaControllerWebKit$5;
.super Ljava/lang/Object;
.source "MediaControllerWebKit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Landroid/widget/MediaControllerWebKit$5;->this$0:Landroid/widget/MediaControllerWebKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$5;->this$0:Landroid/widget/MediaControllerWebKit;

    #calls: Landroid/widget/MediaControllerWebKit;->doPauseResume()V
    invoke-static {v0}, Landroid/widget/MediaControllerWebKit;->access$1700(Landroid/widget/MediaControllerWebKit;)V

    iget-object v0, p0, Landroid/widget/MediaControllerWebKit$5;->this$0:Landroid/widget/MediaControllerWebKit;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/widget/MediaControllerWebKit;->show(I)V

    return-void
.end method
