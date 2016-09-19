.class public final Lmf/org/apache/xerces/stax/events/EndDocumentImpl;
.super Lmf/org/apache/xerces/stax/events/XMLEventImpl;
.source "EndDocumentImpl.java"

# interfaces
.implements Lmf/javax/xml/stream/events/EndDocument;


# direct methods
.method public constructor <init>(Lmf/javax/xml/stream/Location;)V
    .locals 1
    .param p1, "location"    # Lmf/javax/xml/stream/Location;

    .prologue
    .line 40
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/stax/events/XMLEventImpl;-><init>(ILmf/javax/xml/stream/Location;)V

    .line 41
    return-void
.end method


# virtual methods
.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 43
    return-void
.end method
