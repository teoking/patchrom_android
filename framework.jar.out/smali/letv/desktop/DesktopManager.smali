.class public Lletv/desktop/DesktopManager;
.super Ljava/lang/Object;
.source "DesktopManager.java"


# static fields
.field public static final ACTION_SWITCH_PORT:Ljava/lang/String; = "com.letv.desktop.action.switch_port"

.field private static final DEBUG:Z = false

.field public static final DESKTOP_APP:I = 0x2

.field protected static final DESKTOP_INDEX_MAX:I = 0x2

.field protected static final DESKTOP_INDEX_MIN:I = 0x1

.field public static final DESKTOP_INVALID:I = -0x1

.field public static final DESKTOP_ONDEMAND:I = -0x1

.field public static final DESKTOP_SIGNAL:I = 0x0

.field public static final DESKTOP_TV:I = 0x1

.field public static final EXTRA_DESKTOP_INDEX:Ljava/lang/String; = "toDesktopIndex"

.field public static final EXTRA_PORT:Ljava/lang/String; = "extraPort"

.field public static final EXTRA_WITH_ANIM:Ljava/lang/String; = "extraWithAnim"

.field public static final LAUNCHER_PACKAGENAME:Ljava/lang/String; = "com.letv.t2.launcher"

.field public static final PORT_CVBS:Ljava/lang/String; = "Composite"

.field public static final PORT_HDMI:Ljava/lang/String; = "HDMI"

.field public static final PORT_HDMI1:Ljava/lang/String; = "HDMI 1"

.field public static final PORT_HDMI2:Ljava/lang/String; = "HDMI 2"

.field public static final PORT_HDMI3:Ljava/lang/String; = "HDMI 3"

.field public static final PORT_TV:Ljava/lang/String; = "Analog TV"

.field public static final PORT_VGA:Ljava/lang/String; = "VGA"

.field public static final PORT_YPBPR:Ljava/lang/String; = "YPBPR"

.field public static final SERVICE_NAME:Ljava/lang/String; = "desktop_manager"

.field private static final TAG:Ljava/lang/String; = "DesktopManager"

.field private static sDesktopManager:Lletv/desktop/DesktopManager;


# instance fields
.field private mDm:Lletv/desktop/IDesktopManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "desktop_manager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lletv/desktop/IDesktopManager$Stub;->asInterface(Landroid/os/IBinder;)Lletv/desktop/IDesktopManager;

    move-result-object v0

    iput-object v0, p0, Lletv/desktop/DesktopManager;->mDm:Lletv/desktop/IDesktopManager;

    return-void
.end method

.method public static get()Lletv/desktop/DesktopManager;
    .locals 1

    .prologue
    sget-object v0, Lletv/desktop/DesktopManager;->sDesktopManager:Lletv/desktop/DesktopManager;

    if-nez v0, :cond_0

    new-instance v0, Lletv/desktop/DesktopManager;

    invoke-direct {v0}, Lletv/desktop/DesktopManager;-><init>()V

    sput-object v0, Lletv/desktop/DesktopManager;->sDesktopManager:Lletv/desktop/DesktopManager;

    :cond_0
    sget-object v0, Lletv/desktop/DesktopManager;->sDesktopManager:Lletv/desktop/DesktopManager;

    return-object v0
.end method


# virtual methods
.method public getCurrentDesktopIndex()I
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Lletv/desktop/DesktopManager;->mDm:Lletv/desktop/IDesktopManager;

    invoke-interface {v0}, Lletv/desktop/IDesktopManager;->getCurrentDesktopIndex()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurrentPlayChannel()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, ""

    .local v0, channel:Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lletv/desktop/DesktopManager;->mDm:Lletv/desktop/IDesktopManager;

    invoke-interface {v1}, Lletv/desktop/IDesktopManager;->getCurrentPlayChannel()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getCurrentPortName()Ljava/lang/String;
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lletv/desktop/DesktopManager;->mDm:Lletv/desktop/IDesktopManager;

    invoke-interface {v1}, Lletv/desktop/IDesktopManager;->getCurrentPortName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DesktopManager"

    const-string v2, "getCurrentPortName()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCurrentDesktopShowed()Z
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Lletv/desktop/DesktopManager;->mDm:Lletv/desktop/IDesktopManager;

    invoke-interface {v0}, Lletv/desktop/IDesktopManager;->isCurrentDesktopShowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwitching()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lletv/desktop/DesktopManager;->mDm:Lletv/desktop/IDesktopManager;

    invoke-interface {v1}, Lletv/desktop/IDesktopManager;->isSwitching()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DesktopManager"

    const-string v2, "isSwitching()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCurrentDesktopIndex(I)V
    .locals 1
    .parameter "desktopIndex"

    .prologue
    :try_start_0
    iget-object v0, p0, Lletv/desktop/DesktopManager;->mDm:Lletv/desktop/IDesktopManager;

    invoke-interface {v0, p1}, Lletv/desktop/IDesktopManager;->setCurrentDesktopIndex(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCurrentDesktopVisibility(Z)V
    .locals 1
    .parameter "isVisible"

    .prologue
    :try_start_0
    iget-object v0, p0, Lletv/desktop/DesktopManager;->mDm:Lletv/desktop/IDesktopManager;

    invoke-interface {v0, p1}, Lletv/desktop/IDesktopManager;->setCurrentDesktopVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCurrentPlayChannel(Ljava/lang/String;)V
    .locals 1
    .parameter "channelId"

    .prologue
    :try_start_0
    iget-object v0, p0, Lletv/desktop/DesktopManager;->mDm:Lletv/desktop/IDesktopManager;

    invoke-interface {v0, p1}, Lletv/desktop/IDesktopManager;->setCurrentPlayChannel(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCurrentPortName(Ljava/lang/String;)V
    .locals 4
    .parameter "portName"

    .prologue
    :try_start_0
    iget-object v1, p0, Lletv/desktop/DesktopManager;->mDm:Lletv/desktop/IDesktopManager;

    invoke-interface {v1, p1}, Lletv/desktop/IDesktopManager;->setCurrentPortName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DesktopManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentPortName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public switchToAppDesktop()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lletv/desktop/DesktopManager;->mDm:Lletv/desktop/IDesktopManager;

    invoke-interface {v1}, Lletv/desktop/IDesktopManager;->switchToAppDesktop()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DesktopManager"

    const-string v2, "switchToAppDesktop()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public switchToAppDesktopWithAnim()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lletv/desktop/DesktopManager;->mDm:Lletv/desktop/IDesktopManager;

    invoke-interface {v1}, Lletv/desktop/IDesktopManager;->switchToAppDesktopWithAnim()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DesktopManager"

    const-string v2, "switchToAppDesktopWithAnim()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public switchToLeftDesktop()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lletv/desktop/DesktopManager;->mDm:Lletv/desktop/IDesktopManager;

    invoke-interface {v1}, Lletv/desktop/IDesktopManager;->switchToLeftDesktop()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DesktopManager"

    const-string v2, "switchToLeftDesktop()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public switchToNextDesktop()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lletv/desktop/DesktopManager;->mDm:Lletv/desktop/IDesktopManager;

    invoke-interface {v1}, Lletv/desktop/IDesktopManager;->switchToNextDesktop()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DesktopManager"

    const-string v2, "switchToNextDesktop()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public switchToRightDesktop()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lletv/desktop/DesktopManager;->mDm:Lletv/desktop/IDesktopManager;

    invoke-interface {v1}, Lletv/desktop/IDesktopManager;->switchToRightDesktop()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DesktopManager"

    const-string v2, "switchToRightDesktop()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public switchToSignalDesktop(Ljava/lang/String;)Z
    .locals 4
    .parameter "portName"

    .prologue
    :try_start_0
    iget-object v1, p0, Lletv/desktop/DesktopManager;->mDm:Lletv/desktop/IDesktopManager;

    invoke-interface {v1, p1}, Lletv/desktop/IDesktopManager;->switchToSignalDesktop(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DesktopManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchToSignalDesktop(portName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public switchToTVDesktop()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lletv/desktop/DesktopManager;->mDm:Lletv/desktop/IDesktopManager;

    invoke-interface {v1}, Lletv/desktop/IDesktopManager;->switchToTVDesktop()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DesktopManager"

    const-string v2, "switchToTVDesktop()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public switchToTVDesktopWithAnim()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lletv/desktop/DesktopManager;->mDm:Lletv/desktop/IDesktopManager;

    invoke-interface {v1}, Lletv/desktop/IDesktopManager;->switchToTVDesktopWithAnim()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DesktopManager"

    const-string v2, "switchToTVDesktopWithAnim()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method
