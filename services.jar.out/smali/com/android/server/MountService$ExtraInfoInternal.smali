.class Lcom/android/server/MountService$ExtraInfoInternal;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExtraInfoInternal"
.end annotation


# instance fields
.field mDevFs:I

.field mDevNode:I

.field mDevType:Ljava/lang/String;

.field mUUID:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/MountService$ExtraInfoInternal;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService$ExtraInfoInternal;->mUUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/MountService$ExtraInfoInternal;->mDevType:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/MountService$ExtraInfoInternal;->mDevNode:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/MountService$ExtraInfoInternal;->mDevFs:I

    return-void
.end method
