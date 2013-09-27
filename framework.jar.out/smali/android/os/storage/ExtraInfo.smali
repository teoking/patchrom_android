.class public Landroid/os/storage/ExtraInfo;
.super Ljava/lang/Object;
.source "ExtraInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/storage/ExtraInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mDevFs:I

.field public mDevNode:I

.field public mDevType:Ljava/lang/String;

.field public mMountPoint:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mUUID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/os/storage/ExtraInfo$1;

    invoke-direct {v0}, Landroid/os/storage/ExtraInfo$1;-><init>()V

    sput-object v0, Landroid/os/storage/ExtraInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/os/storage/ExtraInfo;->mMountPoint:Ljava/lang/String;

    iput-object v1, p0, Landroid/os/storage/ExtraInfo;->mUUID:Ljava/lang/String;

    iput-object v1, p0, Landroid/os/storage/ExtraInfo;->mDevType:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/storage/ExtraInfo;->mDevNode:I

    iput-object v1, p0, Landroid/os/storage/ExtraInfo;->mName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/storage/ExtraInfo;->mDevFs:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .parameter "mountPoint"
    .parameter "uuid"
    .parameter "devType"
    .parameter "devNode"
    .parameter "name"
    .parameter "devFs"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/storage/ExtraInfo;->mMountPoint:Ljava/lang/String;

    iput-object p2, p0, Landroid/os/storage/ExtraInfo;->mUUID:Ljava/lang/String;

    iput-object p3, p0, Landroid/os/storage/ExtraInfo;->mDevType:Ljava/lang/String;

    iput p4, p0, Landroid/os/storage/ExtraInfo;->mDevNode:I

    iput-object p5, p0, Landroid/os/storage/ExtraInfo;->mName:Ljava/lang/String;

    iput p6, p0, Landroid/os/storage/ExtraInfo;->mDevFs:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILandroid/os/storage/ExtraInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    invoke-direct/range {p0 .. p6}, Landroid/os/storage/ExtraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .local v0, none:Ljava/lang/String;
    const-string v2, "ExtraInfo:{\r\nmount point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/os/storage/ExtraInfo;->mMountPoint:Ljava/lang/String;

    if-nez v2, :cond_0

    move-object v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", \r\nUUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/os/storage/ExtraInfo;->mUUID:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", \r\nDevType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/os/storage/ExtraInfo;->mDevType:Ljava/lang/String;

    if-nez v3, :cond_2

    .end local v0           #none:Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", \r\nDevNode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/os/storage/ExtraInfo;->mDevNode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", \r\nName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/os/storage/ExtraInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", \r\nDevFs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/os/storage/ExtraInfo;->mDevFs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "}\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .restart local v0       #none:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/os/storage/ExtraInfo;->mMountPoint:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/os/storage/ExtraInfo;->mUUID:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/os/storage/ExtraInfo;->mDevType:Ljava/lang/String;

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flags"

    .prologue
    iget-object v0, p0, Landroid/os/storage/ExtraInfo;->mMountPoint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/storage/ExtraInfo;->mUUID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/storage/ExtraInfo;->mDevType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/os/storage/ExtraInfo;->mDevNode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/storage/ExtraInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/os/storage/ExtraInfo;->mDevFs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
