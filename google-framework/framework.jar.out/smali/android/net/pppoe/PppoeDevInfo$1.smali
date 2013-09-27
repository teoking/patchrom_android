.class final Landroid/net/pppoe/PppoeDevInfo$1;
.super Ljava/lang/Object;
.source "PppoeDevInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/pppoe/PppoeDevInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/pppoe/PppoeDevInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/pppoe/PppoeDevInfo;
    .locals 2
    .parameter "in"

    .prologue
    new-instance v0, Landroid/net/pppoe/PppoeDevInfo;

    invoke-direct {v0}, Landroid/net/pppoe/PppoeDevInfo;-><init>()V

    .local v0, info:Landroid/net/pppoe/PppoeDevInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/pppoe/PppoeDevInfo;->setIfName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/pppoe/PppoeDevInfo;->setIpAddress(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/pppoe/PppoeDevInfo;->setNetMask(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/pppoe/PppoeDevInfo;->setRouteAddr(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/pppoe/PppoeDevInfo;->setDnsAddr(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/pppoe/PppoeDevInfo;->setConnectMode(Ljava/lang/String;)Z

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/pppoe/PppoeDevInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/pppoe/PppoeDevInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/pppoe/PppoeDevInfo;
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [Landroid/net/pppoe/PppoeDevInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/pppoe/PppoeDevInfo$1;->newArray(I)[Landroid/net/pppoe/PppoeDevInfo;

    move-result-object v0

    return-object v0
.end method
