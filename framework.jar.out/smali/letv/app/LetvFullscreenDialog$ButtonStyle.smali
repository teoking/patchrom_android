.class public final enum Lletv/app/LetvFullscreenDialog$ButtonStyle;
.super Ljava/lang/Enum;
.source "LetvFullscreenDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lletv/app/LetvFullscreenDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ButtonStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lletv/app/LetvFullscreenDialog$ButtonStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lletv/app/LetvFullscreenDialog$ButtonStyle;

.field public static final enum NO_BUTTON:Lletv/app/LetvFullscreenDialog$ButtonStyle;

.field public static final enum ONE_BUTTON:Lletv/app/LetvFullscreenDialog$ButtonStyle;

.field public static final enum THREE_BUTTON:Lletv/app/LetvFullscreenDialog$ButtonStyle;

.field public static final enum TWO_BUTTON:Lletv/app/LetvFullscreenDialog$ButtonStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lletv/app/LetvFullscreenDialog$ButtonStyle;

    const-string v1, "NO_BUTTON"

    invoke-direct {v0, v1, v2}, Lletv/app/LetvFullscreenDialog$ButtonStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lletv/app/LetvFullscreenDialog$ButtonStyle;->NO_BUTTON:Lletv/app/LetvFullscreenDialog$ButtonStyle;

    new-instance v0, Lletv/app/LetvFullscreenDialog$ButtonStyle;

    const-string v1, "ONE_BUTTON"

    invoke-direct {v0, v1, v3}, Lletv/app/LetvFullscreenDialog$ButtonStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lletv/app/LetvFullscreenDialog$ButtonStyle;->ONE_BUTTON:Lletv/app/LetvFullscreenDialog$ButtonStyle;

    new-instance v0, Lletv/app/LetvFullscreenDialog$ButtonStyle;

    const-string v1, "TWO_BUTTON"

    invoke-direct {v0, v1, v4}, Lletv/app/LetvFullscreenDialog$ButtonStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lletv/app/LetvFullscreenDialog$ButtonStyle;->TWO_BUTTON:Lletv/app/LetvFullscreenDialog$ButtonStyle;

    new-instance v0, Lletv/app/LetvFullscreenDialog$ButtonStyle;

    const-string v1, "THREE_BUTTON"

    invoke-direct {v0, v1, v5}, Lletv/app/LetvFullscreenDialog$ButtonStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lletv/app/LetvFullscreenDialog$ButtonStyle;->THREE_BUTTON:Lletv/app/LetvFullscreenDialog$ButtonStyle;

    const/4 v0, 0x4

    new-array v0, v0, [Lletv/app/LetvFullscreenDialog$ButtonStyle;

    sget-object v1, Lletv/app/LetvFullscreenDialog$ButtonStyle;->NO_BUTTON:Lletv/app/LetvFullscreenDialog$ButtonStyle;

    aput-object v1, v0, v2

    sget-object v1, Lletv/app/LetvFullscreenDialog$ButtonStyle;->ONE_BUTTON:Lletv/app/LetvFullscreenDialog$ButtonStyle;

    aput-object v1, v0, v3

    sget-object v1, Lletv/app/LetvFullscreenDialog$ButtonStyle;->TWO_BUTTON:Lletv/app/LetvFullscreenDialog$ButtonStyle;

    aput-object v1, v0, v4

    sget-object v1, Lletv/app/LetvFullscreenDialog$ButtonStyle;->THREE_BUTTON:Lletv/app/LetvFullscreenDialog$ButtonStyle;

    aput-object v1, v0, v5

    sput-object v0, Lletv/app/LetvFullscreenDialog$ButtonStyle;->$VALUES:[Lletv/app/LetvFullscreenDialog$ButtonStyle;

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

.method public static valueOf(Ljava/lang/String;)Lletv/app/LetvFullscreenDialog$ButtonStyle;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lletv/app/LetvFullscreenDialog$ButtonStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lletv/app/LetvFullscreenDialog$ButtonStyle;

    return-object v0
.end method

.method public static values()[Lletv/app/LetvFullscreenDialog$ButtonStyle;
    .locals 1

    .prologue
    sget-object v0, Lletv/app/LetvFullscreenDialog$ButtonStyle;->$VALUES:[Lletv/app/LetvFullscreenDialog$ButtonStyle;

    invoke-virtual {v0}, [Lletv/app/LetvFullscreenDialog$ButtonStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lletv/app/LetvFullscreenDialog$ButtonStyle;

    return-object v0
.end method
