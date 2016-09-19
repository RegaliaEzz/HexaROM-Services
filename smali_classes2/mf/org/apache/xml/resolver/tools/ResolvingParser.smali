.class public Lmf/org/apache/xml/resolver/tools/ResolvingParser;
.super Ljava/lang/Object;
.source "ResolvingParser.java"

# interfaces
.implements Lorg/xml/sax/Parser;
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/xml/sax/DocumentHandler;
.implements Lorg/xml/sax/EntityResolver;


# static fields
.field public static namespaceAware:Z

.field public static suppressExplanation:Z

.field public static validating:Z


# instance fields
.field private allowXMLCatalogPI:Z

.field private baseURL:Ljava/net/URL;

.field private catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

.field private catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

.field private documentHandler:Lorg/xml/sax/DocumentHandler;

.field private dtdHandler:Lorg/xml/sax/DTDHandler;

.field private oasisXMLCatalogPI:Z

.field private parser:Lorg/xml/sax/Parser;

.field private piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

.field private saxParser:Lmf/javax/xml/parsers/SAXParser;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    const/4 v0, 0x1

    sput-boolean v0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->namespaceAware:Z

    .line 70
    sput-boolean v1, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->validating:Z

    .line 76
    sput-boolean v1, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->suppressExplanation:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->saxParser:Lmf/javax/xml/parsers/SAXParser;

    .line 82
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->parser:Lorg/xml/sax/Parser;

    .line 85
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    .line 88
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 91
    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    .line 94
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 97
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 100
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->allowXMLCatalogPI:Z

    .line 103
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->oasisXMLCatalogPI:Z

    .line 106
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->baseURL:Ljava/net/URL;

    .line 110
    invoke-direct {p0}, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->initParser()V

    .line 111
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xml/resolver/CatalogManager;)V
    .locals 3
    .param p1, "manager"    # Lmf/org/apache/xml/resolver/CatalogManager;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->saxParser:Lmf/javax/xml/parsers/SAXParser;

    .line 82
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->parser:Lorg/xml/sax/Parser;

    .line 85
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    .line 88
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 91
    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    .line 94
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 97
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 100
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->allowXMLCatalogPI:Z

    .line 103
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->oasisXMLCatalogPI:Z

    .line 106
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->baseURL:Ljava/net/URL;

    .line 115
    iput-object p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    .line 116
    invoke-direct {p0}, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->initParser()V

    .line 117
    return-void
.end method

.method private explain(Ljava/lang/String;)V
    .locals 3
    .param p1, "systemId"    # Ljava/lang/String;

    .prologue
    .line 440
    sget-boolean v0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->suppressExplanation:Z

    if-nez v0, :cond_0

    .line 441
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parser probably encountered bad URI in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 442
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "For example, replace \'/some/uri\' with \'file:/some/uri\'."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 444
    :cond_0
    return-void
.end method

.method private initParser()V
    .locals 4

    .prologue
    .line 121
    new-instance v2, Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    iget-object v3, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-direct {v2, v3}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;-><init>(Lmf/org/apache/xml/resolver/CatalogManager;)V

    iput-object v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 123
    invoke-static {}, Lmf/javax/xml/parsers/SAXParserFactory;->newInstance()Lmf/javax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 124
    .local v1, "spf":Lmf/javax/xml/parsers/SAXParserFactory;
    sget-boolean v2, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->namespaceAware:Z

    invoke-virtual {v1, v2}, Lmf/javax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 125
    sget-boolean v2, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->validating:Z

    invoke-virtual {v1, v2}, Lmf/javax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 128
    :try_start_0
    invoke-virtual {v1}, Lmf/javax/xml/parsers/SAXParserFactory;->newSAXParser()Lmf/javax/xml/parsers/SAXParser;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->saxParser:Lmf/javax/xml/parsers/SAXParser;

    .line 129
    iget-object v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->saxParser:Lmf/javax/xml/parsers/SAXParser;

    invoke-virtual {v2}, Lmf/javax/xml/parsers/SAXParser;->getParser()Lorg/xml/sax/Parser;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->parser:Lorg/xml/sax/Parser;

    .line 130
    const/4 v2, 0x0

    iput-object v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    .line 131
    const/4 v2, 0x0

    iput-object v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->dtdHandler:Lorg/xml/sax/DTDHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setupParse(Ljava/lang/String;)V
    .locals 5
    .param p1, "systemId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 408
    const/4 v3, 0x1

    iput-boolean v3, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->allowXMLCatalogPI:Z

    .line 409
    iget-object v3, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->parser:Lorg/xml/sax/Parser;

    invoke-interface {v3, p0}, Lorg/xml/sax/Parser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 410
    iget-object v3, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->parser:Lorg/xml/sax/Parser;

    invoke-interface {v3, p0}, Lorg/xml/sax/Parser;->setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V

    .line 411
    iget-object v3, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->parser:Lorg/xml/sax/Parser;

    invoke-interface {v3, p0}, Lorg/xml/sax/Parser;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 413
    const/4 v0, 0x0

    .line 416
    .local v0, "cwd":Ljava/net/URL;
    :try_start_0
    const-string v3, "basename"

    invoke-static {v3}, Lmf/org/apache/xml/resolver/helpers/FileURL;->makeURL(Ljava/lang/String;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 422
    :goto_0
    :try_start_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->baseURL:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 436
    :goto_1
    return-void

    .line 417
    :catch_0
    move-exception v1

    .line 418
    .local v1, "mue":Ljava/net/MalformedURLException;
    const/4 v0, 0x0

    goto :goto_0

    .line 423
    .end local v1    # "mue":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    .line 424
    .restart local v1    # "mue":Ljava/net/MalformedURLException;
    if-eqz v0, :cond_0

    .line 426
    :try_start_2
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v3, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->baseURL:Ljava/net/URL;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 427
    :catch_2
    move-exception v2

    .line 429
    .local v2, "mue2":Ljava/net/MalformedURLException;
    iput-object v4, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->baseURL:Ljava/net/URL;

    goto :goto_1

    .line 433
    .end local v2    # "mue2":Ljava/net/MalformedURLException;
    :cond_0
    iput-object v4, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->baseURL:Ljava/net/URL;

    goto :goto_1
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
    .line 224
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DocumentHandler;->characters([CII)V

    .line 227
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
    .line 231
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0}, Lorg/xml/sax/DocumentHandler;->endDocument()V

    .line 234
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
    .line 238
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/DocumentHandler;->endElement(Ljava/lang/String;)V

    .line 241
    :cond_0
    return-void
.end method

.method public getCatalog()Lmf/org/apache/xml/resolver/Catalog;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->getCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v0

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
    .line 246
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DocumentHandler;->ignorableWhitespace([CII)V

    .line 249
    :cond_0
    return-void
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->allowXMLCatalogPI:Z

    .line 343
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->dtdHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->dtdHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DTDHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_0
    return-void
.end method

.method public parse(Ljava/lang/String;)V
    .locals 2
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->setupParse(Ljava/lang/String;)V

    .line 184
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->parser:Lorg/xml/sax/Parser;

    invoke-interface {v1, p1}, Lorg/xml/sax/Parser;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "ie":Ljava/lang/InternalError;
    invoke-direct {p0, p1}, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->explain(Ljava/lang/String;)V

    .line 187
    throw v0
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 2
    .param p1, "input"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->setupParse(Ljava/lang/String;)V

    .line 168
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->parser:Lorg/xml/sax/Parser;

    invoke-interface {v1, p1}, Lorg/xml/sax/Parser;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "ie":Ljava/lang/InternalError;
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->explain(Ljava/lang/String;)V

    .line 171
    throw v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "pidata"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v7, 0x1

    .line 255
    const-string v6, "oasis-xml-catalog"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "catalog":Ljava/net/URL;
    move-object v2, p2

    .line 259
    .local v2, "data":Ljava/lang/String;
    const-string v6, "catalog="

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 260
    .local v4, "pos":I
    if-ltz v4, :cond_0

    .line 261
    add-int/lit8 v6, v4, 0x8

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 262
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_0

    .line 263
    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, "quote":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 266
    if-ltz v4, :cond_0

    .line 267
    invoke-virtual {v2, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 269
    :try_start_0
    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->baseURL:Ljava/net/URL;

    if-eqz v6, :cond_3

    .line 270
    new-instance v1, Ljava/net/URL;

    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->baseURL:Ljava/net/URL;

    invoke-direct {v1, v6, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v0    # "catalog":Ljava/net/URL;
    .local v1, "catalog":Ljava/net/URL;
    move-object v0, v1

    .line 281
    .end local v1    # "catalog":Ljava/net/URL;
    .end local v5    # "quote":Ljava/lang/String;
    .restart local v0    # "catalog":Ljava/net/URL;
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->allowXMLCatalogPI:Z

    if-eqz v6, :cond_6

    .line 282
    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {v6}, Lmf/org/apache/xml/resolver/CatalogManager;->getAllowOasisXMLCatalogPI()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 283
    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v6, v6, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v7, "oasis-xml-catalog PI"

    invoke-virtual {v6, v9, v7, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 285
    if-eqz v0, :cond_4

    .line 287
    :try_start_1
    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v6, v6, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v7, 0x4

    const-string v8, "oasis-xml-catalog"

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 288
    const/4 v6, 0x1

    iput-boolean v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->oasisXMLCatalogPI:Z

    .line 290
    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    if-nez v6, :cond_1

    .line 291
    new-instance v6, Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;-><init>(Z)V

    iput-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 294
    :cond_1
    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    invoke-virtual {v6}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->getCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 314
    .end local v0    # "catalog":Ljava/net/URL;
    .end local v2    # "data":Ljava/lang/String;
    .end local v4    # "pos":I
    :cond_2
    :goto_1
    return-void

    .line 272
    .restart local v0    # "catalog":Ljava/net/URL;
    .restart local v2    # "data":Ljava/lang/String;
    .restart local v4    # "pos":I
    .restart local v5    # "quote":Ljava/lang/String;
    :cond_3
    :try_start_2
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v0    # "catalog":Ljava/net/URL;
    .restart local v1    # "catalog":Ljava/net/URL;
    move-object v0, v1

    .line 274
    .end local v1    # "catalog":Ljava/net/URL;
    .restart local v0    # "catalog":Ljava/net/URL;
    goto :goto_0

    .line 295
    .end local v5    # "quote":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 296
    .local v3, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v6, v6, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception parsing oasis-xml-catalog: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 296
    invoke-virtual {v6, v10, v7}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_1

    .line 300
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v6, v6, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "PI oasis-xml-catalog unparseable: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_1

    .line 303
    :cond_5
    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v6, v6, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "PI oasis-xml-catalog ignored: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_1

    .line 306
    :cond_6
    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v6, v6, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "PI oasis-xml-catalog occurred in an invalid place: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 306
    invoke-virtual {v6, v10, v7}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_1

    .line 310
    .end local v0    # "catalog":Ljava/net/URL;
    .end local v2    # "data":Ljava/lang/String;
    .end local v4    # "pos":I
    :cond_7
    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v6, :cond_2

    .line 311
    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v6, p1, p2}, Lorg/xml/sax/DocumentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 274
    .restart local v0    # "catalog":Ljava/net/URL;
    .restart local v2    # "data":Ljava/lang/String;
    .restart local v4    # "pos":I
    .restart local v5    # "quote":Ljava/lang/String;
    :catch_1
    move-exception v6

    goto/16 :goto_0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 10
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 366
    const/4 v6, 0x0

    iput-boolean v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->allowXMLCatalogPI:Z

    .line 367
    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    invoke-virtual {v6, p1, p2}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->getResolvedEntity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, "resolved":Ljava/lang/String;
    if-nez v3, :cond_0

    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    if-eqz v6, :cond_0

    .line 370
    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    invoke-virtual {v6, p1, p2}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->getResolvedEntity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 373
    :cond_0
    if-eqz v3, :cond_1

    .line 375
    :try_start_0
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 376
    .local v1, "iSource":Lorg/xml/sax/InputSource;
    invoke-virtual {v1, p1}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    .line 389
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 390
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 391
    .local v2, "iStream":Ljava/io/InputStream;
    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    .end local v1    # "iSource":Lorg/xml/sax/InputSource;
    .end local v2    # "iStream":Ljava/io/InputStream;
    .end local v4    # "url":Ljava/net/URL;
    :goto_0
    return-object v1

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v6, v6, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v7, 0x1

    .line 396
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed to create InputSource ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 398
    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 396
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 395
    invoke-virtual {v6, v7, v8, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    .line 399
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v1, v5

    .line 402
    goto :goto_0
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/DTDHandler;

    .prologue
    .line 198
    iput-object p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 199
    return-void
.end method

.method public setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/DocumentHandler;

    .prologue
    .line 193
    iput-object p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    .line 194
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 318
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/DocumentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 321
    :cond_0
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0
    .param p1, "resolver"    # Lorg/xml/sax/EntityResolver;

    .prologue
    .line 209
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 1
    .param p1, "handler"    # Lorg/xml/sax/ErrorHandler;

    .prologue
    .line 213
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->parser:Lorg/xml/sax/Parser;

    invoke-interface {v0, p1}, Lorg/xml/sax/Parser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 214
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->parser:Lorg/xml/sax/Parser;

    invoke-interface {v0, p1}, Lorg/xml/sax/Parser;->setLocale(Ljava/util/Locale;)V

    .line 219
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
    .line 325
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0}, Lorg/xml/sax/DocumentHandler;->startDocument()V

    .line 328
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "atts"    # Lorg/xml/sax/AttributeList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->allowXMLCatalogPI:Z

    .line 334
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/DocumentHandler;->startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    .line 337
    :cond_0
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "notationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->allowXMLCatalogPI:Z

    .line 355
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->dtdHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->dtdHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/DTDHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_0
    return-void
.end method
