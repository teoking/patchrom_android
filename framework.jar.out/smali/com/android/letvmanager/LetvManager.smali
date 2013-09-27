.class public Lcom/android/letvmanager/LetvManager;
.super Ljava/lang/Object;
.source "LetvManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LetvManager"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "letvmanager_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/letvmanager/LetvManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private final native _clearParams()Z
.end method

.method private final native _delParam(Ljava/lang/String;)Z
.end method

.method private final native _getDevice(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private final native _getMacScanner()Ljava/lang/String;
.end method

.method private final native _getParam(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private final native _installMisc(Ljava/lang/String;)Z
.end method

.method private final native _isRunReportLog()Z
.end method

.method private final native _keyInput(I)Z
.end method

.method private final native _mouseLeftClick()Z
.end method

.method private final native _mouseMiddleClick()Z
.end method

.method private final native _mouseMove(II)Z
.end method

.method private final native _mouseMoveTimes(III)Z
.end method

.method private final native _mouseRightClick()Z
.end method

.method private final native _mouseWheel(I)Z
.end method

.method private final native _onReportLog(Ljava/lang/String;)Z
.end method

.method private final native _saveParams()Z
.end method

.method private final native _setDevice(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private final native _setParam(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private final native _startAdProc()Z
.end method

.method private final native _startMacScanner()Z
.end method

.method private final native _startReportLog()Z
.end method

.method private final native _startResIssued()Z
.end method

.method private final native _stopAdProc()Z
.end method

.method private final native _stopMacScanner()Z
.end method

.method private final native _stopReportLog()Z
.end method

.method private final native _stopResIssued()Z
.end method

.method private final native native_printMsg(Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method public clearParams()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/letvmanager/LetvManager;->_clearParams()Z

    move-result v0

    return v0
.end method

.method public delParam(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/letvmanager/LetvManager;->_delParam(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDevice(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/letvmanager/LetvManager;->_getDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacScanner()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/letvmanager/LetvManager;->_getMacScanner()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/letvmanager/LetvManager;->_getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public installMisc(Ljava/lang/String;)Z
    .locals 1
    .parameter "msg"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/letvmanager/LetvManager;->_installMisc(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRunReportLog()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/letvmanager/LetvManager;->_isRunReportLog()Z

    move-result v0

    return v0
.end method

.method public keyInput(I)Z
    .locals 1
    .parameter "kVal"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/letvmanager/LetvManager;->_keyInput(I)Z

    move-result v0

    return v0
.end method

.method public mouseLeftClick()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/letvmanager/LetvManager;->_mouseLeftClick()Z

    move-result v0

    return v0
.end method

.method public mouseMiddleClick()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/letvmanager/LetvManager;->_mouseMiddleClick()Z

    move-result v0

    return v0
.end method

.method public mouseMove(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/letvmanager/LetvManager;->_mouseMove(II)Z

    move-result v0

    return v0
.end method

.method public mouseMoveTimes(III)Z
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "times"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/letvmanager/LetvManager;->_mouseMove(II)Z

    move-result v0

    return v0
.end method

.method public mouseRightClick()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/letvmanager/LetvManager;->_mouseRightClick()Z

    move-result v0

    return v0
.end method

.method public mouseWheelDown()Z
    .locals 1

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/letvmanager/LetvManager;->_mouseWheel(I)Z

    move-result v0

    return v0
.end method

.method public mouseWheelUp()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/letvmanager/LetvManager;->_mouseWheel(I)Z

    move-result v0

    return v0
.end method

.method public onReportLog(Ljava/lang/String;)Z
    .locals 1
    .parameter "msg"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/letvmanager/LetvManager;->_onReportLog(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public printMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "msg"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/letvmanager/LetvManager;->native_printMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveParams()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/letvmanager/LetvManager;->_saveParams()Z

    move-result v0

    return v0
.end method

.method public setDevice(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/letvmanager/LetvManager;->_setDevice(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/letvmanager/LetvManager;->_setParam(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startAdProc()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/letvmanager/LetvManager;->_startAdProc()Z

    move-result v0

    return v0
.end method

.method public startMacScanner()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/letvmanager/LetvManager;->_startMacScanner()Z

    move-result v0

    return v0
.end method

.method public startReportLog()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/letvmanager/LetvManager;->_startReportLog()Z

    move-result v0

    return v0
.end method

.method public startResIssued()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/letvmanager/LetvManager;->_startResIssued()Z

    move-result v0

    return v0
.end method

.method public stopAdProc()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/letvmanager/LetvManager;->_stopAdProc()Z

    move-result v0

    return v0
.end method

.method public stopMacScanner()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/letvmanager/LetvManager;->_stopMacScanner()Z

    move-result v0

    return v0
.end method

.method public stopReportLog()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/letvmanager/LetvManager;->_stopReportLog()Z

    move-result v0

    return v0
.end method

.method public stopResIssued()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/letvmanager/LetvManager;->_stopResIssued()Z

    move-result v0

    return v0
.end method
