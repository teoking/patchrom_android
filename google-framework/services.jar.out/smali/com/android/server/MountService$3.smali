.class Lcom/android/server/MountService$3;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onDaemonConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    iput-object p1, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    const/16 v18, 0x0

    .local v18, path:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v3}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v3

    const-string v4, "volume"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "list"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v3

    const/16 v4, 0x6e

    invoke-static {v3, v4}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v22

    .local v22, vols:[Ljava/lang/String;
    move-object/from16 v13, v22

    .local v13, arr$:[Ljava/lang/String;
    array-length v0, v13

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_0
    move/from16 v0, v17

    if-ge v15, v0, :cond_3

    aget-object v23, v13, v15

    .local v23, volstr:Ljava/lang/String;
    const-string v3, " "

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .local v21, tok:[Ljava/lang/String;
    const-string v20, "removed"

    .local v20, state:Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v16, v21, v3

    .local v16, label:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v18, v21, v3

    const-string v3, "loop"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeLabel:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v25

    monitor-enter v25
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .local v2, volumetemplete:Landroid/os/storage/StorageVolume;
    if-nez v2, :cond_2

    new-instance v2, Landroid/os/storage/StorageVolume;

    .end local v2           #volumetemplete:Landroid/os/storage/StorageVolume;
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const v4, 0x1040508

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    .restart local v2       #volumetemplete:Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    invoke-static {v3}, Lcom/android/server/MountService;->access$1708(Lcom/android/server/MountService;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->addVolumeLocked(Landroid/os/storage/StorageVolume;)V
    invoke-static {v3, v2}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "removed"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object/from16 v24, v2

    .local v24, volume:Landroid/os/storage/StorageVolume;
    monitor-exit v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x2

    :try_start_2
    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .local v19, st:I
    if-nez v19, :cond_4

    const-string v20, "removed"

    :goto_2
    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v3, v0, v1}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .end local v2           #volumetemplete:Landroid/os/storage/StorageVolume;
    .end local v13           #arr$:[Ljava/lang/String;
    .end local v15           #i$:I
    .end local v16           #label:Ljava/lang/String;
    .end local v17           #len$:I
    .end local v19           #st:I
    .end local v20           #state:Ljava/lang/String;
    .end local v21           #tok:[Ljava/lang/String;
    .end local v22           #vols:[Ljava/lang/String;
    .end local v23           #volstr:Ljava/lang/String;
    .end local v24           #volume:Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v14

    .local v14, e:Ljava/lang/Exception;
    const-string v3, "MountService"

    const-string v4, "Error processing initial volume state"

    invoke-static {v3, v4, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v14           #e:Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v3}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v3}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v3}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .restart local v13       #arr$:[Ljava/lang/String;
    .restart local v15       #i$:I
    .restart local v16       #label:Ljava/lang/String;
    .restart local v17       #len$:I
    .restart local v20       #state:Ljava/lang/String;
    .restart local v21       #tok:[Ljava/lang/String;
    .restart local v22       #vols:[Ljava/lang/String;
    .restart local v23       #volstr:Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3

    .restart local v2       #volumetemplete:Landroid/os/storage/StorageVolume;
    .restart local v19       #st:I
    .restart local v24       #volume:Landroid/os/storage/StorageVolume;
    :cond_4
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_5

    const-string v20, "unmounted"

    goto :goto_2

    :cond_5
    const/4 v3, 0x4

    move/from16 v0, v19

    if-ne v0, v3, :cond_6

    const-string v20, "mounted"

    const-string v3, "MountService"

    const-string v4, "Media already mounted on daemon connection"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    const/4 v3, 0x7

    move/from16 v0, v19

    if-ne v0, v3, :cond_7

    const-string v20, "shared"

    const-string v3, "MountService"

    const-string v4, "Media shared on daemon connection"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Unexpected state %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method
