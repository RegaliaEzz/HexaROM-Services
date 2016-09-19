.class public final Lmf/org/apache/xerces/stax/events/NotationDeclarationImpl;
.super Lmf/org/apache/xerces/stax/events/XMLEventImpl;
.source "NotationDeclarationImpl.java"

# interfaces
.implements Lmf/javax/xml/stream/events/NotationDeclaration;


# instance fields
.field private final fName:Ljava/lang/String;

.field private final fPublicId:Ljava/lang/String;

.field private final fSystemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/javax/xml/stream/Location;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "location"    # Lmf/javax/xml/stream/Location;

    .prologue
    .line 47
    const/16 v0, 0xe

    invoke-direct {p0, v0, p4}, Lmf/org/apache/xerces/stax/events/XMLEventImpl;-><init>(ILmf/javax/xml/stream/Location;)V

    .line 48
    iput-object p1, p0, Lmf/org/apache/xerces/stax/events/NotationDeclarationImpl;->fName:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lmf/org/apache/xerces/stax/events/NotationDeclarationImpl;->fPublicId:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lmf/org/apache/xerces/stax/events/NotationDeclarationImpl;->fSystemId:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/NotationDeclarationImpl;->fName:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/NotationDeclarationImpl;->fPublicId:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/NotationDeclarationImpl;->fSystemId:Ljava/lang/String;

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
    .line 76
    :try_start_0
    const-string v1, "<!NOTATION "

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/NotationDeclarationImpl;->fPublicId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 78
    const-string v1, "PUBLIC \""

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/NotationDeclarationImpl;->fPublicId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 80
    const/16 v1, 0x22

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 81
    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/NotationDeclarationImpl;->fSystemId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 82
    const-string v1, " \""

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/NotationDeclarationImpl;->fSystemId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 84
    const/16 v1, 0x22

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 92
    :cond_0
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/NotationDeclarationImpl;->fName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 93
    const/16 v1, 0x3e

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 98
    return-void

    .line 88
    :cond_1
    const-string v1, "SYSTEM \""

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/NotationDeclarationImpl;->fSystemId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 90
    const/16 v1, 0x22

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lmf/javax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Lmf/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
