.class Lcom/android/letvmanager/TransModule$PlayingStateHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "TransModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/letvmanager/TransModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlayingStateHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayingStateHandler"


# instance fields
.field private preTAG:Ljava/lang/String;

.field private state:Lcom/android/letvmanager/TransModule$PlayingState;

.field str:Ljava/lang/StringBuffer;

.field final synthetic this$0:Lcom/android/letvmanager/TransModule;


# direct methods
.method public constructor <init>(Lcom/android/letvmanager/TransModule;)V
    .locals 2
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/letvmanager/TransModule$PlayingStateHandler;->this$0:Lcom/android/letvmanager/TransModule;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/letvmanager/TransModule$PlayingStateHandler;->str:Ljava/lang/StringBuffer;

    return-void
.end method

.method public constructor <init>(Lcom/android/letvmanager/TransModule;Lcom/android/letvmanager/TransModule$PlayingState;)V
    .locals 2
    .parameter
    .parameter "data"

    .prologue
    iput-object p1, p0, Lcom/android/letvmanager/TransModule$PlayingStateHandler;->this$0:Lcom/android/letvmanager/TransModule;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/letvmanager/TransModule$PlayingStateHandler;->str:Ljava/lang/StringBuffer;

    iput-object p2, p0, Lcom/android/letvmanager/TransModule$PlayingStateHandler;->state:Lcom/android/letvmanager/TransModule$PlayingState;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string v1, "download_rate"

    iget-object v2, p0, Lcom/android/letvmanager/TransModule$PlayingStateHandler;->preTAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .local v0, dataString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/letvmanager/TransModule$PlayingStateHandler;->str:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .end local v0           #dataString:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    return-void

    :cond_1
    const-string v1, "buffer_progress"

    iget-object v2, p0, Lcom/android/letvmanager/TransModule$PlayingStateHandler;->preTAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .restart local v0       #dataString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/letvmanager/TransModule$PlayingStateHandler;->str:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .end local v0           #dataString:Ljava/lang/String;
    :cond_2
    const-string v1, "progress"

    iget-object v2, p0, Lcom/android/letvmanager/TransModule$PlayingStateHandler;->preTAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .restart local v0       #dataString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/letvmanager/TransModule$PlayingStateHandler;->str:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .end local v0           #dataString:Ljava/lang/String;
    :cond_3
    const-string v1, "buffered_bytes"

    iget-object v2, p0, Lcom/android/letvmanager/TransModule$PlayingStateHandler;->preTAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .restart local v0       #dataString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/letvmanager/TransModule$PlayingStateHandler;->str:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string v1, "download_rate"

    iget-object v2, p0, Lcom/android/letvmanager/TransModule$PlayingStateHandler;->preTAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/letvmanager/TransModule$PlayingStateHandler;->str:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .local v0, dataString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/letvmanager/TransModule$PlayingStateHandler;->state:Lcom/android/letvmanager/TransModule$PlayingState;

    invoke-virtual {v1, v0}, Lcom/android/letvmanager/TransModule$PlayingState;->setDownloadRate(Ljava/lang/String;)V

    .end local v0           #dataString:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/letvmanager/TransModule$PlayingStateHandler;->str:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/letvmanager/TransModule$PlayingStateHandler;->str:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/letvmanager/TransModule$PlayingStateHandler;->preTAG:Ljava/lang/String;

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "buffer_progress"

    iget-object v2, p0, Lcom/android/letvmanager/TransModule$PlayingStateHandler;->preTAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/letvmanager/TransModule$PlayingStateHandler;->str:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #dataString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/letvmanager/TransModule$PlayingStateHandler;->state:Lcom/android/letvmanager/TransModule$PlayingState;

    invoke-virtual {v1, v0}, Lcom/android/letvmanager/TransModule$PlayingState;->setBufferProgress(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #dataString:Ljava/lang/String;
    :cond_2
    const-string v1, "progress"

    iget-object v2, p0, Lcom/android/letvmanager/TransModule$PlayingStateHandler;->preTAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/letvmanager/TransModule$PlayingStateHandler;->str:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #dataString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/letvmanager/TransModule$PlayingStateHandler;->state:Lcom/android/letvmanager/TransModule$PlayingState;

    invoke-virtual {v1, v0}, Lcom/android/letvmanager/TransModule$PlayingState;->setProgress(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #dataString:Ljava/lang/String;
    :cond_3
    const-string v1, "buffered_bytes"

    iget-object v2, p0, Lcom/android/letvmanager/TransModule$PlayingStateHandler;->preTAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/letvmanager/TransModule$PlayingStateHandler;->str:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #dataString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/letvmanager/TransModule$PlayingStateHandler;->state:Lcom/android/letvmanager/TransModule$PlayingState;

    invoke-virtual {v1, v0}, Lcom/android/letvmanager/TransModule$PlayingState;->setBufferedBytes(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    iput-object p2, p0, Lcom/android/letvmanager/TransModule$PlayingStateHandler;->preTAG:Ljava/lang/String;

    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method
