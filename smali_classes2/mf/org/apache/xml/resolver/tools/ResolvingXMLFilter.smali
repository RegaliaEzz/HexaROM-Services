.class public Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;
.super Lorg/xml/sax/helpers/XMLFilterImpl;
.source "ResolvingXMLFilter.java"


# static fields
.field public static suppressExplanation:Z


# instance fields
.field private allowXMLCatalogPI:Z

.field private baseURL:Ljava/net/URL;

.field private catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

.field private catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

.field private oasisXMLCatalogPI:Z

.field private piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->suppressExplanation:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 64
    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    .line 67
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 70
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 73
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    .line 76
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->oasisXMLCatalogPI:Z

    .line 79
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    .line 84
    new-instance v0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-direct {v0, v1}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;-><init>(Lmf/org/apache/xml/resolver/CatalogManager;)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 85
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xml/resolver/CatalogManager;)V
    .locals 3
    .param p1, "manager"    # Lmf/org/apache/xml/resolver/CatalogManager;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 64
    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    .line 67
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 70
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 73
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    .line 76
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->oasisXMLCatalogPI:Z

    .line 79
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    .line 96
    iput-object p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    .line 97
    new-instance v0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-direct {v0, v1}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;-><init>(Lmf/org/apache/xml/resolver/CatalogManager;)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 3
    .param p1, "parent"    # Lorg/xml/sax/XMLReader;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 64
    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    .line 67
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 70
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 73
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    .line 76
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->oasisXMLCatalogPI:Z

    .line 79
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    .line 90
    new-instance v0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-direct {v0, v1}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;-><init>(Lmf/org/apache/xml/resolver/CatalogManager;)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;Lmf/org/apache/xml/resolver/CatalogManager;)V
    .locals 3
    .param p1, "parent"    # Lorg/xml/sax/XMLReader;
    .param p2, "manager"    # Lmf/org/apache/xml/resolver/CatalogManager;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 64
    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    .line 67
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 70
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 73
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    .line 76
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->oasisXMLCatalogPI:Z

    .line 79
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    .line 103
    iput-object p2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    .line 104
    new-instance v0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-direct {v0, v1}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;-><init>(Lmf/org/apache/xml/resolver/CatalogManager;)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 105
    return-void
.end method

.method private explain(Ljava/lang/String;)V
    .locals 3
    .param p1, "systemId"    # Ljava/lang/String;

    .prologue
    .line 347
    sget-boolean v0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->suppressExplanation:Z

    if-nez v0, :cond_0

    .line 348
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XMLReader probably encountered bad URI in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 349
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "For example, replace \'/some/uri\' with \'file:/some/uri\'."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 351
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->suppressExplanation:Z

    .line 352
    return-void
.end method

.method private setupBaseURI(Ljava/lang/String;)V
    .locals 5
    .param p1, "systemId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 320
    const/4 v0, 0x0

    .line 323
    .local v0, "cwd":Ljava/net/URL;
    :try_start_0
    const-string v3, "basename"

    invoke-static {v3}, Lmf/org/apache/xml/resolver/helpers/FileURL;->makeURL(Ljava/lang/String;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 329
    :goto_0
    :try_start_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 343
    :goto_1
    return-void

    .line 324
    :catch_0
    move-exception v1

    .line 325
    .local v1, "mue":Ljava/net/MalformedURLException;
    const/4 v0, 0x0

    goto :goto_0

    .line 330
    .end local v1    # "mue":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    .line 331
    .restart local v1    # "mue":Ljava/net/MalformedURLException;
    if-eqz v0, :cond_0

    .line 333
    :try_start_2
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v3, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 334
    :catch_2
    move-exception v2

    .line 336
    .local v2, "mue2":Ljava/net/MalformedURLException;
    iput-object v4, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    goto :goto_1

    .line 340
    .end local v2    # "mue2":Ljava/net/MalformedURLException;
    :cond_0
    iput-object v4, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    goto :goto_1
.end method


# virtual methods
.method public getCatalog()Lmf/org/apache/xml/resolver/Catalog;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->getCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v0

    return-object v0
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
    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    .line 222
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
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
    .line 155
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    .line 157
    invoke-direct {p0, p1}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->setupBaseURI(Ljava/lang/String;)V

    .line 160
    :try_start_0
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "ie":Ljava/lang/InternalError;
    invoke-direct {p0, p1}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->explain(Ljava/lang/String;)V

    .line 163
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
    .line 137
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    .line 139
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->setupBaseURI(Ljava/lang/String;)V

    .line 142
    :try_start_0
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "ie":Ljava/lang/InternalError;
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->explain(Ljava/lang/String;)V

    .line 145
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

    .line 259
    const-string v6, "oasis-xml-catalog"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "catalog":Ljava/net/URL;
    move-object v2, p2

    .line 263
    .local v2, "data":Ljava/lang/String;
    const-string v6, "catalog="

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 264
    .local v4, "pos":I
    if-ltz v4, :cond_0

    .line 265
    add-int/lit8 v6, v4, 0x8

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_0

    .line 267
    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, "quote":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 270
    if-ltz v4, :cond_0

    .line 271
    invoke-virtual {v2, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 273
    :try_start_0
    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    if-eqz v6, :cond_2

    .line 274
    new-instance v1, Ljava/net/URL;

    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    invoke-direct {v1, v6, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v0    # "catalog":Ljava/net/URL;
    .local v1, "catalog":Ljava/net/URL;
    move-object v0, v1

    .line 285
    .end local v1    # "catalog":Ljava/net/URL;
    .end local v5    # "quote":Ljava/lang/String;
    .restart local v0    # "catalog":Ljava/net/URL;
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    if-eqz v6, :cond_5

    .line 286
    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {v6}, Lmf/org/apache/xml/resolver/CatalogManager;->getAllowOasisXMLCatalogPI()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 287
    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v6, v6, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v7, "oasis-xml-catalog PI"

    invoke-virtual {v6, v9, v7, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 289
    if-eqz v0, :cond_3

    .line 291
    :try_start_1
    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v6, v6, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v7, 0x4

    const-string v8, "oasis-xml-catalog"

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 292
    const/4 v6, 0x1

    iput-boolean v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->oasisXMLCatalogPI:Z

    .line 294
    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    if-nez v6, :cond_1

    .line 295
    new-instance v6, Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;-><init>(Z)V

    iput-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 298
    :cond_1
    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    invoke-virtual {v6}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->getCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 316
    .end local v0    # "catalog":Ljava/net/URL;
    .end local v2    # "data":Ljava/lang/String;
    .end local v4    # "pos":I
    :goto_1
    return-void

    .line 276
    .restart local v0    # "catalog":Ljava/net/URL;
    .restart local v2    # "data":Ljava/lang/String;
    .restart local v4    # "pos":I
    .restart local v5    # "quote":Ljava/lang/String;
    :cond_2
    :try_start_2
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v0    # "catalog":Ljava/net/URL;
    .restart local v1    # "catalog":Ljava/net/URL;
    move-object v0, v1

    .line 278
    .end local v1    # "catalog":Ljava/net/URL;
    .restart local v0    # "catalog":Ljava/net/URL;
    goto :goto_0

    .line 299
    .end local v5    # "quote":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 300
    .local v3, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v6, v6, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception parsing oasis-xml-catalog: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 300
    invoke-virtual {v6, v10, v7}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_1

    .line 304
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

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

    .line 307
    :cond_4
    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

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

    .line 310
    :cond_5
    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v6, v6, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "PI oasis-xml-catalog occurred in an invalid place: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 310
    invoke-virtual {v6, v10, v7}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_1

    .line 314
    .end local v0    # "catalog":Ljava/net/URL;
    .end local v2    # "data":Ljava/lang/String;
    .end local v4    # "pos":I
    :cond_6
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 278
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

    .line 173
    const/4 v6, 0x0

    iput-boolean v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    .line 174
    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    invoke-virtual {v6, p1, p2}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->getResolvedEntity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "resolved":Ljava/lang/String;
    if-nez v3, :cond_0

    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    if-eqz v6, :cond_0

    .line 177
    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    invoke-virtual {v6, p1, p2}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->getResolvedEntity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    :cond_0
    if-eqz v3, :cond_1

    .line 182
    :try_start_0
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, "iSource":Lorg/xml/sax/InputSource;
    invoke-virtual {v1, p1}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    .line 196
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 197
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 198
    .local v2, "iStream":Ljava/io/InputStream;
    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v1    # "iSource":Lorg/xml/sax/InputSource;
    .end local v2    # "iStream":Ljava/io/InputStream;
    .end local v4    # "url":Ljava/net/URL;
    :goto_0
    return-object v1

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v6, v6, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v7, 0x1

    .line 203
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed to create InputSource ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 205
    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 203
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 202
    invoke-virtual {v6, v7, v8, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    .line 206
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v1, v5

    .line 209
    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
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
    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    .line 250
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 251
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
    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    .line 237
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method
