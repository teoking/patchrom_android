.class public final enum Lletv/app/LetvFullscreenDialog$ButtonId;
.super Ljava/lang/Enum;
.source "LetvFullscreenDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lletv/app/LetvFullscreenDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ButtonId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lletv/app/LetvFullscreenDialog$ButtonId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lletv/app/LetvFullscreenDialog$ButtonId;

.field public static final enum FIRST_BUTTON:Lletv/app/LetvFullscreenDialog$ButtonId;

.field public static final enum NULL_BUTTON:Lletv/app/LetvFullscreenDialog$ButtonId;

.field public static final enum SECOND_BUTTON:Lletv/app/LetvFullscreenDialog$ButtonId;

.field public static final enum THIRD_BUTTON:Lletv/app/LetvFullscreenDialog$ButtonId;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lletv/app/LetvFullscreenDialog$ButtonId;

    const-string v1, "NULL_BUTTON"

    invoke-direct {v0, v1, v2}, Lletv/app/LetvFullscreenDialog$ButtonId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lletv/app/LetvFullscreenDialog$ButtonId;->NULL_BUTTON:Lletv/app/LetvFullscreenDialog$ButtonId;

    new-instance v0, Lletv/app/LetvFullscreenDialog$ButtonId;

    const-string v1, "FIRST_BUTTON"

    invoke-direct {v0, v1, v3}, Lletv/app/LetvFullscreenDialog$ButtonId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lletv/app/LetvFullscreenDialog$ButtonId;->FIRST_BUTTON:Lletv/app/LetvFullscreenDialog$ButtonId;

    new-instance v0, Lletv/app/LetvFullscreenDialog$ButtonId;

    const-string v1, "SECOND_BUTTON"

    invoke-direct {v0, v1, v4}, Lletv/app/LetvFullscreenDialog$ButtonId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lletv/app/LetvFullscreenDialog$ButtonId;->SECOND_BUTTON:Lletv/app/LetvFullscreenDialog$ButtonId;

    new-instance v0, Lletv/app/LetvFullscreenDialog$ButtonId;

    const-string v1, "THIRD_BUTTON"

    invoke-direct {v0, v1, v5}, Lletv/app/LetvFullscreenDialog$ButtonId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lletv/app/LetvFullscreenDialog$ButtonId;->THIRD_BUTTON:Lletv/app/LetvFullscreenDialog$ButtonId;

    const/4 v0, 0x4

    new-array v0, v0, [Lletv/app/LetvFullscreenDialog$ButtonId;

    sget-object v1, Lletv/app/LetvFullscreenDialog$ButtonId;->NULL_BUTTON:Lletv/app/LetvFullscreenDialog$ButtonId;

    aput-object v1, v0, v2

    sget-object v1, Lletv/app/LetvFullscreenDialog$ButtonId;->FIRST_BUTTON:Lletv/app/LetvFullscreenDialog$ButtonId;

    aput-object v1, v0, v3

    sget-object v1, Lletv/app/LetvFullscreenDialog$ButtonId;->SECOND_BUTTON:Lletv/app/LetvFullscreenDialog$ButtonId;

    aput-object v1, v0, v4

    sget-object v1, Lletv/app/LetvFullscreenDialog$ButtonId;->THIRD_BUTTON:Lletv/app/LetvFullscreenDialog$ButtonId;

    aput-object v1, v0, v5

    sput-object v0, Lletv/app/LetvFullscreenDialog$ButtonId;->$VALUES:[Lletv/app/LetvFullscreenDialog$ButtonId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lletv/app/LetvFullscreenDialog$ButtonId;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lletv/app/LetvFullscreenDialog$ButtonId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lletv/app/LetvFullscreenDialog$ButtonId;

    return-object v0
.end method

.method public static values()[Lletv/app/LetvFullscreenDialog$ButtonId;
    .locals 1

    .prologue
    sget-object v0, Lletv/app/LetvFullscreenDialog$ButtonId;->$VALUES:[Lletv/app/LetvFullscreenDialog$ButtonId;

    invoke-virtual {v0}, [Lletv/app/LetvFullscreenDialog$ButtonId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lletv/app/LetvFullscreenDialog$ButtonId;

    return-object v0
.end method
