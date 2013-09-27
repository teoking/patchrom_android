.class Landroid/hardware/SystemSensorManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SystemSensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/SystemSensorManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$1;->this$0:Landroid/hardware/SystemSensorManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.RECORD_ROTATION_SETTINGS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "rot_setting"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .local v2, rot:I
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$1;->this$0:Landroid/hardware/SystemSensorManager;

    #getter for: Landroid/hardware/SystemSensorManager;->mCxtFormWL:Z
    invoke-static {v3}, Landroid/hardware/SystemSensorManager;->access$600(Landroid/hardware/SystemSensorManager;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eq v4, v2, :cond_1

    iget-object v3, p0, Landroid/hardware/SystemSensorManager$1;->this$0:Landroid/hardware/SystemSensorManager;

    #getter for: Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/hardware/SystemSensorManager;->access$200(Landroid/hardware/SystemSensorManager;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/hardware/SystemSensorManager$1;->this$0:Landroid/hardware/SystemSensorManager;

    #getter for: Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/hardware/SystemSensorManager;->access$200(Landroid/hardware/SystemSensorManager;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .local v1, mDisplay:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v3

    invoke-static {v3}, Landroid/hardware/SystemSensorManager;->access$502(I)I

    .end local v1           #mDisplay:Landroid/view/Display;
    :goto_0
    invoke-static {v2}, Landroid/hardware/SystemSensorManager;->access$402(I)I

    .end local v2           #rot:I
    :cond_0
    return-void

    .restart local v2       #rot:I
    :cond_1
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/hardware/SystemSensorManager;->access$502(I)I

    goto :goto_0
.end method
