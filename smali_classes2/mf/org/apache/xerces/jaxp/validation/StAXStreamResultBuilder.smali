.class final Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;
.super Ljava/lang/Object;
.source "StAXStreamResultBuilder.java"

# interfaces
.implements Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;


# instance fields
.field private final fAttrName:Lmf/org/apache/xerces/xni/QName;

.field private fIgnoreChars:Z

.field private fInCDATA:Z

.field private final fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

.field private fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;)V
    .locals 1
    .param p1, "context"    # Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    .line 63
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    .line 64
    return-void
.end method


# virtual methods
.method public cdata(Lmf/javax/xml/stream/events/Characters;)V
    .locals 2
    .param p1, "event"    # Lmf/javax/xml/stream/events/Characters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeCData(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public characters(Lmf/javax/xml/stream/events/Characters;)V
    .locals 2
    .param p1, "event"    # Lmf/javax/xml/stream/events/Characters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 5
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 240
    iget-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fIgnoreChars:Z

    if-nez v1, :cond_0

    .line 242
    :try_start_0
    iget-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fInCDATA:Z

    if-nez v1, :cond_1

    .line 243
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-interface {v1, v2, v3, v4}, Lmf/javax/xml/stream/XMLStreamWriter;->writeCharacters([CII)V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lmf/javax/xml/stream/XMLStreamWriter;->writeCData(Ljava/lang/String;)V
    :try_end_0
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Lmf/javax/xml/stream/XMLStreamException;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public comment(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 2
    .param p1, "reader"    # Lmf/javax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeComment(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public comment(Lmf/javax/xml/stream/events/Comment;)V
    .locals 2
    .param p1, "event"    # Lmf/javax/xml/stream/events/Comment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/events/Comment;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeComment(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 170
    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "rootElement"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 168
    return-void
.end method

.method public doctypeDecl(Lmf/javax/xml/stream/events/DTD;)V
    .locals 2
    .param p1, "event"    # Lmf/javax/xml/stream/events/DTD;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/events/DTD;->getDocumentTypeDeclaration()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeDTD(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 225
    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 226
    return-void
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fInCDATA:Z

    .line 276
    return-void
.end method

.method public endDocument(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 1
    .param p1, "reader"    # Lmf/javax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamWriter;->writeEndDocument()V

    .line 86
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamWriter;->flush()V

    .line 87
    return-void
.end method

.method public endDocument(Lmf/javax/xml/stream/events/EndDocument;)V
    .locals 1
    .param p1, "event"    # Lmf/javax/xml/stream/events/EndDocument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamWriter;->writeEndDocument()V

    .line 117
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamWriter;->flush()V

    .line 118
    return-void
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 278
    return-void
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 263
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {v1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeEndElement()V
    :try_end_0
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Lmf/javax/xml/stream/XMLStreamException;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 236
    return-void
.end method

.method public entityReference(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 2
    .param p1, "reader"    # Lmf/javax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeEntityRef(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public entityReference(Lmf/javax/xml/stream/events/EntityReference;)V
    .locals 2
    .param p1, "event"    # Lmf/javax/xml/stream/events/EntityReference;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/events/EntityReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeEntityRef(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    return-object v0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 258
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 173
    return-void
.end method

.method public processingInstruction(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 3
    .param p1, "reader"    # Lmf/javax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 97
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lmf/javax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lmf/javax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processingInstruction(Lmf/javax/xml/stream/events/ProcessingInstruction;)V
    .locals 3
    .param p1, "event"    # Lmf/javax/xml/stream/events/ProcessingInstruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-interface {p1}, Lmf/javax/xml/stream/events/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 140
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/events/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lmf/javax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/events/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lmf/javax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0
    .param p1, "source"    # Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .prologue
    .line 280
    return-void
.end method

.method public setIgnoringCharacters(Z)V
    .locals 0
    .param p1, "ignore"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fIgnoreChars:Z

    .line 154
    return-void
.end method

.method public setStAXResult(Lmf/javax/xml/transform/stax/StAXResult;)V
    .locals 1
    .param p1, "result"    # Lmf/javax/xml/transform/stax/StAXResult;

    .prologue
    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fIgnoreChars:Z

    .line 72
    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fInCDATA:Z

    .line 73
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/QName;->clear()V

    .line 74
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmf/javax/xml/transform/stax/StAXResult;->getXMLStreamWriter()Lmf/javax/xml/stream/XMLStreamWriter;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    .line 75
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fInCDATA:Z

    .line 272
    return-void
.end method

.method public startDocument(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 3
    .param p1, "reader"    # Lmf/javax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "version":Ljava/lang/String;
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "encoding":Ljava/lang/String;
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    if-eqz v0, :cond_0

    .line 81
    .end local v0    # "encoding":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    .line 80
    .end local v1    # "version":Ljava/lang/String;
    :goto_1
    invoke-interface {v2, v0, v1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void

    .line 80
    .restart local v0    # "encoding":Ljava/lang/String;
    .restart local v1    # "version":Ljava/lang/String;
    :cond_0
    const-string v0, "UTF-8"

    goto :goto_0

    .line 81
    .end local v0    # "encoding":Ljava/lang/String;
    :cond_1
    const-string v1, "1.0"

    goto :goto_1
.end method

.method public startDocument(Lmf/javax/xml/stream/events/StartDocument;)V
    .locals 3
    .param p1, "event"    # Lmf/javax/xml/stream/events/StartDocument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-interface {p1}, Lmf/javax/xml/stream/events/StartDocument;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "version":Ljava/lang/String;
    invoke-interface {p1}, Lmf/javax/xml/stream/events/StartDocument;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "encoding":Ljava/lang/String;
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    if-eqz v0, :cond_0

    .line 112
    .end local v0    # "encoding":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    .line 111
    .end local v1    # "version":Ljava/lang/String;
    :goto_1
    invoke-interface {v2, v0, v1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void

    .line 111
    .restart local v0    # "encoding":Ljava/lang/String;
    .restart local v1    # "version":Ljava/lang/String;
    :cond_0
    const-string v0, "UTF-8"

    goto :goto_0

    .line 112
    .end local v0    # "encoding":Ljava/lang/String;
    :cond_1
    const-string v1, "1.0"

    goto :goto_1
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "locator"    # Lmf/org/apache/xerces/xni/XMLLocator;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "namespaceContext"    # Lmf/org/apache/xerces/xni/NamespaceContext;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 162
    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 11
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 178
    :try_start_0
    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 179
    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    iget-object v8, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 180
    iget-object v9, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 179
    :goto_0
    invoke-interface {v7, v8, v9, v6}, Lmf/javax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_1
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v6}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->getDeclaredPrefixCount()I

    move-result v4

    .line 189
    .local v4, "size":I
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v6}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->getNamespaceContext()Lmf/javax/xml/namespace/NamespaceContext;

    move-result-object v2

    .line 190
    .local v2, "nc":Lmf/javax/xml/namespace/NamespaceContext;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-lt v1, v4, :cond_3

    .line 200
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v4

    .line 201
    const/4 v1, 0x0

    :goto_3
    if-lt v1, v4, :cond_7

    .line 220
    return-void

    .line 180
    .end local v1    # "i":I
    .end local v2    # "nc":Lmf/javax/xml/namespace/NamespaceContext;
    .end local v4    # "size":I
    :cond_0
    const-string v6, ""

    goto :goto_0

    .line 182
    :cond_1
    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 183
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v8, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Lmf/javax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Lmf/javax/xml/stream/XMLStreamException;
    new-instance v6, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v6, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 186
    .end local v0    # "e":Lmf/javax/xml/stream/XMLStreamException;
    :cond_2
    :try_start_1
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-interface {v6, v7}, Lmf/javax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    goto :goto_1

    .line 191
    .restart local v1    # "i":I
    .restart local v2    # "nc":Lmf/javax/xml/namespace/NamespaceContext;
    .restart local v4    # "size":I
    :cond_3
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v6, v1}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "prefix":Ljava/lang/String;
    invoke-interface {v2, v3}, Lmf/javax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 193
    .local v5, "uri":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    .line 194
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    if-eqz v5, :cond_4

    .end local v5    # "uri":Ljava/lang/String;
    :goto_4
    invoke-interface {v6, v5}, Lmf/javax/xml/stream/XMLStreamWriter;->writeDefaultNamespace(Ljava/lang/String;)V

    .line 190
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 194
    .restart local v5    # "uri":Ljava/lang/String;
    :cond_4
    const-string v5, ""

    goto :goto_4

    .line 197
    :cond_5
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    if-eqz v5, :cond_6

    .end local v5    # "uri":Ljava/lang/String;
    :goto_6
    invoke-interface {v6, v3, v5}, Lmf/javax/xml/stream/XMLStreamWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .restart local v5    # "uri":Ljava/lang/String;
    :cond_6
    const-string v5, ""

    goto :goto_6

    .line 202
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v5    # "uri":Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p2, v1, v6}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    .line 203
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_9

    .line 204
    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v6, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 205
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 206
    :goto_7
    iget-object v9, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-interface {p2, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v10

    .line 204
    invoke-interface {v7, v8, v6, v9, v10}, Lmf/javax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 205
    :cond_8
    const-string v6, ""

    goto :goto_7

    .line 208
    :cond_9
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 209
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 210
    iget-object v8, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-interface {p2, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v9

    .line 209
    invoke-interface {v6, v7, v8, v9}, Lmf/javax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 213
    :cond_a
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-interface {p2, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lmf/javax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8
.end method

.method public startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "encoding"    # Ljava/lang/String;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 230
    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 233
    return-void
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "standalone"    # Ljava/lang/String;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 165
    return-void
.end method
