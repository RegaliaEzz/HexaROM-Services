.class public Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;
.super Ljava/lang/Object;
.source "SAXCatalogReader.java"

# interfaces
.implements Lmf/org/apache/xml/resolver/readers/CatalogReader;
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/DocumentHandler;


# instance fields
.field private abandonHope:Z

.field private catalog:Lmf/org/apache/xml/resolver/Catalog;

.field protected debug:Lmf/org/apache/xml/resolver/helpers/Debug;

.field private loader:Ljava/lang/ClassLoader;

.field protected namespaceMap:Ljava/util/Hashtable;

.field protected parserClass:Ljava/lang/String;

.field protected parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

.field private saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    .line 85
    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    .line 97
    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 105
    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    .line 149
    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    .line 153
    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    .line 154
    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "parserClass"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    .line 85
    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    .line 97
    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 105
    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    .line 149
    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    .line 164
    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public constructor <init>(Lmf/javax/xml/parsers/SAXParserFactory;)V
    .locals 2
    .param p1, "parserFactory"    # Lmf/javax/xml/parsers/SAXParserFactory;

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    .line 85
    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    .line 97
    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 105
    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    .line 149
    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    .line 159
    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    .line 160
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->characters([CII)V

    .line 470
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->endDocument()V

    .line 309
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 450
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->endElement(Ljava/lang/String;)V

    .line 453
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 499
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->endPrefixMapping(Ljava/lang/String;)V

    .line 502
    :cond_0
    return-void
.end method

.method public getCatalogParser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "rootElement"    # Ljava/lang/String;

    .prologue
    .line 184
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 185
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 184
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public getParserClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    return-object v0
.end method

.method public getParserFactory()Lmf/javax/xml/parsers/SAXParserFactory;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 475
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->ignorableWhitespace([CII)V

    .line 478
    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 483
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_0
    return-void
.end method

.method public readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/io/InputStream;)V
    .locals 15
    .param p1, "catalog"    # Lmf/org/apache/xml/resolver/Catalog;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v12, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    if-nez v12, :cond_0

    iget-object v12, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    if-nez v12, :cond_0

    .line 235
    iget-object v12, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v13, 0x1

    const-string v14, "Cannot read SAX catalog without a parser"

    invoke-virtual {v12, v13, v14}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 236
    new-instance v12, Lmf/org/apache/xml/resolver/CatalogException;

    const/4 v13, 0x6

    invoke-direct {v12, v13}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v12

    .line 239
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v12

    iget-object v12, v12, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object v12, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    .line 240
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v12

    invoke-virtual {v12}, Lmf/org/apache/xml/resolver/CatalogManager;->getBootstrapResolver()Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;

    move-result-object v1

    .line 242
    .local v1, "bResolver":Lorg/xml/sax/EntityResolver;
    move-object/from16 v0, p1

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    .line 245
    :try_start_0
    iget-object v12, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    if-eqz v12, :cond_2

    .line 246
    iget-object v12, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    invoke-virtual {v12}, Lmf/javax/xml/parsers/SAXParserFactory;->newSAXParser()Lmf/javax/xml/parsers/SAXParser;

    move-result-object v7

    .line 247
    .local v7, "parser":Lmf/javax/xml/parsers/SAXParser;
    new-instance v10, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;

    invoke-direct {v10}, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;-><init>()V

    .line 248
    .local v10, "spHandler":Lmf/org/apache/xml/resolver/readers/SAXParserHandler;
    invoke-virtual {v10, p0}, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 249
    if-eqz v1, :cond_1

    .line 250
    invoke-virtual {v10, v1}, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 252
    :cond_1
    new-instance v12, Lorg/xml/sax/InputSource;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v7, v12, v10}, Lmf/javax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 285
    .end local v7    # "parser":Lmf/javax/xml/parsers/SAXParser;
    .end local v10    # "spHandler":Lmf/org/apache/xml/resolver/readers/SAXParserHandler;
    :goto_0
    return-void

    .line 254
    :cond_2
    iget-object v13, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    const/4 v14, 0x1

    iget-object v12, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    if-eqz v12, :cond_4

    iget-object v12, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    :goto_1
    invoke-static {v13, v14, v12}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/xml/sax/Parser;

    .line 255
    .local v7, "parser":Lorg/xml/sax/Parser;
    invoke-interface {v7, p0}, Lorg/xml/sax/Parser;->setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V

    .line 256
    if-eqz v1, :cond_3

    .line 257
    invoke-interface {v7, v1}, Lorg/xml/sax/Parser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 259
    :cond_3
    new-instance v12, Lorg/xml/sax/InputSource;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v7, v12}, Lorg/xml/sax/Parser;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lmf/javax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 261
    .end local v7    # "parser":Lorg/xml/sax/Parser;
    :catch_0
    move-exception v2

    .line 262
    .local v2, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v12, Lmf/org/apache/xml/resolver/CatalogException;

    const/4 v13, 0x6

    invoke-direct {v12, v13}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v12

    .line 254
    .end local v2    # "cnfe":Ljava/lang/ClassNotFoundException;
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lmf/javax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v12

    goto :goto_1

    .line 263
    :catch_1
    move-exception v5

    .line 264
    .local v5, "iae":Ljava/lang/IllegalAccessException;
    new-instance v12, Lmf/org/apache/xml/resolver/CatalogException;

    const/4 v13, 0x6

    invoke-direct {v12, v13}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v12

    .line 265
    .end local v5    # "iae":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v6

    .line 266
    .local v6, "ie":Ljava/lang/InstantiationException;
    new-instance v12, Lmf/org/apache/xml/resolver/CatalogException;

    const/4 v13, 0x6

    invoke-direct {v12, v13}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v12

    .line 267
    .end local v6    # "ie":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v8

    .line 268
    .local v8, "pce":Lmf/javax/xml/parsers/ParserConfigurationException;
    new-instance v12, Lmf/org/apache/xml/resolver/CatalogException;

    const/4 v13, 0x5

    invoke-direct {v12, v13}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v12

    .line 269
    .end local v8    # "pce":Lmf/javax/xml/parsers/ParserConfigurationException;
    :catch_4
    move-exception v9

    .line 270
    .local v9, "se":Lorg/xml/sax/SAXException;
    invoke-virtual {v9}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v3

    .line 272
    .local v3, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/net/UnknownHostException;

    invoke-direct {v11}, Ljava/net/UnknownHostException;-><init>()V

    .line 273
    .local v11, "uhe":Ljava/net/UnknownHostException;
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    .line 274
    .local v4, "fnfe":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_6

    .line 275
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    if-ne v12, v13, :cond_5

    .line 276
    new-instance v12, Lmf/org/apache/xml/resolver/CatalogException;

    const/4 v13, 0x7

    .line 277
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    .line 276
    invoke-direct {v12, v13, v14}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(ILjava/lang/String;)V

    throw v12

    .line 278
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    if-ne v12, v13, :cond_6

    .line 279
    new-instance v12, Lmf/org/apache/xml/resolver/CatalogException;

    const/4 v13, 0x7

    .line 280
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    .line 279
    invoke-direct {v12, v13, v14}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(ILjava/lang/String;)V

    throw v12

    .line 283
    :cond_6
    new-instance v12, Lmf/org/apache/xml/resolver/CatalogException;

    invoke-direct {v12, v9}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(Ljava/lang/Exception;)V

    throw v12
.end method

.method public readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/lang/String;)V
    .locals 7
    .param p1, "catalog"    # Lmf/org/apache/xml/resolver/Catalog;
    .param p2, "fileUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation

    .prologue
    .line 201
    const/4 v1, 0x0

    .line 204
    .local v1, "url":Ljava/net/URL;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    .end local v1    # "url":Ljava/net/URL;
    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .restart local v1    # "url":Ljava/net/URL;
    :goto_0
    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v3

    iget-object v3, v3, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object v3, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    .line 212
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 213
    .local v2, "urlCon":Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 218
    .end local v2    # "urlCon":Ljava/net/URLConnection;
    :goto_1
    return-void

    .line 205
    .end local v1    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file:///"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .restart local v1    # "url":Ljava/net/URL;
    goto :goto_0

    .line 214
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 215
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v3

    iget-object v3, v3, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v4, 0x1

    const-string v5, "Failed to load catalog, file not found"

    .line 216
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    .line 215
    invoke-virtual {v3, v4, v5, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setCatalogParser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "rootElement"    # Ljava/lang/String;
    .param p3, "parserClass"    # Ljava/lang/String;

    .prologue
    .line 174
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 175
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void

    .line 174
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 137
    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    .line 138
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 292
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 295
    :cond_0
    return-void
.end method

.method public setParserClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "parserClass"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setParserFactory(Lmf/javax/xml/parsers/SAXParserFactory;)V
    .locals 0
    .param p1, "parserFactory"    # Lmf/javax/xml/parsers/SAXParserFactory;

    .prologue
    .line 113
    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    .line 114
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 507
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->skippedEntity(Ljava/lang/String;)V

    .line 510
    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 301
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
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 399
    iget-boolean v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    if-eqz v5, :cond_0

    .line 446
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-nez v5, :cond_4

    .line 404
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->getCatalogParser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 407
    .local v4, "saxParserClass":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 408
    iput-boolean v7, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 409
    if-nez p1, :cond_1

    .line 410
    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "No Catalog parser for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    .line 412
    :cond_1
    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "No Catalog parser for {"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 414
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 412
    invoke-virtual {v5, v8, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_2
    const/4 v6, 0x1

    :try_start_0
    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    :goto_1
    invoke-static {v4, v6, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 420
    iput-object v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 423
    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-interface {v5, v6}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->setCatalog(Lmf/org/apache/xml/resolver/Catalog;)V

    .line 424
    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v5}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->startDocument()V

    .line 425
    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v5, p1, p2, p3, p4}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 426
    :catch_0
    move-exception v1

    .line 427
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    iput-object v9, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 428
    iput-boolean v7, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 429
    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    .line 421
    .end local v1    # "cnfe":Ljava/lang/ClassNotFoundException;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v5

    goto :goto_1

    .line 430
    :catch_1
    move-exception v3

    .line 431
    .local v3, "ie":Ljava/lang/InstantiationException;
    iput-object v9, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 432
    iput-boolean v7, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 433
    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v3}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 434
    .end local v3    # "ie":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v2

    .line 435
    .local v2, "iae":Ljava/lang/IllegalAccessException;
    iput-object v9, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 436
    iput-boolean v7, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 437
    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 438
    .end local v2    # "iae":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 439
    .local v0, "cce":Ljava/lang/ClassCastException;
    iput-object v9, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 440
    iput-boolean v7, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 441
    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 444
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    .end local v4    # "saxParserClass":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v5, p1, p2, p3, p4}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "atts"    # Lorg/xml/sax/AttributeList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 321
    iget-boolean v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    if-eqz v8, :cond_0

    .line 385
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-nez v8, :cond_7

    .line 326
    const-string v6, ""

    .line 327
    .local v6, "prefix":Ljava/lang/String;
    const/16 v8, 0x3a

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-lez v8, :cond_1

    .line 328
    const/4 v8, 0x0

    const/16 v9, 0x3a

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 331
    :cond_1
    move-object v4, p1

    .line 332
    .local v4, "localName":Ljava/lang/String;
    const/16 v8, 0x3a

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-lez v8, :cond_2

    .line 333
    const/16 v8, 0x3a

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 336
    :cond_2
    const/4 v5, 0x0

    .line 337
    .local v5, "namespaceURI":Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 338
    const-string v8, "xmlns"

    invoke-interface {p2, v8}, Lorg/xml/sax/AttributeList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 343
    :goto_1
    invoke-virtual {p0, v5, v4}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->getCatalogParser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 346
    .local v7, "saxParserClass":Ljava/lang/String;
    if-nez v7, :cond_5

    .line 347
    const/4 v8, 0x1

    iput-boolean v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 348
    if-nez v5, :cond_4

    .line 349
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "No Catalog parser for "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    .line 340
    .end local v7    # "saxParserClass":Ljava/lang/String;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "xmlns:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v8}, Lorg/xml/sax/AttributeList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 351
    .restart local v7    # "saxParserClass":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "No Catalog parser for {"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 353
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 351
    invoke-virtual {v8, v9, v10}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 360
    :cond_5
    const/4 v9, 0x1

    :try_start_0
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    :goto_2
    invoke-static {v7, v9, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 359
    iput-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 362
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-interface {v8, v9}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->setCatalog(Lmf/org/apache/xml/resolver/Catalog;)V

    .line 363
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v8}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->startDocument()V

    .line 364
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v8, p1, p2}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_0

    .line 365
    :catch_0
    move-exception v1

    .line 366
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    const/4 v8, 0x0

    iput-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 367
    const/4 v8, 0x1

    iput-boolean v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 368
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x2

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 360
    .end local v1    # "cnfe":Ljava/lang/ClassNotFoundException;
    :cond_6
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v8

    goto :goto_2

    .line 369
    :catch_1
    move-exception v3

    .line 370
    .local v3, "ie":Ljava/lang/InstantiationException;
    const/4 v8, 0x0

    iput-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 371
    const/4 v8, 0x1

    iput-boolean v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 372
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x2

    invoke-virtual {v3}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 373
    .end local v3    # "ie":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v2

    .line 374
    .local v2, "iae":Ljava/lang/IllegalAccessException;
    const/4 v8, 0x0

    iput-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 375
    const/4 v8, 0x1

    iput-boolean v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 376
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x2

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 377
    .end local v2    # "iae":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 378
    .local v0, "cce":Ljava/lang/ClassCastException;
    const/4 v8, 0x0

    iput-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 379
    const/4 v8, 0x1

    iput-boolean v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 380
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x2

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 383
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    .end local v4    # "localName":Ljava/lang/String;
    .end local v5    # "namespaceURI":Ljava/lang/String;
    .end local v6    # "prefix":Ljava/lang/String;
    .end local v7    # "saxParserClass":Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v8, p1, p2}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    goto/16 :goto_0
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
    .line 491
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_0
    return-void
.end method
