.class public Landroid/webkit/HTML5VideoViewProxy$LETVPaserHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "HTML5VideoViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LETVPaserHandler"
.end annotation


# instance fields
.field private curTag:Ljava/lang/String;

.field private myParsedExampleDataSet:Landroid/webkit/HTML5VideoViewProxy$ParsedExampleDataSet;

.field private tagcount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$LETVPaserHandler;->curTag:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/HTML5VideoViewProxy$LETVPaserHandler;->tagcount:I

    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$ParsedExampleDataSet;

    invoke-direct {v0}, Landroid/webkit/HTML5VideoViewProxy$ParsedExampleDataSet;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$LETVPaserHandler;->myParsedExampleDataSet:Landroid/webkit/HTML5VideoViewProxy$ParsedExampleDataSet;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 6
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    const/4 v5, 0x1

    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy$LETVPaserHandler;->curTag:Ljava/lang/String;

    const-string v4, "action"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v3}, Landroid/webkit/HTML5VideoViewProxy;->access$002(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy$LETVPaserHandler;->curTag:Ljava/lang/String;

    const-string v4, "mediaType"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v3}, Landroid/webkit/HTML5VideoViewProxy;->access$102(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy$LETVPaserHandler;->curTag:Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy;->access$200()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/HTML5VideoViewProxy;->access$202(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy$LETVPaserHandler;->curTag:Ljava/lang/String;

    const-string v4, "stream"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v3}, Landroid/webkit/HTML5VideoViewProxy;->access$302(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy$LETVPaserHandler;->curTag:Ljava/lang/String;

    const-string v4, "mmsid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v3}, Landroid/webkit/HTML5VideoViewProxy;->access$402(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy$LETVPaserHandler;->curTag:Ljava/lang/String;

    const-string v4, "newurl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy;->access$500()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/HTML5VideoViewProxy;->access$502(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy$LETVPaserHandler;->curTag:Ljava/lang/String;

    const-string v4, "subgslb"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget v3, p0, Landroid/webkit/HTML5VideoViewProxy$LETVPaserHandler;->tagcount:I

    if-gt v3, v5, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy;->access$600()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/HTML5VideoViewProxy;->access$602(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy;->access$700()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/HTML5VideoViewProxy;->access$702(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy$LETVPaserHandler;->curTag:Ljava/lang/String;

    const-string v4, "timeout"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .local v0, temint:Ljava/lang/String;
    iget v3, p0, Landroid/webkit/HTML5VideoViewProxy$LETVPaserHandler;->tagcount:I

    if-gt v3, v5, :cond_9

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/webkit/HTML5VideoViewProxy;->access$802(I)I

    goto/16 :goto_0

    :cond_9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/webkit/HTML5VideoViewProxy;->access$902(I)I

    goto/16 :goto_0

    .end local v0           #temint:Ljava/lang/String;
    :cond_a
    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy$LETVPaserHandler;->curTag:Ljava/lang/String;

    const-string v4, "total"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .local v2, temtotalint:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/webkit/HTML5VideoViewProxy;->access$1002(I)I

    goto/16 :goto_0

    .end local v2           #temtotalint:Ljava/lang/String;
    :cond_b
    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy$LETVPaserHandler;->curTag:Ljava/lang/String;

    const-string v4, "series"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .local v1, templayint:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/webkit/HTML5VideoViewProxy;->access$1102(I)I

    goto/16 :goto_0

    .end local v1           #templayint:Ljava/lang/String;
    :cond_c
    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy$LETVPaserHandler;->curTag:Ljava/lang/String;

    const-string v4, "duration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v3}, Landroid/webkit/HTML5VideoViewProxy;->access$1202(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy$LETVPaserHandler;->curTag:Ljava/lang/String;

    const-string v4, "fileSize"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v3}, Landroid/webkit/HTML5VideoViewProxy;->access$1302(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getParsedData()Landroid/webkit/HTML5VideoViewProxy$ParsedExampleDataSet;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$LETVPaserHandler;->myParsedExampleDataSet:Landroid/webkit/HTML5VideoViewProxy$ParsedExampleDataSet;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$ParsedExampleDataSet;

    invoke-direct {v0}, Landroid/webkit/HTML5VideoViewProxy$ParsedExampleDataSet;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$LETVPaserHandler;->myParsedExampleDataSet:Landroid/webkit/HTML5VideoViewProxy$ParsedExampleDataSet;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    iput-object p2, p0, Landroid/webkit/HTML5VideoViewProxy$LETVPaserHandler;->curTag:Ljava/lang/String;

    const-string v0, "gslb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/HTML5VideoViewProxy$LETVPaserHandler;->tagcount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/HTML5VideoViewProxy$LETVPaserHandler;->tagcount:I

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method
