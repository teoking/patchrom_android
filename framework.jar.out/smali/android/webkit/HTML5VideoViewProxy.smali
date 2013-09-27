.class Landroid/webkit/HTML5VideoViewProxy;
.super Landroid/os/Handler;
.source "HTML5VideoViewProxy.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;,
        Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;,
        Landroid/webkit/HTML5VideoViewProxy$ParsedExampleDataSet;,
        Landroid/webkit/HTML5VideoViewProxy$LETVPaserHandler;
    }
.end annotation


# static fields
.field private static final BUFFERING_END:I = 0x6a

.field private static final BUFFERING_START:I = 0x69

.field private static final ENDED:I = 0xc9

.field private static final ENTER_FULLSCREEN:I = 0x6b

.field private static final ERROR:I = 0x67

.field private static final LATER_PLAY:I = 0x63

.field private static final LETVACTION:Ljava/lang/String; = "action"

.field private static final LETVCDNURL:Ljava/lang/String; = "subgslb"

.field private static final LETVDUEACTION:Ljava/lang/String; = "duration"

.field private static final LETVFILESIZE:Ljava/lang/String; = "fileSize"

.field private static final LETVFILMNAME:Ljava/lang/String; = "name"

.field private static final LETVMEDIATYPE:Ljava/lang/String; = "mediaType"

.field private static final LETVMMSID:Ljava/lang/String; = "mmsid"

.field private static final LETVNEWURL:Ljava/lang/String; = "newurl"

.field private static final LETVPLAYCOUNT:Ljava/lang/String; = "series"

.field private static final LETVSTREAMTYPE:Ljava/lang/String; = "stream"

.field private static final LETVTIMEOUT:Ljava/lang/String; = "timeout"

.field private static final LETVTOTALCOUNT:Ljava/lang/String; = "total"

.field private static final LOAD_DEFAULT_POSTER:I = 0x68

.field private static final LOGTAG:Ljava/lang/String; = "HTML5VideoViewProxy"

.field private static final PAUSE:I = 0x66

.field private static final PAUSED:I = 0xcb

.field private static final PLAY:I = 0x64

.field private static final PLAY_NEXT_URL:I = -0xb

.field private static final POSTER_FETCHED:I = 0xca

.field private static final PREPARED:I = 0xc8

.field private static final RESTORESTATE:I = 0xcd

.field private static final SEEK:I = 0x65

.field private static final STOPFULLSCREEN:I = 0xcc

.field private static final TIMEUPDATE:I = 0x12c

.field private static final UPDATE_LAYOUT:I = 0x6c

.field private static mDuration:Ljava/lang/String;

.field private static mEncType:Ljava/lang/String;

.field private static mFilesize:Ljava/lang/String;

.field private static mFilmname:Ljava/lang/String;

.field private static mFirstCDNurl:Ljava/lang/String;

.field private static mFirsttimeout:I

.field private static mLetvAction:Ljava/lang/String;

.field private static mLetvNewurl:Ljava/lang/String;

.field private static mMediaType:Ljava/lang/String;

.field private static mMmsid:Ljava/lang/String;

.field private static mNextxmlurl:Ljava/lang/String;

.field private static mPageUrl:Ljava/lang/String;

.field private static mPlatfromType:Ljava/lang/String;

.field private static mSecondCDNurl:Ljava/lang/String;

.field private static mSecondtimeout:I

.field private static mShouldwaitplay:Z

.field private static mStreamType:Ljava/lang/String;

.field private static mVideolayerID:I

.field private static mplaycount:I

.field private static mtotalcount:I


# instance fields
.field mNativePointer:I

.field private mPoster:Landroid/graphics/Bitmap;

.field private mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

.field private mSeekPosition:I

.field private mWebCoreHandler:Landroid/os/Handler;

.field private mWebView:Landroid/webkit/WebViewClassic;

.field mletvistrueend:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "box"

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy;->mPlatfromType:Ljava/lang/String;

    const-string v0, "base64"

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy;->mEncType:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy;->mLetvNewurl:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy;->mFirstCDNurl:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy;->mSecondCDNurl:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy;->mFilmname:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/HTML5VideoViewProxy;->mShouldwaitplay:Z

    return-void
.end method

.method private constructor <init>(Landroid/webkit/WebViewClassic;I)V
    .locals 1
    .parameter "webView"
    .parameter "nativePtr"

    .prologue
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mletvistrueend:Z

    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p0}, Landroid/webkit/WebViewClassic;->setHTML5VideoViewProxy(Landroid/webkit/HTML5VideoViewProxy;)V

    iput p2, p0, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy;->createWebCoreHandler()V

    return-void
.end method

.method private Playlresurl(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;II)V
    .locals 16
    .parameter "RealplayUrl"
    .parameter "proxy"
    .parameter "videoLayerId"
    .parameter "position"

    .prologue
    move-object/from16 v10, p1

    .local v10, url:Ljava/lang/String;
    const-string v13, "lres"

    const-string v14, "http"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual/range {p0 .. p1}, Landroid/webkit/HTML5VideoViewProxy;->geturldata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, xml:Ljava/lang/String;
    const-string v13, "\r"

    const-string v14, ""

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/webkit/HTML5VideoViewProxy;->regexReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "HTML5VideoViewProxy  xml string-------:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, v11}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .local v5, read:Ljava/io/StringReader;
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .local v6, source:Lorg/xml/sax/InputSource;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v8

    .local v8, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v8}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v7

    .local v7, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v12

    .local v12, xr:Lorg/xml/sax/XMLReader;
    new-instance v3, Landroid/webkit/HTML5VideoViewProxy$LETVPaserHandler;

    invoke-direct {v3}, Landroid/webkit/HTML5VideoViewProxy$LETVPaserHandler;-><init>()V

    .local v3, myLETVPaserHandler:Landroid/webkit/HTML5VideoViewProxy$LETVPaserHandler;
    invoke-interface {v12, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {v12, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    sget-object v13, Landroid/webkit/HTML5VideoViewProxy;->mLetvNewurl:Ljava/lang/String;

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    sget-object v13, Landroid/webkit/HTML5VideoViewProxy;->mLetvNewurl:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v13, v14}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, ppurl:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "http://127.0.0.1:6990/play?enc="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Landroid/webkit/HTML5VideoViewProxy;->mEncType:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&url="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "HTML5VideoViewProxy----- play normal url-----!"

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .end local v4           #ppurl:Ljava/lang/String;
    :cond_0
    sget v13, Landroid/webkit/HTML5VideoViewProxy;->mtotalcount:I

    sget v14, Landroid/webkit/HTML5VideoViewProxy;->mplaycount:I

    if-le v13, v14, :cond_1

    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v13}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/webkit/WebView;->setShouldGobackOnepage(Z)V

    const-string v13, "series="

    invoke-virtual {v10, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .local v9, temindex:I
    const/4 v13, 0x0

    add-int/lit8 v14, v9, 0x7

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Landroid/webkit/HTML5VideoViewProxy;->mNextxmlurl:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Landroid/webkit/HTML5VideoViewProxy;->mNextxmlurl:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Landroid/webkit/HTML5VideoViewProxy;->mplaycount:I

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Landroid/webkit/HTML5VideoViewProxy;->mNextxmlurl:Ljava/lang/String;

    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "HTML5VideoViewProxy----- play mNextxmlurl-----!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Landroid/webkit/HTML5VideoViewProxy;->mNextxmlurl:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sput p3, Landroid/webkit/HTML5VideoViewProxy;->mVideolayerID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #myLETVPaserHandler:Landroid/webkit/HTML5VideoViewProxy$LETVPaserHandler;
    .end local v7           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v8           #spf:Ljavax/xml/parsers/SAXParserFactory;
    .end local v9           #temindex:I
    .end local v12           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    const-string v13, "lres"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    :goto_1
    return-void

    .restart local v3       #myLETVPaserHandler:Landroid/webkit/HTML5VideoViewProxy$LETVPaserHandler;
    .restart local v7       #sp:Ljavax/xml/parsers/SAXParser;
    .restart local v8       #spf:Ljavax/xml/parsers/SAXParserFactory;
    .restart local v12       #xr:Lorg/xml/sax/XMLReader;
    :cond_1
    const/4 v13, 0x0

    :try_start_1
    sput-object v13, Landroid/webkit/HTML5VideoViewProxy;->mNextxmlurl:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v3           #myLETVPaserHandler:Landroid/webkit/HTML5VideoViewProxy$LETVPaserHandler;
    .end local v7           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v8           #spf:Ljavax/xml/parsers/SAXParserFactory;
    .end local v12           #xr:Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "HTML5VideoViewProxy paser----------xml-----------erro "

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v13, "aaaaaaaaaaa"

    const-string v14, "WeatherQueryError"

    invoke-static {v13, v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const/16 v13, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .local v2, message:Landroid/os/Message;
    move/from16 v0, p4

    iput v0, v2, Landroid/os/Message;->arg1:I

    const/16 v13, 0x63

    iput v13, v2, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    sput-object p0, Landroid/webkit/HTML5VideoViewProxy;->mLetvAction:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    sput p0, Landroid/webkit/HTML5VideoViewProxy;->mtotalcount:I

    return p0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    sput-object p0, Landroid/webkit/HTML5VideoViewProxy;->mMediaType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    sput p0, Landroid/webkit/HTML5VideoViewProxy;->mplaycount:I

    return p0
.end method

.method static synthetic access$1202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    sput-object p0, Landroid/webkit/HTML5VideoViewProxy;->mDuration:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    sput-object p0, Landroid/webkit/HTML5VideoViewProxy;->mFilesize:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Landroid/graphics/SurfaceTexture;IIII)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/webkit/HTML5VideoViewProxy;->nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/webkit/HTML5VideoViewProxy;)Landroid/webkit/WebViewClassic;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy;->sendTimeupdate()V

    return-void
.end method

.method static synthetic access$1700(Landroid/webkit/HTML5VideoViewProxy;Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/HTML5VideoViewProxy;->Playlresurl(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;II)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy;->mFilmname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->doSetPoster(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    sput-object p0, Landroid/webkit/HTML5VideoViewProxy;->mFilmname:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400(Landroid/webkit/HTML5VideoViewProxy;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPrepared(IIII)V

    return-void
.end method

.method static synthetic access$2502(Landroid/webkit/HTML5VideoViewProxy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    return p1
.end method

.method static synthetic access$2600(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnEnded(I)V

    return-void
.end method

.method static synthetic access$2700(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPaused(I)V

    return-void
.end method

.method static synthetic access$2800(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPosterFetched(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$2900(Landroid/webkit/HTML5VideoViewProxy;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnTimeupdate(II)V

    return-void
.end method

.method static synthetic access$3000(Landroid/webkit/HTML5VideoViewProxy;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnStopFullscreen(II)V

    return-void
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    sput-object p0, Landroid/webkit/HTML5VideoViewProxy;->mStreamType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3100(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnRestoreState(I)V

    return-void
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    sput-object p0, Landroid/webkit/HTML5VideoViewProxy;->mMmsid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy;->mLetvNewurl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    sput-object p0, Landroid/webkit/HTML5VideoViewProxy;->mLetvNewurl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy;->mFirstCDNurl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    sput-object p0, Landroid/webkit/HTML5VideoViewProxy;->mFirstCDNurl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy;->mSecondCDNurl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    sput-object p0, Landroid/webkit/HTML5VideoViewProxy;->mSecondCDNurl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(I)I
    .locals 0
    .parameter "x0"

    .prologue
    sput p0, Landroid/webkit/HTML5VideoViewProxy;->mFirsttimeout:I

    return p0
.end method

.method static synthetic access$902(I)I
    .locals 0
    .parameter "x0"

    .prologue
    sput p0, Landroid/webkit/HTML5VideoViewProxy;->mSecondtimeout:I

    return p0
.end method

.method private createWebCoreHandler()V
    .locals 1

    .prologue
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$2;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoViewProxy$2;-><init>(Landroid/webkit/HTML5VideoViewProxy;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    return-void
.end method

.method private doSetPoster(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "poster"

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPoster:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xca

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static getInstance(Landroid/webkit/WebViewCore;I)Landroid/webkit/HTML5VideoViewProxy;
    .locals 2
    .parameter "webViewCore"
    .parameter "nativePtr"

    .prologue
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/webkit/HTML5VideoViewProxy;-><init>(Landroid/webkit/WebViewClassic;I)V

    return-object v0
.end method

.method private native nativeOnEnded(I)V
.end method

.method private native nativeOnPaused(I)V
.end method

.method private native nativeOnPosterFetched(Landroid/graphics/Bitmap;I)V
.end method

.method private native nativeOnPrepared(IIII)V
.end method

.method private native nativeOnRestoreState(I)V
.end method

.method private native nativeOnStopFullscreen(II)V
.end method

.method private native nativeOnTimeupdate(II)V
.end method

.method private static native nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIII)Z
.end method

.method private static resetallprop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, ""

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy;->mLetvAction:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy;->mLetvNewurl:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy;->mFirstCDNurl:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy;->mSecondCDNurl:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy;->mMmsid:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy;->mFilmname:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy;->mMediaType:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy;->mStreamType:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy;->mDuration:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy;->mFilesize:Ljava/lang/String;

    sput v1, Landroid/webkit/HTML5VideoViewProxy;->mFirsttimeout:I

    sput v1, Landroid/webkit/HTML5VideoViewProxy;->mSecondtimeout:I

    sput v1, Landroid/webkit/HTML5VideoViewProxy;->mtotalcount:I

    sput v1, Landroid/webkit/HTML5VideoViewProxy;->mplaycount:I

    return-void
.end method

.method private sendTimeupdate()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public changeforLETVurl(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;II)Ljava/lang/String;
    .locals 8
    .parameter "url"
    .parameter "proxy"
    .parameter "videoLayerId"
    .parameter "time"

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy;->resetallprop()V

    const-string v0, ""

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy;->mPageUrl:Ljava/lang/String;

    move-object v6, p1

    .local v6, RealplayUrl:Ljava/lang/String;
    const-string v0, "lres://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "lress://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p2, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setShouldGobackOnepage(Z)V

    sput-boolean v1, Landroid/webkit/HTML5VideoViewProxy;->mShouldwaitplay:Z

    iget-object v0, p2, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy;->mPageUrl:Ljava/lang/String;

    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/webkit/HTML5VideoViewProxy$1;-><init>(Landroid/webkit/HTML5VideoViewProxy;Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;II)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    :goto_0
    return-object v6

    :cond_1
    iget-object v0, p2, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    iget-object v1, p2, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "letv.com/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    iget-object v0, p2, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setShouldGobackOnepage(Z)V

    goto :goto_0
.end method

.method public dispatchOnEnded()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchOnPaused()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcb

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchOnRestoreState()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcd

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchOnStopFullScreen(Z)V
    .locals 3
    .parameter "stillPlaying"

    .prologue
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcc

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enterFullScreenVideo(ILjava/lang/String;)V
    .locals 2
    .parameter "layerId"
    .parameter "url"

    .prologue
    const/16 v1, 0x6b

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, message:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public enterFullscreenForVideoLayer(Ljava/lang/String;I)V
    .locals 2
    .parameter "url"
    .parameter "videoLayerID"

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x6b

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, message:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public exitFullScreenVideo()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-static {p0, v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->exitFullScreenVideo(Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getWebView()Landroid/webkit/WebViewClassic;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    return-object v0
.end method

.method public geturldata(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "url"

    .prologue
    const-string v0, ""

    .local v0, LTVtempString:Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .local v4, httpclient:Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .local v3, get:Lorg/apache/http/client/methods/HttpGet;
    const-string v6, "Content-Type"

    const-string v7, "application/xml"

    invoke-virtual {v3, v6, v7}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "User-Agent"

    const-string v7, "Mozilla/5.0  (LETVSMART; U;iPad; en-us; Nexus One Build/FRF91) AppleWebKit/534.1  (KHTML, like Gecko) Version/4.0 Safari/534.1"

    invoke-virtual {v3, v6, v7}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .local v1, code:I
    const/16 v6, 0xc8

    if-ne v1, v6, :cond_0

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v1           #code:I
    .end local v3           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string v1, "HTML5VideoViewProxy"

    const-string v2, "handleMessage(PLAY)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v3

    .local v3, client:Landroid/webkit/WebChromeClient;
    iget v4, p1, Landroid/os/Message;->arg1:I

    .local v4, videoLayerID:I
    iget v1, p1, Landroid/os/Message;->arg2:I

    const/16 v2, 0x63

    if-ne v1, v2, :cond_1

    sget-object v1, Landroid/webkit/HTML5VideoViewProxy;->mPageUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/webkit/HTML5VideoViewProxy;->mPageUrl:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "HTML5VideoViewProxy"

    const-string v2, "handleMessage(PLAY)---failed: not the same page-!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_0

    iget v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    invoke-virtual {p0, v0, p0, v4, v1}, Landroid/webkit/HTML5VideoViewProxy;->changeforLETVurl(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;II)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Landroid/webkit/HTML5VideoViewProxy;->mShouldwaitplay:Z

    if-eqz v1, :cond_2

    const-string v1, "HTML5VideoViewProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "later play--------------------------------------( "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")!"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v6, Landroid/webkit/HTML5VideoViewProxy;->mShouldwaitplay:Z

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->play(Ljava/lang/String;ILandroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebChromeClient;ILandroid/webkit/WebViewClassic;)V

    goto :goto_0

    .end local v0           #url:Ljava/lang/String;
    .end local v3           #client:Landroid/webkit/WebChromeClient;
    .end local v4           #videoLayerID:I
    :sswitch_1
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    .local v11, bd:Landroid/os/Bundle;
    const-string v1, "x"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "y"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v5, "width"

    invoke-virtual {v11, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "height"

    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v1, v2, v5, v6}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->updateLayout(IIII)V

    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v11           #bd:Landroid/os/Bundle;
    :sswitch_2
    const-string v1, "HTML5VideoViewProxy"

    const-string v2, "handleMessage(ENTER_FULLSCREEN)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .restart local v0       #url:Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v3

    .restart local v3       #client:Landroid/webkit/WebChromeClient;
    iget v4, p1, Landroid/os/Message;->arg1:I

    .restart local v4       #videoLayerID:I
    if-eqz v3, :cond_0

    invoke-virtual {p0, v0, p0, v4, v6}, Landroid/webkit/HTML5VideoViewProxy;->changeforLETVurl(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;II)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Landroid/webkit/HTML5VideoViewProxy;->mShouldwaitplay:Z

    if-eqz v1, :cond_3

    const-string v1, "HTML5VideoViewProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "later enterFullScreenVideo--------------------------------------( "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")!"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v6, Landroid/webkit/HTML5VideoViewProxy;->mShouldwaitplay:Z

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-static {v4, v0, p0, v1}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->enterFullScreenVideo(ILjava/lang/String;Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .end local v0           #url:Ljava/lang/String;
    .end local v3           #client:Landroid/webkit/WebChromeClient;
    .end local v4           #videoLayerID:I
    :sswitch_3
    const-string v1, "HTML5VideoViewProxy"

    const-string v2, "handleMessage(SEEK)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    .local v12, time:Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    iget v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    invoke-static {v1, p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->seek(ILandroid/webkit/HTML5VideoViewProxy;)V

    goto/16 :goto_0

    .end local v12           #time:Ljava/lang/Integer;
    :sswitch_4
    const-string v1, "HTML5VideoViewProxy"

    const-string v2, "handleMessage(PAUSE)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->pause(Landroid/webkit/HTML5VideoViewProxy;)V

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "HTML5VideoViewProxy"

    const-string v2, "handleMessage(ENDED)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v3

    .restart local v3       #client:Landroid/webkit/WebChromeClient;
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_4

    invoke-static {v5}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$1802(Z)Z

    :cond_4
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->end()V

    if-eqz v3, :cond_0

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v13

    .local v13, webviewurl:Ljava/lang/String;
    sget-object v1, Landroid/webkit/HTML5VideoViewProxy;->mNextxmlurl:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getDefaultfocusEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v13, :cond_5

    const-string v1, "www.videozaixian.com"

    invoke-virtual {v13, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v7, v1, :cond_5

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebView;->setShouldGobackOnepage(Z)V

    invoke-virtual {v3}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    invoke-static {v6}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setVideoSelfEnded(Z)V

    sget-object v5, Landroid/webkit/HTML5VideoViewProxy;->mNextxmlurl:Ljava/lang/String;

    const/16 v6, -0xb

    sget v9, Landroid/webkit/HTML5VideoViewProxy;->mVideolayerID:I

    iget-object v10, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    move-object v7, p0

    move-object v8, v3

    invoke-static/range {v5 .. v10}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->play(Ljava/lang/String;ILandroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebChromeClient;ILandroid/webkit/WebViewClassic;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getLetvapkmoveFocus()I

    move-result v1

    if-gez v1, :cond_6

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getDefaultfocusEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v13, :cond_7

    const-string v1, "www.videozaixian.com"

    invoke-virtual {v13, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v7, v1, :cond_7

    :cond_6
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setShouldGobackOnepage(Z)V

    :cond_7
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getLetvapkmoveFocus()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_8

    sget-object v1, Landroid/webkit/HTML5VideoViewProxy;->mNextxmlurl:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebView;->setShouldGobackOnepage(Z)V

    :cond_8
    invoke-virtual {v3}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto/16 :goto_0

    .end local v3           #client:Landroid/webkit/WebChromeClient;
    .end local v13           #webviewurl:Ljava/lang/String;
    :sswitch_6
    const-string v1, "HTML5VideoViewProxy"

    const-string v2, "handleMessage(ERROR)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v3

    .restart local v3       #client:Landroid/webkit/WebChromeClient;
    if-eqz v3, :cond_0

    sget-object v1, Landroid/webkit/HTML5VideoViewProxy;->mNextxmlurl:Ljava/lang/String;

    if-nez v1, :cond_9

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getLetvapkmoveFocus()I

    move-result v1

    if-ltz v1, :cond_a

    :cond_9
    const/4 v1, 0x0

    sput-object v1, Landroid/webkit/HTML5VideoViewProxy;->mNextxmlurl:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setShouldGobackOnepage(Z)V

    :cond_a
    invoke-virtual {v3}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto/16 :goto_0

    .end local v3           #client:Landroid/webkit/WebChromeClient;
    :sswitch_7
    const-string v1, "HTML5VideoViewProxy"

    const-string v2, "handleMessage(LOAD_DEFAULT_POSTER)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v3

    .restart local v3       #client:Landroid/webkit/WebChromeClient;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->doSetPoster(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .end local v3           #client:Landroid/webkit/WebChromeClient;
    :sswitch_8
    const-string v1, "HTML5VideoViewProxy"

    const-string v2, "handleMessage(TIMEUPDATE)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isPlaying(Landroid/webkit/HTML5VideoViewProxy;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy;->sendTimeupdate()V

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "HTML5VideoViewProxy"

    const-string v2, "handleMessage(BUFFERING_START)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #calls: Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V
    invoke-static {v5}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$1900(Z)V

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "HTML5VideoViewProxy"

    const-string v2, "handleMessage(BUFFERING_END)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #calls: Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V
    invoke-static {v6}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$1900(Z)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_6
        0x68 -> :sswitch_7
        0x69 -> :sswitch_9
        0x6a -> :sswitch_a
        0x6b -> :sswitch_2
        0x6c -> :sswitch_1
        0xc9 -> :sswitch_5
        0x12c -> :sswitch_8
    .end sparse-switch
.end method

.method public layoutUpdate(IIII)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v2, 0x6c

    invoke-virtual {p0, v2}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, message:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, bd:Landroid/os/Bundle;
    const-string v2, "x"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "y"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "width"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "height"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    const-string v2, "HTML5VideoViewProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Layout upadte to:x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "y"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "w"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "h"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public loadPoster(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    if-nez p1, :cond_0

    const/16 v1, 0x68

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .end local v0           #message:Landroid/os/Message;
    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->cancelAndReleaseQueue()V

    :cond_1
    new-instance v1, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-direct {v1, p1, p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;-><init>(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V

    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->start()V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    const/16 v0, 0xc9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .parameter "surfaceTexture"

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->invalidate()V

    return-void
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_1

    const/16 v0, 0x69

    invoke-virtual {p0, v0, p2, p3}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_0

    const/16 v0, 0x6a

    invoke-virtual {p0, v0, p2, p3}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter "mp"

    .prologue
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->onPrepared()V

    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "dur"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "width"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "height"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onTimeupdate()V
    .locals 1

    .prologue
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public pauseAndDispatch()V
    .locals 0

    .prologue
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->pauseAndDispatch()V

    return-void
.end method

.method public play(Ljava/lang/String;II)V
    .locals 2
    .parameter "url"
    .parameter "position"
    .parameter "videoLayerID"

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-lez p2, :cond_1

    invoke-virtual {p0, p2}, Landroid/webkit/HTML5VideoViewProxy;->seek(I)V

    :cond_1
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, message:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public regexReplace(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .local v1, p:Ljava/util/regex/Pattern;
    const/4 v0, 0x0

    .local v0, m:Ljava/util/regex/Matcher;
    const/4 v3, 0x0

    .local v3, value:Ljava/lang/String;
    const-string v4, "\n\\s*<"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    move-object v2, p1

    .local v2, temp:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "<"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public seek(I)V
    .locals 2
    .parameter "time"

    .prologue
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, message:Landroid/os/Message;
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setBaseLayer(I)V
    .locals 0
    .parameter "layer"

    .prologue
    invoke-static {p1}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setBaseLayer(I)V

    return-void
.end method

.method public teardown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->cancelAndReleaseQueue()V

    :cond_0
    iput v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    const-string v0, "media.html5videowin.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->reset()V

    :cond_1
    return-void
.end method
