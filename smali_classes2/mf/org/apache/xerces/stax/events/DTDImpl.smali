.class public final Lmf/org/apache/xerces/stax/events/DTDImpl;
.super Lmf/org/apache/xerces/stax/events/XMLEventImpl;
.source "DTDImpl.java"

# interfaces
.implements Lmf/javax/xml/stream/events/DTD;


# instance fields
.field private final fDTD:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmf/javax/xml/stream/Location;)V
    .locals 1
    .param p1, "dtd"    # Ljava/lang/String;
    .param p2, "location"    # Lmf/javax/xml/stream/Location;

    .prologue
    .line 44
    const/16 v0, 0xb

    invoke-direct {p0, v0, p2}, Lmf/org/apache/xerces/stax/events/XMLEventImpl;-><init>(ILmf/javax/xml/stream/Location;)V

    .line 45
    if-eqz p1, :cond_0

    .end local p1    # "dtd":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/stax/events/DTDImpl;->fDTD:Ljava/lang/String;

    .line 46
    return-void

    .line 45
    .restart local p1    # "dtd":Ljava/lang/String;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDocumentTypeDeclaration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/DTDImpl;->fDTD:Ljava/lang/String;

    return-object v0
.end method

.method public getEntities()Ljava/util/List;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getNotations()Ljava/util/List;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getProcessedDTD()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 78
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/DTDImpl;->fDTD:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lmf/javax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Lmf/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
