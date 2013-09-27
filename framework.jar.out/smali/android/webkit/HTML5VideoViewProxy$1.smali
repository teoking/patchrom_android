.class Landroid/webkit/HTML5VideoViewProxy$1;
.super Ljava/lang/Object;
.source "HTML5VideoViewProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/HTML5VideoViewProxy;->changeforLETVurl(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;II)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5VideoViewProxy;

.field final synthetic val$proxy:Landroid/webkit/HTML5VideoViewProxy;

.field final synthetic val$time:I

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$videoLayerId:I


# direct methods
.method constructor <init>(Landroid/webkit/HTML5VideoViewProxy;Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iput-object p2, p0, Landroid/webkit/HTML5VideoViewProxy$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Landroid/webkit/HTML5VideoViewProxy$1;->val$proxy:Landroid/webkit/HTML5VideoViewProxy;

    iput p4, p0, Landroid/webkit/HTML5VideoViewProxy$1;->val$videoLayerId:I

    iput p5, p0, Landroid/webkit/HTML5VideoViewProxy$1;->val$time:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy$1;->val$proxy:Landroid/webkit/HTML5VideoViewProxy;

    iget v3, p0, Landroid/webkit/HTML5VideoViewProxy$1;->val$videoLayerId:I

    iget v4, p0, Landroid/webkit/HTML5VideoViewProxy$1;->val$time:I

    #calls: Landroid/webkit/HTML5VideoViewProxy;->Playlresurl(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;II)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/webkit/HTML5VideoViewProxy;->access$1700(Landroid/webkit/HTML5VideoViewProxy;Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;II)V

    return-void
.end method
