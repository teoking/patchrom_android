.class public Landroid/net/PppoeManager;
.super Ljava/lang/Object;
.source "PppoeManager.java"


# static fields
.field public static final CMD_STATE_ACTION:Ljava/lang/String; = "CMD_STATE"

.field public static final EXTRA_CMD_STATE:Ljava/lang/String; = "EXTRA_CMD_STATE"

.field public static final EXTRA_PPPOE_STATE:Ljava/lang/String; = "PPPOE_STATE"

.field public static final PPPOE_INTERFACE:Ljava/lang/String; = "pppoe_interface"

.field public static final PPPOE_ON:Ljava/lang/String; = "pppoe_on"

.field public static final PPPOE_PASSWORD:Ljava/lang/String; = "pppoe_password"

.field public static final PPPOE_STATE_CHANGED:I = 0x4

.field public static final PPPOE_STATE_CHANGED_ACTION:Ljava/lang/String; = "PPPOE_STATE_CHANGED"

.field public static final PPPOE_STATE_CONNECT:I = 0x1

.field public static final PPPOE_STATE_CONNECTING:I = 0x3

.field public static final PPPOE_STATE_DISCONNECT:I = 0x2

.field public static final PPPOE_USER_NAME:Ljava/lang/String; = "pppoe_user_name"

.field private static final TAG:Ljava/lang/String; = "PppoeManager"

.field private static instance:Landroid/net/PppoeManager;

.field private static mService:Landroid/net/IPppoeManager;


# instance fields
.field mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Landroid/net/PppoeManager;->instance:Landroid/net/PppoeManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PppoeManager"

    const-string v1, "Init PppoeManager by getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/net/PppoeManager;->mService:Landroid/net/IPppoeManager;

    if-nez v0, :cond_0

    const-string v0, "pppoe"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IPppoeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IPppoeManager;

    move-result-object v0

    sput-object v0, Landroid/net/PppoeManager;->mService:Landroid/net/IPppoeManager;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/net/IPppoeManager;Landroid/os/Handler;)V
    .locals 2
    .parameter "service"
    .parameter "handler"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PppoeManager"

    const-string v1, "Init Cmd Manager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Landroid/net/PppoeManager;->mService:Landroid/net/IPppoeManager;

    iput-object p2, p0, Landroid/net/PppoeManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Landroid/net/PppoeManager;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/PppoeManager;->instance:Landroid/net/PppoeManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/net/PppoeManager;

    invoke-direct {v0}, Landroid/net/PppoeManager;-><init>()V

    sput-object v0, Landroid/net/PppoeManager;->instance:Landroid/net/PppoeManager;

    :cond_0
    sget-object v0, Landroid/net/PppoeManager;->instance:Landroid/net/PppoeManager;

    return-object v0
.end method


# virtual methods
.method public enablePppoe(Z)V
    .locals 4
    .parameter "state"

    .prologue
    :try_start_0
    const-string v1, "PppoeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enablePppoe "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/net/PppoeManager;->mService:Landroid/net/IPppoeManager;

    invoke-interface {v1, p1}, Landroid/net/IPppoeManager;->enablePppoe(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PppoeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enablePppoe "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "PppoeManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public execCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "command"
    .parameter "inter"
    .parameter "user"
    .parameter "pass"

    .prologue
    :try_start_0
    sget-object v1, Landroid/net/PppoeManager;->mService:Landroid/net/IPppoeManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/net/IPppoeManager;->execCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PppoeManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "error"

    goto :goto_0
.end method

.method public getNetlinkStatus(Ljava/lang/String;)I
    .locals 3
    .parameter "ifname"

    .prologue
    :try_start_0
    sget-object v1, Landroid/net/PppoeManager;->mService:Landroid/net/IPppoeManager;

    invoke-interface {v1, p1}, Landroid/net/IPppoeManager;->getNetlinkStatus(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PppoeManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPppoeOn()Z
    .locals 3

    .prologue
    :try_start_0
    sget-object v1, Landroid/net/PppoeManager;->mService:Landroid/net/IPppoeManager;

    invoke-interface {v1}, Landroid/net/IPppoeManager;->getPppoeOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PppoeManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPppoeState()I
    .locals 3

    .prologue
    :try_start_0
    sget-object v1, Landroid/net/PppoeManager;->mService:Landroid/net/IPppoeManager;

    invoke-interface {v1}, Landroid/net/IPppoeManager;->getPppoeState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PppoeManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getSavedInterface()Ljava/lang/String;
    .locals 3

    .prologue
    :try_start_0
    sget-object v1, Landroid/net/PppoeManager;->mService:Landroid/net/IPppoeManager;

    invoke-interface {v1}, Landroid/net/IPppoeManager;->getSavedInterface()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PppoeManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSavedPass()Ljava/lang/String;
    .locals 3

    .prologue
    :try_start_0
    sget-object v1, Landroid/net/PppoeManager;->mService:Landroid/net/IPppoeManager;

    invoke-interface {v1}, Landroid/net/IPppoeManager;->getSavedPass()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PppoeManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSavedUser()Ljava/lang/String;
    .locals 3

    .prologue
    :try_start_0
    sget-object v1, Landroid/net/PppoeManager;->mService:Landroid/net/IPppoeManager;

    invoke-interface {v1}, Landroid/net/IPppoeManager;->getSavedUser()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PppoeManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveConfigure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "iface"
    .parameter "user"
    .parameter "pass"

    .prologue
    :try_start_0
    sget-object v1, Landroid/net/PppoeManager;->mService:Landroid/net/IPppoeManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/IPppoeManager;->saveConfigure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PppoeManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setInterfaceName(Ljava/lang/String;)V
    .locals 3
    .parameter "iface"

    .prologue
    :try_start_0
    sget-object v1, Landroid/net/PppoeManager;->mService:Landroid/net/IPppoeManager;

    invoke-interface {v1, p1}, Landroid/net/IPppoeManager;->setInterfaceName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PppoeManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPppoeState(I)V
    .locals 3
    .parameter "state"

    .prologue
    :try_start_0
    sget-object v1, Landroid/net/PppoeManager;->mService:Landroid/net/IPppoeManager;

    invoke-interface {v1, p1}, Landroid/net/IPppoeManager;->setPppoeState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PppoeManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setStateAndNotify(I)V
    .locals 3
    .parameter "dhcpState"

    .prologue
    :try_start_0
    sget-object v1, Landroid/net/PppoeManager;->mService:Landroid/net/IPppoeManager;

    invoke-interface {v1, p1}, Landroid/net/IPppoeManager;->setStateAndNotify(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PppoeManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
