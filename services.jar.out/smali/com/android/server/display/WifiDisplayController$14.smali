.class Lcom/android/server/display/WifiDisplayController$14;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->handleConnectionChanged(Landroid/net/NetworkInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 7
    .parameter "info"

    .prologue
    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v4

    if-ne v4, v6, :cond_2

    const-string v4, "WifiDisplayController"

    const-string v5, "WFD : I am GO"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, device:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .local v1, c:Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object v2, v1

    .end local v1           #c:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    if-eqz v2, :cond_1

    iget-object v4, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v5, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getControlPort()I

    move-result v5

    #setter for: Lcom/android/server/display/WifiDisplayController;->mWfdPort:I
    invoke-static {v4, v5}, Lcom/android/server/display/WifiDisplayController;->access$3102(Lcom/android/server/display/WifiDisplayController;I)I

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    #setter for: Lcom/android/server/display/WifiDisplayController;->mAutoStartWfd:Z
    invoke-static {v4, v6}, Lcom/android/server/display/WifiDisplayController;->access$102(Lcom/android/server/display/WifiDisplayController;Z)Z

    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    return-void

    .end local v2           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_2
    const-string v4, "WifiDisplayController"

    const-string v5, "WFD : I am GC"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, addr:Ljava/net/InetAddress;
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    .restart local v2       #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v2, :cond_1

    iget-object v4, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v4}, Lcom/android/server/display/WifiDisplayController;->access$3200(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v5, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getControlPort()I

    move-result v5

    #setter for: Lcom/android/server/display/WifiDisplayController;->mWfdPort:I
    invoke-static {v4, v5}, Lcom/android/server/display/WifiDisplayController;->access$3102(Lcom/android/server/display/WifiDisplayController;I)I

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v4}, Lcom/android/server/display/WifiDisplayController;->access$3200(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v4

    iget-object v0, v4, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mWfdPort:I
    invoke-static {v6}, Lcom/android/server/display/WifiDisplayController;->access$3100(Lcom/android/server/display/WifiDisplayController;)I

    move-result v6

    #calls: Lcom/android/server/display/WifiDisplayController;->connectToRtspServer(Ljava/lang/String;I)V
    invoke-static {v4, v5, v6}, Lcom/android/server/display/WifiDisplayController;->access$3300(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;I)V

    goto :goto_0
.end method
