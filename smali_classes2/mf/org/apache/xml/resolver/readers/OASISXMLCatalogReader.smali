.class public Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;
.super Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;
.source "OASISXMLCatalogReader.java"

# interfaces
.implements Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;


# static fields
.field public static final namespaceName:Ljava/lang/String; = "urn:oasis:names:tc:entity:xmlns:xml:catalog"

.field public static final tr9401NamespaceName:Ljava/lang/String; = "urn:oasis:names:tc:entity:xmlns:tr9401:catalog"


# instance fields
.field protected baseURIStack:Ljava/util/Stack;

.field protected catalog:Lmf/org/apache/xml/resolver/Catalog;

.field protected namespaceStack:Ljava/util/Stack;

.field protected overrideStack:Ljava/util/Stack;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    .line 58
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    .line 59
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    .line 60
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->namespaceStack:Ljava/util/Stack;

    .line 76
    return-void
.end method

.method public constructor <init>(Lmf/javax/xml/parsers/SAXParserFactory;Lmf/org/apache/xml/resolver/Catalog;)V
    .locals 1
    .param p1, "parserFactory"    # Lmf/javax/xml/parsers/SAXParserFactory;
    .param p2, "catalog"    # Lmf/org/apache/xml/resolver/Catalog;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;-><init>(Lmf/javax/xml/parsers/SAXParserFactory;)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    .line 58
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    .line 59
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    .line 60
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->namespaceStack:Ljava/util/Stack;

    .line 81
    invoke-virtual {p0, p2}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->setCatalog(Lmf/org/apache/xml/resolver/Catalog;)V

    .line 82
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 518
    return-void
.end method

.method public checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;)Z
    .locals 4
    .param p1, "atts"    # Lorg/xml/sax/Attributes;
    .param p2, "attName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 430
    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 431
    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error: required attribute "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " missing."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 432
    const/4 v0, 0x0

    .line 434
    :cond_0
    return v0
.end method

.method public checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "atts"    # Lorg/xml/sax/Attributes;
    .param p2, "attName1"    # Ljava/lang/String;
    .param p3, "attName2"    # Ljava/lang/String;

    .prologue
    .line 441
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 126
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 451
    const/4 v4, -0x1

    .line 452
    .local v4, "entryType":I
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 454
    .local v3, "entryArgs":Ljava/util/Vector;
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->inExtensionNamespace()Z

    move-result v5

    .line 456
    .local v5, "inExtension":Z
    if-eqz p1, :cond_1

    .line 457
    if-nez v5, :cond_1

    .line 458
    const-string v9, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 459
    const-string v9, "urn:oasis:names:tc:entity:xmlns:tr9401:catalog"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 461
    :cond_0
    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 462
    .local v8, "popURI":Ljava/lang/String;
    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 464
    .local v0, "baseURI":Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 465
    sget v4, Lmf/org/apache/xml/resolver/Catalog;->BASE:I

    .line 466
    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v10, 0x4

    const-string v11, "(reset) xml:base"

    invoke-virtual {v9, v10, v11, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 471
    :try_start_0
    new-instance v1, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v1, v4, v3}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    .line 472
    .local v1, "ce":Lmf/org/apache/xml/resolver/CatalogEntry;
    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v9, v1}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_0
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .end local v0    # "baseURI":Ljava/lang/String;
    .end local v1    # "ce":Lmf/org/apache/xml/resolver/CatalogEntry;
    .end local v8    # "popURI":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    const-string v9, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 484
    if-nez v5, :cond_3

    .line 485
    const-string v9, "catalog"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "group"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 486
    :cond_2
    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 487
    .local v7, "popOverride":Ljava/lang/String;
    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 489
    .local v6, "override":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 490
    sget v4, Lmf/org/apache/xml/resolver/Catalog;->OVERRIDE:I

    .line 491
    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    invoke-virtual {v9, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v10, 0x4

    const-string v11, "(reset) override"

    invoke-virtual {v9, v10, v11, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 497
    :try_start_1
    new-instance v1, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v1, v4, v3}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    .line 498
    .restart local v1    # "ce":Lmf/org/apache/xml/resolver/CatalogEntry;
    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v9, v1}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_1
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_1 .. :try_end_1} :catch_1

    .line 510
    .end local v1    # "ce":Lmf/org/apache/xml/resolver/CatalogEntry;
    .end local v6    # "override":Ljava/lang/String;
    .end local v7    # "popOverride":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->namespaceStack:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 512
    return-void

    .line 473
    .restart local v0    # "baseURI":Ljava/lang/String;
    .restart local v8    # "popURI":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 474
    .local v2, "cex":Lmf/org/apache/xml/resolver/CatalogException;
    invoke-virtual {v2}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    .line 475
    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v10, 0x1

    const-string v11, "Invalid catalog entry type"

    invoke-virtual {v9, v10, v11, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 476
    :cond_4
    invoke-virtual {v2}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 477
    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v10, 0x1

    const-string v11, "Invalid catalog entry (rbase)"

    invoke-virtual {v9, v10, v11, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 499
    .end local v0    # "baseURI":Ljava/lang/String;
    .end local v2    # "cex":Lmf/org/apache/xml/resolver/CatalogException;
    .end local v8    # "popURI":Ljava/lang/String;
    .restart local v6    # "override":Ljava/lang/String;
    .restart local v7    # "popOverride":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 500
    .restart local v2    # "cex":Lmf/org/apache/xml/resolver/CatalogException;
    invoke-virtual {v2}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    .line 501
    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v10, 0x1

    const-string v11, "Invalid catalog entry type"

    invoke-virtual {v9, v10, v11, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 502
    :cond_5
    invoke-virtual {v2}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 503
    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v10, 0x1

    const-string v11, "Invalid catalog entry (roverride)"

    invoke-virtual {v9, v10, v11, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
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
    .line 548
    return-void
.end method

.method public getCatalog()Lmf/org/apache/xml/resolver/Catalog;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 524
    return-void
.end method

.method protected inExtensionNamespace()Z
    .locals 4

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 93
    .local v1, "inExtension":Z
    iget-object v3, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->namespaceStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 94
    .local v0, "elements":Ljava/util/Enumeration;
    :goto_0
    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    .line 104
    :cond_0
    return v1

    .line 95
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 96
    .local v2, "ns":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 97
    const/4 v1, 0x1

    .line 98
    goto :goto_0

    .line 99
    :cond_2
    const-string v3, "urn:oasis:names:tc:entity:xmlns:tr9401:catalog"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 100
    const-string v3, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 99
    const/4 v1, 0x1

    :goto_1
    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 530
    return-void
.end method

.method public setCatalog(Lmf/org/apache/xml/resolver/Catalog;)V
    .locals 1
    .param p1, "catalog"    # Lmf/org/apache/xml/resolver/Catalog;

    .prologue
    .line 64
    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    .line 65
    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    .line 66
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 112
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 536
    return-void
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/Catalog;->getCurrentBase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/Catalog;->getDefaultOverride()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 13
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v5, -0x1

    .line 148
    .local v5, "entryType":I
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 150
    .local v4, "entryArgs":Ljava/util/Vector;
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->namespaceStack:Ljava/util/Stack;

    invoke-virtual {v8, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->inExtensionNamespace()Z

    move-result v6

    .line 154
    .local v6, "inExtension":Z
    if-eqz p1, :cond_4

    const-string v8, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 155
    if-nez v6, :cond_4

    .line 158
    const-string v8, "xml:base"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 159
    const-string v8, "xml:base"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "baseURI":Ljava/lang/String;
    sget v5, Lmf/org/apache/xml/resolver/Catalog;->BASE:I

    .line 161
    invoke-virtual {v4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v8, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x4

    const-string v10, "xml:base"

    invoke-virtual {v8, v9, v10, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 167
    :try_start_0
    new-instance v2, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v2, v5, v4}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    .line 168
    .local v2, "ce":Lmf/org/apache/xml/resolver/CatalogEntry;
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v8, v2}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_0
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v2    # "ce":Lmf/org/apache/xml/resolver/CatalogEntry;
    :cond_0
    :goto_0
    const/4 v5, -0x1

    .line 178
    new-instance v4, Ljava/util/Vector;

    .end local v4    # "entryArgs":Ljava/util/Vector;
    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 184
    .end local v1    # "baseURI":Ljava/lang/String;
    .restart local v4    # "entryArgs":Ljava/util/Vector;
    :goto_1
    const-string v8, "catalog"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "group"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 185
    :cond_1
    const-string v8, "prefer"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 186
    const-string v8, "prefer"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 188
    .local v7, "override":Ljava/lang/String;
    const-string v8, "public"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 189
    const-string v7, "yes"

    .line 199
    :goto_2
    sget v5, Lmf/org/apache/xml/resolver/Catalog;->OVERRIDE:I

    .line 200
    invoke-virtual {v4, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    invoke-virtual {v8, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x4

    const-string v10, "override"

    invoke-virtual {v8, v9, v10, v7}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 206
    :try_start_1
    new-instance v2, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v2, v5, v4}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    .line 207
    .restart local v2    # "ce":Lmf/org/apache/xml/resolver/CatalogEntry;
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v8, v2}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_1
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    .end local v2    # "ce":Lmf/org/apache/xml/resolver/CatalogEntry;
    :cond_2
    :goto_3
    const/4 v5, -0x1

    .line 217
    new-instance v4, Ljava/util/Vector;

    .end local v4    # "entryArgs":Ljava/util/Vector;
    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 223
    .end local v7    # "override":Ljava/lang/String;
    .restart local v4    # "entryArgs":Ljava/util/Vector;
    :goto_4
    const-string v8, "delegatePublic"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 224
    const-string v8, "publicIdStartString"

    const-string v9, "catalog"

    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v8, v9}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 225
    sget v5, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_PUBLIC:I

    .line 226
    const-string v8, "publicIdStartString"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 227
    const-string v8, "catalog"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x4

    const-string v10, "delegatePublic"

    .line 230
    const-string v11, "publicIdStartString"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lmf/org/apache/xml/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 231
    const-string v12, "catalog"

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 229
    invoke-virtual {v8, v9, v10, v11, v12}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_3
    :goto_5
    if-ltz v5, :cond_4

    .line 341
    :try_start_2
    new-instance v2, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v2, v5, v4}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    .line 342
    .restart local v2    # "ce":Lmf/org/apache/xml/resolver/CatalogEntry;
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v8, v2}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_2
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_2 .. :try_end_2} :catch_2

    .line 353
    .end local v2    # "ce":Lmf/org/apache/xml/resolver/CatalogEntry;
    :cond_4
    :goto_6
    if-eqz p1, :cond_6

    const-string v8, "urn:oasis:names:tc:entity:xmlns:tr9401:catalog"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 354
    if-nez v6, :cond_6

    .line 357
    const-string v8, "xml:base"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1a

    .line 358
    const-string v8, "xml:base"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 359
    .restart local v1    # "baseURI":Ljava/lang/String;
    sget v5, Lmf/org/apache/xml/resolver/Catalog;->BASE:I

    .line 360
    invoke-virtual {v4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 361
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v8, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x4

    const-string v10, "xml:base"

    invoke-virtual {v8, v9, v10, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 366
    :try_start_3
    new-instance v2, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v2, v5, v4}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    .line 367
    .restart local v2    # "ce":Lmf/org/apache/xml/resolver/CatalogEntry;
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v8, v2}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_3
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_3 .. :try_end_3} :catch_3

    .line 376
    .end local v2    # "ce":Lmf/org/apache/xml/resolver/CatalogEntry;
    :cond_5
    :goto_7
    const/4 v5, -0x1

    .line 377
    new-instance v4, Ljava/util/Vector;

    .end local v4    # "entryArgs":Ljava/util/Vector;
    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 383
    .end local v1    # "baseURI":Ljava/lang/String;
    .restart local v4    # "entryArgs":Ljava/util/Vector;
    :goto_8
    const-string v8, "doctype"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 384
    sget v5, Lmf/org/apache/xml/resolver/Catalog;->DOCTYPE:I

    .line 385
    const-string v8, "name"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 386
    const-string v8, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 414
    :goto_9
    if-ltz v5, :cond_6

    .line 416
    :try_start_4
    new-instance v2, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v2, v5, v4}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    .line 417
    .restart local v2    # "ce":Lmf/org/apache/xml/resolver/CatalogEntry;
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v8, v2}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_4
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_4 .. :try_end_4} :catch_4

    .line 427
    .end local v2    # "ce":Lmf/org/apache/xml/resolver/CatalogEntry;
    :cond_6
    :goto_a
    return-void

    .line 169
    .restart local v1    # "baseURI":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 170
    .local v3, "cex":Lmf/org/apache/xml/resolver/CatalogException;
    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_7

    .line 171
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x1

    const-string v10, "Invalid catalog entry type"

    invoke-virtual {v8, v9, v10, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 172
    :cond_7
    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 173
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x1

    const-string v10, "Invalid catalog entry (base)"

    invoke-virtual {v8, v9, v10, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    .end local v1    # "baseURI":Ljava/lang/String;
    .end local v3    # "cex":Lmf/org/apache/xml/resolver/CatalogException;
    :cond_8
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 190
    .restart local v7    # "override":Ljava/lang/String;
    :cond_9
    const-string v8, "system"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 191
    const-string v7, "no"

    .line 192
    goto/16 :goto_2

    .line 193
    :cond_a
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x1

    .line 194
    const-string v10, "Invalid prefer: must be \'system\' or \'public\'"

    .line 193
    invoke-virtual {v8, v9, v10, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v8}, Lmf/org/apache/xml/resolver/Catalog;->getDefaultOverride()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 208
    :catch_1
    move-exception v3

    .line 209
    .restart local v3    # "cex":Lmf/org/apache/xml/resolver/CatalogException;
    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_b

    .line 210
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x1

    const-string v10, "Invalid catalog entry type"

    invoke-virtual {v8, v9, v10, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 211
    :cond_b
    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 212
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x1

    const-string v10, "Invalid catalog entry (override)"

    invoke-virtual {v8, v9, v10, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 220
    .end local v3    # "cex":Lmf/org/apache/xml/resolver/CatalogException;
    .end local v7    # "override":Ljava/lang/String;
    :cond_c
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 233
    :cond_d
    const-string v8, "delegateSystem"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 234
    const-string v8, "systemIdStartString"

    const-string v9, "catalog"

    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v8, v9}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 235
    sget v5, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_SYSTEM:I

    .line 236
    const-string v8, "systemIdStartString"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 237
    const-string v8, "catalog"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x4

    const-string v10, "delegateSystem"

    .line 240
    const-string v11, "systemIdStartString"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 241
    const-string v12, "catalog"

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 239
    invoke-virtual {v8, v9, v10, v11, v12}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 243
    :cond_e
    const-string v8, "delegateURI"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 244
    const-string v8, "uriStartString"

    const-string v9, "catalog"

    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v8, v9}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 245
    sget v5, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_URI:I

    .line 246
    const-string v8, "uriStartString"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 247
    const-string v8, "catalog"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x4

    const-string v10, "delegateURI"

    .line 250
    const-string v11, "uriStartString"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 251
    const-string v12, "catalog"

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 249
    invoke-virtual {v8, v9, v10, v11, v12}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 253
    :cond_f
    const-string v8, "rewriteSystem"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 254
    const-string v8, "systemIdStartString"

    const-string v9, "rewritePrefix"

    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v8, v9}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 255
    sget v5, Lmf/org/apache/xml/resolver/Catalog;->REWRITE_SYSTEM:I

    .line 256
    const-string v8, "systemIdStartString"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 257
    const-string v8, "rewritePrefix"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x4

    const-string v10, "rewriteSystem"

    .line 260
    const-string v11, "systemIdStartString"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 261
    const-string v12, "rewritePrefix"

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 259
    invoke-virtual {v8, v9, v10, v11, v12}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 263
    :cond_10
    const-string v8, "systemSuffix"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 264
    const-string v8, "systemIdSuffix"

    const-string v9, "uri"

    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v8, v9}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 265
    sget v5, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM_SUFFIX:I

    .line 266
    const-string v8, "systemIdSuffix"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 267
    const-string v8, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x4

    const-string v10, "systemSuffix"

    .line 270
    const-string v11, "systemIdSuffix"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 271
    const-string v12, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 269
    invoke-virtual {v8, v9, v10, v11, v12}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 273
    :cond_11
    const-string v8, "rewriteURI"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 274
    const-string v8, "uriStartString"

    const-string v9, "rewritePrefix"

    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v8, v9}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 275
    sget v5, Lmf/org/apache/xml/resolver/Catalog;->REWRITE_URI:I

    .line 276
    const-string v8, "uriStartString"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 277
    const-string v8, "rewritePrefix"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x4

    const-string v10, "rewriteURI"

    .line 280
    const-string v11, "uriStartString"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 281
    const-string v12, "rewritePrefix"

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 279
    invoke-virtual {v8, v9, v10, v11, v12}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 283
    :cond_12
    const-string v8, "uriSuffix"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 284
    const-string v8, "uriSuffix"

    const-string v9, "uri"

    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v8, v9}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 285
    sget v5, Lmf/org/apache/xml/resolver/Catalog;->URI_SUFFIX:I

    .line 286
    const-string v8, "uriSuffix"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 287
    const-string v8, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x4

    const-string v10, "uriSuffix"

    .line 290
    const-string v11, "uriSuffix"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 291
    const-string v12, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 289
    invoke-virtual {v8, v9, v10, v11, v12}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 293
    :cond_13
    const-string v8, "nextCatalog"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 294
    const-string v8, "catalog"

    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v8}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 295
    sget v5, Lmf/org/apache/xml/resolver/Catalog;->CATALOG:I

    .line 296
    const-string v8, "catalog"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x4

    const-string v10, "nextCatalog"

    const-string v11, "catalog"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 300
    :cond_14
    const-string v8, "public"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 301
    const-string v8, "publicId"

    const-string v9, "uri"

    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v8, v9}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 302
    sget v5, Lmf/org/apache/xml/resolver/Catalog;->PUBLIC:I

    .line 303
    const-string v8, "publicId"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 304
    const-string v8, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x4

    const-string v10, "public"

    .line 307
    const-string v11, "publicId"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lmf/org/apache/xml/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 308
    const-string v12, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 306
    invoke-virtual {v8, v9, v10, v11, v12}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 310
    :cond_15
    const-string v8, "system"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 311
    const-string v8, "systemId"

    const-string v9, "uri"

    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v8, v9}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 312
    sget v5, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM:I

    .line 313
    const-string v8, "systemId"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 314
    const-string v8, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x4

    const-string v10, "system"

    .line 317
    const-string v11, "systemId"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 318
    const-string v12, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 316
    invoke-virtual {v8, v9, v10, v11, v12}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 320
    :cond_16
    const-string v8, "uri"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 321
    const-string v8, "name"

    const-string v9, "uri"

    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v8, v9}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 322
    sget v5, Lmf/org/apache/xml/resolver/Catalog;->URI:I

    .line 323
    const-string v8, "name"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 324
    const-string v8, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x4

    const-string v10, "uri"

    .line 327
    const-string v11, "name"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 328
    const-string v12, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 326
    invoke-virtual {v8, v9, v10, v11, v12}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 330
    :cond_17
    const-string v8, "catalog"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 332
    const-string v8, "group"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 336
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x1

    const-string v10, "Invalid catalog entry type"

    invoke-virtual {v8, v9, v10, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 343
    :catch_2
    move-exception v3

    .line 344
    .restart local v3    # "cex":Lmf/org/apache/xml/resolver/CatalogException;
    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_18

    .line 345
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x1

    const-string v10, "Invalid catalog entry type"

    invoke-virtual {v8, v9, v10, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 346
    :cond_18
    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 347
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x1

    const-string v10, "Invalid catalog entry"

    invoke-virtual {v8, v9, v10, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 368
    .end local v3    # "cex":Lmf/org/apache/xml/resolver/CatalogException;
    .restart local v1    # "baseURI":Ljava/lang/String;
    :catch_3
    move-exception v3

    .line 369
    .restart local v3    # "cex":Lmf/org/apache/xml/resolver/CatalogException;
    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_19

    .line 370
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x1

    const-string v10, "Invalid catalog entry type"

    invoke-virtual {v8, v9, v10, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 371
    :cond_19
    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 372
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x1

    const-string v10, "Invalid catalog entry (base)"

    invoke-virtual {v8, v9, v10, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 380
    .end local v1    # "baseURI":Ljava/lang/String;
    .end local v3    # "cex":Lmf/org/apache/xml/resolver/CatalogException;
    :cond_1a
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 387
    :cond_1b
    const-string v8, "document"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 388
    sget v5, Lmf/org/apache/xml/resolver/Catalog;->DOCUMENT:I

    .line 389
    const-string v8, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 390
    :cond_1c
    const-string v8, "dtddecl"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 391
    sget v5, Lmf/org/apache/xml/resolver/Catalog;->DTDDECL:I

    .line 392
    const-string v8, "publicId"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 393
    const-string v8, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 394
    :cond_1d
    const-string v8, "entity"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 395
    sget v5, Lmf/org/apache/xml/resolver/Catalog;->ENTITY:I

    .line 396
    const-string v8, "name"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 397
    const-string v8, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 398
    :cond_1e
    const-string v8, "linktype"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 399
    sget v5, Lmf/org/apache/xml/resolver/Catalog;->LINKTYPE:I

    .line 400
    const-string v8, "name"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 401
    const-string v8, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 402
    :cond_1f
    const-string v8, "notation"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 403
    sget v5, Lmf/org/apache/xml/resolver/Catalog;->NOTATION:I

    .line 404
    const-string v8, "name"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 405
    const-string v8, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 406
    :cond_20
    const-string v8, "sgmldecl"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 407
    sget v5, Lmf/org/apache/xml/resolver/Catalog;->SGMLDECL:I

    .line 408
    const-string v8, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 411
    :cond_21
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x1

    const-string v10, "Invalid catalog entry type"

    invoke-virtual {v8, v9, v10, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 418
    :catch_4
    move-exception v3

    .line 419
    .restart local v3    # "cex":Lmf/org/apache/xml/resolver/CatalogException;
    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_22

    .line 420
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x1

    const-string v10, "Invalid catalog entry type"

    invoke-virtual {v8, v9, v10, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 421
    :cond_22
    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    .line 422
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x1

    const-string v10, "Invalid catalog entry"

    invoke-virtual {v8, v9, v10, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 542
    return-void
.end method
