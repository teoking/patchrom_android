.class Lcom/android/letvmanager/TransModule$PlayingState;
.super Ljava/lang/Object;
.source "TransModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/letvmanager/TransModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlayingState"
.end annotation


# instance fields
.field private buffer_progress:Ljava/lang/String;

.field private buffered_bytes:Ljava/lang/String;

.field private download_rate:Ljava/lang/String;

.field private progress:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/letvmanager/TransModule;


# direct methods
.method constructor <init>(Lcom/android/letvmanager/TransModule;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/letvmanager/TransModule$PlayingState;->this$0:Lcom/android/letvmanager/TransModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBufferProgress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letvmanager/TransModule$PlayingState;->buffer_progress:Ljava/lang/String;

    return-object v0
.end method

.method public getBufferedBytes()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letvmanager/TransModule$PlayingState;->buffered_bytes:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadRate()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letvmanager/TransModule$PlayingState;->download_rate:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letvmanager/TransModule$PlayingState;->progress:Ljava/lang/String;

    return-object v0
.end method

.method public setBufferProgress(Ljava/lang/String;)V
    .locals 0
    .parameter "BufferProgress"

    .prologue
    iput-object p1, p0, Lcom/android/letvmanager/TransModule$PlayingState;->buffer_progress:Ljava/lang/String;

    return-void
.end method

.method public setBufferedBytes(Ljava/lang/String;)V
    .locals 0
    .parameter "BufferedBytes"

    .prologue
    iput-object p1, p0, Lcom/android/letvmanager/TransModule$PlayingState;->buffered_bytes:Ljava/lang/String;

    return-void
.end method

.method public setDownloadRate(Ljava/lang/String;)V
    .locals 0
    .parameter "DownloadRate"

    .prologue
    iput-object p1, p0, Lcom/android/letvmanager/TransModule$PlayingState;->download_rate:Ljava/lang/String;

    return-void
.end method

.method public setProgress(Ljava/lang/String;)V
    .locals 0
    .parameter "Progress"

    .prologue
    iput-object p1, p0, Lcom/android/letvmanager/TransModule$PlayingState;->progress:Ljava/lang/String;

    return-void
.end method
