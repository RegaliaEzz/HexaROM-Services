.class final Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;
.super Lmf/org/apache/xerces/impl/xs/opti/DefaultXMLDocumentHandler;
.source "JAXPValidatorComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XNI2SAX"
.end annotation


# instance fields
.field private final fAttributesProxy:Lmf/org/apache/xerces/util/AttributesProxy;

.field private fContentHandler:Lorg/xml/sax/ContentHandler;

.field protected fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

.field private fVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 349
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/opti/DefaultXMLDocumentHandler;-><init>()V

    .line 361
    new-instance v0, Lmf/org/apache/xerces/util/AttributesProxy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/AttributesProxy;-><init>(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fAttributesProxy:Lmf/org/apache/xerces/util/AttributesProxy;

    .line 349
    return-void
.end method

.method synthetic constructor <init>(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;)V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 450
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-interface {v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    return-void

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
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
    .line 444
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 445
    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 446
    return-void
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 388
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 427
    :try_start_0
    iget-object v5, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 428
    .local v4, "uri":Ljava/lang/String;
    :goto_0
    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 429
    .local v3, "localpart":Ljava/lang/String;
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v5, v4, v3, v6}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v5}, Lmf/org/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixCount()I

    move-result v0

    .line 433
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 434
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_2

    .line 441
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 427
    .end local v0    # "count":I
    .end local v3    # "localpart":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    :cond_1
    const-string v4, ""

    goto :goto_0

    .line 435
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "localpart":Ljava/lang/String;
    .restart local v4    # "uri":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v6, v2}, Lmf/org/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 438
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "localpart":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 439
    .local v1, "e":Lorg/xml/sax/SAXException;
    new-instance v5, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v5, v1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 5
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 458
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-interface {v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    return-void

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 396
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    return-void

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 364
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    .line 365
    return-void
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
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
    .line 377
    iput-object p3, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    .line 378
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    new-instance v2, Lmf/org/apache/xerces/util/LocatorProxy;

    invoke-direct {v2, p1}, Lmf/org/apache/xerces/util/LocatorProxy;-><init>(Lmf/org/apache/xerces/xni/XMLLocator;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 380
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->startDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 9
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 405
    :try_start_0
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v6}, Lmf/org/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixCount()I

    move-result v0

    .line 406
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 407
    const/4 v4, 0x0

    .line 408
    .local v4, "prefix":Ljava/lang/String;
    const/4 v5, 0x0

    .line 409
    .local v5, "uri":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_1

    .line 416
    .end local v2    # "i":I
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v5    # "uri":Ljava/lang/String;
    :cond_0
    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v5, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 417
    .restart local v5    # "uri":Ljava/lang/String;
    :goto_1
    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 418
    .local v3, "localpart":Ljava/lang/String;
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fAttributesProxy:Lmf/org/apache/xerces/util/AttributesProxy;

    invoke-virtual {v6, p2}, Lmf/org/apache/xerces/util/AttributesProxy;->setAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    .line 419
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v8, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fAttributesProxy:Lmf/org/apache/xerces/util/AttributesProxy;

    invoke-interface {v6, v5, v3, v7, v8}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 423
    return-void

    .line 410
    .end local v3    # "localpart":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v4    # "prefix":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v6, v2}, Lmf/org/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v4

    .line 411
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v6, v4}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 412
    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-nez v5, :cond_2

    const-string v6, ""

    :goto_2
    invoke-interface {v7, v4, v6}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v6, v5

    .line 412
    goto :goto_2

    .line 416
    .end local v2    # "i":I
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v5    # "uri":Ljava/lang/String;
    :cond_3
    const-string v5, ""
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 420
    .end local v0    # "count":I
    :catch_0
    move-exception v1

    .line 421
    .local v1, "e":Lorg/xml/sax/SAXException;
    new-instance v6, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v6, v1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v6
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
    .line 373
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fVersion:Ljava/lang/String;

    .line 374
    return-void
.end method
