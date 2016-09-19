.class final Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;
.super Ljava/lang/Object;
.source "StAXSchemaParser.java"


# static fields
.field private static final CHUNK_MASK:I = 0x3ff

.field private static final CHUNK_SIZE:I = 0x400


# instance fields
.field private final fAttributeQName:Lmf/org/apache/xerces/xni/QName;

.field private final fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

.field private final fCharBuffer:[C

.field private final fDeclaredPrefixes:Ljava/util/ArrayList;

.field private fDepth:I

.field private final fElementQName:Lmf/org/apache/xerces/xni/QName;

.field private final fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

.field private final fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

.field private fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

.field private final fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private final fTempString:Lmf/org/apache/xerces/xni/XMLString;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fCharBuffer:[C

    .line 74
    new-instance v0, Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/StAXLocationWrapper;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    .line 77
    new-instance v0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    .line 80
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    .line 81
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    .line 82
    new-instance v0, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    .line 83
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDeclaredPrefixes:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 89
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDeclaredPrefixes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->setDeclaredPrefixes(Ljava/util/List;)V

    .line 90
    return-void
.end method

.method private addNamespaceDeclarations()V
    .locals 10

    .prologue
    .line 341
    const/4 v4, 0x0

    .line 342
    .local v4, "prefix":Ljava/lang/String;
    const/4 v1, 0x0

    .line 343
    .local v1, "localpart":Ljava/lang/String;
    const/4 v5, 0x0

    .line 344
    .local v5, "rawname":Ljava/lang/String;
    const/4 v2, 0x0

    .line 345
    .local v2, "nsPrefix":Ljava/lang/String;
    const/4 v3, 0x0

    .line 347
    .local v3, "nsURI":Ljava/lang/String;
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDeclaredPrefixes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 348
    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 369
    return-void

    .line 349
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "nsPrefix":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 350
    .restart local v2    # "nsPrefix":Ljava/lang/String;
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v6, v2}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 351
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 352
    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    .line 353
    move-object v1, v2

    .line 354
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v6}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 355
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v6, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 356
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 357
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v6, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 358
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v7, v7, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v8, v8, Lmf/org/apache/xerces/util/XMLStringBuffer;->offset:I

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v9, v9, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v6, v7, v8, v9}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v5

    .line 365
    :goto_1
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v7, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v6, v4, v1, v5, v7}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v9, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    .line 367
    if-eqz v3, :cond_2

    move-object v6, v3

    .line 366
    :goto_2
    invoke-virtual {v7, v8, v9, v6}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 361
    :cond_1
    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 362
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    .line 363
    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    goto :goto_1

    .line 367
    :cond_2
    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_2
.end method

.method private fillDeclaredPrefixes(Ljava/util/Iterator;)V
    .locals 3
    .param p1, "namespaces"    # Ljava/util/Iterator;

    .prologue
    .line 383
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDeclaredPrefixes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 384
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 389
    return-void

    .line 385
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/Namespace;

    .line 386
    .local v0, "ns":Lmf/javax/xml/stream/events/Namespace;
    invoke-interface {v0}, Lmf/javax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "prefix":Ljava/lang/String;
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDeclaredPrefixes:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .end local v1    # "prefix":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .restart local v1    # "prefix":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method private fillDeclaredPrefixes(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 4
    .param p1, "reader"    # Lmf/javax/xml/stream/XMLStreamReader;

    .prologue
    .line 393
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDeclaredPrefixes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 394
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v1

    .line 395
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 399
    return-void

    .line 396
    :cond_0
    invoke-interface {p1, v0}, Lmf/javax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, "prefix":Ljava/lang/String;
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDeclaredPrefixes:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .end local v2    # "prefix":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    .restart local v2    # "prefix":Ljava/lang/String;
    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method private fillDeclaredPrefixes(Lmf/javax/xml/stream/events/EndElement;)V
    .locals 1
    .param p1, "event"    # Lmf/javax/xml/stream/events/EndElement;

    .prologue
    .line 378
    invoke-interface {p1}, Lmf/javax/xml/stream/events/EndElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillDeclaredPrefixes(Ljava/util/Iterator;)V

    .line 379
    return-void
.end method

.method private fillDeclaredPrefixes(Lmf/javax/xml/stream/events/StartElement;)V
    .locals 1
    .param p1, "event"    # Lmf/javax/xml/stream/events/StartElement;

    .prologue
    .line 373
    invoke-interface {p1}, Lmf/javax/xml/stream/events/StartElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillDeclaredPrefixes(Ljava/util/Iterator;)V

    .line 374
    return-void
.end method

.method private fillProcessingInstruction(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 300
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 301
    .local v1, "dataLength":I
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fCharBuffer:[C

    .line 302
    .local v0, "charBuffer":[C
    array-length v2, v0

    if-ge v2, v1, :cond_0

    .line 305
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 310
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v2, v0, v3, v1}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 311
    return-void

    .line 308
    :cond_0
    invoke-virtual {p1, v3, v1, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0
.end method

.method private fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/javax/xml/namespace/QName;)V
    .locals 3
    .param p1, "toFill"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "toCopy"    # Lmf/javax/xml/namespace/QName;

    .prologue
    .line 403
    invoke-virtual {p2}, Lmf/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lmf/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lmf/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method private fillXMLAttributes(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 7
    .param p1, "input"    # Lmf/javax/xml/stream/XMLStreamReader;

    .prologue
    .line 328
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    .line 329
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v1

    .line 330
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 338
    return-void

    .line 331
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p1, v0}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v4

    .line 332
    invoke-interface {p1, v0}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v0}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v6

    .line 331
    invoke-virtual {p0, v3, v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-interface {p1, v0}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributeType(I)Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, "type":Ljava/lang/String;
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    .line 335
    if-eqz v2, :cond_1

    .end local v2    # "type":Ljava/lang/String;
    :goto_1
    invoke-interface {p1, v0}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 334
    invoke-virtual {v3, v4, v2, v5}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {p1, v0}, Lmf/javax/xml/stream/XMLStreamReader;->isAttributeSpecified(I)Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    .restart local v2    # "type":Ljava/lang/String;
    :cond_1
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    goto :goto_1
.end method

.method private fillXMLAttributes(Lmf/javax/xml/stream/events/StartElement;)V
    .locals 7
    .param p1, "event"    # Lmf/javax/xml/stream/events/StartElement;

    .prologue
    .line 314
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    .line 315
    invoke-interface {p1}, Lmf/javax/xml/stream/events/StartElement;->getAttributes()Ljava/util/Iterator;

    move-result-object v1

    .line 316
    .local v1, "attrs":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 325
    return-void

    .line 317
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/Attribute;

    .line 318
    .local v0, "attr":Lmf/javax/xml/stream/events/Attribute;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {v0}, Lmf/javax/xml/stream/events/Attribute;->getName()Lmf/javax/xml/namespace/QName;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/javax/xml/namespace/QName;)V

    .line 319
    invoke-interface {v0}, Lmf/javax/xml/stream/events/Attribute;->getDTDType()Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "type":Ljava/lang/String;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v2

    .line 321
    .local v2, "idx":I
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    .line 322
    if-eqz v3, :cond_1

    .end local v3    # "type":Ljava/lang/String;
    :goto_1
    invoke-interface {v0}, Lmf/javax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 321
    invoke-virtual {v4, v5, v3, v6}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v0}, Lmf/javax/xml/stream/events/Attribute;->isSpecified()Z

    move-result v5

    invoke-virtual {v4, v2, v5}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    goto :goto_0

    .line 322
    .restart local v3    # "type":Ljava/lang/String;
    :cond_1
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    goto :goto_1
.end method

.method private sendCharactersToSchemaParser(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "whitespace"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 271
    if-eqz p1, :cond_1

    .line 272
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 273
    .local v2, "length":I
    and-int/lit16 v3, v2, 0x3ff

    .line 274
    .local v3, "remainder":I
    if-lez v3, :cond_0

    .line 275
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fCharBuffer:[C

    invoke-virtual {p1, v7, v3, v4, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 276
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fCharBuffer:[C

    invoke-virtual {v4, v5, v7, v3}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 277
    if-eqz p2, :cond_2

    .line 278
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v4, v5, v8}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 284
    :cond_0
    :goto_0
    move v0, v3

    .local v0, "i":I
    move v1, v0

    .line 285
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1
    if-lt v1, v2, :cond_3

    .line 296
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "remainder":I
    :cond_1
    return-void

    .line 281
    .restart local v2    # "length":I
    .restart local v3    # "remainder":I
    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v4, v5, v8}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    .line 286
    .restart local v1    # "i":I
    :cond_3
    add-int/lit16 v0, v1, 0x400

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fCharBuffer:[C

    invoke-virtual {p1, v1, v0, v4, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 287
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fCharBuffer:[C

    const/16 v6, 0x400

    invoke-virtual {v4, v5, v7, v6}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 288
    if-eqz p2, :cond_4

    .line 289
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v4, v5, v8}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    move v1, v0

    .line 290
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 292
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_4
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v4, v5, v8}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1
.end method


# virtual methods
.method final fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "toFill"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "localpart"    # Ljava/lang/String;
    .param p4, "prefix"    # Ljava/lang/String;

    .prologue
    .line 408
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, p2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 409
    :goto_0
    if-eqz p3, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, p3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 410
    :goto_1
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, p4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 411
    :goto_2
    move-object v0, p3

    .line 412
    .local v0, "raw":Ljava/lang/String;
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq p4, v1, :cond_0

    .line 413
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 414
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, p4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 416
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, p3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 417
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v2, v2, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v3, v3, Lmf/org/apache/xerces/util/XMLStringBuffer;->offset:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v4, v4, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v1, v2, v3, v4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v0

    .line 419
    :cond_0
    invoke-virtual {p1, p4, p3, v0, p2}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    return-void

    .line 408
    .end local v0    # "raw":Ljava/lang/String;
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 409
    :cond_2
    sget-object p3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_1

    .line 410
    :cond_3
    sget-object p4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_2
.end method

.method public getDocument()Lmf/org/w3c/dom/Document;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->getDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lmf/javax/xml/stream/XMLEventReader;)V
    .locals 11
    .param p1, "input"    # Lmf/javax/xml/stream/XMLEventReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 104
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLEventReader;->peek()Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 105
    .local v0, "currentEvent":Lmf/javax/xml/stream/events/XMLEvent;
    if-eqz v0, :cond_2

    .line 106
    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v2

    .line 107
    .local v2, "eventType":I
    const/4 v5, 0x7

    if-eq v2, v5, :cond_0

    .line 108
    if-eq v2, v10, :cond_0

    .line 109
    new-instance v5, Lmf/javax/xml/stream/XMLStreamException;

    invoke-direct {v5}, Lmf/javax/xml/stream/XMLStreamException;-><init>()V

    throw v5

    .line 111
    :cond_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    .line 112
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v5, v6, v8, v7, v8}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 113
    :cond_1
    :goto_0
    :pswitch_0
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 175
    :goto_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    .line 176
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->setNamespaceContext(Lmf/javax/xml/namespace/NamespaceContext;)V

    .line 177
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 179
    .end local v2    # "eventType":I
    :cond_2
    return-void

    .line 114
    .restart local v2    # "eventType":I
    :cond_3
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLEventReader;->nextEvent()Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 115
    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v2

    .line 116
    packed-switch v2, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 118
    :pswitch_2
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    .line 119
    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->asStartElement()Lmf/javax/xml/stream/events/StartElement;

    move-result-object v4

    .line 120
    .local v4, "start":Lmf/javax/xml/stream/events/StartElement;
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {v4}, Lmf/javax/xml/stream/events/StartElement;->getName()Lmf/javax/xml/namespace/QName;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/javax/xml/namespace/QName;)V

    .line 121
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-interface {v4}, Lmf/javax/xml/stream/events/StartElement;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    .line 122
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-interface {v4}, Lmf/javax/xml/stream/events/StartElement;->getNamespaceContext()Lmf/javax/xml/namespace/NamespaceContext;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->setNamespaceContext(Lmf/javax/xml/namespace/NamespaceContext;)V

    .line 123
    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillXMLAttributes(Lmf/javax/xml/stream/events/StartElement;)V

    .line 124
    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillDeclaredPrefixes(Lmf/javax/xml/stream/events/StartElement;)V

    .line 125
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->addNamespaceDeclarations()V

    .line 126
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v5}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->pushContext()V

    .line 127
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v5, v6, v7, v8}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    .line 130
    .end local v4    # "start":Lmf/javax/xml/stream/events/StartElement;
    :pswitch_3
    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->asEndElement()Lmf/javax/xml/stream/events/EndElement;

    move-result-object v1

    .line 131
    .local v1, "end":Lmf/javax/xml/stream/events/EndElement;
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {v1}, Lmf/javax/xml/stream/events/EndElement;->getName()Lmf/javax/xml/namespace/QName;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/javax/xml/namespace/QName;)V

    .line 132
    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillDeclaredPrefixes(Lmf/javax/xml/stream/events/EndElement;)V

    .line 133
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-interface {v1}, Lmf/javax/xml/stream/events/EndElement;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    .line 134
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v5, v6, v8}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 135
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v5}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->popContext()V

    .line 136
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    .line 137
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    if-gtz v5, :cond_1

    goto/16 :goto_1

    .line 142
    .end local v1    # "end":Lmf/javax/xml/stream/events/EndElement;
    :pswitch_4
    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->asCharacters()Lmf/javax/xml/stream/events/Characters;

    move-result-object v5

    invoke-interface {v5}, Lmf/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v9}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->sendCharactersToSchemaParser(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 145
    :pswitch_5
    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->asCharacters()Lmf/javax/xml/stream/events/Characters;

    move-result-object v5

    invoke-interface {v5}, Lmf/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v10}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->sendCharactersToSchemaParser(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 148
    :pswitch_6
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 149
    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->asCharacters()Lmf/javax/xml/stream/events/Characters;

    move-result-object v5

    invoke-interface {v5}, Lmf/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v9}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->sendCharactersToSchemaParser(Ljava/lang/String;Z)V

    .line 150
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    :pswitch_7
    move-object v3, v0

    .line 153
    check-cast v3, Lmf/javax/xml/stream/events/ProcessingInstruction;

    .line 154
    .local v3, "pi":Lmf/javax/xml/stream/events/ProcessingInstruction;
    invoke-interface {v3}, Lmf/javax/xml/stream/events/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillProcessingInstruction(Ljava/lang/String;)V

    .line 155
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-interface {v3}, Lmf/javax/xml/stream/events/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v5, v6, v7, v8}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    .line 167
    .end local v3    # "pi":Lmf/javax/xml/stream/events/ProcessingInstruction;
    :pswitch_8
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    goto/16 :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public parse(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 7
    .param p1, "input"    # Lmf/javax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 182
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    .line 184
    .local v0, "eventType":I
    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    .line 185
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 186
    new-instance v2, Lmf/javax/xml/stream/XMLStreamException;

    invoke-direct {v2}, Lmf/javax/xml/stream/XMLStreamException;-><init>()V

    throw v2

    .line 188
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    .line 189
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v2, v3, v6, v4, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 190
    const/4 v1, 0x1

    .line 191
    .local v1, "first":Z
    :cond_1
    :goto_0
    :pswitch_0
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 263
    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-virtual {v2, v6}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    .line 264
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v2, v6}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->setNamespaceContext(Lmf/javax/xml/namespace/NamespaceContext;)V

    .line 265
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v2, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 267
    .end local v0    # "eventType":I
    .end local v1    # "first":Z
    :cond_2
    return-void

    .line 192
    .restart local v0    # "eventType":I
    .restart local v1    # "first":Z
    :cond_3
    if-nez v1, :cond_4

    .line 193
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->next()I

    move-result v0

    .line 198
    :goto_2
    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 200
    :pswitch_2
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    .line 201
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    .line 202
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getNamespaceContext()Lmf/javax/xml/namespace/NamespaceContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->setNamespaceContext(Lmf/javax/xml/namespace/NamespaceContext;)V

    .line 203
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v5

    .line 203
    invoke-virtual {p0, v2, v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillXMLAttributes(Lmf/javax/xml/stream/XMLStreamReader;)V

    .line 206
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillDeclaredPrefixes(Lmf/javax/xml/stream/XMLStreamReader;)V

    .line 207
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->addNamespaceDeclarations()V

    .line 208
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->pushContext()V

    .line 209
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v2, v3, v4, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    .line 196
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 212
    :pswitch_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    .line 213
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getNamespaceContext()Lmf/javax/xml/namespace/NamespaceContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->setNamespaceContext(Lmf/javax/xml/namespace/NamespaceContext;)V

    .line 214
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v5

    .line 214
    invoke-virtual {p0, v2, v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillDeclaredPrefixes(Lmf/javax/xml/stream/XMLStreamReader;)V

    .line 217
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v2, v3, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 218
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->popContext()V

    .line 219
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    .line 220
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    if-gtz v2, :cond_1

    goto/16 :goto_1

    .line 225
    :pswitch_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v3

    .line 226
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v4

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v5

    .line 225
    invoke-virtual {v2, v3, v4, v5}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 227
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v2, v3, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    .line 230
    :pswitch_5
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v3

    .line 231
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v4

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v5

    .line 230
    invoke-virtual {v2, v3, v4, v5}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 232
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v2, v3, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    .line 235
    :pswitch_6
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v2, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 236
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v3

    .line 237
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v4

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v5

    .line 236
    invoke-virtual {v2, v3, v4, v5}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 238
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v2, v3, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 239
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v2, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    .line 242
    :pswitch_7
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillProcessingInstruction(Ljava/lang/String;)V

    .line 243
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v2, v3, v4, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    .line 255
    :pswitch_8
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    goto/16 :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public reset(Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 2
    .param p1, "schemaDOMParser"    # Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;
    .param p2, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    .line 93
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    .line 94
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 95
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->setSymbolTable(Lmf/org/apache/xerces/util/SymbolTable;)V

    .line 96
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->reset()V

    .line 97
    return-void
.end method
