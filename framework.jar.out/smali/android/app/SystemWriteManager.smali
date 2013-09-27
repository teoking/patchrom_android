.class public Landroid/app/SystemWriteManager;
.super Ljava/lang/Object;
.source "SystemWriteManager.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mService:Landroid/app/ISystemWriteService;


# direct methods
.method constructor <init>(Landroid/app/ISystemWriteService;)V
    .locals 1
    .parameter "service"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SystemWriteManager"

    iput-object v0, p0, Landroid/app/SystemWriteManager;->TAG:Ljava/lang/String;

    iput-object p1, p0, Landroid/app/SystemWriteManager;->mService:Landroid/app/ISystemWriteService;

    return-void
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"

    .prologue
    :try_start_0
    iget-object v2, p0, Landroid/app/SystemWriteManager;->mService:Landroid/app/ISystemWriteService;

    invoke-interface {v2, p1}, Landroid/app/ISystemWriteService;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/app/SystemWriteManager;->TAG:Ljava/lang/String;

    const-string v3, "getPropertie error!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPropertyBoolean(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "key"
    .parameter "def"

    .prologue
    :try_start_0
    iget-object v2, p0, Landroid/app/SystemWriteManager;->mService:Landroid/app/ISystemWriteService;

    invoke-interface {v2, p1, p2}, Landroid/app/ISystemWriteService;->getPropertyBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/app/SystemWriteManager;->TAG:Ljava/lang/String;

    const-string v3, "getPropertie error!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPropertyInt(Ljava/lang/String;I)I
    .locals 4
    .parameter "key"
    .parameter "def"

    .prologue
    :try_start_0
    iget-object v2, p0, Landroid/app/SystemWriteManager;->mService:Landroid/app/ISystemWriteService;

    invoke-interface {v2, p1, p2}, Landroid/app/ISystemWriteService;->getPropertyInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/app/SystemWriteManager;->TAG:Ljava/lang/String;

    const-string v3, "getPropertie error!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPropertyLong(Ljava/lang/String;J)J
    .locals 5
    .parameter "key"
    .parameter "def"

    .prologue
    :try_start_0
    iget-object v3, p0, Landroid/app/SystemWriteManager;->mService:Landroid/app/ISystemWriteService;

    invoke-interface {v3, p1, p2, p3}, Landroid/app/ISystemWriteService;->getPropertyLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/app/SystemWriteManager;->TAG:Ljava/lang/String;

    const-string v4, "getPropertie error!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"
    .parameter "def"

    .prologue
    :try_start_0
    iget-object v2, p0, Landroid/app/SystemWriteManager;->mService:Landroid/app/ISystemWriteService;

    invoke-interface {v2, p1, p2}, Landroid/app/ISystemWriteService;->getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/app/SystemWriteManager;->TAG:Ljava/lang/String;

    const-string v3, "getPropertie error!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readSysfs(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/app/SystemWriteManager;->mService:Landroid/app/ISystemWriteService;

    invoke-interface {v1, p1}, Landroid/app/ISystemWriteService;->readSysfs(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/app/SystemWriteManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read sys error , path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/app/SystemWriteManager;->mService:Landroid/app/ISystemWriteService;

    invoke-interface {v1, p1, p2}, Landroid/app/ISystemWriteService;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/app/SystemWriteManager;->TAG:Ljava/lang/String;

    const-string v2, "setPropertie error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeSysfs(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "path"
    .parameter "value"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/app/SystemWriteManager;->mService:Landroid/app/ISystemWriteService;

    invoke-interface {v1, p1, p2}, Landroid/app/ISystemWriteService;->writeSysfs(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/app/SystemWriteManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write sys error , path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method
