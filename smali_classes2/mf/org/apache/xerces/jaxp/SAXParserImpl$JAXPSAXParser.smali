.class public Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;
.super Lmf/org/apache/xerces/parsers/SAXParser;
.source "SAXParserImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/jaxp/SAXParserImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JAXPSAXParser"
.end annotation


# instance fields
.field private final fInitFeatures:Ljava/util/HashMap;

.field private final fInitProperties:Ljava/util/HashMap;

.field private final fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;-><init>(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)V

    .line 371
    return-void
.end method

.method constructor <init>(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)V
    .locals 1
    .param p1, "saxParser"    # Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    .prologue
    .line 374
    invoke-direct {p0}, Lmf/org/apache/xerces/parsers/SAXParser;-><init>()V

    .line 365
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitFeatures:Ljava/util/HashMap;

    .line 366
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    .line 375
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    .line 376
    return-void
.end method

.method private resetSchemaValidator()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 648
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$0(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/xni/parser/XMLComponent;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidatorComponentManager:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;
    invoke-static {v2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$6(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    move-result-object v2

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    return-void

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private setSchemaValidatorFeature(Ljava/lang/String;Z)V
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
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 607
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-static {v2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$0(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/xni/parser/XMLComponent;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    return-void

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, "identifier":Ljava/lang/String;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v2

    if-nez v2, :cond_0

    .line 613
    new-instance v2, Lorg/xml/sax/SAXNotRecognizedException;

    .line 614
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 615
    const-string v4, "feature-not-recognized"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 614
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 613
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 618
    :cond_0
    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    .line 619
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 620
    const-string v4, "feature-not-supported"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 619
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 618
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setSchemaValidatorProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
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

    .line 628
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-static {v2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$0(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/xni/parser/XMLComponent;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    return-void

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 633
    .local v1, "identifier":Ljava/lang/String;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v2

    if-nez v2, :cond_0

    .line 634
    new-instance v2, Lorg/xml/sax/SAXNotRecognizedException;

    .line 635
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 636
    const-string v4, "property-not-recognized"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 635
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 634
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 639
    :cond_0
    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    .line 640
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 641
    const-string v4, "property-not-supported"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 640
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 639
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public declared-synchronized getFeature(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 422
    monitor-enter p0

    if-nez p1, :cond_0

    .line 424
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 426
    :cond_0
    :try_start_1
    const-string v2, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 428
    :try_start_2
    const-string v2, "http://apache.org/xml/properties/security-manager"

    invoke-super {p0, v2}, Lmf/org/apache/xerces/parsers/SAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 435
    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "exc":Lorg/xml/sax/SAXException;
    goto :goto_0

    .line 435
    .end local v0    # "exc":Lorg/xml/sax/SAXException;
    :cond_2
    :try_start_3
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/SAXParser;->getFeature(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    goto :goto_0
.end method

.method getFeature0(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 591
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/SAXParser;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 520
    monitor-enter p0

    if-nez p1, :cond_0

    .line 522
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 524
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    if-eqz v0, :cond_1

    const-string v0, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->schemaLanguage:Ljava/lang/String;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$3(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 528
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/SAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method getProperty0(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 601
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/SAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getXMLParserConfiguration()Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    return-object v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$0(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/xni/parser/XMLComponent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$4(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/impl/validation/ValidationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$4(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/impl/validation/ValidationManager;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->reset()V

    .line 573
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$5(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;->reset()V

    .line 575
    :cond_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->resetSchemaValidator()V

    .line 577
    :cond_1
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/SAXParser;->parse(Ljava/lang/String;)V

    .line 578
    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 1
    .param p1, "inputSource"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 558
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$0(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/xni/parser/XMLComponent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$4(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/impl/validation/ValidationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$4(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/impl/validation/ValidationManager;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->reset()V

    .line 561
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$5(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;->reset()V

    .line 563
    :cond_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->resetSchemaValidator()V

    .line 565
    :cond_1
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;)V

    .line 566
    return-void
.end method

.method declared-synchronized restoreInitState()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 534
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitFeatures:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 535
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitFeatures:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 536
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 542
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitFeatures:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 544
    .end local v1    # "iter":Ljava/util/Iterator;
    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 545
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 546
    .restart local v1    # "iter":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 552
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    .end local v1    # "iter":Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-void

    .line 537
    .restart local v1    # "iter":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 538
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 539
    .local v2, "name":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 540
    .local v3, "value":Z
    invoke-super {p0, v2, v3}, Lmf/org/apache/xerces/parsers/SAXParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 534
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "iter":Ljava/util/Iterator;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 547
    .restart local v1    # "iter":Ljava/util/Iterator;
    :cond_3
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 548
    .restart local v0    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 549
    .restart local v2    # "name":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 550
    .local v3, "value":Ljava/lang/Object;
    invoke-super {p0, v2, v3}, Lmf/org/apache/xerces/parsers/SAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setFeature(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 385
    monitor-enter p0

    if-nez p1, :cond_0

    .line 387
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 389
    :cond_0
    :try_start_1
    const-string v2, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .line 391
    :try_start_2
    const-string v3, "http://apache.org/xml/properties/security-manager"

    if-eqz p2, :cond_2

    new-instance v2, Lmf/org/apache/xerces/util/SecurityManager;

    invoke-direct {v2}, Lmf/org/apache/xerces/util/SecurityManager;-><init>()V

    :goto_0
    invoke-virtual {p0, v3, v2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 418
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 391
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 393
    :catch_0
    move-exception v1

    .line 396
    .local v1, "exc":Lorg/xml/sax/SAXNotRecognizedException;
    if-eqz p2, :cond_1

    .line 397
    :try_start_3
    throw v1

    .line 400
    .end local v1    # "exc":Lorg/xml/sax/SAXNotRecognizedException;
    :catch_1
    move-exception v1

    .line 403
    .local v1, "exc":Lorg/xml/sax/SAXNotSupportedException;
    if-eqz p2, :cond_1

    .line 404
    throw v1

    .line 409
    .end local v1    # "exc":Lorg/xml/sax/SAXNotSupportedException;
    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitFeatures:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 410
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/SAXParser;->getFeature(Ljava/lang/String;)Z

    move-result v0

    .line 411
    .local v0, "current":Z
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitFeatures:Ljava/util/HashMap;

    if-eqz v0, :cond_6

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .end local v0    # "current":Z
    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-static {v2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$0(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/xni/parser/XMLComponent;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 415
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setSchemaValidatorFeature(Ljava/lang/String;Z)V

    .line 417
    :cond_5
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/SAXParser;->setFeature(Ljava/lang/String;Z)V

    goto :goto_1

    .line 411
    .restart local v0    # "current":Z
    :cond_6
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method setFeature0(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 586
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/SAXParser;->setFeature(Ljava/lang/String;Z)V

    .line 587
    return-void
.end method

.method public declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 445
    monitor-enter p0

    if-nez p1, :cond_0

    .line 447
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 449
    :cond_0
    :try_start_1
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    if-eqz v1, :cond_a

    .line 451
    const-string v1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 454
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->grammar:Lmf/javax/xml/validation/Schema;
    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$1(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/javax/xml/validation/Schema;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 455
    new-instance v1, Lorg/xml/sax/SAXNotSupportedException;

    .line 456
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "schema-already-specified"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 455
    invoke-direct {v1, v2}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 458
    :cond_1
    const-string v1, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 460
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->isValidating()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 461
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    const-string v2, "http://www.w3.org/2001/XMLSchema"

    invoke-static {v1, v2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$2(Lmf/org/apache/xerces/jaxp/SAXParserImpl;Ljava/lang/String;)V

    .line 462
    const-string v1, "http://apache.org/xml/features/validation/schema"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setFeature(Ljava/lang/String;Z)V

    .line 465
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    const-string v2, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 466
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    const-string v2, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    const-string v3, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-super {p0, v3}, Lmf/org/apache/xerces/parsers/SAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    :cond_2
    const-string v1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    const-string v2, "http://www.w3.org/2001/XMLSchema"

    invoke-super {p0, v1, v2}, Lmf/org/apache/xerces/parsers/SAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 516
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 472
    :cond_4
    if-nez p2, :cond_5

    .line 473
    :try_start_2
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$2(Lmf/org/apache/xerces/jaxp/SAXParserImpl;Ljava/lang/String;)V

    .line 474
    const-string v1, "http://apache.org/xml/features/validation/schema"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    .line 480
    :cond_5
    new-instance v1, Lorg/xml/sax/SAXNotSupportedException;

    .line 481
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "schema-not-supported"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 480
    invoke-direct {v1, v2}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 485
    :cond_6
    const-string v1, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 488
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->grammar:Lmf/javax/xml/validation/Schema;
    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$1(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/javax/xml/validation/Schema;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 489
    new-instance v1, Lorg/xml/sax/SAXNotSupportedException;

    .line 490
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "schema-already-specified"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 489
    invoke-direct {v1, v2}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 492
    :cond_7
    const-string v1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 493
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_9

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 494
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    const-string v2, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 495
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    const-string v2, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    const-string v3, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-super {p0, v3}, Lmf/org/apache/xerces/parsers/SAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    :cond_8
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/SAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 500
    :cond_9
    new-instance v1, Lorg/xml/sax/SAXNotSupportedException;

    .line 501
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 502
    const-string v3, "jaxp-order-not-supported"

    .line 503
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    aput-object v6, v4, v5

    .line 501
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 500
    invoke-direct {v1, v2}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 508
    .end local v0    # "val":Ljava/lang/String;
    :cond_a
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 509
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/SAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    :cond_b
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$0(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/xni/parser/XMLComponent;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 513
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setSchemaValidatorProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 515
    :cond_c
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/SAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method setProperty0(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 596
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/SAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 597
    return-void
.end method
