.class public Landroid/net/pppoe/PppoeDevInfo;
.super Ljava/lang/Object;
.source "PppoeDevInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/pppoe/PppoeDevInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PPPOE_CONN_MODE_DHCP:Ljava/lang/String; = "dhcp"

.field public static final PPPOE_CONN_MODE_MANUAL:Ljava/lang/String; = "manual"


# instance fields
.field private dev_name:Ljava/lang/String;

.field private dns:Ljava/lang/String;

.field private ipaddr:Ljava/lang/String;

.field private mode:Ljava/lang/String;

.field private netmask:Ljava/lang/String;

.field private route:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/net/pppoe/PppoeDevInfo$1;

    invoke-direct {v0}, Landroid/net/pppoe/PppoeDevInfo$1;-><init>()V

    sput-object v0, Landroid/net/pppoe/PppoeDevInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/pppoe/PppoeDevInfo;->dev_name:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/pppoe/PppoeDevInfo;->ipaddr:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/pppoe/PppoeDevInfo;->dns:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/pppoe/PppoeDevInfo;->route:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/pppoe/PppoeDevInfo;->netmask:Ljava/lang/String;

    const-string v0, "dhcp"

    iput-object v0, p0, Landroid/net/pppoe/PppoeDevInfo;->mode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectMode()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/pppoe/PppoeDevInfo;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getDnsAddr()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/pppoe/PppoeDevInfo;->dns:Ljava/lang/String;

    return-object v0
.end method

.method public getIfName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/pppoe/PppoeDevInfo;->dev_name:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/pppoe/PppoeDevInfo;->ipaddr:Ljava/lang/String;

    return-object v0
.end method

.method public getNetMask()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/pppoe/PppoeDevInfo;->netmask:Ljava/lang/String;

    return-object v0
.end method

.method public getRouteAddr()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/pppoe/PppoeDevInfo;->route:Ljava/lang/String;

    return-object v0
.end method

.method public setConnectMode(Ljava/lang/String;)Z
    .locals 1
    .parameter "mode"

    .prologue
    const-string v0, "dhcp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "manual"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Landroid/net/pppoe/PppoeDevInfo;->mode:Ljava/lang/String;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDnsAddr(Ljava/lang/String;)V
    .locals 0
    .parameter "dns"

    .prologue
    iput-object p1, p0, Landroid/net/pppoe/PppoeDevInfo;->dns:Ljava/lang/String;

    return-void
.end method

.method public setIfName(Ljava/lang/String;)V
    .locals 0
    .parameter "ifname"

    .prologue
    iput-object p1, p0, Landroid/net/pppoe/PppoeDevInfo;->dev_name:Ljava/lang/String;

    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "ip"

    .prologue
    iput-object p1, p0, Landroid/net/pppoe/PppoeDevInfo;->ipaddr:Ljava/lang/String;

    return-void
.end method

.method public setNetMask(Ljava/lang/String;)V
    .locals 0
    .parameter "ip"

    .prologue
    iput-object p1, p0, Landroid/net/pppoe/PppoeDevInfo;->netmask:Ljava/lang/String;

    return-void
.end method

.method public setRouteAddr(Ljava/lang/String;)V
    .locals 0
    .parameter "route"

    .prologue
    iput-object p1, p0, Landroid/net/pppoe/PppoeDevInfo;->route:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget-object v0, p0, Landroid/net/pppoe/PppoeDevInfo;->dev_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/pppoe/PppoeDevInfo;->ipaddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/pppoe/PppoeDevInfo;->netmask:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/pppoe/PppoeDevInfo;->route:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/pppoe/PppoeDevInfo;->dns:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/pppoe/PppoeDevInfo;->mode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
