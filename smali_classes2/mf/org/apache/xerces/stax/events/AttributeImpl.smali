.class public Lmf/org/apache/xerces/stax/events/AttributeImpl;
.super Lmf/org/apache/xerces/stax/events/XMLEventImpl;
.source "AttributeImpl.java"

# interfaces
.implements Lmf/javax/xml/stream/events/Attribute;


# instance fields
.field private final fDtdType:Ljava/lang/String;

.field private final fIsSpecified:Z

.field private final fName:Lmf/javax/xml/namespace/QName;

.field private final fValue:Ljava/lang/String;


# direct methods
.method protected constructor <init>(ILmf/javax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;ZLmf/javax/xml/stream/Location;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "name"    # Lmf/javax/xml/namespace/QName;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "dtdType"    # Ljava/lang/String;
    .param p5, "isSpecified"    # Z
    .param p6, "location"    # Lmf/javax/xml/stream/Location;

    .prologue
    .line 50
    invoke-direct {p0, p1, p6}, Lmf/org/apache/xerces/stax/events/XMLEventImpl;-><init>(ILmf/javax/xml/stream/Location;)V

    .line 51
    iput-object p2, p0, Lmf/org/apache/xerces/stax/events/AttributeImpl;->fName:Lmf/javax/xml/namespace/QName;

    .line 52
    iput-object p3, p0, Lmf/org/apache/xerces/stax/events/AttributeImpl;->fValue:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lmf/org/apache/xerces/stax/events/AttributeImpl;->fDtdType:Ljava/lang/String;

    .line 54
    iput-boolean p5, p0, Lmf/org/apache/xerces/stax/events/AttributeImpl;->fIsSpecified:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Lmf/javax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;ZLmf/javax/xml/stream/Location;)V
    .locals 7
    .param p1, "name"    # Lmf/javax/xml/namespace/QName;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "dtdType"    # Ljava/lang/String;
    .param p4, "isSpecified"    # Z
    .param p5, "location"    # Lmf/javax/xml/stream/Location;

    .prologue
    .line 46
    const/16 v1, 0xa

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/stax/events/AttributeImpl;-><init>(ILmf/javax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;ZLmf/javax/xml/stream/Location;)V

    .line 47
    return-void
.end method


# virtual methods
.method public final getDTDType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/AttributeImpl;->fDtdType:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Lmf/javax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/AttributeImpl;->fName:Lmf/javax/xml/namespace/QName;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/AttributeImpl;->fValue:Ljava/lang/String;

    return-object v0
.end method

.method public final isSpecified()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lmf/org/apache/xerces/stax/events/AttributeImpl;->fIsSpecified:Z

    return v0
.end method

.method public final writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 88
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/stax/events/AttributeImpl;->fName:Lmf/javax/xml/namespace/QName;

    invoke-virtual {v2}, Lmf/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "prefix":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 90
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 91
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 93
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/stax/events/AttributeImpl;->fName:Lmf/javax/xml/namespace/QName;

    invoke-virtual {v2}, Lmf/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 95
    const-string v2, "=\""

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lmf/org/apache/xerces/stax/events/AttributeImpl;->fValue:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 97
    const/16 v2, 0x22

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    return-void

    .line 99
    .end local v1    # "prefix":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 100
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v2, Lmf/javax/xml/stream/XMLStreamException;

    invoke-direct {v2, v0}, Lmf/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
