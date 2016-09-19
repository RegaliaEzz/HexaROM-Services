.class public Lmf/org/apache/xml/resolver/readers/XCatalogReader;
.super Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;
.source "XCatalogReader.java"

# interfaces
.implements Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;


# instance fields
.field protected catalog:Lmf/org/apache/xml/resolver/Catalog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    .line 64
    return-void
.end method

.method public constructor <init>(Lmf/javax/xml/parsers/SAXParserFactory;Lmf/org/apache/xml/resolver/Catalog;)V
    .locals 1
    .param p1, "parserFactory"    # Lmf/javax/xml/parsers/SAXParserFactory;
    .param p2, "catalog"    # Lmf/org/apache/xml/resolver/Catalog;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;-><init>(Lmf/javax/xml/parsers/SAXParserFactory;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    .line 69
    invoke-virtual {p0, p2}, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->setCatalog(Lmf/org/apache/xml/resolver/Catalog;)V

    .line 70
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
    .line 179
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 89
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 173
    return-void
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
    .line 209
    return-void
.end method

.method public getCatalog()Lmf/org/apache/xml/resolver/Catalog;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

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
    .line 185
    return-void
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
    .line 191
    return-void
.end method

.method public setCatalog(Lmf/org/apache/xml/resolver/Catalog;)V
    .locals 1
    .param p1, "catalog"    # Lmf/org/apache/xml/resolver/Catalog;

    .prologue
    .line 52
    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    .line 53
    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    .line 54
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 77
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
    .line 197
    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 83
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 10
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
    const/4 v9, 0x1

    const/4 v8, 0x4

    .line 110
    const/4 v3, -0x1

    .line 111
    .local v3, "entryType":I
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 113
    .local v2, "entryArgs":Ljava/util/Vector;
    const-string v4, "Base"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    sget v3, Lmf/org/apache/xml/resolver/Catalog;->BASE:I

    .line 115
    const-string v4, "HRef"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v5, "Base"

    const-string v6, "HRef"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v8, v5, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_0
    :goto_0
    if-ltz v3, :cond_1

    .line 156
    :try_start_0
    new-instance v0, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v0, v3, v2}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    .line 157
    .local v0, "ce":Lmf/org/apache/xml/resolver/CatalogEntry;
    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v4, v0}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_0
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v0    # "ce":Lmf/org/apache/xml/resolver/CatalogEntry;
    :cond_1
    :goto_1
    return-void

    .line 118
    :cond_2
    const-string v4, "Delegate"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 119
    sget v3, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_PUBLIC:I

    .line 120
    const-string v4, "PublicID"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 121
    const-string v4, "HRef"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v5, "Delegate"

    .line 124
    const-string v6, "PublicID"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmf/org/apache/xml/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 125
    const-string v7, "HRef"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 123
    invoke-virtual {v4, v8, v5, v6, v7}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_3
    const-string v4, "Extend"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 127
    sget v3, Lmf/org/apache/xml/resolver/Catalog;->CATALOG:I

    .line 128
    const-string v4, "HRef"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v5, "Extend"

    const-string v6, "HRef"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v8, v5, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_4
    const-string v4, "Map"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 132
    sget v3, Lmf/org/apache/xml/resolver/Catalog;->PUBLIC:I

    .line 133
    const-string v4, "PublicID"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 134
    const-string v4, "HRef"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v5, "Map"

    .line 137
    const-string v6, "PublicID"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmf/org/apache/xml/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 138
    const-string v7, "HRef"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 136
    invoke-virtual {v4, v8, v5, v6, v7}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    :cond_5
    const-string v4, "Remap"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 140
    sget v3, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM:I

    .line 141
    const-string v4, "SystemID"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 142
    const-string v4, "HRef"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v5, "Remap"

    .line 145
    const-string v6, "SystemID"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 146
    const-string v7, "HRef"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 144
    invoke-virtual {v4, v8, v5, v6, v7}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 147
    :cond_6
    const-string v4, "XCatalog"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 151
    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v5, "Invalid catalog entry type"

    invoke-virtual {v4, v9, v5, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, "cex":Lmf/org/apache/xml/resolver/CatalogException;
    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    .line 160
    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v5, "Invalid catalog entry type"

    invoke-virtual {v4, v9, v5, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 161
    :cond_7
    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 162
    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v5, "Invalid catalog entry"

    invoke-virtual {v4, v9, v5, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
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
    .line 203
    return-void
.end method
