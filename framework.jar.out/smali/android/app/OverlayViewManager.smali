.class public Landroid/app/OverlayViewManager;
.super Ljava/lang/Object;
.source "OverlayViewManager.java"


# instance fields
.field private mService:Landroid/app/IOverlayView;


# direct methods
.method constructor <init>(Landroid/app/IOverlayView;)V
    .locals 1
    .parameter "service"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/OverlayViewManager;->mService:Landroid/app/IOverlayView;

    iput-object p1, p0, Landroid/app/OverlayViewManager;->mService:Landroid/app/IOverlayView;

    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/app/OverlayViewManager;->mService:Landroid/app/IOverlayView;

    invoke-interface {v1}, Landroid/app/IOverlayView;->deinit()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public displayAndroid()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .local v1, result:I
    :try_start_0
    iget-object v2, p0, Landroid/app/OverlayViewManager;->mService:Landroid/app/IOverlayView;

    invoke-interface {v2}, Landroid/app/IOverlayView;->displayAndroid()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public displayHdmi()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .local v1, result:I
    :try_start_0
    iget-object v2, p0, Landroid/app/OverlayViewManager;->mService:Landroid/app/IOverlayView;

    invoke-interface {v2}, Landroid/app/IOverlayView;->displayHdmi()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public displayPip(IIII)I
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .local v1, result:I
    :try_start_0
    iget-object v2, p0, Landroid/app/OverlayViewManager;->mService:Landroid/app/IOverlayView;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/app/IOverlayView;->displayPip(IIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public enableAudio(I)I
    .locals 3
    .parameter "flag"

    .prologue
    const/4 v1, 0x0

    .local v1, result:I
    :try_start_0
    iget-object v2, p0, Landroid/app/OverlayViewManager;->mService:Landroid/app/IOverlayView;

    invoke-interface {v2, p1}, Landroid/app/IOverlayView;->enableAudio(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getHActive()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .local v1, result:I
    :try_start_0
    iget-object v2, p0, Landroid/app/OverlayViewManager;->mService:Landroid/app/IOverlayView;

    invoke-interface {v2}, Landroid/app/IOverlayView;->getHActive()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getVActive()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .local v1, result:I
    :try_start_0
    iget-object v2, p0, Landroid/app/OverlayViewManager;->mService:Landroid/app/IOverlayView;

    invoke-interface {v2}, Landroid/app/IOverlayView;->getVActive()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public handleAudio()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .local v1, result:I
    :try_start_0
    iget-object v2, p0, Landroid/app/OverlayViewManager;->mService:Landroid/app/IOverlayView;

    invoke-interface {v2}, Landroid/app/IOverlayView;->handleAudio()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/app/OverlayViewManager;->mService:Landroid/app/IOverlayView;

    invoke-interface {v1}, Landroid/app/IOverlayView;->init()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isDvi()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/OverlayViewManager;->mService:Landroid/app/IOverlayView;

    invoke-interface {v2}, Landroid/app/IOverlayView;->isDvi()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isInterlace()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/OverlayViewManager;->mService:Landroid/app/IOverlayView;

    invoke-interface {v2}, Landroid/app/IOverlayView;->isInterlace()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
