.class public final Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;
.super Lmf/javax/xml/validation/SchemaFactory;
.source "XMLSchemaFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolImplExtension;,
        Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;
    }
.end annotation


# static fields
.field private static final JAXP_SOURCE_FEATURE_PREFIX:Ljava/lang/String; = "http://javax.xml.transform"

.field private static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field private static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field private static final USE_GRAMMAR_POOL_ONLY:Ljava/lang/String; = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

.field private static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field private final fDOMEntityResolverWrapper:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

.field private fErrorHandler:Lorg/xml/sax/ErrorHandler;

.field private final fErrorHandlerWrapper:Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

.field private fLSResourceResolver:Lmf/org/w3c/dom/ls/LSResourceResolver;

.field private fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

.field private fUseGrammarPoolOnly:Z

.field private final fXMLGrammarPoolWrapper:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;

.field private final fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 119
    invoke-direct {p0}, Lmf/javax/xml/validation/SchemaFactory;-><init>()V

    .line 96
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    .line 120
    new-instance v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    invoke-static {}, Lmf/org/apache/xerces/jaxp/validation/DraconianErrorHandler;->getInstance()Lmf/org/apache/xerces/jaxp/validation/DraconianErrorHandler;

    move-result-object v1

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;-><init>(Lorg/xml/sax/ErrorHandler;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    .line 121
    new-instance v0, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fDOMEntityResolverWrapper:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    .line 122
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;

    invoke-direct {v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLGrammarPoolWrapper:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;

    .line 123
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    const-string v1, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-virtual {v0, v1, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setFeature(Ljava/lang/String;Z)V

    .line 124
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    const-string v1, "http://apache.org/xml/properties/internal/grammar-pool"

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLGrammarPoolWrapper:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fDOMEntityResolverWrapper:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V

    .line 126
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V

    .line 127
    iput-boolean v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fUseGrammarPoolOnly:Z

    .line 128
    return-void
.end method

.method private propagateFeatures(Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;)V
    .locals 5
    .param p1, "schema"    # Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;

    .prologue
    .line 452
    const-string v4, "http://javax.xml.XMLConstants/feature/secure-processing"

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p1, v4, v3}, Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;->setFeature(Ljava/lang/String;Z)V

    .line 453
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "features":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-lt v1, v3, :cond_1

    .line 458
    return-void

    .line 452
    .end local v0    # "features":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 455
    .restart local v0    # "features":[Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getFeature(Ljava/lang/String;)Z

    move-result v2

    .line 456
    .local v2, "state":Z
    aget-object v3, v0, v1

    invoke-virtual {p1, v3, v2}, Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;->setFeature(Ljava/lang/String;Z)V

    .line 454
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 305
    if-nez p1, :cond_0

    .line 306
    new-instance v2, Ljava/lang/NullPointerException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 307
    const-string v4, "FeatureNameNull"

    const/4 v5, 0x0

    .line 306
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 309
    :cond_0
    const-string v4, "http://javax.xml.transform"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 311
    const-string v4, "http://javax.xml.transform.stream.StreamSource/feature"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 312
    const-string v4, "http://javax.xml.transform.sax.SAXSource/feature"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 313
    const-string v4, "http://javax.xml.transform.dom.DOMSource/feature"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 314
    const-string v4, "http://javax.xml.transform.stax.StAXSource/feature"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 325
    :cond_1
    :goto_0
    return v2

    .line 318
    :cond_2
    const-string v4, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 319
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    if-nez v4, :cond_1

    move v2, v3

    goto :goto_0

    .line 321
    :cond_3
    const-string v4, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 322
    iget-boolean v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fUseGrammarPoolOnly:Z

    goto :goto_0

    .line 325
    :cond_4
    :try_start_0
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v4, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "identifier":Ljava/lang/String;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v4

    if-nez v4, :cond_5

    .line 330
    new-instance v4, Lorg/xml/sax/SAXNotRecognizedException;

    .line 331
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v5

    .line 332
    const-string v6, "feature-not-recognized"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    .line 331
    invoke-static {v5, v6, v2}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-direct {v4, v2}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 335
    :cond_5
    new-instance v4, Lorg/xml/sax/SAXNotSupportedException;

    .line 336
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v5

    .line 337
    const-string v6, "feature-not-supported"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    .line 336
    invoke-static {v5, v6, v2}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 335
    invoke-direct {v4, v2}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 344
    if-nez p1, :cond_0

    .line 345
    new-instance v2, Ljava/lang/NullPointerException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 346
    const-string v4, "ProperyNameNull"

    const/4 v5, 0x0

    .line 345
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 348
    :cond_0
    const-string v2, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 349
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    .line 357
    :goto_0
    return-object v2

    .line 351
    :cond_1
    const-string v2, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 352
    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    .line 353
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 354
    const-string v4, "property-not-supported"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    .line 353
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 352
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 357
    :cond_2
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "identifier":Ljava/lang/String;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v2

    if-nez v2, :cond_3

    .line 362
    new-instance v2, Lorg/xml/sax/SAXNotRecognizedException;

    .line 363
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 364
    const-string v4, "property-not-recognized"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 363
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 362
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 367
    :cond_3
    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    .line 368
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 369
    const-string v4, "property-not-supported"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 368
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 367
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getResourceResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fLSResourceResolver:Lmf/org/w3c/dom/ls/LSResourceResolver;

    return-object v0
.end method

.method public isSchemaLanguageSupported(Ljava/lang/String;)Z
    .locals 4
    .param p1, "schemaLanguage"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 143
    if-nez p1, :cond_0

    .line 144
    new-instance v0, Ljava/lang/NullPointerException;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 145
    const-string v2, "SchemaLanguageNull"

    .line 144
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 149
    const-string v2, "SchemaLanguageLengthZero"

    .line 148
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    const-string v0, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newSchema()Lmf/javax/xml/validation/Schema;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/WeakReferenceXMLSchema;

    invoke-direct {v0}, Lmf/org/apache/xerces/jaxp/validation/WeakReferenceXMLSchema;-><init>()V

    .line 288
    .local v0, "schema":Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->propagateFeatures(Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;)V

    .line 289
    return-object v0
.end method

.method public newSchema(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)Lmf/javax/xml/validation/Schema;
    .locals 2
    .param p1, "pool"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 296
    iget-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fUseGrammarPoolOnly:Z

    if-eqz v1, :cond_0

    .line 297
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchema;

    new-instance v1, Lmf/org/apache/xerces/jaxp/validation/ReadOnlyGrammarPool;

    invoke-direct {v1, p1}, Lmf/org/apache/xerces/jaxp/validation/ReadOnlyGrammarPool;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchema;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    .line 299
    .local v0, "schema":Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;
    :goto_0
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->propagateFeatures(Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;)V

    .line 300
    return-object v0

    .line 298
    .end local v0    # "schema":Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchema;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchema;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Z)V

    goto :goto_0
.end method

.method public newSchema([Lmf/javax/xml/transform/Source;)Lmf/javax/xml/validation/Schema;
    .locals 31
    .param p1, "schemas"    # [Lmf/javax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 180
    new-instance v12, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolImplExtension;

    invoke-direct {v12}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolImplExtension;-><init>()V

    .line 181
    .local v12, "pool":Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolImplExtension;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLGrammarPoolWrapper:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;->setGrammarPool(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    .line 183
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v0, v0, [Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-object/from16 v24, v0

    .line 186
    .local v24, "xmlInputSources":[Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v8, v0, :cond_0

    .line 237
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar([Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLGrammarPoolWrapper:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;->setGrammarPool(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    .line 256
    invoke-virtual {v12}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolImplExtension;->getGrammarCount()I

    move-result v6

    .line 257
    .local v6, "grammarCount":I
    const/16 v16, 0x0

    .line 258
    .local v16, "schema":Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fUseGrammarPoolOnly:Z

    move/from16 v25, v0

    if-eqz v25, :cond_b

    .line 259
    const/16 v25, 0x1

    move/from16 v0, v25

    if-le v6, v0, :cond_9

    .line 260
    new-instance v16, Lmf/org/apache/xerces/jaxp/validation/XMLSchema;

    .end local v16    # "schema":Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;
    new-instance v25, Lmf/org/apache/xerces/jaxp/validation/ReadOnlyGrammarPool;

    move-object/from16 v0, v25

    invoke-direct {v0, v12}, Lmf/org/apache/xerces/jaxp/validation/ReadOnlyGrammarPool;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchema;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    .line 273
    .restart local v16    # "schema":Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->propagateFeatures(Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;)V

    .line 274
    return-object v16

    .line 187
    .end local v6    # "grammarCount":I
    .end local v16    # "schema":Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;
    :cond_0
    aget-object v18, p1, v8

    .line 188
    .local v18, "source":Lmf/javax/xml/transform/Source;
    move-object/from16 v0, v18

    instance-of v0, v0, Lmf/javax/xml/transform/stream/StreamSource;

    move/from16 v25, v0

    if-eqz v25, :cond_1

    move-object/from16 v20, v18

    .line 189
    check-cast v20, Lmf/javax/xml/transform/stream/StreamSource;

    .line 190
    .local v20, "streamSource":Lmf/javax/xml/transform/stream/StreamSource;
    invoke-virtual/range {v20 .. v20}, Lmf/javax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    move-result-object v13

    .line 191
    .local v13, "publicId":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lmf/javax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v22

    .line 192
    .local v22, "systemId":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lmf/javax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 193
    .local v10, "inputStream":Ljava/io/InputStream;
    invoke-virtual/range {v20 .. v20}, Lmf/javax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v14

    .line 194
    .local v14, "reader":Ljava/io/Reader;
    new-instance v23, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-direct {v0, v13, v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .local v23, "xmlInputSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 196
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 197
    aput-object v23, v24, v8

    .line 186
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .end local v13    # "publicId":Ljava/lang/String;
    .end local v14    # "reader":Ljava/io/Reader;
    .end local v20    # "streamSource":Lmf/javax/xml/transform/stream/StreamSource;
    .end local v22    # "systemId":Ljava/lang/String;
    .end local v23    # "xmlInputSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 199
    :cond_1
    move-object/from16 v0, v18

    instance-of v0, v0, Lmf/javax/xml/transform/sax/SAXSource;

    move/from16 v25, v0

    if-eqz v25, :cond_3

    move-object/from16 v15, v18

    .line 200
    check-cast v15, Lmf/javax/xml/transform/sax/SAXSource;

    .line 201
    .local v15, "saxSource":Lmf/javax/xml/transform/sax/SAXSource;
    invoke-virtual {v15}, Lmf/javax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v9

    .line 202
    .local v9, "inputSource":Lorg/xml/sax/InputSource;
    if-nez v9, :cond_2

    .line 203
    new-instance v25, Lorg/xml/sax/SAXException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v26

    .line 204
    const-string v27, "SAXSourceNullInputSource"

    const/16 v28, 0x0

    .line 203
    invoke-static/range {v26 .. v28}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 206
    :cond_2
    new-instance v25, Lmf/org/apache/xerces/util/SAXInputSource;

    invoke-virtual {v15}, Lmf/javax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v9}, Lmf/org/apache/xerces/util/SAXInputSource;-><init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)V

    aput-object v25, v24, v8

    goto :goto_2

    .line 208
    .end local v9    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v15    # "saxSource":Lmf/javax/xml/transform/sax/SAXSource;
    :cond_3
    move-object/from16 v0, v18

    instance-of v0, v0, Lmf/javax/xml/transform/dom/DOMSource;

    move/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v3, v18

    .line 209
    check-cast v3, Lmf/javax/xml/transform/dom/DOMSource;

    .line 211
    .local v3, "domSource":Lmf/javax/xml/transform/dom/DOMSource;
    invoke-virtual {v3}, Lmf/javax/xml/transform/dom/DOMSource;->getNode()Lmf/org/w3c/dom/Node;

    move-result-object v11

    .line 212
    .local v11, "node":Lmf/org/w3c/dom/Node;
    invoke-virtual {v3}, Lmf/javax/xml/transform/dom/DOMSource;->getSystemId()Ljava/lang/String;

    move-result-object v21

    .line 213
    .local v21, "systemID":Ljava/lang/String;
    new-instance v25, Lmf/org/apache/xerces/util/DOMInputSource;

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-direct {v0, v11, v1}, Lmf/org/apache/xerces/util/DOMInputSource;-><init>(Lmf/org/w3c/dom/Node;Ljava/lang/String;)V

    aput-object v25, v24, v8

    goto :goto_2

    .line 215
    .end local v3    # "domSource":Lmf/javax/xml/transform/dom/DOMSource;
    .end local v11    # "node":Lmf/org/w3c/dom/Node;
    .end local v21    # "systemID":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v18

    instance-of v0, v0, Lmf/javax/xml/transform/stax/StAXSource;

    move/from16 v25, v0

    if-eqz v25, :cond_6

    move-object/from16 v19, v18

    .line 216
    check-cast v19, Lmf/javax/xml/transform/stax/StAXSource;

    .line 217
    .local v19, "staxSource":Lmf/javax/xml/transform/stax/StAXSource;
    invoke-virtual/range {v19 .. v19}, Lmf/javax/xml/transform/stax/StAXSource;->getXMLEventReader()Lmf/javax/xml/stream/XMLEventReader;

    move-result-object v5

    .line 218
    .local v5, "eventReader":Lmf/javax/xml/stream/XMLEventReader;
    if-eqz v5, :cond_5

    .line 219
    new-instance v25, Lmf/org/apache/xerces/util/StAXInputSource;

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Lmf/org/apache/xerces/util/StAXInputSource;-><init>(Lmf/javax/xml/stream/XMLEventReader;)V

    aput-object v25, v24, v8

    goto :goto_2

    .line 222
    :cond_5
    new-instance v25, Lmf/org/apache/xerces/util/StAXInputSource;

    invoke-virtual/range {v19 .. v19}, Lmf/javax/xml/transform/stax/StAXSource;->getXMLStreamReader()Lmf/javax/xml/stream/XMLStreamReader;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lmf/org/apache/xerces/util/StAXInputSource;-><init>(Lmf/javax/xml/stream/XMLStreamReader;)V

    aput-object v25, v24, v8

    goto/16 :goto_2

    .line 225
    .end local v5    # "eventReader":Lmf/javax/xml/stream/XMLEventReader;
    .end local v19    # "staxSource":Lmf/javax/xml/transform/stax/StAXSource;
    :cond_6
    if-nez v18, :cond_7

    .line 226
    new-instance v25, Ljava/lang/NullPointerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v26

    .line 227
    const-string v27, "SchemaSourceArrayMemberNull"

    const/16 v28, 0x0

    .line 226
    invoke-static/range {v26 .. v28}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 230
    :cond_7
    new-instance v25, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v26

    .line 231
    const-string v27, "SchemaFactorySourceUnrecognized"

    .line 232
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    .line 230
    invoke-static/range {v26 .. v28}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 239
    .end local v18    # "source":Lmf/javax/xml/transform/Source;
    :catch_0
    move-exception v4

    .line 241
    .local v4, "e":Lmf/org/apache/xerces/xni/XNIException;
    invoke-static {v4}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXException(Lmf/org/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v25

    throw v25

    .line 243
    .end local v4    # "e":Lmf/org/apache/xerces/xni/XNIException;
    :catch_1
    move-exception v4

    .line 245
    .local v4, "e":Ljava/io/IOException;
    new-instance v17, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v4}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    .line 246
    .local v17, "se":Lorg/xml/sax/SAXParseException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    .line 249
    :cond_8
    throw v17

    .line 262
    .end local v4    # "e":Ljava/io/IOException;
    .end local v17    # "se":Lorg/xml/sax/SAXParseException;
    .restart local v6    # "grammarCount":I
    .restart local v16    # "schema":Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;
    :cond_9
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v6, v0, :cond_a

    .line 263
    const-string v25, "http://www.w3.org/2001/XMLSchema"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolImplExtension;->retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v7

    .line 264
    .local v7, "grammars":[Lmf/org/apache/xerces/xni/grammars/Grammar;
    new-instance v16, Lmf/org/apache/xerces/jaxp/validation/SimpleXMLSchema;

    .end local v16    # "schema":Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;
    const/16 v25, 0x0

    aget-object v25, v7, v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/SimpleXMLSchema;-><init>(Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    .line 265
    .restart local v16    # "schema":Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;
    goto/16 :goto_1

    .line 267
    .end local v7    # "grammars":[Lmf/org/apache/xerces/xni/grammars/Grammar;
    :cond_a
    new-instance v16, Lmf/org/apache/xerces/jaxp/validation/EmptyXMLSchema;

    .end local v16    # "schema":Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;
    invoke-direct/range {v16 .. v16}, Lmf/org/apache/xerces/jaxp/validation/EmptyXMLSchema;-><init>()V

    .line 269
    .restart local v16    # "schema":Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;
    goto/16 :goto_1

    .line 271
    :cond_b
    new-instance v16, Lmf/org/apache/xerces/jaxp/validation/XMLSchema;

    .end local v16    # "schema":Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;
    new-instance v25, Lmf/org/apache/xerces/jaxp/validation/ReadOnlyGrammarPool;

    move-object/from16 v0, v25

    invoke-direct {v0, v12}, Lmf/org/apache/xerces/jaxp/validation/ReadOnlyGrammarPool;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    const/16 v26, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchema;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Z)V

    .restart local v16    # "schema":Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;
    goto/16 :goto_1
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 2
    .param p1, "errorHandler"    # Lorg/xml/sax/ErrorHandler;

    .prologue
    .line 172
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    .line 173
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    if-eqz p1, :cond_0

    .end local p1    # "errorHandler":Lorg/xml/sax/ErrorHandler;
    :goto_0
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 174
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V

    .line 175
    return-void

    .line 173
    .restart local p1    # "errorHandler":Lorg/xml/sax/ErrorHandler;
    :cond_0
    invoke-static {}, Lmf/org/apache/xerces/jaxp/validation/DraconianErrorHandler;->getInstance()Lmf/org/apache/xerces/jaxp/validation/DraconianErrorHandler;

    move-result-object p1

    goto :goto_0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 376
    if-nez p1, :cond_0

    .line 377
    new-instance v3, Ljava/lang/NullPointerException;

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v4

    .line 378
    const-string v5, "FeatureNameNull"

    .line 377
    invoke-static {v4, v5, v2}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 380
    :cond_0
    const-string v3, "http://javax.xml.transform"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 381
    const-string v3, "http://javax.xml.transform.stream.StreamSource/feature"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 382
    const-string v3, "http://javax.xml.transform.sax.SAXSource/feature"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 383
    const-string v3, "http://javax.xml.transform.dom.DOMSource/feature"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 384
    const-string v3, "http://javax.xml.transform.stax.StAXSource/feature"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 385
    :cond_1
    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    .line 386
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 387
    const-string v4, "feature-read-only"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    .line 386
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 385
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 390
    :cond_2
    const-string v3, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 391
    if-eqz p2, :cond_3

    new-instance v2, Lmf/org/apache/xerces/util/SecurityManager;

    invoke-direct {v2}, Lmf/org/apache/xerces/util/SecurityManager;-><init>()V

    :cond_3
    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    .line 392
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    const-string v3, "http://apache.org/xml/properties/security-manager"

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    invoke-virtual {v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 415
    :goto_0
    return-void

    .line 395
    :cond_4
    const-string v2, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 396
    iput-boolean p2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fUseGrammarPoolOnly:Z

    goto :goto_0

    .line 400
    :cond_5
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v2, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, "identifier":Ljava/lang/String;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v2

    if-nez v2, :cond_6

    .line 405
    new-instance v2, Lorg/xml/sax/SAXNotRecognizedException;

    .line 406
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 407
    const-string v4, "feature-not-recognized"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 406
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 405
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 410
    :cond_6
    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    .line 411
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 412
    const-string v4, "feature-not-supported"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 411
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 410
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 419
    if-nez p1, :cond_0

    .line 420
    new-instance v2, Ljava/lang/NullPointerException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 421
    const-string v4, "ProperyNameNull"

    const/4 v5, 0x0

    .line 420
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 423
    :cond_0
    const-string v2, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 424
    check-cast p2, Lmf/org/apache/xerces/util/SecurityManager;

    .end local p2    # "object":Ljava/lang/Object;
    iput-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    .line 425
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    const-string v3, "http://apache.org/xml/properties/security-manager"

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    invoke-virtual {v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 449
    :goto_0
    return-void

    .line 428
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_1
    const-string v2, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 429
    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    .line 430
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 431
    const-string v4, "property-not-supported"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    .line 430
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 429
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 434
    :cond_2
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v2, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "identifier":Ljava/lang/String;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v2

    if-nez v2, :cond_3

    .line 439
    new-instance v2, Lorg/xml/sax/SAXNotRecognizedException;

    .line 440
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 441
    const-string v4, "property-not-recognized"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 440
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 439
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 444
    :cond_3
    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    .line 445
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 446
    const-string v4, "property-not-supported"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 445
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 444
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V
    .locals 2
    .param p1, "resourceResolver"    # Lmf/org/w3c/dom/ls/LSResourceResolver;

    .prologue
    .line 162
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fLSResourceResolver:Lmf/org/w3c/dom/ls/LSResourceResolver;

    .line 163
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fDOMEntityResolverWrapper:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;->setEntityResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    .line 164
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fDOMEntityResolverWrapper:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V

    .line 165
    return-void
.end method
