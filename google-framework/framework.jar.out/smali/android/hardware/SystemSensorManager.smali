.class public Landroid/hardware/SystemSensorManager;
.super Landroid/hardware/SensorManager;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SystemSensorManager$RemoteControlThread;,
        Landroid/hardware/SystemSensorManager$ListenerDelegate;,
        Landroid/hardware/SystemSensorManager$SensorThread;
    }
.end annotation


# static fields
.field private static final CONFIG_REVERSE_X:I = 0x1

.field private static final CONFIG_REVERSE_XY:I = 0x4

.field private static final CONFIG_REVERSE_Y:I = 0x2

.field private static final EVENT_TYPE_SENSOR:I = 0x4

.field private static final RC_SENSOR_DEBUG:Z = false

.field private static final SENSOR_DISABLE:I = -0x1

.field private static final SensorAccessFile:Ljava/lang/String; = "/system/etc/sensor_access.txt"

.field private static dispScreen:I = 0x0

.field private static hasAccelerometer:Z = false

.field private static hasGyro:Z = false

.field private static mHasRegist:Z = false

.field private static mSensorAccessList:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mWhitePackage:I = 0x0

.field private static final rotProp:Ljava/lang/String; = "sys.rotation.settings"

.field private static sFullSensorsList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field static sHandleToSensor:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field static final sListeners:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/SystemSensorManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field static sPool:Landroid/hardware/SensorManager$SensorEventPool; = null

.field private static sQueue:I = 0x0

.field private static sSensorModuleInitialized:Z = false

.field private static sSensorThread:Landroid/hardware/SystemSensorManager$SensorThread; = null

.field private static sensorCtlId:I = 0x0

.field private static final setRotShow:Ljava/lang/String; = "android.intent.action.RECORD_ROTATION_SHOW"

.field private static final setRotStr:Ljava/lang/String; = "rot_setting"

.field private static final setRotVal:Ljava/lang/String; = "android.intent.action.RECORD_ROTATION_SETTINGS"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCxtFormWL:Z

.field private mIn:Ljava/io/InputStream;

.field final mMainLooper:Landroid/os/Looper;

.field private mOut:Ljava/io/OutputStream;

.field private mRegisterListener:Z

.field private mSocket:Landroid/net/LocalSocket;

.field private mThreadStart:Z

.field private mcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    sput-boolean v1, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    const/4 v0, -0x1

    sput v0, Landroid/hardware/SystemSensorManager;->sensorCtlId:I

    sput v1, Landroid/hardware/SystemSensorManager;->dispScreen:I

    sput v1, Landroid/hardware/SystemSensorManager;->mWhitePackage:I

    const-string v0, "/system/etc/sensor_access.txt"

    invoke-static {v0}, Landroid/hardware/SystemSensorManager;->getMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Landroid/hardware/SystemSensorManager;->mSensorAccessList:Ljava/util/HashMap;

    sput-boolean v1, Landroid/hardware/SystemSensorManager;->mHasRegist:Z

    const-string v0, "hw.has.accelerometer"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/SystemSensorManager;->hasAccelerometer:Z

    const-string v0, "hw.has.gyro"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/SystemSensorManager;->hasGyro:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 12
    .parameter "mainLooper"

    .prologue
    const/4 v11, 0x4

    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    iput-boolean v8, p0, Landroid/hardware/SystemSensorManager;->mCxtFormWL:Z

    new-instance v7, Landroid/hardware/SystemSensorManager$1;

    invoke-direct {v7, p0}, Landroid/hardware/SystemSensorManager$1;-><init>(Landroid/hardware/SystemSensorManager;)V

    iput-object v7, p0, Landroid/hardware/SystemSensorManager;->mcastReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v8, p0, Landroid/hardware/SystemSensorManager;->mThreadStart:Z

    iput-boolean v8, p0, Landroid/hardware/SystemSensorManager;->mRegisterListener:Z

    iput-object p1, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    sget-object v8, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_0
    sget-boolean v7, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    if-nez v7, :cond_8

    const/4 v7, 0x1

    sput-boolean v7, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    invoke-static {}, Landroid/hardware/SystemSensorManager;->nativeClassInit()V

    invoke-static {}, Landroid/hardware/SystemSensorManager;->sensors_module_init()I

    sget-object v0, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :cond_0
    new-instance v6, Landroid/hardware/Sensor;

    invoke-direct {v6}, Landroid/hardware/Sensor;-><init>()V

    .local v6, sensor:Landroid/hardware/Sensor;
    invoke-static {v6, v3}, Landroid/hardware/SystemSensorManager;->sensors_module_get_next_sensor(Landroid/hardware/Sensor;I)I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getHandle()I

    move-result v9

    invoke-virtual {v7, v9, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_1
    if-gtz v3, :cond_0

    sget-boolean v7, Landroid/hardware/SystemSensorManager;->hasAccelerometer:Z

    if-nez v7, :cond_4

    const/4 v1, 0x0

    .local v1, gSensor:Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    .local v5, s:Landroid/hardware/Sensor;
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    if-ne v7, v10, :cond_2

    const/4 v1, 0x1

    .end local v5           #s:Landroid/hardware/Sensor;
    :cond_3
    if-nez v1, :cond_9

    new-instance v6, Landroid/hardware/Sensor;

    .end local v6           #sensor:Landroid/hardware/Sensor;
    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/hardware/Sensor;-><init>(I)V

    .restart local v6       #sensor:Landroid/hardware/Sensor;
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getHandle()I

    move-result v9

    invoke-virtual {v7, v9, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v7, "SensorManager"

    const-string v9, "RC, really has no accelerometer"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #gSensor:Z
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    :goto_0
    sget-boolean v7, Landroid/hardware/SystemSensorManager;->hasGyro:Z

    if-nez v7, :cond_7

    const/4 v2, 0x0

    .local v2, gyroSensor:Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    .restart local v5       #s:Landroid/hardware/Sensor;
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    if-ne v7, v11, :cond_5

    const/4 v2, 0x1

    .end local v5           #s:Landroid/hardware/Sensor;
    :cond_6
    if-nez v2, :cond_a

    new-instance v6, Landroid/hardware/Sensor;

    .end local v6           #sensor:Landroid/hardware/Sensor;
    const/4 v7, 0x4

    invoke-direct {v6, v7}, Landroid/hardware/Sensor;-><init>(I)V

    .restart local v6       #sensor:Landroid/hardware/Sensor;
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getHandle()I

    move-result v9

    invoke-virtual {v7, v9, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v7, "SensorManager"

    const-string v9, "RC, really has no gyro"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #gyroSensor:Z
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_7
    :goto_1
    new-instance v7, Landroid/hardware/SensorManager$SensorEventPool;

    sget-object v9, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    invoke-direct {v7, v9}, Landroid/hardware/SensorManager$SensorEventPool;-><init>(I)V

    sput-object v7, Landroid/hardware/SystemSensorManager;->sPool:Landroid/hardware/SensorManager$SensorEventPool;

    new-instance v7, Landroid/hardware/SystemSensorManager$SensorThread;

    invoke-direct {v7}, Landroid/hardware/SystemSensorManager$SensorThread;-><init>()V

    sput-object v7, Landroid/hardware/SystemSensorManager;->sSensorThread:Landroid/hardware/SystemSensorManager$SensorThread;

    .end local v0           #fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    .end local v3           #i:I
    .end local v6           #sensor:Landroid/hardware/Sensor;
    :cond_8
    monitor-exit v8

    return-void

    .restart local v0       #fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    .restart local v1       #gSensor:Z
    .restart local v3       #i:I
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #sensor:Landroid/hardware/Sensor;
    :cond_9
    const/4 v7, 0x1

    sput-boolean v7, Landroid/hardware/SystemSensorManager;->hasAccelerometer:Z

    const-string v7, "SensorManager"

    const-string v9, "RC, really has accelerometer"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    .end local v1           #gSensor:Z
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #sensor:Landroid/hardware/Sensor;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v0       #fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    .restart local v2       #gyroSensor:Z
    .restart local v3       #i:I
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #sensor:Landroid/hardware/Sensor;
    :cond_a
    const/4 v7, 0x1

    :try_start_1
    sput-boolean v7, Landroid/hardware/SystemSensorManager;->hasGyro:Z

    const-string v7, "SensorManager"

    const-string v9, "RC, really has gyro"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    sget v0, Landroid/hardware/SystemSensorManager;->sQueue:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    sput p0, Landroid/hardware/SystemSensorManager;->sQueue:I

    return p0
.end method

.method static synthetic access$1000(Landroid/hardware/SystemSensorManager;)Ljava/io/OutputStream;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/hardware/SystemSensorManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/hardware/SystemSensorManager;->mRegisterListener:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/hardware/SystemSensorManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->disconnect()V

    return-void
.end method

.method static synthetic access$200(Landroid/hardware/SystemSensorManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    sget v0, Landroid/hardware/SystemSensorManager;->mWhitePackage:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    sget v0, Landroid/hardware/SystemSensorManager;->sensorCtlId:I

    return v0
.end method

.method static synthetic access$402(I)I
    .locals 0
    .parameter "x0"

    .prologue
    sput p0, Landroid/hardware/SystemSensorManager;->sensorCtlId:I

    return p0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    sget v0, Landroid/hardware/SystemSensorManager;->dispScreen:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    sput p0, Landroid/hardware/SystemSensorManager;->dispScreen:I

    return p0
.end method

.method static synthetic access$600(Landroid/hardware/SystemSensorManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/hardware/SystemSensorManager;->mCxtFormWL:Z

    return v0
.end method

.method static synthetic access$700(Landroid/hardware/SystemSensorManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->connect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/hardware/SystemSensorManager;)Landroid/net/LocalSocket;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mSocket:Landroid/net/LocalSocket;

    return-object v0
.end method

.method static synthetic access$900(Landroid/hardware/SystemSensorManager;)Ljava/io/InputStream;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mIn:Ljava/io/InputStream;

    return-object v0
.end method

.method private connect()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSocket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    :try_start_0
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    iput-object v3, p0, Landroid/hardware/SystemSensorManager;->mSocket:Landroid/net/LocalSocket;

    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v3, "remote_control_sensor"

    invoke-direct {v0, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    .local v0, address:Landroid/net/LocalSocketAddress;
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/SystemSensorManager;->mIn:Ljava/io/InputStream;

    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/SystemSensorManager;->mOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0           #address:Landroid/net/LocalSocketAddress;
    :catch_0
    move-exception v1

    .local v1, ex:Ljava/io/IOException;
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->disconnect()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private disableSensorLocked(Landroid/hardware/Sensor;)Z
    .locals 6
    .parameter "sensor"

    .prologue
    sget-object v4, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    .local v1, i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    invoke-virtual {v1, p1}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .end local v1           #i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    .local v3, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .local v0, handle:I
    sget v4, Landroid/hardware/SystemSensorManager;->sQueue:I

    const/4 v5, -0x1

    invoke-static {v4, v3, v0, v5}, Landroid/hardware/SystemSensorManager;->sensors_enable_sensor(ILjava/lang/String;II)Z

    move-result v4

    goto :goto_0
.end method

.method private disconnect()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mOut:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v0, v1, [B

    .local v0, disc:[B
    const/4 v1, 0x0

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mOut:Ljava/io/OutputStream;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .end local v0           #disc:[B
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mIn:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mIn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_2
    :try_start_3
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mOut:Ljava/io/OutputStream;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    :goto_3
    iput-object v4, p0, Landroid/hardware/SystemSensorManager;->mSocket:Landroid/net/LocalSocket;

    iput-object v4, p0, Landroid/hardware/SystemSensorManager;->mIn:Ljava/io/InputStream;

    iput-object v4, p0, Landroid/hardware/SystemSensorManager;->mOut:Ljava/io/OutputStream;

    return-void

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private enableSensorLocked(Landroid/hardware/Sensor;I)Z
    .locals 6
    .parameter "sensor"
    .parameter "delay"

    .prologue
    const/4 v4, 0x0

    .local v4, result:Z
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    .local v1, i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    invoke-virtual {v1, p1}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    .local v3, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .local v0, handle:I
    sget v5, Landroid/hardware/SystemSensorManager;->sQueue:I

    invoke-static {v5, v3, v0, p2}, Landroid/hardware/SystemSensorManager;->sensors_enable_sensor(ILjava/lang/String;II)Z

    move-result v4

    .end local v0           #handle:I
    .end local v1           #i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .end local v3           #name:Ljava/lang/String;
    :cond_1
    return v4
.end method

.method private static getMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 10
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, file:Ljava/io/File;
    const/4 v1, 0x0

    .local v1, bs:Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .local v6, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    :goto_0
    return-object v8

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1           #bs:Ljava/io/BufferedReader;
    .local v2, bs:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .end local v6           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v7, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, line:Ljava/lang/String;
    const/4 v0, 0x0

    :try_start_2
    check-cast v0, [Ljava/lang/String;

    .local v0, array:[Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v8, v0

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .end local v0           #array:[Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v6, v7

    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v1, v2

    .end local v2           #bs:Ljava/io/BufferedReader;
    .end local v5           #line:Ljava/lang/String;
    .restart local v1       #bs:Ljava/io/BufferedReader;
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3           #e:Ljava/lang/Exception;
    :goto_3
    move-object v8, v6

    goto :goto_0

    .end local v1           #bs:Ljava/io/BufferedReader;
    .end local v6           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v0       #array:[Ljava/lang/String;
    .restart local v2       #bs:Ljava/io/BufferedReader;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v6, v7

    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v1, v2

    .end local v2           #bs:Ljava/io/BufferedReader;
    .restart local v1       #bs:Ljava/io/BufferedReader;
    goto :goto_3

    .end local v0           #array:[Ljava/lang/String;
    .end local v5           #line:Ljava/lang/String;
    :catch_1
    move-exception v3

    goto :goto_2

    .end local v1           #bs:Ljava/io/BufferedReader;
    .restart local v2       #bs:Ljava/io/BufferedReader;
    :catch_2
    move-exception v3

    move-object v1, v2

    .end local v2           #bs:Ljava/io/BufferedReader;
    .restart local v1       #bs:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private static native nativeClassInit()V
.end method

.method private regSensorCtlReceiver(Landroid/content/Context;)V
    .locals 2
    .parameter "cxt"

    .prologue
    sget-boolean v1, Landroid/hardware/SystemSensorManager;->mHasRegist:Z

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, rotFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.RECORD_ROTATION_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    sput-boolean v1, Landroid/hardware/SystemSensorManager;->mHasRegist:Z

    .end local v0           #rotFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private registerRemote()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/hardware/SystemSensorManager;->mThreadStart:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/hardware/SystemSensorManager$RemoteControlThread;

    invoke-direct {v1, p0}, Landroid/hardware/SystemSensorManager$RemoteControlThread;-><init>(Landroid/hardware/SystemSensorManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iput-boolean v2, p0, Landroid/hardware/SystemSensorManager;->mThreadStart:Z

    :cond_0
    iput-boolean v2, p0, Landroid/hardware/SystemSensorManager;->mRegisterListener:Z

    return-void
.end method

.method static native sensors_create_queue()I
.end method

.method static native sensors_data_poll(I[F[I[J)I
.end method

.method static native sensors_destroy_queue(I)V
.end method

.method static native sensors_enable_sensor(ILjava/lang/String;II)Z
.end method

.method private static native sensors_module_get_next_sensor(Landroid/hardware/Sensor;I)I
.end method

.method private static native sensors_module_init()I
.end method

.method private unregisterRemote()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/SystemSensorManager;->mRegisterListener:Z

    iput-boolean v0, p0, Landroid/hardware/SystemSensorManager;->mThreadStart:Z

    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->disconnect()V

    return-void
.end method


# virtual methods
.method protected getFullSensorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    .locals 11
    .parameter "listener"
    .parameter "sensor"
    .parameter "delay"
    .parameter "handler"

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x1

    .local v6, result:Z
    sget-object v8, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v8

    const/4 v4, 0x0

    .local v4, l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :try_start_0
    sget-object v7, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    .local v1, i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    if-ne v7, p1, :cond_0

    move-object v4, v1

    move-object v5, v4

    .end local v1           #i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .end local v4           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .local v5, l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :goto_0
    if-nez v5, :cond_9

    :try_start_1
    new-instance v4, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    invoke-direct {v4, p0, p1, p2, p4}, Landroid/hardware/SystemSensorManager$ListenerDelegate;-><init>(Landroid/hardware/SystemSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v5           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v4       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :try_start_2
    sget-object v7, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    sget-boolean v7, Landroid/hardware/SystemSensorManager;->hasAccelerometer:Z

    if-eqz v7, :cond_1

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v7

    if-ne v7, v10, :cond_2

    :cond_1
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    if-eq v10, v7, :cond_3

    :cond_2
    sget-boolean v7, Landroid/hardware/SystemSensorManager;->hasGyro:Z

    if-nez v7, :cond_4

    const/4 v7, 0x4

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v9

    if-ne v7, v9, :cond_4

    :cond_3
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->registerRemote()V

    :cond_4
    sget-object v7, Landroid/hardware/SystemSensorManager;->sSensorThread:Landroid/hardware/SystemSensorManager$SensorThread;

    invoke-virtual {v7}, Landroid/hardware/SystemSensorManager$SensorThread;->startLocked()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-direct {p0, p2, p3}, Landroid/hardware/SystemSensorManager;->enableSensorLocked(Landroid/hardware/Sensor;I)Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v7, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    :cond_5
    :goto_1
    iget-object v7, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_6

    if-eqz v6, :cond_6

    if-eqz v4, :cond_6

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    if-ne v10, v7, :cond_6

    sget-boolean v7, Landroid/hardware/SystemSensorManager;->hasAccelerometer:Z

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Landroid/hardware/SystemSensorManager;->mCxtFormWL:Z

    if-eqz v7, :cond_b

    iget-object v7, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .local v0, curPkgName:Ljava/lang/String;
    sget-object v7, Landroid/hardware/SystemSensorManager;->mSensorAccessList:Ljava/util/HashMap;

    if-eqz v7, :cond_a

    sget-object v7, Landroid/hardware/SystemSensorManager;->mSensorAccessList:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    sget-object v7, Landroid/hardware/SystemSensorManager;->mSensorAccessList:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Landroid/hardware/SystemSensorManager;->mWhitePackage:I

    .end local v0           #curPkgName:Ljava/lang/String;
    :cond_6
    :goto_2
    monitor-exit v8

    return v6

    :cond_7
    sget-object v7, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_8
    const/4 v6, 0x0

    goto :goto_1

    .end local v4           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v5       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :cond_9
    :try_start_3
    invoke-virtual {v5, p2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v5, p2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->addSensor(Landroid/hardware/Sensor;)V

    invoke-direct {p0, p2, p3}, Landroid/hardware/SystemSensorManager;->enableSensorLocked(Landroid/hardware/Sensor;I)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v5, p2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v6, 0x0

    move-object v4, v5

    .end local v5           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v4       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    goto :goto_1

    .restart local v0       #curPkgName:Ljava/lang/String;
    :cond_a
    const/4 v7, 0x0

    :try_start_4
    sput v7, Landroid/hardware/SystemSensorManager;->mWhitePackage:I

    goto :goto_2

    .end local v0           #curPkgName:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    :goto_3
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_b
    :try_start_5
    iget-boolean v7, p0, Landroid/hardware/SystemSensorManager;->mCxtFormWL:Z

    if-nez v7, :cond_6

    const/4 v7, 0x0

    sput v7, Landroid/hardware/SystemSensorManager;->sensorCtlId:I

    iget-object v7, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Landroid/hardware/SystemSensorManager;->regSensorCtlReceiver(Landroid/content/Context;)V

    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.RECORD_ROTATION_SHOW"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, intent:Landroid/content/Intent;
    const-string v7, "rot_setting"

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v7, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v5       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v4       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    goto :goto_3

    .end local v4           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v5       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :cond_c
    move-object v4, v5

    .end local v5           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v4       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    goto/16 :goto_1

    :cond_d
    move-object v5, v4

    .end local v4           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v5       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    goto/16 :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const-string v2, "sys.rotation.settings"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .local v1, setbyuser:Ljava/lang/Boolean;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    iput-object p1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/hardware/SystemSensorManager;->mCxtFormWL:Z

    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-void

    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/hardware/SystemSensorManager;->mCxtFormWL:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 9
    .parameter "listener"
    .parameter "sensor"

    .prologue
    const/4 v8, 0x1

    sget-object v7, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_0
    sget-object v6, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_9

    sget-object v6, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    .local v3, l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    invoke-virtual {v3}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_a

    if-nez p2, :cond_0

    sget-object v6, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->getSensors()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    .local v4, s:Landroid/hardware/Sensor;
    invoke-direct {p0, v4}, Landroid/hardware/SystemSensorManager;->disableSensorLocked(Landroid/hardware/Sensor;)Z

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .end local v4           #s:Landroid/hardware/Sensor;
    .end local v5           #size:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v0       #i:I
    .restart local v3       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v5       #size:I
    :cond_0
    :try_start_1
    invoke-virtual {v3, p2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)I

    move-result v6

    if-nez v6, :cond_5

    sget-object v6, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-boolean v6, Landroid/hardware/SystemSensorManager;->hasAccelerometer:Z

    if-eqz v6, :cond_1

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v6

    if-ne v6, v8, :cond_2

    :cond_1
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    if-eq v8, v6, :cond_3

    :cond_2
    sget-boolean v6, Landroid/hardware/SystemSensorManager;->hasGyro:Z

    if-nez v6, :cond_4

    const/4 v6, 0x4

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v8

    if-ne v6, v8, :cond_4

    :cond_3
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->unregisterRemote()V

    :cond_4
    invoke-direct {p0, p2}, Landroid/hardware/SystemSensorManager;->disableSensorLocked(Landroid/hardware/Sensor;)Z

    :cond_5
    sget v6, Landroid/hardware/SystemSensorManager;->mWhitePackage:I

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    sput v6, Landroid/hardware/SystemSensorManager;->mWhitePackage:I

    :cond_6
    iget-boolean v6, p0, Landroid/hardware/SystemSensorManager;->mCxtFormWL:Z

    if-nez v6, :cond_7

    iget-object v6, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_7

    sget v6, Landroid/hardware/SystemSensorManager;->sensorCtlId:I

    if-ltz v6, :cond_7

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.RECORD_ROTATION_SHOW"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, intent:Landroid/content/Intent;
    const-string v6, "rot_setting"

    const/4 v8, -0x1

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v6, 0x0

    iput-object v6, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    sput v6, Landroid/hardware/SystemSensorManager;->sensorCtlId:I

    .end local v2           #intent:Landroid/content/Intent;
    :cond_7
    iget-boolean v6, p0, Landroid/hardware/SystemSensorManager;->mCxtFormWL:Z

    if-nez v6, :cond_9

    iget-object v6, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_9

    sget-boolean v6, Landroid/hardware/SystemSensorManager;->mHasRegist:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/hardware/SystemSensorManager;->mcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v8}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v6, 0x0

    sput-boolean v6, Landroid/hardware/SystemSensorManager;->mHasRegist:Z

    :cond_8
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    sput v6, Landroid/hardware/SystemSensorManager;->sensorCtlId:I

    .end local v3           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :cond_9
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .restart local v3       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
