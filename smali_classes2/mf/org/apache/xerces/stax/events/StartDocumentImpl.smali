.class public final Lmf/org/apache/xerces/stax/events/StartDocumentImpl;
.super Lmf/org/apache/xerces/stax/events/XMLEventImpl;
.source "StartDocumentImpl.java"

# interfaces
.implements Lmf/javax/xml/stream/events/StartDocument;


# instance fields
.field private final fCharEncoding:Ljava/lang/String;

.field private final fEncodingSet:Z

.field private final fIsStandalone:Z

.field private final fStandaloneSet:Z

.field private final fVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZLjava/lang/String;Lmf/javax/xml/stream/Location;)V
    .locals 1
    .param p1, "charEncoding"    # Ljava/lang/String;
    .param p2, "encodingSet"    # Z
    .param p3, "isStandalone"    # Z
    .param p4, "standaloneSet"    # Z
    .param p5, "version"    # Ljava/lang/String;
    .param p6, "location"    # Lmf/javax/xml/stream/Location;

    .prologue
    .line 46
    const/4 v0, 0x7

    invoke-direct {p0, v0, p6}, Lmf/org/apache/xerces/stax/events/XMLEventImpl;-><init>(ILmf/javax/xml/stream/Location;)V

    .line 47
    iput-object p1, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fCharEncoding:Ljava/lang/String;

    .line 48
    iput-boolean p2, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fEncodingSet:Z

    .line 49
    iput-boolean p3, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fIsStandalone:Z

    .line 50
    iput-boolean p4, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fStandaloneSet:Z

    .line 51
    iput-object p5, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fVersion:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public encodingSet()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fEncodingSet:Z

    return v0
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fCharEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v0

    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isStandalone()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fIsStandalone:Z

    return v0
.end method

.method public standaloneSet()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fStandaloneSet:Z

    return v0
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
    .line 98
    :try_start_0
    const-string v1, "<?xml version=\""

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fVersion:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fVersion:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 100
    const/16 v1, 0x22

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 101
    invoke-virtual {p0}, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->encodingSet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const-string v1, " encoding=\""

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fCharEncoding:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 104
    const/16 v1, 0x22

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 106
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->standaloneSet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    const-string v1, " standalone=\""

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 108
    iget-boolean v1, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fIsStandalone:Z

    if-eqz v1, :cond_3

    const-string v1, "yes"

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 109
    const/16 v1, 0x22

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 111
    :cond_1
    const-string v1, "?>"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 116
    return-void

    .line 99
    :cond_2
    const-string v1, "1.0"

    goto :goto_0

    .line 108
    :cond_3
    const-string v1, "no"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lmf/javax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Lmf/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
