.class public final Lmf/org/apache/xerces/stax/events/CharactersImpl;
.super Lmf/org/apache/xerces/stax/events/XMLEventImpl;
.source "CharactersImpl.java"

# interfaces
.implements Lmf/javax/xml/stream/events/Characters;


# instance fields
.field private final fData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILmf/javax/xml/stream/Location;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "location"    # Lmf/javax/xml/stream/Location;

    .prologue
    .line 47
    invoke-direct {p0, p2, p3}, Lmf/org/apache/xerces/stax/events/XMLEventImpl;-><init>(ILmf/javax/xml/stream/Location;)V

    .line 48
    if-eqz p1, :cond_0

    .end local p1    # "data":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/stax/events/CharactersImpl;->fData:Ljava/lang/String;

    .line 49
    return-void

    .line 48
    .restart local p1    # "data":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/CharactersImpl;->fData:Ljava/lang/String;

    return-object v0
.end method

.method public isCData()Z
    .locals 2

    .prologue
    .line 78
    const/16 v0, 0xc

    invoke-virtual {p0}, Lmf/org/apache/xerces/stax/events/CharactersImpl;->getEventType()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIgnorableWhiteSpace()Z
    .locals 2

    .prologue
    .line 85
    const/4 v0, 0x6

    invoke-virtual {p0}, Lmf/org/apache/xerces/stax/events/CharactersImpl;->getEventType()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWhiteSpace()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 62
    iget-object v3, p0, Lmf/org/apache/xerces/stax/events/CharactersImpl;->fData:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/stax/events/CharactersImpl;->fData:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 63
    .local v1, "length":I
    :goto_0
    if-nez v1, :cond_2

    .line 71
    :cond_0
    :goto_1
    return v2

    .end local v1    # "length":I
    :cond_1
    move v1, v2

    .line 62
    goto :goto_0

    .line 66
    .restart local v1    # "length":I
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-lt v0, v1, :cond_3

    .line 71
    const/4 v2, 0x1

    goto :goto_1

    .line 67
    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/stax/events/CharactersImpl;->fData:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
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
    .line 90
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/CharactersImpl;->fData:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lmf/javax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Lmf/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
