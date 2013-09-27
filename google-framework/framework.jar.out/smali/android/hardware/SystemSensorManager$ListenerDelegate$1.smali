.class Landroid/hardware/SystemSensorManager$ListenerDelegate$1;
.super Landroid/os/Handler;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/SystemSensorManager$ListenerDelegate;-><init>(Landroid/hardware/SystemSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

.field final synthetic val$this$0:Landroid/hardware/SystemSensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/SystemSensorManager$ListenerDelegate;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

    iput-object p3, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$1;->val$this$0:Landroid/hardware/SystemSensorManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/SensorEvent;

    .local v2, t:Landroid/hardware/SensorEvent;
    iget-object v4, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    .local v1, handle:I
    iget-object v4, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    iget-object v4, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

    iget-object v4, v4, Landroid/hardware/SystemSensorManager$ListenerDelegate;->mFirstEvent:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

    iget-object v4, v4, Landroid/hardware/SystemSensorManager$ListenerDelegate;->mFirstEvent:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v4, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

    #getter for: Landroid/hardware/SystemSensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;
    invoke-static {v4}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->access$100(Landroid/hardware/SystemSensorManager$ListenerDelegate;)Landroid/hardware/SensorEventListener;

    move-result-object v4

    iget-object v5, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    const/4 v6, 0x3

    invoke-interface {v4, v5, v6}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

    iget-object v4, v4, Landroid/hardware/SystemSensorManager$ListenerDelegate;->this$0:Landroid/hardware/SystemSensorManager;

    #getter for: Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/hardware/SystemSensorManager;->access$200(Landroid/hardware/SystemSensorManager;)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$300()I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v4, v7, :cond_4

    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$300()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    iget-object v4, v2, Landroid/hardware/SensorEvent;->values:[F

    iget-object v5, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v8

    neg-float v5, v5

    aput v5, v4, v8

    :cond_1
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$300()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    iget-object v4, v2, Landroid/hardware/SensorEvent;->values:[F

    iget-object v5, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v7

    neg-float v5, v5

    aput v5, v4, v7

    :cond_2
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$300()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    const/4 v3, 0x0

    .local v3, temp_val:F
    iget-object v4, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v4, v8

    iget-object v4, v2, Landroid/hardware/SensorEvent;->values:[F

    iget-object v5, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v7

    aput v5, v4, v8

    iget-object v4, v2, Landroid/hardware/SensorEvent;->values:[F

    aput v3, v4, v7

    .end local v3           #temp_val:F
    :cond_3
    :goto_1
    iget-object v4, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

    #getter for: Landroid/hardware/SystemSensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;
    invoke-static {v4}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->access$100(Landroid/hardware/SystemSensorManager$ListenerDelegate;)Landroid/hardware/SensorEventListener;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    sget-object v4, Landroid/hardware/SystemSensorManager;->sPool:Landroid/hardware/SensorManager$SensorEventPool;

    invoke-virtual {v4, v2}, Landroid/hardware/SensorManager$SensorEventPool;->returnToPool(Landroid/hardware/SensorEvent;)V

    return-void

    :pswitch_0
    iget-object v4, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

    iget-object v4, v4, Landroid/hardware/SystemSensorManager$ListenerDelegate;->mSensorAccuracies:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .local v0, accuracy:I
    iget v4, v2, Landroid/hardware/SensorEvent;->accuracy:I

    if-ltz v4, :cond_0

    iget v4, v2, Landroid/hardware/SensorEvent;->accuracy:I

    if-eq v0, v4, :cond_0

    iget-object v4, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

    iget-object v4, v4, Landroid/hardware/SystemSensorManager$ListenerDelegate;->mSensorAccuracies:Landroid/util/SparseIntArray;

    iget v5, v2, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v4, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

    #getter for: Landroid/hardware/SystemSensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;
    invoke-static {v4}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->access$100(Landroid/hardware/SystemSensorManager$ListenerDelegate;)Landroid/hardware/SensorEventListener;

    move-result-object v4

    iget-object v5, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget v6, v2, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-interface {v4, v5, v6}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    goto/16 :goto_0

    .end local v0           #accuracy:I
    :cond_4
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$400()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v4, v7, :cond_3

    const/4 v3, 0x0

    .restart local v3       #temp_val:F
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$500()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$400()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    iget-object v4, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v4, v7

    iget-object v4, v2, Landroid/hardware/SensorEvent;->values:[F

    neg-float v5, v3

    aput v5, v4, v8

    iget-object v4, v2, Landroid/hardware/SensorEvent;->values:[F

    iget-object v5, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v8

    aput v5, v4, v7

    goto :goto_1

    :pswitch_2
    iget-object v4, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v4, v8

    iget-object v4, v2, Landroid/hardware/SensorEvent;->values:[F

    iget-object v5, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v7

    aput v5, v4, v8

    iget-object v4, v2, Landroid/hardware/SensorEvent;->values:[F

    aput v3, v4, v7

    goto :goto_1

    :pswitch_3
    iget-object v4, v2, Landroid/hardware/SensorEvent;->values:[F

    iget-object v5, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v8

    neg-float v5, v5

    aput v5, v4, v8

    iget-object v4, v2, Landroid/hardware/SensorEvent;->values:[F

    iget-object v5, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v7

    aput v5, v4, v7

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$400()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    goto/16 :goto_1

    :pswitch_4
    iget-object v4, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v4, v8

    iget-object v4, v2, Landroid/hardware/SensorEvent;->values:[F

    iget-object v5, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v7

    aput v5, v4, v8

    iget-object v4, v2, Landroid/hardware/SensorEvent;->values:[F

    neg-float v5, v3

    aput v5, v4, v7

    goto/16 :goto_1

    :pswitch_5
    iget-object v4, v2, Landroid/hardware/SensorEvent;->values:[F

    iget-object v5, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v8

    neg-float v5, v5

    aput v5, v4, v8

    iget-object v4, v2, Landroid/hardware/SensorEvent;->values:[F

    iget-object v5, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v7

    neg-float v5, v5

    aput v5, v4, v7

    goto/16 :goto_1

    :pswitch_6
    iget-object v4, v2, Landroid/hardware/SensorEvent;->values:[F

    iget-object v5, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v8

    neg-float v5, v5

    aput v5, v4, v8

    iget-object v4, v2, Landroid/hardware/SensorEvent;->values:[F

    iget-object v5, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v7

    aput v5, v4, v7

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
