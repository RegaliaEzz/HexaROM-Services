.class final Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;
.super Ljava/lang/Object;
.source "SchemaContentHandler.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# instance fields
.field private final fAttributeQName:Lmf/org/apache/xerces/xni/QName;

.field private final fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

.field private final fElementQName:Lmf/org/apache/xerces/xni/QName;

.field private fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

.field private fNamespacePrefixes:Z

.field private fNeedPushNSContext:Z

.field private final fSAXLocatorWrapper:Lmf/org/apache/xerces/util/SAXLocatorWrapper;

.field private fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

.field private final fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private fStringsInternalized:Z

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private final fTempString:Lmf/org/apache/xerces/xni/XMLString;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lmf/org/apache/xerces/util/SAXLocatorWrapper;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SAXLocatorWrapper;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSAXLocatorWrapper:Lmf/org/apache/xerces/util/SAXLocatorWrapper;

    .line 64
    new-instance v0, Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    .line 70
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespacePrefixes:Z

    .line 73
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fStringsInternalized:Z

    .line 76
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    .line 77
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    .line 78
    new-instance v0, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    .line 79
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    .line 80
    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 85
    return-void
.end method

.method private addNamespaceDeclarations(I)V
    .locals 10
    .param p1, "prefixCount"    # I

    .prologue
    .line 319
    const/4 v4, 0x0

    .line 320
    .local v4, "prefix":Ljava/lang/String;
    const/4 v1, 0x0

    .line 321
    .local v1, "localpart":Ljava/lang/String;
    const/4 v5, 0x0

    .line 322
    .local v5, "rawname":Ljava/lang/String;
    const/4 v2, 0x0

    .line 323
    .local v2, "nsPrefix":Ljava/lang/String;
    const/4 v3, 0x0

    .line 324
    .local v3, "nsURI":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 345
    return-void

    .line 325
    :cond_0
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v6, v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v2

    .line 326
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v6, v2}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 327
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 328
    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    .line 329
    move-object v1, v2

    .line 330
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v6}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 331
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v6, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 332
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 333
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v6, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 334
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v7, v7, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v8, v8, Lmf/org/apache/xerces/util/XMLStringBuffer;->offset:I

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v9, v9, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v6, v7, v8, v9}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v5

    .line 341
    :goto_1
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v7, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v6, v4, v1, v5, v7}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v9, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    .line 343
    if-eqz v3, :cond_2

    move-object v6, v3

    .line 342
    :goto_2
    invoke-virtual {v7, v8, v9, v6}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_1
    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 338
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    .line 339
    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    goto :goto_1

    .line 343
    :cond_2
    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_2
.end method

.method static convertToSAXException(Lmf/org/apache/xerces/xni/XNIException;)V
    .locals 3
    .param p0, "e"    # Lmf/org/apache/xerces/xni/XNIException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 380
    .local v0, "ex":Ljava/lang/Exception;
    if-nez v0, :cond_0

    .line 381
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/XNIException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 383
    :cond_0
    instance-of v1, v0, Lorg/xml/sax/SAXException;

    if-eqz v1, :cond_1

    .line 384
    check-cast v0, Lorg/xml/sax/SAXException;

    .end local v0    # "ex":Ljava/lang/Exception;
    throw v0

    .line 386
    .restart local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method static convertToSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)V
    .locals 4
    .param p0, "e"    # Lmf/org/apache/xerces/xni/parser/XMLParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 361
    .local v0, "ex":Ljava/lang/Exception;
    if-nez v0, :cond_0

    .line 364
    new-instance v1, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v1}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    .line 365
    .local v1, "locatorImpl":Lorg/xml/sax/helpers/LocatorImpl;
    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 368
    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 369
    new-instance v2, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v2

    .line 371
    .end local v1    # "locatorImpl":Lorg/xml/sax/helpers/LocatorImpl;
    :cond_0
    instance-of v2, v0, Lorg/xml/sax/SAXException;

    if-eqz v2, :cond_1

    .line 373
    check-cast v0, Lorg/xml/sax/SAXException;

    .end local v0    # "ex":Ljava/lang/Exception;
    throw v0

    .line 375
    .restart local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method private fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "toFill"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "localpart"    # Ljava/lang/String;
    .param p4, "rawname"    # Ljava/lang/String;

    .prologue
    .line 275
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fStringsInternalized:Z

    if-nez v2, :cond_5

    .line 276
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, p2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 277
    :goto_0
    if-eqz p3, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, p3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 278
    :goto_1
    if-eqz p4, :cond_4

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, p4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 291
    :cond_0
    :goto_2
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 292
    .local v0, "prefix":Ljava/lang/String;
    const/16 v2, 0x3a

    invoke-virtual {p4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 293
    .local v1, "prefixIdx":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    .line 294
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const/4 v3, 0x0

    invoke-virtual {p4, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne p3, v2, :cond_1

    .line 297
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 304
    :cond_1
    :goto_3
    invoke-virtual {p1, v0, p3, p4, p2}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-void

    .line 276
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "prefixIdx":I
    :cond_2
    const/4 p2, 0x0

    goto :goto_0

    .line 277
    :cond_3
    sget-object p3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_1

    .line 278
    :cond_4
    sget-object p4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_2

    .line 281
    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 282
    const/4 p2, 0x0

    .line 284
    :cond_6
    if-nez p3, :cond_7

    .line 285
    sget-object p3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 287
    :cond_7
    if-nez p4, :cond_0

    .line 288
    sget-object p4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_2

    .line 301
    .restart local v0    # "prefix":Ljava/lang/String;
    .restart local v1    # "prefixIdx":I
    :cond_8
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne p3, v2, :cond_1

    .line 302
    move-object p3, p4

    goto :goto_3
.end method

.method private fillXMLAttributes(Lorg/xml/sax/Attributes;)V
    .locals 7
    .param p1, "atts"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 308
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    .line 309
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 310
    .local v0, "attrCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 316
    return-void

    .line 311
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "type":Ljava/lang/String;
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    if-eqz v2, :cond_1

    .end local v2    # "type":Ljava/lang/String;
    :goto_1
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    .line 310
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    .restart local v2    # "type":Ljava/lang/String;
    :cond_1
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public characters([CII)V
    .locals 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 220
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v1, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 221
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    .line 229
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->convertToSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)V

    goto :goto_0

    .line 226
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    :catch_1
    move-exception v0

    .line 227
    .local v0, "e":Lmf/org/apache/xerces/xni/XNIException;
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->convertToSAXException(Lmf/org/apache/xerces/xni/XNIException;)V

    goto :goto_0
.end method

.method public endDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSAXLocatorWrapper:Lmf/org/apache/xerces/util/SAXLocatorWrapper;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/SAXLocatorWrapper;->setLocator(Lorg/xml/sax/Locator;)V

    .line 124
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->convertToSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)V

    goto :goto_0

    .line 129
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    :catch_1
    move-exception v0

    .line 130
    .local v0, "e":Lmf/org/apache/xerces/xni/XNIException;
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->convertToSAXException(Lmf/org/apache/xerces/xni/XNIException;)V

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-direct {p0, v1, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/NamespaceSupport;->popContext()V

    .line 213
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    :try_start_1
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->convertToSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/NamespaceSupport;->popContext()V

    goto :goto_0

    .line 207
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    :catch_1
    move-exception v0

    .line 208
    .local v0, "e":Lmf/org/apache/xerces/xni/XNIException;
    :try_start_2
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->convertToSAXException(Lmf/org/apache/xerces/xni/XNIException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/NamespaceSupport;->popContext()V

    goto :goto_0

    .line 210
    .end local v0    # "e":Lmf/org/apache/xerces/xni/XNIException;
    :catchall_0
    move-exception v1

    .line 211
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/NamespaceSupport;->popContext()V

    .line 212
    throw v1
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 162
    return-void
.end method

.method public getDocument()Lmf/org/w3c/dom/Document;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->getDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 236
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v1, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 237
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    .line 245
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->convertToSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)V

    goto :goto_0

    .line 242
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    :catch_1
    move-exception v0

    .line 243
    .local v0, "e":Lmf/org/apache/xerces/xni/XNIException;
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->convertToSAXException(Lmf/org/apache/xerces/xni/XNIException;)V

    goto :goto_0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 252
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 253
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    .line 261
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->convertToSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)V

    goto :goto_0

    .line 258
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    :catch_1
    move-exception v0

    .line 259
    .local v0, "e":Lmf/org/apache/xerces/xni/XNIException;
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->convertToSAXException(Lmf/org/apache/xerces/xni/XNIException;)V

    goto :goto_0
.end method

.method public reset(Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;Lmf/org/apache/xerces/util/SymbolTable;ZZ)V
    .locals 0
    .param p1, "schemaDOMParser"    # Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;
    .param p2, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p3, "namespacePrefixes"    # Z
    .param p4, "stringsInternalized"    # Z

    .prologue
    .line 349
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    .line 350
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 351
    iput-boolean p3, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespacePrefixes:Z

    .line 352
    iput-boolean p4, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fStringsInternalized:Z

    .line 353
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 98
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSAXLocatorWrapper:Lmf/org/apache/xerces/util/SAXLocatorWrapper;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SAXLocatorWrapper;->setLocator(Lorg/xml/sax/Locator;)V

    .line 99
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 268
    return-void
.end method

.method public startDocument()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNeedPushNSContext:Z

    .line 106
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/NamespaceSupport;->reset()V

    .line 108
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSAXLocatorWrapper:Lmf/org/apache/xerces/util/SAXLocatorWrapper;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->convertToSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)V

    goto :goto_0

    .line 113
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    :catch_1
    move-exception v0

    .line 114
    .local v0, "e":Lmf/org/apache/xerces/xni/XNIException;
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->convertToSAXException(Lmf/org/apache/xerces/xni/XNIException;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 168
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNeedPushNSContext:Z

    if-eqz v2, :cond_0

    .line 169
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/NamespaceSupport;->pushContext()V

    .line 171
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNeedPushNSContext:Z

    .line 174
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-direct {p0, v2, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0, p4}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fillXMLAttributes(Lorg/xml/sax/Attributes;)V

    .line 178
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespacePrefixes:Z

    if-nez v2, :cond_1

    .line 179
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/NamespaceSupport;->getDeclaredPrefixCount()I

    move-result v1

    .line 180
    .local v1, "prefixCount":I
    if-lez v1, :cond_1

    .line 181
    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->addNamespaceDeclarations(I)V

    .line 186
    .end local v1    # "prefixCount":I
    :cond_1
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    .line 194
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->convertToSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)V

    goto :goto_0

    .line 191
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    :catch_1
    move-exception v0

    .line 192
    .local v0, "e":Lmf/org/apache/xerces/xni/XNIException;
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->convertToSAXException(Lmf/org/apache/xerces/xni/XNIException;)V

    goto :goto_0
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 138
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNeedPushNSContext:Z

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNeedPushNSContext:Z

    .line 140
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->pushContext()V

    .line 142
    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fStringsInternalized:Z

    if-nez v0, :cond_4

    .line 143
    if-eqz p1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 144
    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 154
    :cond_1
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 155
    return-void

    .line 143
    :cond_2
    sget-object p1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_0

    .line 144
    :cond_3
    const/4 p2, 0x0

    goto :goto_1

    .line 147
    :cond_4
    if-nez p1, :cond_5

    .line 148
    sget-object p1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 150
    :cond_5
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 151
    const/4 p2, 0x0

    goto :goto_1
.end method
