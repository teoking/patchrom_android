.class public Landroid/net/ethernet/EthernetDevInfo;
.super Ljava/lang/Object;
.source "EthernetDevInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/ethernet/EthernetDevInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final ETH_CONN_MODE_DHCP:Ljava/lang/String; = "dhcp"

.field public static final ETH_CONN_MODE_MANUAL:Ljava/lang/String; = "manual"


# instance fields
.field private dev_name:Ljava/lang/String;

.field private dns:Ljava/lang/String;

.field private ipaddr:Ljava/lang/String;

.field private mode:Ljava/lang/String;

.field private netmask:Ljava/lang/String;

.field private proxy:Landroid/net/ProxyProperties;

.field private route:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/net/ethernet/EthernetDevInfo$1;

    invoke-direct {v0}, Landroid/net/ethernet/EthernetDevInfo$1;-><init>()V

    sput-object v0, Landroid/net/ethernet/EthernetDevInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/net/ethernet/EthernetDevInfo;->dev_name:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/ethernet/EthernetDevInfo;->ipaddr:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/ethernet/EthernetDevInfo;->dns:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/ethernet/EthernetDevInfo;->route:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/ethernet/EthernetDevInfo;->netmask:Ljava/lang/String;

    const-string v0, "dhcp"

    iput-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->mode:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/ethernet/EthernetDevInfo;->proxy:Landroid/net/ProxyProperties;

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
    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getDnsAddr()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->dns:Ljava/lang/String;

    return-object v0
.end method

.method public getIfName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->dev_name:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->ipaddr:Ljava/lang/String;

    return-object v0
.end method

.method public getNetMask()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->netmask:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyExclusionList()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->proxy:Landroid/net/ProxyProperties;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->proxy:Landroid/net/ProxyProperties;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->proxy:Landroid/net/ProxyProperties;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->proxy:Landroid/net/ProxyProperties;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProxyPort()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->proxy:Landroid/net/ProxyProperties;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->proxy:Landroid/net/ProxyProperties;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getPort()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1f90

    goto :goto_0
.end method

.method public getRouteAddr()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->route:Ljava/lang/String;

    return-object v0
.end method

.method public hasProxy()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->proxy:Landroid/net/ProxyProperties;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->proxy:Landroid/net/ProxyProperties;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->proxy:Landroid/net/ProxyProperties;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    iput-object p1, p0, Landroid/net/ethernet/EthernetDevInfo;->mode:Ljava/lang/String;

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
    iput-object p1, p0, Landroid/net/ethernet/EthernetDevInfo;->dns:Ljava/lang/String;

    return-void
.end method

.method public setIfName(Ljava/lang/String;)V
    .locals 0
    .parameter "ifname"

    .prologue
    iput-object p1, p0, Landroid/net/ethernet/EthernetDevInfo;->dev_name:Ljava/lang/String;

    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "ip"

    .prologue
    iput-object p1, p0, Landroid/net/ethernet/EthernetDevInfo;->ipaddr:Ljava/lang/String;

    return-void
.end method

.method public setNetMask(Ljava/lang/String;)V
    .locals 0
    .parameter "ip"

    .prologue
    iput-object p1, p0, Landroid/net/ethernet/EthernetDevInfo;->netmask:Ljava/lang/String;

    return-void
.end method

.method public setProxy(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "port"
    .parameter "exclusionlist"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/net/ProxyProperties;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->proxy:Landroid/net/ProxyProperties;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->proxy:Landroid/net/ProxyProperties;

    goto :goto_0
.end method

.method public setRouteAddr(Ljava/lang/String;)V
    .locals 0
    .parameter "route"

    .prologue
    iput-object p1, p0, Landroid/net/ethernet/EthernetDevInfo;->route:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->dev_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->ipaddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->netmask:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->route:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->dns:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->mode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->proxy:Landroid/net/ProxyProperties;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
