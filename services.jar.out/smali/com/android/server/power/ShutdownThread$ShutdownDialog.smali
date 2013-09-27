.class Lcom/android/server/power/ShutdownThread$ShutdownDialog;
.super Landroid/app/Dialog;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShutdownDialog"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/16 v2, 0x400

    const v1, 0x10301e4

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .local v0, w:Landroid/view/Window;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    const v1, 0x1090020

    invoke-virtual {p0, v1}, Lcom/android/server/power/ShutdownThread$ShutdownDialog;->setContentView(I)V

    return-void
.end method
