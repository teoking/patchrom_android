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
    .locals 29

    .prologue
    const/16 v22, 0x0

    .local v22, path:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v4}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v4

    const-string v5, "volume"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "list"

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v4

    const/16 v5, 0x6e

    invoke-static {v4, v5}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v26

    .local v26, vols:[Ljava/lang/String;
    move-object/from16 v14, v26

    .local v14, arr$:[Ljava/lang/String;
    array-length v0, v14

    move/from16 v21, v0

    .local v21, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    aget-object v27, v14, v19

    .local v27, volstr:Ljava/lang/String;
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCH===volstr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, " "

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .local v25, tok:[Ljava/lang/String;
    const-string v24, "removed"

    .local v24, state:Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v20, v25, v4

    .local v20, label:Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v22, v25, v4

    const-string v4, "loop"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeLabel:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v4

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .local v2, volumetemplete:Landroid/os/storage/StorageVolume;
    if-nez v2, :cond_2

    new-instance v2, Landroid/os/storage/StorageVolume;

    .end local v2           #volumetemplete:Landroid/os/storage/StorageVolume;
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const v4, 0x104050e

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

    iget-object v4, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    invoke-static {v4}, Lcom/android/server/MountService;->access$1708(Lcom/android/server/MountService;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->addVolumeLocked(Landroid/os/storage/StorageVolume;)V
    invoke-static {v4, v2}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "removed"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object/from16 v28, v2

    .local v28, volume:Landroid/os/storage/StorageVolume;
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x2

    :try_start_2
    aget-object v4, v25, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .local v23, st:I
    if-nez v23, :cond_5

    const-string v24, "removed"

    :goto_2
    if-eqz v24, :cond_0

    move-object/from16 v0, v25

    array-length v4, v0

    const/4 v5, 0x5

    if-lt v4, v5, :cond_3

    if-lez v23, :cond_3

    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating valid state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v4, 0x3

    aget-object v4, v25, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .local v16, devType:I
    const/4 v4, 0x5

    aget-object v4, v25, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .local v15, devNode:I
    new-instance v18, Lcom/android/server/MountService$ExtraInfoInternal;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/server/MountService$ExtraInfoInternal;-><init>(Lcom/android/server/MountService;)V

    .local v18, extraInfo:Lcom/android/server/MountService$ExtraInfoInternal;
    move-object/from16 v0, v18

    iput v15, v0, Lcom/android/server/MountService$ExtraInfoInternal;->mDevNode:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/server/MountService;->volumeTypeToString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/android/server/MountService$ExtraInfoInternal;->mDevType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/android/server/MountService;->getVolumeUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/android/server/MountService$ExtraInfoInternal;->mUUID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mExtraInfos:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mExtraInfos:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v3, Landroid/os/storage/StorageVolume;

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v3 .. v13}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    .local v3, newVolume:Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->addNewVolume(Landroid/os/storage/StorageVolume;)V
    invoke-static {v4, v3}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;)V

    .end local v3           #newVolume:Landroid/os/storage/StorageVolume;
    .end local v15           #devNode:I
    .end local v16           #devType:I
    .end local v18           #extraInfo:Lcom/android/server/MountService$ExtraInfoInternal;
    :cond_3
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating valid state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v4, v0, v1}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .end local v2           #volumetemplete:Landroid/os/storage/StorageVolume;
    .end local v14           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v20           #label:Ljava/lang/String;
    .end local v21           #len$:I
    .end local v23           #st:I
    .end local v24           #state:Ljava/lang/String;
    .end local v25           #tok:[Ljava/lang/String;
    .end local v26           #vols:[Ljava/lang/String;
    .end local v27           #volstr:Ljava/lang/String;
    .end local v28           #volume:Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v17

    .local v17, e:Ljava/lang/Exception;
    const-string v4, "MountService"

    const-string v5, "Error processing initial volume state"

    move-object/from16 v0, v17

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v17           #e:Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v4}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v4}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v4}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .restart local v14       #arr$:[Ljava/lang/String;
    .restart local v19       #i$:I
    .restart local v20       #label:Ljava/lang/String;
    .restart local v21       #len$:I
    .restart local v24       #state:Ljava/lang/String;
    .restart local v25       #tok:[Ljava/lang/String;
    .restart local v26       #vols:[Ljava/lang/String;
    .restart local v27       #volstr:Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4

    .restart local v2       #volumetemplete:Landroid/os/storage/StorageVolume;
    .restart local v23       #st:I
    .restart local v28       #volume:Landroid/os/storage/StorageVolume;
    :cond_5
    const/4 v4, 0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_6

    const-string v24, "unmounted"

    goto/16 :goto_2

    :cond_6
    const/4 v4, 0x4

    move/from16 v0, v23

    if-ne v0, v4, :cond_7

    const-string v24, "mounted"

    const-string v4, "MountService"

    const-string v5, "Media already mounted on daemon connection"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_7
    const/4 v4, 0x7

    move/from16 v0, v23

    if-ne v0, v4, :cond_8

    const-string v24, "shared"

    const-string v4, "MountService"

    const-string v5, "Media shared on daemon connection"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_8
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Unexpected state %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .restart local v15       #devNode:I
    .restart local v16       #devType:I
    .restart local v18       #extraInfo:Lcom/android/server/MountService$ExtraInfoInternal;
    :catchall_1
    move-exception v4

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
.end method
