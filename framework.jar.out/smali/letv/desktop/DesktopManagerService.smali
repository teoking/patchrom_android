.class public Lletv/desktop/DesktopManagerService;
.super Lletv/desktop/IDesktopManager$Stub;
.source "DesktopManagerService.java"


# static fields
.field private static final ANIMATION_TIME:I = 0x514

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "DesktopManagerService"


# instance fields
.field private mChannel:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrentDesktopIndex:I

.field private mCurrentDesktopVisible:Z

.field private mCurrentPortName:Ljava/lang/String;

.field private mLastAnimateTime:J

.field private mSwitchForward:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    invoke-direct {p0}, Lletv/desktop/IDesktopManager$Stub;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lletv/desktop/DesktopManagerService;->mChannel:Ljava/lang/String;

    iput-object p1, p0, Lletv/desktop/DesktopManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lletv/desktop/DesktopManagerService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lletv/desktop/DesktopManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "current_desktop_index"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lletv/desktop/DesktopManagerService;->mCurrentDesktopIndex:I

    iput-boolean v2, p0, Lletv/desktop/DesktopManagerService;->mSwitchForward:Z

    return-void
.end method

.method private switchToAppDesktop(Z)Z
    .locals 4
    .parameter "withAnim"

    .prologue
    const-string v1, "DesktopManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchToAppDesktop(withAnim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "toDesktopIndex"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "extraWithAnim"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lletv/desktop/DesktopManagerService;->switchToDesktop(Landroid/os/Bundle;)Z

    move-result v1

    return v1
.end method

.method private switchToDesktop(Landroid/os/Bundle;)Z
    .locals 8
    .parameter "bundle"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "DesktopManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "switchToDesktop(bundle="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "toDesktopIndex"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .local v0, desktopIndex:I
    if-lt v0, v3, :cond_0

    const/4 v5, 0x2

    if-le v0, v5, :cond_2

    :cond_0
    const-string v3, "DesktopManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid desktop index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    :cond_1
    :goto_0
    return v3

    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x1020

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v5, "com.letv.t2.launcher"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    iget-object v5, p0, Lletv/desktop/DesktopManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v5, "extraWithAnim"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lletv/desktop/DesktopManagerService;->mLastAnimateTime:J
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "DesktopManagerService"

    const-string v5, "Can\'t find specified desktop activity."

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    goto :goto_0

    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v3, "DesktopManagerService"

    const-string v5, "Error while switching to specified desktop."

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    goto :goto_0
.end method

.method private switchToTVDesktop(Z)Z
    .locals 4
    .parameter "withAnim"

    .prologue
    const-string v1, "DesktopManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchToTVDesktop(withAnim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "toDesktopIndex"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "extraWithAnim"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lletv/desktop/DesktopManagerService;->switchToDesktop(Landroid/os/Bundle;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public getCurrentDesktopIndex()I
    .locals 3

    .prologue
    const-string v0, "DesktopManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentDesktopIndex() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lletv/desktop/DesktopManagerService;->mCurrentDesktopIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lletv/desktop/DesktopManagerService;->mCurrentDesktopIndex:I

    return v0
.end method

.method public getCurrentPlayChannel()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lletv/desktop/DesktopManagerService;->mChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPortName()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v0, "DesktopManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPortName(), mCurrentPortName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lletv/desktop/DesktopManagerService;->mCurrentPortName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lletv/desktop/DesktopManagerService;->mCurrentPortName:Ljava/lang/String;

    return-object v0
.end method

.method public isCurrentDesktopShowed()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lletv/desktop/DesktopManagerService;->mCurrentDesktopVisible:Z

    return v0
.end method

.method public isSwitching()Z
    .locals 4

    .prologue
    const-string v0, "DesktopManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSwitching(): currentTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lastAnimateTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lletv/desktop/DesktopManagerService;->mLastAnimateTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ANIMATION_TIME="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x514

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lletv/desktop/DesktopManagerService;->mLastAnimateTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x514

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCurrentDesktopIndex(I)V
    .locals 3
    .parameter "desktopIndex"

    .prologue
    const-string v0, "DesktopManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentDesktopIndex(desktopIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lletv/desktop/DesktopManagerService;->mCurrentDesktopIndex:I

    iget-object v0, p0, Lletv/desktop/DesktopManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "current_desktop_index"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setCurrentDesktopVisibility(Z)V
    .locals 3
    .parameter "isVisible"

    .prologue
    const-string v0, "DesktopManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentDesktopVisibility(isVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lletv/desktop/DesktopManagerService;->mCurrentDesktopVisible:Z

    return-void
.end method

.method public setCurrentPlayChannel(Ljava/lang/String;)V
    .locals 0
    .parameter "channelId"

    .prologue
    iput-object p1, p0, Lletv/desktop/DesktopManagerService;->mChannel:Ljava/lang/String;

    return-void
.end method

.method public setCurrentPortName(Ljava/lang/String;)V
    .locals 3
    .parameter "portName"

    .prologue
    const-string v0, "DesktopManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentPortName("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lletv/desktop/DesktopManagerService;->mCurrentPortName:Ljava/lang/String;

    return-void
.end method

.method public switchToAppDesktop()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lletv/desktop/DesktopManagerService;->switchToAppDesktop(Z)Z

    move-result v0

    return v0
.end method

.method public switchToAppDesktopWithAnim()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lletv/desktop/DesktopManagerService;->switchToAppDesktop(Z)Z

    move-result v0

    return v0
.end method

.method public switchToLeftDesktop()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const-string v3, "DesktopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchToLeftDesktop(): mCurrentDesktopIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lletv/desktop/DesktopManagerService;->mCurrentDesktopIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", DESKTOP_INDEX_MIN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", DESKTOP_INDEX_MAX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lletv/desktop/DesktopManagerService;->mCurrentDesktopIndex:I

    add-int/lit8 v1, v3, -0x1

    .local v1, nextDesktopIndex:I
    if-lt v1, v6, :cond_0

    iput-boolean v2, p0, Lletv/desktop/DesktopManagerService;->mSwitchForward:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "toDesktopIndex"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "extraWithAnim"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lletv/desktop/DesktopManagerService;->switchToDesktop(Landroid/os/Bundle;)Z

    move-result v2

    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    return v2
.end method

.method public switchToNextDesktop()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const-string v0, "DesktopManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchToNextDesktop(): mCurrentDesktopIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lletv/desktop/DesktopManagerService;->mCurrentDesktopIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lletv/desktop/DesktopManagerService;->mCurrentDesktopIndex:I

    if-ne v0, v3, :cond_0

    iput-boolean v3, p0, Lletv/desktop/DesktopManagerService;->mSwitchForward:Z

    invoke-virtual {p0}, Lletv/desktop/DesktopManagerService;->switchToRightDesktop()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lletv/desktop/DesktopManagerService;->mCurrentDesktopIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lletv/desktop/DesktopManagerService;->mSwitchForward:Z

    invoke-virtual {p0}, Lletv/desktop/DesktopManagerService;->switchToLeftDesktop()Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lletv/desktop/DesktopManagerService;->mSwitchForward:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lletv/desktop/DesktopManagerService;->switchToRightDesktop()Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lletv/desktop/DesktopManagerService;->switchToLeftDesktop()Z

    move-result v0

    goto :goto_0
.end method

.method public switchToRightDesktop()Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string v2, "DesktopManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchToRightDesktop(): mCurrentDesktopIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lletv/desktop/DesktopManagerService;->mCurrentDesktopIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", DESKTOP_INDEX_MIN="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", DESKTOP_INDEX_MAX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lletv/desktop/DesktopManagerService;->mCurrentDesktopIndex:I

    add-int/lit8 v1, v2, 0x1

    .local v1, nextDesktopIndex:I
    if-gt v1, v6, :cond_0

    iput-boolean v5, p0, Lletv/desktop/DesktopManagerService;->mSwitchForward:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "toDesktopIndex"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "extraWithAnim"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lletv/desktop/DesktopManagerService;->switchToDesktop(Landroid/os/Bundle;)Z

    move-result v2

    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public switchToSignalDesktop(Ljava/lang/String;)Z
    .locals 5
    .parameter "portName"

    .prologue
    const-string v2, "DesktopManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchToSignalDesktop(portName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "currentDesktopIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lletv/desktop/DesktopManagerService;->getCurrentDesktopIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isShown="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lletv/desktop/DesktopManagerService;->isCurrentDesktopShowed()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lletv/desktop/DesktopManagerService;->setCurrentPortName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lletv/desktop/DesktopManagerService;->getCurrentDesktopIndex()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lletv/desktop/DesktopManagerService;->isCurrentDesktopShowed()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.letv.desktop.action.switch_port"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v2, "extraPort"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lletv/desktop/DesktopManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "toDesktopIndex"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "extraPort"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lletv/desktop/DesktopManagerService;->switchToDesktop(Landroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public switchToTVDesktop()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lletv/desktop/DesktopManagerService;->switchToTVDesktop(Z)Z

    move-result v0

    return v0
.end method

.method public switchToTVDesktopWithAnim()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lletv/desktop/DesktopManagerService;->switchToTVDesktop(Z)Z

    move-result v0

    return v0
.end method
