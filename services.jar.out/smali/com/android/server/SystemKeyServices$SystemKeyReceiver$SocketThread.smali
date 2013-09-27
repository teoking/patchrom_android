.class Lcom/android/server/SystemKeyServices$SystemKeyReceiver$SocketThread;
.super Ljava/lang/Thread;
.source "SystemKeyServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemKeyServices$SystemKeyReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SocketThread"
.end annotation


# instance fields
.field mKeyInfo:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/server/SystemKeyServices$SystemKeyReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/SystemKeyServices$SystemKeyReceiver;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "key"

    .prologue
    iput-object p1, p0, Lcom/android/server/SystemKeyServices$SystemKeyReceiver$SocketThread;->this$1:Lcom/android/server/SystemKeyServices$SystemKeyReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SystemKeyServices$SystemKeyReceiver$SocketThread;->mKeyInfo:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/SystemKeyServices$SystemKeyReceiver$SocketThread;->mKeyInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/server/SystemKeyServices$SystemKeyReceiver$SocketThread;->mKeyInfo:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/SystemKeyServices$SystemKeyReceiver$SocketThread;->mKeyInfo:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/SystemKeyServices$SystemKeyReceiver$SocketThread;->socketWrite(Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method socketWrite(Ljava/lang/String;)V
    .locals 15
    .parameter "key"

    .prologue
    const/16 v0, 0x400

    .local v0, KEY_BYTES:I
    const/4 v7, 0x0

    .local v7, mSocket:Landroid/net/LocalSocket;
    new-instance v7, Landroid/net/LocalSocket;

    .end local v7           #mSocket:Landroid/net/LocalSocket;
    invoke-direct {v7}, Landroid/net/LocalSocket;-><init>()V

    .restart local v7       #mSocket:Landroid/net/LocalSocket;
    new-instance v4, Landroid/net/LocalSocketAddress;

    const-string v12, "sys_write"

    sget-object v13, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v4, v12, v13}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .local v4, localAddress:Landroid/net/LocalSocketAddress;
    :try_start_0
    invoke-virtual {v7, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    invoke-virtual {v7}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .local v6, mOut:Ljava/io/OutputStream;
    invoke-virtual {v7}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .local v5, mIn:Ljava/io/InputStream;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    new-array v11, v0, [B

    .local v11, socket_buf:[B
    const/4 v3, 0x0

    .local v3, keyInfo:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, result_key_Info:Ljava/lang/String;
    const/4 v8, -0x1

    .local v8, readNum:I
    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-lez v8, :cond_1

    new-instance v3, Ljava/lang/String;

    .end local v3           #keyInfo:Ljava/lang/String;
    invoke-direct {v3, v11}, Ljava/lang/String;-><init>([B)V

    .restart local v3       #keyInfo:Ljava/lang/String;
    const/4 v12, 0x0

    invoke-virtual {v3, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v12, "#!!#success"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    iget-object v12, p0, Lcom/android/server/SystemKeyServices$SystemKeyReceiver$SocketThread;->this$1:Lcom/android/server/SystemKeyServices$SystemKeyReceiver;

    iget-object v12, v12, Lcom/android/server/SystemKeyServices$SystemKeyReceiver;->this$0:Lcom/android/server/SystemKeyServices;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/android/server/SystemKeyServices;->getRealString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/android/server/SystemKeyServices;->access$100(Lcom/android/server/SystemKeyServices;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, realString:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/SystemKeyServices$SystemKeyReceiver$SocketThread;->this$1:Lcom/android/server/SystemKeyServices$SystemKeyReceiver;

    iget-object v12, v12, Lcom/android/server/SystemKeyServices$SystemKeyReceiver;->this$0:Lcom/android/server/SystemKeyServices;

    #calls: Lcom/android/server/SystemKeyServices;->hexStringToByte(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v12, v9}, Lcom/android/server/SystemKeyServices;->access$200(Lcom/android/server/SystemKeyServices;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .end local v9           #realString:Ljava/lang/String;
    :goto_0
    const-string v12, "SystemKeyServices"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "get the key info is : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, i:Landroid/content/Intent;
    const-string v12, "aml.key.info"

    invoke-virtual {v2, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "AML_KEY_INFO"

    invoke-virtual {v2, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v12, p0, Lcom/android/server/SystemKeyServices$SystemKeyReceiver$SocketThread;->this$1:Lcom/android/server/SystemKeyServices$SystemKeyReceiver;

    iget-object v12, v12, Lcom/android/server/SystemKeyServices$SystemKeyReceiver;->this$0:Lcom/android/server/SystemKeyServices;

    iget-object v12, v12, Lcom/android/server/SystemKeyServices;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v7}, Landroid/net/LocalSocket;->close()V

    .end local v2           #i:Landroid/content/Intent;
    .end local v3           #keyInfo:Ljava/lang/String;
    .end local v5           #mIn:Ljava/io/InputStream;
    .end local v6           #mOut:Ljava/io/OutputStream;
    .end local v8           #readNum:I
    .end local v10           #result_key_Info:Ljava/lang/String;
    .end local v11           #socket_buf:[B
    :goto_2
    return-void

    .restart local v3       #keyInfo:Ljava/lang/String;
    .restart local v5       #mIn:Ljava/io/InputStream;
    .restart local v6       #mOut:Ljava/io/OutputStream;
    .restart local v8       #readNum:I
    .restart local v10       #result_key_Info:Ljava/lang/String;
    .restart local v11       #socket_buf:[B
    :cond_0
    const-string v10, "SUCCESS!"

    goto :goto_0

    :cond_1
    const-string v10, "GET_ERROR"

    const-string v12, "SystemKeyServices"

    const-string v13, "Something wrong, please check your input !"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v3           #keyInfo:Ljava/lang/String;
    .end local v5           #mIn:Ljava/io/InputStream;
    .end local v6           #mOut:Ljava/io/OutputStream;
    .end local v8           #readNum:I
    .end local v10           #result_key_Info:Ljava/lang/String;
    .end local v11           #socket_buf:[B
    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
