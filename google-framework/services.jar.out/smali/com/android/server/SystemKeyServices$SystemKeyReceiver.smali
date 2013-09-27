.class public Lcom/android/server/SystemKeyServices$SystemKeyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemKeyServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemKeyServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SystemKeyReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemKeyServices$SystemKeyReceiver$SocketThread;
    }
.end annotation


# instance fields
.field private mRegisterListener:Z

.field private mThreadStart:Z

.field final synthetic this$0:Lcom/android/server/SystemKeyServices;


# direct methods
.method public constructor <init>(Lcom/android/server/SystemKeyServices;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/SystemKeyServices$SystemKeyReceiver;->this$0:Lcom/android/server/SystemKeyServices;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/SystemKeyServices$SystemKeyReceiver;->mThreadStart:Z

    iput-boolean v0, p0, Lcom/android/server/SystemKeyServices$SystemKeyReceiver;->mRegisterListener:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "arg0"
    .parameter "intent"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    const-string v6, "SystemKeyServices"

    const-string v7, "onReceive()"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .local v2, bundle:Landroid/os/Bundle;
    const-string v6, "SYS_KEY_INFO"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, SysKeyInfo:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, realSysInfo:Ljava/lang/String;
    if-eqz v0, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_2

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, array:[Ljava/lang/String;
    array-length v6, v1

    if-lt v6, v8, :cond_2

    const-string v6, "w"

    aget-object v7, v1, v9

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "r"

    aget-object v7, v1, v9

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    const-string v6, "w"

    aget-object v7, v1, v9

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    array-length v6, v1

    if-ne v6, v11, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .local v4, str:Ljava/lang/StringBuilder;
    aget-object v6, v1, v9

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "#####"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v10

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/SystemKeyServices$SystemKeyReceiver;->this$0:Lcom/android/server/SystemKeyServices;

    aget-object v7, v1, v8

    #calls: Lcom/android/server/SystemKeyServices;->stringToAscii(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/server/SystemKeyServices;->access$000(Lcom/android/server/SystemKeyServices;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/SystemKeyServices$SystemKeyReceiver;->this$0:Lcom/android/server/SystemKeyServices;

    iget-object v6, v6, Lcom/android/server/SystemKeyServices;->mKeyNameList:Ljava/util/ArrayList;

    aget-object v7, v1, v10

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/SystemKeyServices$SystemKeyReceiver;->this$0:Lcom/android/server/SystemKeyServices;

    iget-object v6, v6, Lcom/android/server/SystemKeyServices;->mKeyNameList:Ljava/util/ArrayList;

    aget-object v7, v1, v10

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v4           #str:Ljava/lang/StringBuilder;
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    iget-object v6, p0, Lcom/android/server/SystemKeyServices$SystemKeyReceiver;->this$0:Lcom/android/server/SystemKeyServices;

    iget-object v6, v6, Lcom/android/server/SystemKeyServices;->mKeyNameList:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/SystemKeyServices$SystemKeyReceiver;->this$0:Lcom/android/server/SystemKeyServices;

    iget-object v6, v6, Lcom/android/server/SystemKeyServices;->mKeyNameList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x10

    if-le v6, v7, :cond_6

    const-string v6, "SystemKeyServices"

    const-string v7, "input too many keys !!!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #array:[Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .restart local v1       #array:[Ljava/lang/String;
    :cond_3
    array-length v6, v1

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v4       #str:Ljava/lang/StringBuilder;
    aget-object v6, v1, v9

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v10

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v8

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/SystemKeyServices$SystemKeyReceiver;->this$0:Lcom/android/server/SystemKeyServices;

    aget-object v7, v1, v11

    #calls: Lcom/android/server/SystemKeyServices;->stringToAscii(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/server/SystemKeyServices;->access$000(Lcom/android/server/SystemKeyServices;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/SystemKeyServices$SystemKeyReceiver;->this$0:Lcom/android/server/SystemKeyServices;

    iget-object v6, v6, Lcom/android/server/SystemKeyServices;->mKeyNameList:Ljava/util/ArrayList;

    aget-object v7, v1, v8

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/SystemKeyServices$SystemKeyReceiver;->this$0:Lcom/android/server/SystemKeyServices;

    iget-object v6, v6, Lcom/android/server/SystemKeyServices;->mKeyNameList:Ljava/util/ArrayList;

    aget-object v7, v1, v8

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v4           #str:Ljava/lang/StringBuilder;
    :cond_4
    array-length v6, v1

    if-ne v6, v8, :cond_1

    move-object v3, v0

    goto :goto_0

    :cond_5
    const-string v6, "r"

    aget-object v7, v1, v9

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    array-length v6, v1

    if-ne v6, v8, :cond_1

    move-object v3, v0

    goto :goto_0

    :cond_6
    const-string v6, "ctl.start"

    const-string v7, "sys_write_daemon"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/android/server/SystemKeyServices$SystemKeyReceiver$SocketThread;

    invoke-direct {v5, p0, v3}, Lcom/android/server/SystemKeyServices$SystemKeyReceiver$SocketThread;-><init>(Lcom/android/server/SystemKeyServices$SystemKeyReceiver;Ljava/lang/String;)V

    .local v5, t:Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method
