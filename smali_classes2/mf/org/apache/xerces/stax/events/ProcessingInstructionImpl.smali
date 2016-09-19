.class public final Lmf/org/apache/xerces/stax/events/ProcessingInstructionImpl;
.super Lmf/org/apache/xerces/stax/events/XMLEventImpl;
.source "ProcessingInstructionImpl.java"

# interfaces
.implements Lmf/javax/xml/stream/events/ProcessingInstruction;


# instance fields
.field private final fData:Ljava/lang/String;

.field private final fTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lmf/javax/xml/stream/Location;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "location"    # Lmf/javax/xml/stream/Location;

    .prologue
    .line 44
    const/4 v0, 0x3

    invoke-direct {p0, v0, p3}, Lmf/org/apache/xerces/stax/events/XMLEventImpl;-><init>(ILmf/javax/xml/stream/Location;)V

    .line 45
    if-eqz p1, :cond_0

    .end local p1    # "target":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/stax/events/ProcessingInstructionImpl;->fTarget:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lmf/org/apache/xerces/stax/events/ProcessingInstructionImpl;->fData:Ljava/lang/String;

    .line 47
    return-void

    .line 45
    .restart local p1    # "target":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/ProcessingInstructionImpl;->fData:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/ProcessingInstructionImpl;->fTarget:Ljava/lang/String;

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
    .line 65
    :try_start_0
    const-string v1, "<?"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/ProcessingInstructionImpl;->fTarget:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/ProcessingInstructionImpl;->fData:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/ProcessingInstructionImpl;->fData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 68
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 69
    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/ProcessingInstructionImpl;->fData:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 71
    :cond_0
    const-string v1, "?>"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lmf/javax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Lmf/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
