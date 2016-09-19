.class public final Lmf/org/apache/xerces/stax/events/EndElementImpl;
.super Lmf/org/apache/xerces/stax/events/ElementImpl;
.source "EndElementImpl.java"

# interfaces
.implements Lmf/javax/xml/stream/events/EndElement;


# direct methods
.method public constructor <init>(Lmf/javax/xml/namespace/QName;Ljava/util/Iterator;Lmf/javax/xml/stream/Location;)V
    .locals 1
    .param p1, "name"    # Lmf/javax/xml/namespace/QName;
    .param p2, "namespaces"    # Ljava/util/Iterator;
    .param p3, "location"    # Lmf/javax/xml/stream/Location;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lmf/org/apache/xerces/stax/events/ElementImpl;-><init>(Lmf/javax/xml/namespace/QName;ZLjava/util/Iterator;Lmf/javax/xml/stream/Location;)V

    .line 43
    return-void
.end method


# virtual methods
.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 48
    :try_start_0
    const-string v3, "</"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lmf/org/apache/xerces/stax/events/EndElementImpl;->getName()Lmf/javax/xml/namespace/QName;

    move-result-object v1

    .line 50
    .local v1, "name":Lmf/javax/xml/namespace/QName;
    invoke-virtual {v1}, Lmf/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "prefix":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 52
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 53
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    .line 55
    :cond_0
    invoke-virtual {v1}, Lmf/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 56
    const/16 v3, 0x3e

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-void

    .line 58
    .end local v1    # "name":Lmf/javax/xml/namespace/QName;
    .end local v2    # "prefix":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 59
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v3, Lmf/javax/xml/stream/XMLStreamException;

    invoke-direct {v3, v0}, Lmf/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
