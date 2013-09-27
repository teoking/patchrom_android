.class public Lcom/android/server/SystemKeyServices;
.super Ljava/lang/Object;
.source "SystemKeyServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemKeyServices$SystemKeyReceiver;
    }
.end annotation


# static fields
.field private static isSet:Z


# instance fields
.field private TAG:Ljava/lang/String;

.field filter:Landroid/content/IntentFilter;

.field mContext:Landroid/content/Context;

.field mKeyNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field receiver:Lcom/android/server/SystemKeyServices$SystemKeyReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/SystemKeyServices;->isSet:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemKeyServices;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/SystemKeyServices;->filter:Landroid/content/IntentFilter;

    iput-object v0, p0, Lcom/android/server/SystemKeyServices;->receiver:Lcom/android/server/SystemKeyServices$SystemKeyReceiver;

    iput-object v0, p0, Lcom/android/server/SystemKeyServices;->mKeyNameList:Ljava/util/ArrayList;

    const-string v0, "SystemKeyServices"

    iput-object v0, p0, Lcom/android/server/SystemKeyServices;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/SystemKeyServices;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "sys.key.info"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/SystemKeyServices;->filter:Landroid/content/IntentFilter;

    new-instance v0, Lcom/android/server/SystemKeyServices$SystemKeyReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/SystemKeyServices$SystemKeyReceiver;-><init>(Lcom/android/server/SystemKeyServices;)V

    iput-object v0, p0, Lcom/android/server/SystemKeyServices;->receiver:Lcom/android/server/SystemKeyServices$SystemKeyReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemKeyServices;->mKeyNameList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemKeyServices;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SystemKeyServices;->stringToAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SystemKeyServices;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SystemKeyServices;->getRealString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SystemKeyServices;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SystemKeyServices;->hexStringToByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRealString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "s"

    .prologue
    const/16 v3, 0x30

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, cArray:[C
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-char v2, v0, v1

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget-char v2, v0, v2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .end local p1
    :cond_0
    return-object p1

    .restart local p1
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method private hexStringToByte(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "hex"

    .prologue
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v2, v5, 0x2

    .local v2, len:I
    new-array v4, v2, [B

    .local v4, result:[B
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, achar:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    mul-int/lit8 v3, v1, 0x2

    .local v3, pos:I
    aget-char v5, v0, v3

    invoke-direct {p0, v5}, Lcom/android/server/SystemKeyServices;->toByte(C)B

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v3, 0x1

    aget-char v6, v0, v6

    invoke-direct {p0, v6}, Lcom/android/server/SystemKeyServices;->toByte(C)B

    move-result v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #pos:I
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    return-object v5
.end method

.method private stringToAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "value"

    .prologue
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .local v2, sbu:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, chars:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    aget-char v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private toByte(C)B
    .locals 2
    .parameter "c"

    .prologue
    const-string v1, "0123456789abcdef"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    int-to-byte v0, v1

    .local v0, b:B
    return v0
.end method


# virtual methods
.method registerSystemKeyReceiver()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemKeyServices;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemKeyServices;->receiver:Lcom/android/server/SystemKeyServices$SystemKeyReceiver;

    iget-object v2, p0, Lcom/android/server/SystemKeyServices;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "SystemKeyServices"

    const-string v1, "registerSystemKeyReceiver() "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method unregisterSystemKeyReceiver()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemKeyServices;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemKeyServices;->receiver:Lcom/android/server/SystemKeyServices$SystemKeyReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "SystemKeyServices"

    const-string v1, "unregisterSystemKeyReceiver() "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
