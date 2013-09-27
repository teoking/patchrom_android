.class Lcom/android/internal/policy/impl/PhoneWindowManager$20;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-string v2, "ubootenv.var.cvbsmode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, cvbsmode:Ljava/lang/String;
    const-string v2, "ubootenv.var.outputmode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, outputMode:Ljava/lang/String;
    const-string v2, "/sys/class/video2/clone"

    const-string v3, "0"

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->writeSysfs(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1000(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "/sys/class/vfm/map"

    const-string v3, "rm default_ext"

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->writeSysfs(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1000(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "/sys/class/vfm/map"

    const-string v3, "add default_ext vdin amvideo2"

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->writeSysfs(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1000(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "/sys/class/video2/clone"

    const-string v3, "1"

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->writeSysfs(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1000(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "480i"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "576i"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "/sys/class/display2/mode"

    const-string v3, "null"

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->writeSysfs(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1000(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v2, "/sys/class/display2/mode"

    const-string v3, "null"

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->writeSysfs(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1000(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "/sys/class/display2/mode"

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->writeSysfs(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1000(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
