.class public Lcom/android/letvmanager/TransModule;
.super Ljava/lang/Object;
.source "TransModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/letvmanager/TransModule$PlayingState;,
        Lcom/android/letvmanager/TransModule$PlayingStateHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TransModule"


# instance fields
.field private mPort:Ljava/lang/String;

.field private realPlayUrl:Ljava/lang/String;

.field state:Lcom/android/letvmanager/TransModule$PlayingState;

.field private stateUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "letvmanager_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/letvmanager/TransModule;->state:Lcom/android/letvmanager/TransModule$PlayingState;

    return-void
.end method

.method private final native _getPort()Ljava/lang/String;
.end method

.method private final native _getVersion()Ljava/lang/String;
.end method

.method private static downFile(Ljava/lang/String;)[B
    .locals 9
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .local v0, Url:Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .local v2, conn:Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .local v4, is:Ljava/io/InputStream;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v6, out:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v3

    .local v3, fileSize:I
    if-gtz v3, :cond_0

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "xml filesize<0"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    if-nez v4, :cond_1

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "input stream is null"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    const/4 v5, 0x0

    .local v5, len:I
    const/16 v7, 0x400

    new-array v1, v7, [B

    .local v1, buf:[B
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    return-object v7
.end method

.method private final native native_printMsg(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private parsePlayingState(Ljava/lang/String;)Lcom/android/letvmanager/TransModule$PlayingState;
    .locals 9
    .parameter "path"

    .prologue
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .local v2, factory:Ljavax/xml/parsers/SAXParserFactory;
    const/4 v5, 0x0

    .local v5, state:Lcom/android/letvmanager/TransModule$PlayingState;
    :try_start_0
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .local v4, reader:Lorg/xml/sax/XMLReader;
    new-instance v6, Lcom/android/letvmanager/TransModule$PlayingState;

    invoke-direct {v6, p0}, Lcom/android/letvmanager/TransModule$PlayingState;-><init>(Lcom/android/letvmanager/TransModule;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #state:Lcom/android/letvmanager/TransModule$PlayingState;
    .local v6, state:Lcom/android/letvmanager/TransModule$PlayingState;
    :try_start_1
    new-instance v7, Lcom/android/letvmanager/TransModule$PlayingStateHandler;

    invoke-direct {v7, p0, v6}, Lcom/android/letvmanager/TransModule$PlayingStateHandler;-><init>(Lcom/android/letvmanager/TransModule;Lcom/android/letvmanager/TransModule$PlayingState;)V

    invoke-interface {v4, v7}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    const/4 v0, 0x0

    .local v0, buf:[B
    invoke-static {p1}, Lcom/android/letvmanager/TransModule;->downFile(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v3, is:Ljava/io/InputStream;
    new-instance v7, Lorg/xml/sax/InputSource;

    invoke-direct {v7, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v4, v7}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    .end local v0           #buf:[B
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #reader:Lorg/xml/sax/XMLReader;
    .end local v6           #state:Lcom/android/letvmanager/TransModule$PlayingState;
    .restart local v5       #state:Lcom/android/letvmanager/TransModule$PlayingState;
    :goto_0
    return-object v5

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    :goto_1
    const-string v7, "TransModule"

    const-string v8, "parsePlayingState() failed!"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #state:Lcom/android/letvmanager/TransModule$PlayingState;
    .restart local v4       #reader:Lorg/xml/sax/XMLReader;
    .restart local v6       #state:Lcom/android/letvmanager/TransModule$PlayingState;
    :catch_1
    move-exception v1

    move-object v5, v6

    .end local v6           #state:Lcom/android/letvmanager/TransModule$PlayingState;
    .restart local v5       #state:Lcom/android/letvmanager/TransModule$PlayingState;
    goto :goto_1
.end method


# virtual methods
.method public IsOK()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v4, 0x3

    if-ge v2, v4, :cond_0

    const-string v4, "TransModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsOK "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v3, Ljava/net/URL;

    const-string v4, "http://127.0.0.1:6990/state/ok"

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .local v3, url:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .local v0, conn:Ljava/net/HttpURLConnection;
    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    .end local v0           #conn:Ljava/net/HttpURLConnection;
    .end local v3           #url:Ljava/net/URL;
    :goto_1
    return v4

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v4, "TransModule"

    const-string v5, "IsOK: connect failed"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getDownloadRate()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letvmanager/TransModule;->stateUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/letvmanager/TransModule;->state:Lcom/android/letvmanager/TransModule$PlayingState;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/letvmanager/TransModule;->refreshState()V

    iget-object v0, p0, Lcom/android/letvmanager/TransModule;->state:Lcom/android/letvmanager/TransModule$PlayingState;

    invoke-virtual {v0}, Lcom/android/letvmanager/TransModule$PlayingState;->getDownloadRate()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/letvmanager/TransModule;->stateUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "0"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/letvmanager/TransModule;->state:Lcom/android/letvmanager/TransModule$PlayingState;

    invoke-virtual {v0}, Lcom/android/letvmanager/TransModule$PlayingState;->getDownloadRate()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPlayUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "oriUrl"

    .prologue
    invoke-virtual {p0}, Lcom/android/letvmanager/TransModule;->getPort()Ljava/lang/String;

    move-result-object v1

    .local v1, port:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, encUrl:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://127.0.0.1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/play?type=box&enc=base64&url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/letvmanager/TransModule;->realPlayUrl:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://127.0.0.1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/state/play?type=box&enc=base64&url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&format=xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/letvmanager/TransModule;->stateUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/letvmanager/TransModule;->realPlayUrl:Ljava/lang/String;

    return-object v2
.end method

.method public getPort()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/letvmanager/TransModule;->_getPort()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/letvmanager/TransModule;->_getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "msg"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/letvmanager/TransModule;->native_printMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public refreshState()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letvmanager/TransModule;->stateUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/letvmanager/TransModule;->stateUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/letvmanager/TransModule;->parsePlayingState(Ljava/lang/String;)Lcom/android/letvmanager/TransModule$PlayingState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/letvmanager/TransModule;->state:Lcom/android/letvmanager/TransModule$PlayingState;

    :cond_0
    return-void
.end method

.method public setBufferSize(I)V
    .locals 10
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/letvmanager/TransModule;->getPort()Ljava/lang/String;

    move-result-object v4

    .local v4, port:Ljava/lang/String;
    move v3, p1

    .local v3, max_size:I
    add-int/lit8 v5, v3, -0x5

    .local v5, pre_download_size:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://127.0.0.1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/control/params?cache.max_size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "M&pre_download_size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "M"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, url:Ljava/lang/String;
    const-string v7, "TransModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setTransModuleBuffer:url is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .local v0, Url:Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .local v1, conn:Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .local v2, is:Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-void
.end method
