.class public Lcom/android/server/PppoeService;
.super Landroid/net/IPppoeManager$Stub;
.source "PppoeService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PppoeService"

.field private static final debug:Z = true

.field private static mInface:Ljava/lang/String;

.field private static mState:I

.field private static pppoeON:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private nativeLib:Landroid/net/PppoeNative;

.field private final pppoeStateTracker:Landroid/net/PppoeStateTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    invoke-direct {p0}, Landroid/net/IPppoeManager$Stub;-><init>()V

    new-instance v0, Landroid/net/PppoeNative;

    invoke-direct {v0}, Landroid/net/PppoeNative;-><init>()V

    iput-object v0, p0, Lcom/android/server/PppoeService;->nativeLib:Landroid/net/PppoeNative;

    iput-object p1, p0, Lcom/android/server/PppoeService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/net/PppoeStateTracker;->getInstance()Landroid/net/PppoeStateTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PppoeService;->pppoeStateTracker:Landroid/net/PppoeStateTracker;

    const/4 v0, 0x2

    sput v0, Lcom/android/server/PppoeService;->mState:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/PppoeService;->pppoeON:Z

    iget-object v0, p0, Lcom/android/server/PppoeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pppoe_interface"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/PppoeService;->mInface:Ljava/lang/String;

    sget-object v0, Lcom/android/server/PppoeService;->mInface:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "eth0"

    sput-object v0, Lcom/android/server/PppoeService;->mInface:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static putAddress(Ljava/lang/StringBuffer;I)V
    .locals 3
    .parameter "buf"
    .parameter "addr"

    .prologue
    const/16 v2, 0x2e

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method private static stringToIpAddr(Ljava/lang/String;)I
    .locals 8
    .parameter "addrString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    :try_start_0
    const-string v6, "\\."

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, parts:[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    new-instance v6, Ljava/net/UnknownHostException;

    invoke-direct {v6, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #parts:[Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, ex:Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/net/UnknownHostException;

    invoke-direct {v6, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v4           #ex:Ljava/lang/NumberFormatException;
    .restart local v5       #parts:[Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    :try_start_1
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, a:I
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v1, v6, 0x8

    .local v1, b:I
    const/4 v6, 0x2

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v2, v6, 0x10

    .local v2, c:I
    const/4 v6, 0x3

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    shl-int/lit8 v3, v6, 0x18

    .local v3, d:I
    or-int v6, v0, v1

    or-int/2addr v6, v2

    or-int/2addr v6, v3

    return v6
.end method


# virtual methods
.method public checkPppoeAndStart()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/PppoeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pppoe_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    sput-boolean v0, Lcom/android/server/PppoeService;->pppoeON:Z

    sget-boolean v0, Lcom/android/server/PppoeService;->pppoeON:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/PppoeService;->pppoeON:Z

    invoke-virtual {p0, v0}, Lcom/android/server/PppoeService;->enablePppoe(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public downEth()V
    .locals 4

    .prologue
    sget-object v1, Lcom/android/server/PppoeService;->mInface:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    move-result v0

    .local v0, i:I
    const-string v1, "PppoeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downEth:i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enablePppoe(Z)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const-string v1, "PppoeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ;mstate is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/PppoeService;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pppoeON is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/PppoeService;->pppoeON:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/PppoeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pppoe_on"

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_3

    sput-boolean p1, Lcom/android/server/PppoeService;->pppoeON:Z

    sget v1, Lcom/android/server/PppoeService;->mState:I

    if-eq v1, v2, :cond_0

    sget v1, Lcom/android/server/PppoeService;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/PppoeService;->getSavedInterface()Ljava/lang/String;

    move-result-object v0

    .local v0, iface:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/PppoeService;->setInterfaceName(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/PppoeService;->mInface:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->enableInterface(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/PppoeService;->pppoeStateTracker:Landroid/net/PppoeStateTracker;

    invoke-virtual {v1}, Landroid/net/PppoeStateTracker;->registerPppoeObserver()V

    iget-object v1, p0, Lcom/android/server/PppoeService;->pppoeStateTracker:Landroid/net/PppoeStateTracker;

    invoke-virtual {v1}, Landroid/net/PppoeStateTracker;->reconnect()Z

    goto :goto_1

    .end local v0           #iface:Ljava/lang/String;
    :cond_3
    sget v1, Lcom/android/server/PppoeService;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    sput-boolean p1, Lcom/android/server/PppoeService;->pppoeON:Z

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/server/PppoeService;->pppoeStateTracker:Landroid/net/PppoeStateTracker;

    invoke-virtual {v1}, Landroid/net/PppoeStateTracker;->disconnect()Z

    iget-object v1, p0, Lcom/android/server/PppoeService;->pppoeStateTracker:Landroid/net/PppoeStateTracker;

    invoke-virtual {v1}, Landroid/net/PppoeStateTracker;->unregisterPppoeObserver()V

    sput-boolean p1, Lcom/android/server/PppoeService;->pppoeON:Z

    goto :goto_1
.end method

.method public execCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "command"
    .parameter "inter"
    .parameter "user"
    .parameter "pass"

    .prologue
    const-string v1, "PppoeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " execCmd: command["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], inter["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], user["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], pass["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .local v0, result:Ljava/lang/String;
    const-string v1, "PppoeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "connect"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/PppoeService;->nativeLib:Landroid/net/PppoeNative;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/net/PppoeNative;->Myconnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PppoeService"

    const-string v2, "result = 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "PppoeService"

    const-string v2, "result = 3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "PppoeService"

    const-string v2, "result = 4"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "PppoeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result != 1,3,4, result is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v1, "PppoeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeLib.Myconnect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "2"

    iget-object v1, p0, Lcom/android/server/PppoeService;->nativeLib:Landroid/net/PppoeNative;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/net/PppoeNative;->Myconnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public getNetlinkStatus(Ljava/lang/String;)I
    .locals 1
    .parameter "ifname"

    .prologue
    invoke-static {p1}, Landroid/net/NetworkUtils;->getNetlinkStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPppoeOn()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/PppoeService;->pppoeON:Z

    return v0
.end method

.method public getPppoeState()I
    .locals 1

    .prologue
    sget v0, Lcom/android/server/PppoeService;->mState:I

    return v0
.end method

.method public getSavedInterface()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/PppoeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pppoe_interface"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, iface:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "eth0"

    .end local v0           #iface:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getSavedPass()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/PppoeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pppoe_password"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, pass:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0           #pass:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getSavedUser()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/PppoeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pppoe_user_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, user:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0           #user:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public saveConfigure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "iface"
    .parameter "user"
    .parameter "pass"

    .prologue
    iget-object v1, p0, Lcom/android/server/PppoeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "pppoe_user_name"

    if-eqz p2, :cond_1

    .end local p2
    :goto_0
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "pppoe_password"

    if-eqz p3, :cond_2

    .end local p3
    :goto_1
    invoke-static {v0, v1, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz p1, :cond_3

    const-string v1, "eth[0-9]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "wlan[0-9]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const-string v1, "PppoeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveConfigure iface matche ok iface is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "pppoe_interface"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_2
    return-void

    .restart local p2
    .restart local p3
    :cond_1
    const-string p2, ""

    goto :goto_0

    .end local p2
    :cond_2
    const-string p3, ""

    goto :goto_1

    .end local p3
    :cond_3
    const-string v1, "pppoe_interface"

    const-string v2, "eth0"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2
.end method

.method public setInterfaceName(Ljava/lang/String;)V
    .locals 1
    .parameter "iface"

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "eth[0-9]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "wlan[0-9]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    sput-object p1, Lcom/android/server/PppoeService;->mInface:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/PppoeService;->pppoeStateTracker:Landroid/net/PppoeStateTracker;

    invoke-virtual {v0, p1}, Landroid/net/PppoeStateTracker;->setInterfaceName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPppoeState(I)V
    .locals 1
    .parameter "state"

    .prologue
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x2

    sput v0, Lcom/android/server/PppoeService;->mState:I

    :goto_0
    return-void

    :pswitch_0
    sput p1, Lcom/android/server/PppoeService;->mState:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setStateAndNotify(I)V
    .locals 2
    .parameter "pppoeState"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/PppoeService;->setPppoeState(I)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/PppoeService;->pppoeStateTracker:Landroid/net/PppoeStateTracker;

    invoke-virtual {v1}, Landroid/net/PppoeStateTracker;->notifyCONNECT()V

    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "PPPOE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "PPPOE_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/PppoeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void

    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/PppoeService;->pppoeStateTracker:Landroid/net/PppoeStateTracker;

    invoke-virtual {v1}, Landroid/net/PppoeStateTracker;->notifyDISCONNECT()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/PppoeService;->pppoeStateTracker:Landroid/net/PppoeStateTracker;

    invoke-virtual {v1}, Landroid/net/PppoeStateTracker;->notifyCHANGED()V

    goto :goto_0
.end method

.method public upEth()V
    .locals 4

    .prologue
    sget-object v1, Lcom/android/server/PppoeService;->mInface:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->enableInterface(Ljava/lang/String;)I

    move-result v0

    .local v0, i:I
    const-string v1, "PppoeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upEth:i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
