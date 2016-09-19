.class public Lmf/org/apache/xml/resolver/tools/CatalogResolver;
.super Ljava/lang/Object;
.source "CatalogResolver.java"

# interfaces
.implements Lorg/xml/sax/EntityResolver;
.implements Lmf/javax/xml/transform/URIResolver;


# instance fields
.field private catalog:Lmf/org/apache/xml/resolver/Catalog;

.field private catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

.field public namespaceAware:Z

.field public validating:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->namespaceAware:Z

    .line 68
    iput-boolean v1, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->validating:Z

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    .line 74
    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    .line 78
    invoke-direct {p0, v1}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->initializeCatalogs(Z)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xml/resolver/CatalogManager;)V
    .locals 3
    .param p1, "manager"    # Lmf/org/apache/xml/resolver/CatalogManager;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean v1, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->namespaceAware:Z

    .line 68
    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->validating:Z

    .line 71
    const/4 v2, 0x0

    iput-object v2, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    .line 74
    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    .line 88
    iput-object p1, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    .line 89
    iget-object v2, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {v2}, Lmf/org/apache/xml/resolver/CatalogManager;->getUseStaticCatalog()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->initializeCatalogs(Z)V

    .line 90
    return-void

    :cond_0
    move v0, v1

    .line 89
    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "privateCatalog"    # Z

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->namespaceAware:Z

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->validating:Z

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    .line 74
    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    .line 83
    invoke-direct {p0, p1}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->initializeCatalogs(Z)V

    .line 84
    return-void
.end method

.method private initializeCatalogs(Z)V
    .locals 1
    .param p1, "privateCatalog"    # Z

    .prologue
    .line 94
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogManager;->getCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    .line 95
    return-void
.end method

.method private makeAbsolute(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 324
    if-nez p1, :cond_0

    .line 325
    const-string p1, ""

    .line 329
    :cond_0
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 330
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 337
    .end local v3    # "url":Ljava/net/URL;
    .end local p1    # "uri":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 331
    .restart local p1    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 333
    .local v1, "mue":Ljava/net/MalformedURLException;
    :try_start_1
    invoke-static {p1}, Lmf/org/apache/xml/resolver/helpers/FileURL;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 334
    .local v0, "fileURL":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    goto :goto_0

    .line 335
    .end local v0    # "fileURL":Ljava/net/URL;
    :catch_1
    move-exception v2

    .line 337
    .local v2, "mue2":Ljava/net/MalformedURLException;
    goto :goto_0
.end method

.method private setEntityResolver(Lmf/javax/xml/transform/sax/SAXSource;)V
    .locals 4
    .param p1, "source"    # Lmf/javax/xml/transform/sax/SAXSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p1}, Lmf/javax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 305
    .local v1, "reader":Lorg/xml/sax/XMLReader;
    if-nez v1, :cond_0

    .line 306
    invoke-static {}, Lmf/javax/xml/parsers/SAXParserFactory;->newInstance()Lmf/javax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 307
    .local v2, "spFactory":Lmf/javax/xml/parsers/SAXParserFactory;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lmf/javax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 309
    :try_start_0
    invoke-virtual {v2}, Lmf/javax/xml/parsers/SAXParserFactory;->newSAXParser()Lmf/javax/xml/parsers/SAXParser;

    move-result-object v3

    invoke-virtual {v3}, Lmf/javax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Lmf/javax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 318
    .end local v2    # "spFactory":Lmf/javax/xml/parsers/SAXParserFactory;
    :cond_0
    invoke-interface {v1, p0}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 319
    invoke-virtual {p1, v1}, Lmf/javax/xml/transform/sax/SAXSource;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    .line 320
    return-void

    .line 311
    .restart local v2    # "spFactory":Lmf/javax/xml/parsers/SAXParserFactory;
    :catch_0
    move-exception v0

    .line 312
    .local v0, "ex":Lmf/javax/xml/parsers/ParserConfigurationException;
    new-instance v3, Lmf/javax/xml/transform/TransformerException;

    invoke-direct {v3, v0}, Lmf/javax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 314
    .end local v0    # "ex":Lmf/javax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v0

    .line 315
    .local v0, "ex":Lorg/xml/sax/SAXException;
    new-instance v3, Lmf/javax/xml/transform/TransformerException;

    invoke-direct {v3, v0}, Lmf/javax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public getCatalog()Lmf/org/apache/xml/resolver/Catalog;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    return-object v0
.end method

.method public getResolvedEntity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 123
    const/4 v2, 0x0

    .line 125
    .local v2, "resolved":Ljava/lang/String;
    iget-object v3, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    if-nez v3, :cond_0

    .line 126
    iget-object v3, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v3, v3, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v4, "Catalog resolution attempted with null catalog; ignored"

    invoke-virtual {v3, v5, v4}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 127
    const/4 v3, 0x0

    .line 162
    :goto_0
    return-object v3

    .line 130
    :cond_0
    if-eqz p2, :cond_1

    .line 132
    :try_start_0
    iget-object v3, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v3, p2}, Lmf/org/apache/xml/resolver/Catalog;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 143
    :cond_1
    :goto_1
    if-nez v2, :cond_4

    .line 144
    if-eqz p1, :cond_2

    .line 146
    :try_start_1
    iget-object v3, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v3, p1, p2}, Lmf/org/apache/xml/resolver/Catalog;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    .line 155
    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    .line 156
    iget-object v3, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v3, v3, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v4, "Resolved public"

    invoke-virtual {v3, v6, v4, p1, v2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    move-object v3, v2

    .line 162
    goto :goto_0

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, "me":Ljava/net/MalformedURLException;
    iget-object v3, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v3, v3, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v4, "Malformed URL exception trying to resolve"

    invoke-virtual {v3, v5, v4, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v2, 0x0

    goto :goto_1

    .line 137
    .end local v1    # "me":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 138
    .local v0, "ie":Ljava/io/IOException;
    iget-object v3, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v3, v3, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v4, "I/O exception trying to resolve"

    invoke-virtual {v3, v5, v4, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v2, 0x0

    goto :goto_1

    .line 147
    .end local v0    # "ie":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 148
    .restart local v1    # "me":Ljava/net/MalformedURLException;
    iget-object v3, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v3, v3, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v4, "Malformed URL exception trying to resolve"

    invoke-virtual {v3, v5, v4, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 150
    .end local v1    # "me":Ljava/net/MalformedURLException;
    :catch_3
    move-exception v0

    .line 151
    .restart local v0    # "ie":Ljava/io/IOException;
    iget-object v3, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v3, v3, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v4, "I/O exception trying to resolve"

    invoke-virtual {v3, v5, v4, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 159
    .end local v0    # "ie":Ljava/io/IOException;
    :cond_4
    iget-object v3, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v3, v3, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v4, "Resolved system"

    invoke-virtual {v3, v6, v4, p2, v2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public resolve(Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/transform/Source;
    .locals 13
    .param p1, "href"    # Ljava/lang/String;
    .param p2, "base"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 232
    move-object v7, p1

    .line 233
    .local v7, "uri":Ljava/lang/String;
    const/4 v2, 0x0

    .line 234
    .local v2, "fragment":Ljava/lang/String;
    const-string v10, "#"

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 235
    .local v3, "hashPos":I
    if-ltz v3, :cond_0

    .line 236
    const/4 v10, 0x0

    invoke-virtual {p1, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 237
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 240
    :cond_0
    const/4 v5, 0x0

    .line 243
    .local v5, "result":Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v10, p1}, Lmf/org/apache/xml/resolver/Catalog;->resolveURI(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 248
    :goto_0
    if-nez v5, :cond_1

    .line 250
    const/4 v8, 0x0

    .line 252
    .local v8, "url":Ljava/net/URL;
    if-nez p2, :cond_2

    .line 253
    :try_start_1
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 254
    .end local v8    # "url":Ljava/net/URL;
    .local v9, "url":Ljava/net/URL;
    :try_start_2
    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .line 274
    .end local v9    # "url":Ljava/net/URL;
    :cond_1
    :goto_1
    iget-object v10, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v10, v10, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v11, 0x2

    const-string v12, "Resolved URI"

    invoke-virtual {v10, v11, v12, p1, v5}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    new-instance v6, Lmf/javax/xml/transform/sax/SAXSource;

    invoke-direct {v6}, Lmf/javax/xml/transform/sax/SAXSource;-><init>()V

    .line 277
    .local v6, "source":Lmf/javax/xml/transform/sax/SAXSource;
    new-instance v10, Lorg/xml/sax/InputSource;

    invoke-direct {v10, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Lmf/javax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    .line 278
    invoke-direct {p0, v6}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->setEntityResolver(Lmf/javax/xml/transform/sax/SAXSource;)V

    .line 279
    .end local v6    # "source":Lmf/javax/xml/transform/sax/SAXSource;
    :goto_2
    return-object v6

    .line 256
    .restart local v8    # "url":Ljava/net/URL;
    :cond_2
    :try_start_3
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 257
    .local v1, "baseURL":Ljava/net/URL;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_3

    move-object v8, v1

    .line 258
    :goto_3
    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 257
    :cond_3
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v1, v7}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v8, v10

    goto :goto_3

    .line 260
    .end local v1    # "baseURL":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 262
    .end local v8    # "url":Ljava/net/URL;
    .local v4, "mue":Ljava/net/MalformedURLException;
    :goto_4
    invoke-direct {p0, p2}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "absBase":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 265
    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/transform/Source;

    move-result-object v6

    goto :goto_2

    .line 267
    :cond_4
    new-instance v10, Lmf/javax/xml/transform/TransformerException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Malformed URL "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "(base "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 267
    invoke-direct {v10, v11, v4}, Lmf/javax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 260
    .end local v0    # "absBase":Ljava/lang/String;
    .end local v4    # "mue":Ljava/net/MalformedURLException;
    .restart local v9    # "url":Ljava/net/URL;
    :catch_1
    move-exception v4

    move-object v8, v9

    .local v8, "url":Ljava/lang/Object;
    goto :goto_4

    .line 244
    .end local v8    # "url":Ljava/lang/Object;
    .end local v9    # "url":Ljava/net/URL;
    :catch_2
    move-exception v10

    goto :goto_0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 10
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 193
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->getResolvedEntity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "resolved":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 197
    :try_start_0
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 198
    .local v1, "iSource":Lorg/xml/sax/InputSource;
    invoke-virtual {v1, p1}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    .line 211
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 212
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 213
    .local v2, "iStream":Ljava/io/InputStream;
    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v1    # "iSource":Lorg/xml/sax/InputSource;
    .end local v2    # "iStream":Ljava/io/InputStream;
    .end local v4    # "url":Ljava/net/URL;
    :goto_0
    return-object v1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v6, v6, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v7, 0x1

    .line 218
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed to create InputSource ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 220
    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 218
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 217
    invoke-virtual {v6, v7, v8, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    .line 221
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v1, v5

    .line 225
    goto :goto_0
.end method
