.class Landroid/hardware/SystemSensorManager$RemoteControlThread;
.super Ljava/lang/Thread;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RemoteControlThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SystemSensorManager;


# direct methods
.method public constructor <init>(Landroid/hardware/SystemSensorManager;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$RemoteControlThread;->this$0:Landroid/hardware/SystemSensorManager;

    const-string v0, "RemoteControlSensorReader"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SystemSensorManager$RemoteControlThread;->this$0:Landroid/hardware/SystemSensorManager;

    move-object/from16 v20, v0

    #calls: Landroid/hardware/SystemSensorManager;->connect()Z
    invoke-static/range {v20 .. v20}, Landroid/hardware/SystemSensorManager;->access$700(Landroid/hardware/SystemSensorManager;)Z

    move-result v20

    if-eqz v20, :cond_0

    const-string v20, "SensorManager"

    const-string v21, "RC, connect to remote_control_sensor socket ok"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v6, v0, [B

    .local v6, data:[B
    :cond_1
    :goto_0
    const/4 v4, 0x0

    .local v4, bytesLeft:I
    const/4 v5, 0x0

    .local v5, bytesRead:I
    const/4 v11, 0x0

    .local v11, inStream:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SystemSensorManager$RemoteControlThread;->this$0:Landroid/hardware/SystemSensorManager;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/SystemSensorManager;->mSocket:Landroid/net/LocalSocket;
    invoke-static/range {v20 .. v20}, Landroid/hardware/SystemSensorManager;->access$800(Landroid/hardware/SystemSensorManager;)Landroid/net/LocalSocket;

    move-result-object v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SystemSensorManager$RemoteControlThread;->this$0:Landroid/hardware/SystemSensorManager;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/SystemSensorManager;->mIn:Ljava/io/InputStream;
    invoke-static/range {v20 .. v20}, Landroid/hardware/SystemSensorManager;->access$900(Landroid/hardware/SystemSensorManager;)Ljava/io/InputStream;

    move-result-object v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SystemSensorManager$RemoteControlThread;->this$0:Landroid/hardware/SystemSensorManager;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/SystemSensorManager;->mOut:Ljava/io/OutputStream;
    invoke-static/range {v20 .. v20}, Landroid/hardware/SystemSensorManager;->access$1000(Landroid/hardware/SystemSensorManager;)Ljava/io/OutputStream;

    move-result-object v20

    if-nez v20, :cond_3

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SystemSensorManager$RemoteControlThread;->this$0:Landroid/hardware/SystemSensorManager;

    move-object/from16 v20, v0

    #calls: Landroid/hardware/SystemSensorManager;->disconnect()V
    invoke-static/range {v20 .. v20}, Landroid/hardware/SystemSensorManager;->access$1200(Landroid/hardware/SystemSensorManager;)V

    return-void

    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SystemSensorManager$RemoteControlThread;->this$0:Landroid/hardware/SystemSensorManager;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/SystemSensorManager;->mIn:Ljava/io/InputStream;
    invoke-static/range {v20 .. v20}, Landroid/hardware/SystemSensorManager;->access$900(Landroid/hardware/SystemSensorManager;)Ljava/io/InputStream;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    const-string v20, "SensorManager"

    const-string v21, "RC, read data length fail"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    .local v8, ex:Ljava/io/IOException;
    const-string v20, "SensorManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RC, read length exception"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v8           #ex:Ljava/io/IOException;
    :cond_4
    const/4 v7, 0x0

    .local v7, dataLen:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    const/16 v20, 0x4

    move/from16 v0, v20

    if-ge v9, v0, :cond_5

    aget-byte v20, v6, v9

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    mul-int/lit8 v21, v9, 0x8

    shl-int v20, v20, v21

    add-int v7, v7, v20

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    move v4, v7

    new-array v11, v7, [B

    :goto_3
    if-lez v4, :cond_6

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SystemSensorManager$RemoteControlThread;->this$0:Landroid/hardware/SystemSensorManager;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/SystemSensorManager;->mIn:Ljava/io/InputStream;
    invoke-static/range {v20 .. v20}, Landroid/hardware/SystemSensorManager;->access$900(Landroid/hardware/SystemSensorManager;)Ljava/io/InputStream;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11, v5, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    sub-int/2addr v4, v5

    goto :goto_3

    :catch_1
    move-exception v8

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SystemSensorManager$RemoteControlThread;->this$0:Landroid/hardware/SystemSensorManager;

    move-object/from16 v20, v0

    #getter for: Landroid/hardware/SystemSensorManager;->mRegisterListener:Z
    invoke-static/range {v20 .. v20}, Landroid/hardware/SystemSensorManager;->access$1100(Landroid/hardware/SystemSensorManager;)Z

    move-result v20

    if-eqz v20, :cond_1

    const/16 v20, 0x12

    move/from16 v0, v20

    if-lt v7, v0, :cond_1

    const/16 v20, 0x4

    const/16 v21, 0x0

    aget-byte v21, v11, v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v19, v0

    .local v19, values:[F
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v17, v0

    .local v17, timestamp:[J
    const/16 v20, 0x1

    aget-byte v18, v11, v20

    .local v18, type:B
    const/16 v20, 0x2

    aget-byte v20, v11, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x18

    const/16 v21, 0x3

    aget-byte v21, v11, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x10

    or-int v20, v20, v21

    const/16 v21, 0x4

    aget-byte v21, v11, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x8

    or-int v20, v20, v21

    const/16 v21, 0x5

    aget-byte v21, v11, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    or-int v12, v20, v21

    .local v12, intBits:I
    const/16 v20, 0x0

    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v21

    aput v21, v19, v20

    const/16 v20, 0x6

    aget-byte v20, v11, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x18

    const/16 v21, 0x7

    aget-byte v21, v11, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x10

    or-int v20, v20, v21

    const/16 v21, 0x8

    aget-byte v21, v11, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x8

    or-int v20, v20, v21

    const/16 v21, 0x9

    aget-byte v21, v11, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    or-int v12, v20, v21

    const/16 v20, 0x1

    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v21

    aput v21, v19, v20

    const/16 v20, 0xa

    aget-byte v20, v11, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x18

    const/16 v21, 0xb

    aget-byte v21, v11, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x10

    or-int v20, v20, v21

    const/16 v21, 0xc

    aget-byte v21, v11, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x8

    or-int v20, v20, v21

    const/16 v21, 0xd

    aget-byte v21, v11, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    or-int v12, v20, v21

    const/16 v20, 0x2

    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v21

    aput v21, v19, v20

    const/16 v20, 0xe

    aget-byte v20, v11, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x18

    const/16 v21, 0xf

    aget-byte v21, v11, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x10

    or-int v20, v20, v21

    const/16 v21, 0x10

    aget-byte v21, v11, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x8

    or-int v20, v20, v21

    const/16 v21, 0x11

    aget-byte v21, v11, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    or-int v3, v20, v21

    .local v3, accuracy:I
    const/4 v15, 0x0

    .local v15, sensorObject:Landroid/hardware/Sensor;
    const/16 v20, 0x1

    move/from16 v0, v20

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    new-instance v15, Landroid/hardware/Sensor;

    .end local v15           #sensorObject:Landroid/hardware/Sensor;
    move/from16 v0, v18

    invoke-direct {v15, v0}, Landroid/hardware/Sensor;-><init>(I)V

    .restart local v15       #sensorObject:Landroid/hardware/Sensor;
    :cond_7
    :goto_4
    const/16 v20, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v21

    aput-wide v21, v17, v20

    sget-object v21, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v21

    if-eqz v15, :cond_c

    :try_start_2
    sget-object v20, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v16

    .local v16, size:I
    const/4 v9, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v9, v0, :cond_c

    sget-object v20, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    .local v13, listener:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    invoke-virtual {v13}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->getSensors()Ljava/util/List;

    move-result-object v20

    if-eqz v20, :cond_a

    invoke-virtual {v13}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->getSensors()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_a

    invoke-virtual {v13}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->getSensors()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_8
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/Sensor;

    .local v14, s:Landroid/hardware/Sensor;
    invoke-virtual {v13, v14}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v20

    if-eqz v20, :cond_8

    const-string v20, "SensorManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "aRC, listen size:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",get listener:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v13}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v13, v14, v0, v1, v3}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->onSensorChangedLocked(Landroid/hardware/Sensor;[F[JI)V

    goto :goto_6

    .end local v10           #i$:Ljava/util/Iterator;
    .end local v13           #listener:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .end local v14           #s:Landroid/hardware/Sensor;
    .end local v16           #size:I
    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v20

    :cond_9
    const/16 v20, 0x4

    move/from16 v0, v20

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    new-instance v15, Landroid/hardware/Sensor;

    .end local v15           #sensorObject:Landroid/hardware/Sensor;
    move/from16 v0, v18

    invoke-direct {v15, v0}, Landroid/hardware/Sensor;-><init>(I)V

    .restart local v15       #sensorObject:Landroid/hardware/Sensor;
    goto/16 :goto_4

    .restart local v13       #listener:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v16       #size:I
    :cond_a
    :try_start_3
    invoke-virtual {v13, v15}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v20

    if-eqz v20, :cond_b

    const-string v20, "SensorManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "RC, listen size:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",get listener:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v13}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v13, v15, v0, v1, v3}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->onSensorChangedLocked(Landroid/hardware/Sensor;[F[JI)V

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    .end local v13           #listener:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .end local v16           #size:I
    :cond_c
    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method
