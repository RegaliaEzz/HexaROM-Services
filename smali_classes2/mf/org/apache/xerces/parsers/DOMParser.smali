.class public Lmf/org/apache/xerces/parsers/DOMParser;
.super Lmf/org/apache/xerces/parsers/AbstractDOMParser;
.source "DOMParser.java"


# static fields
.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final USE_ENTITY_RESOLVER2:Ljava/lang/String; = "http://xml.org/sax/features/use-entity-resolver2"

.field protected static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field protected fUseEntityResolver2:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 85
    const-string v2, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 86
    const-string v2, "http://apache.org/xml/properties/internal/grammar-pool"

    aput-object v2, v0, v1

    .line 84
    sput-object v0, Lmf/org/apache/xerces/parsers/DOMParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, v0, v0}, Lmf/org/apache/xerces/parsers/DOMParser;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/parsers/DOMParser;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 2
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "grammarPool"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .prologue
    .line 130
    .line 131
    const-string v0, "mf.org.apache.xerces.xni.parser.XMLParserConfiguration"

    .line 132
    const-string v1, "mf.org.apache.xerces.parsers.XIncludeAwareParserConfiguration"

    invoke-static {v0, v1}, Lmf/org/apache/xerces/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fUseEntityResolver2:Z

    .line 136
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    sget-object v1, Lmf/org/apache/xerces/parsers/DOMParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    .line 137
    if-eqz p1, :cond_0

    .line 138
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v0, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    :cond_0
    if-eqz p2, :cond_1

    .line 141
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    :cond_1
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 1
    .param p1, "config"    # Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fUseEntityResolver2:Z

    .line 107
    return-void
.end method


# virtual methods
.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 4

    .prologue
    .line 322
    const/4 v0, 0x0

    .line 325
    .local v0, "entityResolver":Lorg/xml/sax/EntityResolver;
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v3, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .line 326
    .local v1, "xmlEntityResolver":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    if-eqz v1, :cond_0

    .line 327
    instance-of v2, v1, Lmf/org/apache/xerces/util/EntityResolverWrapper;

    if-eqz v2, :cond_1

    .line 329
    check-cast v1, Lmf/org/apache/xerces/util/EntityResolverWrapper;

    .end local v1    # "xmlEntityResolver":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    invoke-virtual {v1}, Lmf/org/apache/xerces/util/EntityResolverWrapper;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v0

    .line 340
    :cond_0
    :goto_0
    return-object v0

    .line 331
    .restart local v1    # "xmlEntityResolver":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    :cond_1
    instance-of v2, v1, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;

    if-eqz v2, :cond_0

    .line 333
    check-cast v1, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;

    .end local v1    # "xmlEntityResolver":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    invoke-virtual {v1}, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;->getEntityResolver()Lorg/xml/sax/ext/EntityResolver2;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 332
    goto :goto_0

    .line 337
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 4

    .prologue
    .line 390
    const/4 v0, 0x0

    .line 393
    .local v0, "errorHandler":Lorg/xml/sax/ErrorHandler;
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v3, "http://apache.org/xml/properties/internal/error-handler"

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    .line 394
    .local v1, "xmlErrorHandler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    if-eqz v1, :cond_0

    .line 395
    instance-of v2, v1, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    if-eqz v2, :cond_0

    .line 396
    check-cast v1, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    .end local v1    # "xmlErrorHandler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    invoke-virtual {v1}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->getErrorHandler()Lorg/xml/sax/ErrorHandler;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 402
    :cond_0
    :goto_0
    return-object v0

    .line 399
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 7
    .param p1, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 483
    :try_start_0
    const-string v2, "http://xml.org/sax/features/use-entity-resolver2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 484
    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fUseEntityResolver2:Z

    .line 491
    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, "identifier":Ljava/lang/String;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v2

    if-nez v2, :cond_1

    .line 496
    new-instance v2, Lorg/xml/sax/SAXNotRecognizedException;

    .line 497
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 498
    const-string v4, "feature-not-recognized"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 497
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 496
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 501
    :cond_1
    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    .line 502
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 503
    const-string v4, "feature-not-supported"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 502
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 501
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "propertyId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 563
    const-string v4, "http://apache.org/xml/properties/dom/current-element-node"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 564
    const/4 v0, 0x0

    .line 566
    .local v0, "deferred":Z
    :try_start_0
    const-string v4, "http://apache.org/xml/features/dom/defer-node-expansion"

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/parsers/DOMParser;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 571
    :goto_0
    if-eqz v0, :cond_0

    .line 572
    new-instance v4, Lorg/xml/sax/SAXNotSupportedException;

    .line 574
    const-string v5, "http://www.w3.org/dom/DOMTR"

    .line 575
    const-string v6, "CannotQueryDeferredNode"

    .line 573
    invoke-static {v5, v6, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 572
    invoke-direct {v4, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 577
    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-eqz v4, :cond_1

    .line 578
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v6, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 582
    .end local v0    # "deferred":Z
    :cond_1
    :goto_1
    return-object v3

    :cond_2
    :try_start_1
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1

    .line 584
    :catch_0
    move-exception v1

    .line 585
    .local v1, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    invoke-virtual {v1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 586
    .local v2, "identifier":Ljava/lang/String;
    invoke-virtual {v1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v3

    if-nez v3, :cond_3

    .line 587
    new-instance v3, Lorg/xml/sax/SAXNotRecognizedException;

    .line 588
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v4

    .line 589
    const-string v5, "property-not-recognized"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    .line 588
    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 587
    invoke-direct {v3, v4}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 592
    :cond_3
    new-instance v3, Lorg/xml/sax/SAXNotSupportedException;

    .line 593
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v4

    .line 594
    const-string v5, "property-not-supported"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    .line 593
    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 592
    invoke-direct {v3, v4}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 568
    .end local v1    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    .end local v2    # "identifier":Ljava/lang/String;
    .restart local v0    # "deferred":Z
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public getXMLParserConfiguration()Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    return-object v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 6
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 166
    new-instance v3, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-direct {v3, v4, p1, v4}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .local v3, "source":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :try_start_0
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/DOMParser;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getException()Ljava/lang/Exception;

    move-result-object v1

    .line 174
    .local v1, "ex":Ljava/lang/Exception;
    if-eqz v1, :cond_0

    instance-of v4, v1, Ljava/io/CharConversionException;

    if-eqz v4, :cond_2

    .line 177
    :cond_0
    new-instance v2, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v2}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    .line 178
    .local v2, "locatorImpl":Lorg/xml/sax/helpers/LocatorImpl;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 181
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 182
    if-nez v1, :cond_1

    .line 183
    new-instance v4, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    .line 182
    :goto_0
    throw v4

    .line 184
    :cond_1
    new-instance v4, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2, v1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    goto :goto_0

    .line 186
    .end local v2    # "locatorImpl":Lorg/xml/sax/helpers/LocatorImpl;
    :cond_2
    instance-of v4, v1, Lorg/xml/sax/SAXException;

    if-eqz v4, :cond_3

    .line 188
    check-cast v1, Lorg/xml/sax/SAXException;

    .end local v1    # "ex":Ljava/lang/Exception;
    throw v1

    .line 190
    .restart local v1    # "ex":Ljava/lang/Exception;
    :cond_3
    instance-of v4, v1, Ljava/io/IOException;

    if-eqz v4, :cond_4

    .line 191
    check-cast v1, Ljava/io/IOException;

    .end local v1    # "ex":Ljava/lang/Exception;
    throw v1

    .line 193
    .restart local v1    # "ex":Ljava/lang/Exception;
    :cond_4
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 195
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 196
    .local v0, "e":Lmf/org/apache/xerces/xni/XNIException;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/XNIException;->printStackTrace()V

    .line 197
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v1

    .line 198
    .restart local v1    # "ex":Ljava/lang/Exception;
    if-nez v1, :cond_5

    .line 199
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/XNIException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 201
    :cond_5
    instance-of v4, v1, Lorg/xml/sax/SAXException;

    if-eqz v4, :cond_6

    .line 202
    check-cast v1, Lorg/xml/sax/SAXException;

    .end local v1    # "ex":Ljava/lang/Exception;
    throw v1

    .line 204
    .restart local v1    # "ex":Ljava/lang/Exception;
    :cond_6
    instance-of v4, v1, Ljava/io/IOException;

    if-eqz v4, :cond_7

    .line 205
    check-cast v1, Ljava/io/IOException;

    .end local v1    # "ex":Ljava/lang/Exception;
    throw v1

    .line 207
    .restart local v1    # "ex":Ljava/lang/Exception;
    :cond_7
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 7
    .param p1, "inputSource"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    :try_start_0
    new-instance v3, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v4

    .line 227
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v5

    .line 228
    const/4 v6, 0x0

    .line 226
    invoke-direct {v3, v4, v5, v6}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .local v3, "xmlInputSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 230
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 231
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setEncoding(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/DOMParser;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    .line 273
    return-void

    .line 236
    .end local v3    # "xmlInputSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getException()Ljava/lang/Exception;

    move-result-object v1

    .line 238
    .local v1, "ex":Ljava/lang/Exception;
    if-eqz v1, :cond_0

    instance-of v4, v1, Ljava/io/CharConversionException;

    if-eqz v4, :cond_2

    .line 241
    :cond_0
    new-instance v2, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v2}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    .line 242
    .local v2, "locatorImpl":Lorg/xml/sax/helpers/LocatorImpl;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 245
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 246
    if-nez v1, :cond_1

    .line 247
    new-instance v4, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    .line 246
    :goto_0
    throw v4

    .line 248
    :cond_1
    new-instance v4, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2, v1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    goto :goto_0

    .line 250
    .end local v2    # "locatorImpl":Lorg/xml/sax/helpers/LocatorImpl;
    :cond_2
    instance-of v4, v1, Lorg/xml/sax/SAXException;

    if-eqz v4, :cond_3

    .line 252
    check-cast v1, Lorg/xml/sax/SAXException;

    .end local v1    # "ex":Ljava/lang/Exception;
    throw v1

    .line 254
    .restart local v1    # "ex":Ljava/lang/Exception;
    :cond_3
    instance-of v4, v1, Ljava/io/IOException;

    if-eqz v4, :cond_4

    .line 255
    check-cast v1, Ljava/io/IOException;

    .end local v1    # "ex":Ljava/lang/Exception;
    throw v1

    .line 257
    .restart local v1    # "ex":Ljava/lang/Exception;
    :cond_4
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 259
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 260
    .local v0, "e":Lmf/org/apache/xerces/xni/XNIException;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v1

    .line 261
    .restart local v1    # "ex":Ljava/lang/Exception;
    if-nez v1, :cond_5

    .line 262
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/XNIException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 264
    :cond_5
    instance-of v4, v1, Lorg/xml/sax/SAXException;

    if-eqz v4, :cond_6

    .line 265
    check-cast v1, Lorg/xml/sax/SAXException;

    .end local v1    # "ex":Ljava/lang/Exception;
    throw v1

    .line 267
    .restart local v1    # "ex":Ljava/lang/Exception;
    :cond_6
    instance-of v4, v1, Ljava/io/IOException;

    if-eqz v4, :cond_7

    .line 268
    check-cast v1, Ljava/io/IOException;

    .end local v1    # "ex":Ljava/lang/Exception;
    throw v1

    .line 270
    .restart local v1    # "ex":Ljava/lang/Exception;
    :cond_7
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 7
    .param p1, "resolver"    # Lorg/xml/sax/EntityResolver;

    .prologue
    .line 285
    :try_start_0
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v5, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {v4, v5}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .line 286
    .local v3, "xer":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    iget-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fUseEntityResolver2:Z

    if-eqz v4, :cond_1

    instance-of v4, p1, Lorg/xml/sax/ext/EntityResolver2;

    if-eqz v4, :cond_1

    .line 287
    instance-of v4, v3, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;

    if-eqz v4, :cond_0

    .line 288
    move-object v0, v3

    check-cast v0, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;

    move-object v1, v0

    .line 289
    .local v1, "er2w":Lmf/org/apache/xerces/util/EntityResolver2Wrapper;
    check-cast p1, Lorg/xml/sax/ext/EntityResolver2;

    .end local p1    # "resolver":Lorg/xml/sax/EntityResolver;
    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;->setEntityResolver(Lorg/xml/sax/ext/EntityResolver2;)V

    .line 311
    .end local v1    # "er2w":Lmf/org/apache/xerces/util/EntityResolver2Wrapper;
    .end local v3    # "xer":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    :goto_0
    return-void

    .line 292
    .restart local v3    # "xer":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    .restart local p1    # "resolver":Lorg/xml/sax/EntityResolver;
    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v5, "http://apache.org/xml/properties/internal/entity-resolver"

    .line 293
    new-instance v6, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;

    check-cast p1, Lorg/xml/sax/ext/EntityResolver2;

    .end local p1    # "resolver":Lorg/xml/sax/EntityResolver;
    invoke-direct {v6, p1}, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;-><init>(Lorg/xml/sax/ext/EntityResolver2;)V

    .line 292
    invoke-interface {v4, v5, v6}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 307
    .end local v3    # "xer":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 297
    .restart local v3    # "xer":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    .restart local p1    # "resolver":Lorg/xml/sax/EntityResolver;
    :cond_1
    instance-of v4, v3, Lmf/org/apache/xerces/util/EntityResolverWrapper;

    if-eqz v4, :cond_2

    .line 298
    move-object v0, v3

    check-cast v0, Lmf/org/apache/xerces/util/EntityResolverWrapper;

    move-object v2, v0

    .line 299
    .local v2, "erw":Lmf/org/apache/xerces/util/EntityResolverWrapper;
    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/util/EntityResolverWrapper;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    goto :goto_0

    .line 302
    .end local v2    # "erw":Lmf/org/apache/xerces/util/EntityResolverWrapper;
    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v5, "http://apache.org/xml/properties/internal/entity-resolver"

    .line 303
    new-instance v6, Lmf/org/apache/xerces/util/EntityResolverWrapper;

    invoke-direct {v6, p1}, Lmf/org/apache/xerces/util/EntityResolverWrapper;-><init>(Lorg/xml/sax/EntityResolver;)V

    .line 302
    invoke-interface {v4, v5, v6}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 6
    .param p1, "errorHandler"    # Lorg/xml/sax/ErrorHandler;

    .prologue
    .line 365
    :try_start_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/properties/internal/error-handler"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    .line 366
    .local v2, "xeh":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    instance-of v3, v2, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    if-eqz v3, :cond_0

    .line 367
    move-object v0, v2

    check-cast v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    move-object v1, v0

    .line 368
    .local v1, "ehw":Lmf/org/apache/xerces/util/ErrorHandlerWrapper;
    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 379
    .end local v1    # "ehw":Lmf/org/apache/xerces/util/ErrorHandlerWrapper;
    .end local v2    # "xeh":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    :goto_0
    return-void

    .line 371
    .restart local v2    # "xeh":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/properties/internal/error-handler"

    .line 372
    new-instance v5, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    invoke-direct {v5, p1}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;-><init>(Lorg/xml/sax/ErrorHandler;)V

    .line 371
    invoke-interface {v3, v4, v5}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    .end local v2    # "xeh":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "featureId"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 429
    :try_start_0
    const-string v2, "http://xml.org/sax/features/use-entity-resolver2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 430
    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fUseEntityResolver2:Z

    if-eq p2, v2, :cond_0

    .line 431
    iput-boolean p2, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fUseEntityResolver2:Z

    .line 433
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DOMParser;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/parsers/DOMParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, "identifier":Ljava/lang/String;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v2

    if-nez v2, :cond_2

    .line 447
    new-instance v2, Lorg/xml/sax/SAXNotRecognizedException;

    .line 448
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 449
    const-string v4, "feature-not-recognized"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 448
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 447
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 452
    :cond_2
    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    .line 453
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 454
    const-string v4, "feature-not-supported"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 453
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 452
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "propertyId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 528
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    return-void

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, "identifier":Ljava/lang/String;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v2

    if-nez v2, :cond_0

    .line 533
    new-instance v2, Lorg/xml/sax/SAXNotRecognizedException;

    .line 534
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 535
    const-string v4, "property-not-recognized"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 534
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 533
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 538
    :cond_0
    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    .line 539
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 540
    const-string v4, "property-not-supported"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 539
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 538
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
