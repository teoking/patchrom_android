.class Landroid/webkit/HTML5VideoFullScreen$5;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


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
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen$5;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$5;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoFullScreen;->dismissLoading()V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$5;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoFullScreen;->isLiveStream()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method
