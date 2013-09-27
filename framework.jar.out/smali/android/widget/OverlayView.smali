.class public Landroid/widget/OverlayView;
.super Landroid/view/SurfaceView;
.source "OverlayView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOverlayViewManager:Landroid/app/OverlayViewManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/OverlayView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/widget/OverlayView;->mOverlayViewManager:Landroid/app/OverlayViewManager;

    iput-object p1, p0, Landroid/widget/OverlayView;->mContext:Landroid/content/Context;

    const-string v0, "overlayview"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/OverlayViewManager;

    iput-object v0, p0, Landroid/widget/OverlayView;->mOverlayViewManager:Landroid/app/OverlayViewManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Landroid/widget/OverlayView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/widget/OverlayView;->mOverlayViewManager:Landroid/app/OverlayViewManager;

    iput-object p1, p0, Landroid/widget/OverlayView;->mContext:Landroid/content/Context;

    const-string v0, "overlayview"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/OverlayViewManager;

    iput-object v0, p0, Landroid/widget/OverlayView;->mOverlayViewManager:Landroid/app/OverlayViewManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/widget/OverlayView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/widget/OverlayView;->mOverlayViewManager:Landroid/app/OverlayViewManager;

    iput-object p1, p0, Landroid/widget/OverlayView;->mContext:Landroid/content/Context;

    const-string v0, "overlayview"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/OverlayViewManager;

    iput-object v0, p0, Landroid/widget/OverlayView;->mOverlayViewManager:Landroid/app/OverlayViewManager;

    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/OverlayView;->mOverlayViewManager:Landroid/app/OverlayViewManager;

    invoke-virtual {v0}, Landroid/app/OverlayViewManager;->deinit()V

    return-void
.end method

.method public displayAndroid()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/OverlayView;->mOverlayViewManager:Landroid/app/OverlayViewManager;

    invoke-virtual {v0}, Landroid/app/OverlayViewManager;->displayAndroid()I

    move-result v0

    return v0
.end method

.method public displayHdmi()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/OverlayView;->mOverlayViewManager:Landroid/app/OverlayViewManager;

    invoke-virtual {v0}, Landroid/app/OverlayViewManager;->displayHdmi()I

    move-result v0

    return v0
.end method

.method public displayPip(IIII)I
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    iget-object v0, p0, Landroid/widget/OverlayView;->mOverlayViewManager:Landroid/app/OverlayViewManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/OverlayViewManager;->displayPip(IIII)I

    move-result v0

    return v0
.end method

.method public enableAudio(I)I
    .locals 1
    .parameter "flag"

    .prologue
    iget-object v0, p0, Landroid/widget/OverlayView;->mOverlayViewManager:Landroid/app/OverlayViewManager;

    invoke-virtual {v0, p1}, Landroid/app/OverlayViewManager;->enableAudio(I)I

    move-result v0

    return v0
.end method

.method public getHActive()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/OverlayView;->mOverlayViewManager:Landroid/app/OverlayViewManager;

    invoke-virtual {v0}, Landroid/app/OverlayViewManager;->getHActive()I

    move-result v0

    return v0
.end method

.method public getVActive()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/OverlayView;->mOverlayViewManager:Landroid/app/OverlayViewManager;

    invoke-virtual {v0}, Landroid/app/OverlayViewManager;->getVActive()I

    move-result v0

    return v0
.end method

.method public handleAudio()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/OverlayView;->mOverlayViewManager:Landroid/app/OverlayViewManager;

    invoke-virtual {v0}, Landroid/app/OverlayViewManager;->handleAudio()I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/OverlayView;->mOverlayViewManager:Landroid/app/OverlayViewManager;

    invoke-virtual {v0}, Landroid/app/OverlayViewManager;->init()V

    return-void
.end method

.method public isDvi()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/OverlayView;->mOverlayViewManager:Landroid/app/OverlayViewManager;

    invoke-virtual {v0}, Landroid/app/OverlayViewManager;->isDvi()Z

    move-result v0

    return v0
.end method

.method public isInterlace()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/OverlayView;->mOverlayViewManager:Landroid/app/OverlayViewManager;

    invoke-virtual {v0}, Landroid/app/OverlayViewManager;->isInterlace()Z

    move-result v0

    return v0
.end method
