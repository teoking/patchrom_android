.class final Landroid/app/ContextImpl$6;
.super Landroid/app/ContextImpl$StaticServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/ContextImpl$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createStaticService()Ljava/lang/Object;
    .locals 3

    .prologue
    const-string v2, "overlayview"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IOverlayView$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IOverlayView;

    move-result-object v1

    .local v1, service:Landroid/app/IOverlayView;
    new-instance v2, Landroid/app/OverlayViewManager;

    invoke-direct {v2, v1}, Landroid/app/OverlayViewManager;-><init>(Landroid/app/IOverlayView;)V

    return-object v2
.end method
