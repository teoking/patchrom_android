.class public Lcom/android/server/OverlayViewService;
.super Landroid/app/IOverlayView$Stub;
.source "OverlayViewService.java"


# static fields
.field private static final mTag:Ljava/lang/String; = "OverlayViewService"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0}, Landroid/app/IOverlayView$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/OverlayViewService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/OverlayViewService;->mContext:Landroid/content/Context;

    return-void
.end method

.method private native _deinit()V
.end method

.method private native _displayAndroid()I
.end method

.method private native _displayHdmi()I
.end method

.method private native _displayPip(IIII)I
.end method

.method private native _enableAudio(I)I
.end method

.method private native _getHActive()I
.end method

.method private native _getVActive()I
.end method

.method private native _handleAudio()I
.end method

.method private native _init()V
.end method

.method private native _isDvi()Z
.end method

.method private native _isInterlace()Z
.end method

.method private getOverlayViewEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, ret:Z
    const-string v1, "ro.app.overlayviewE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public deinit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/server/OverlayViewService;->getOverlayViewEnable()Z

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/OverlayViewService;->_deinit()V

    :cond_0
    return-void
.end method

.method public displayAndroid()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .local v0, ret:I
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/server/OverlayViewService;->getOverlayViewEnable()Z

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/OverlayViewService;->_displayAndroid()I

    move-result v0

    :cond_0
    return v0
.end method

.method public displayHdmi()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .local v0, ret:I
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/server/OverlayViewService;->getOverlayViewEnable()Z

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/OverlayViewService;->_displayHdmi()I

    move-result v0

    :cond_0
    return v0
.end method

.method public displayPip(IIII)I
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .local v0, ret:I
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/server/OverlayViewService;->getOverlayViewEnable()Z

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/OverlayViewService;->_displayPip(IIII)I

    move-result v0

    :cond_0
    return v0
.end method

.method public enableAudio(I)I
    .locals 3
    .parameter "flag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .local v0, ret:I
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/server/OverlayViewService;->getOverlayViewEnable()Z

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/OverlayViewService;->_enableAudio(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getHActive()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .local v0, ret:I
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/server/OverlayViewService;->getOverlayViewEnable()Z

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/OverlayViewService;->_getHActive()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getVActive()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .local v0, ret:I
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/server/OverlayViewService;->getOverlayViewEnable()Z

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/OverlayViewService;->_getVActive()I

    move-result v0

    :cond_0
    return v0
.end method

.method public handleAudio()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .local v0, ret:I
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/server/OverlayViewService;->getOverlayViewEnable()Z

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/OverlayViewService;->_handleAudio()I

    move-result v0

    :cond_0
    return v0
.end method

.method public init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/server/OverlayViewService;->getOverlayViewEnable()Z

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/OverlayViewService;->_init()V

    :cond_0
    return-void
.end method

.method public isDvi()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, ret:Z
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/server/OverlayViewService;->getOverlayViewEnable()Z

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/OverlayViewService;->_isDvi()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isInterlace()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, ret:Z
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/server/OverlayViewService;->getOverlayViewEnable()Z

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/OverlayViewService;->_isInterlace()Z

    move-result v0

    :cond_0
    return v0
.end method
