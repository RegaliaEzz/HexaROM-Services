.class public Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;
.super Lmf/org/apache/xerces/parsers/DOMParserImpl;
.source "DOMASBuilderImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom3/as/DOMASBuilder;


# static fields
.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"


# instance fields
.field protected fAbstractSchema:Lmf/org/apache/xerces/dom/ASModelImpl;

.field protected fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;

    invoke-direct {v0}, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;-><init>()V

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;)V
    .locals 0
    .param p1, "config"    # Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    .line 105
    new-instance v0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "grammarPool"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .prologue
    .line 117
    new-instance v0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;

    invoke-direct {v0, p1, p2}, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    .line 118
    return-void
.end method

.method private addGrammars(Lmf/org/apache/xerces/dom/ASModelImpl;Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;)V
    .locals 4
    .param p1, "model"    # Lmf/org/apache/xerces/dom/ASModelImpl;
    .param p2, "grammarBucket"    # Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    .prologue
    .line 276
    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammars()[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    .line 277
    .local v0, "grammarList":[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 282
    return-void

    .line 278
    :cond_0
    new-instance v2, Lmf/org/apache/xerces/dom/ASModelImpl;

    invoke-direct {v2}, Lmf/org/apache/xerces/dom/ASModelImpl;-><init>()V

    .line 279
    .local v2, "newModel":Lmf/org/apache/xerces/dom/ASModelImpl;
    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/dom/ASModelImpl;->setGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 280
    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/dom/ASModelImpl;->addASModel(Lmf/org/apache/xerces/dom3/as/ASModel;)V

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initGrammarBucket()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->reset()V

    .line 262
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->fAbstractSchema:Lmf/org/apache/xerces/dom/ASModelImpl;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->fAbstractSchema:Lmf/org/apache/xerces/dom/ASModelImpl;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->initGrammarBucketRecurse(Lmf/org/apache/xerces/dom/ASModelImpl;)V

    .line 264
    :cond_0
    return-void
.end method

.method private initGrammarBucketRecurse(Lmf/org/apache/xerces/dom/ASModelImpl;)V
    .locals 4
    .param p1, "currModel"    # Lmf/org/apache/xerces/dom/ASModelImpl;

    .prologue
    .line 266
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ASModelImpl;->getGrammar()Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 267
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ASModelImpl;->getGrammar()Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 269
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ASModelImpl;->getInternalASModels()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 273
    return-void

    .line 270
    :cond_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ASModelImpl;->getInternalASModels()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/ASModelImpl;

    .line 271
    .local v1, "nextModel":Lmf/org/apache/xerces/dom/ASModelImpl;
    invoke-direct {p0, v1}, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->initGrammarBucketRecurse(Lmf/org/apache/xerces/dom/ASModelImpl;)V

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initGrammarPool(Lmf/org/apache/xerces/dom/ASModelImpl;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 5
    .param p1, "currModel"    # Lmf/org/apache/xerces/dom/ASModelImpl;
    .param p2, "grammarPool"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .prologue
    const/4 v4, 0x0

    .line 287
    const/4 v3, 0x1

    new-array v0, v3, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    .line 288
    .local v0, "grammars":[Lmf/org/apache/xerces/xni/grammars/Grammar;
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ASModelImpl;->getGrammar()Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v3

    aput-object v3, v0, v4

    if-eqz v3, :cond_0

    .line 289
    aget-object v3, v0, v4

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/grammars/Grammar;->getGrammarDescription()Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-result-object v3

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;->getGrammarType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3, v0}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    .line 291
    :cond_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ASModelImpl;->getInternalASModels()Ljava/util/Vector;

    move-result-object v2

    .line 292
    .local v2, "modelStore":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 295
    return-void

    .line 293
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/dom/ASModelImpl;

    invoke-direct {p0, v3, p2}, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->initGrammarPool(Lmf/org/apache/xerces/dom/ASModelImpl;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAbstractSchema()Lmf/org/apache/xerces/dom3/as/ASModel;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->fAbstractSchema:Lmf/org/apache/xerces/dom/ASModelImpl;

    return-object v0
.end method

.method parseASInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/dom3/as/ASModel;
    .locals 5
    .param p1, "is"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    if-nez v3, :cond_0

    .line 237
    new-instance v3, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    .line 240
    :cond_0
    invoke-direct {p0}, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->initGrammarBucket()V

    .line 244
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    check-cast v0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;

    .line 246
    .local v0, "gramConfig":Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;
    invoke-virtual {v0}, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->lockGrammarPool()V

    .line 247
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->parseXMLSchema(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    .line 248
    .local v1, "grammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-virtual {v0}, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->unlockGrammarPool()V

    .line 250
    const/4 v2, 0x0

    .line 251
    .local v2, "newAsModel":Lmf/org/apache/xerces/dom/ASModelImpl;
    if-eqz v1, :cond_1

    .line 252
    new-instance v2, Lmf/org/apache/xerces/dom/ASModelImpl;

    .end local v2    # "newAsModel":Lmf/org/apache/xerces/dom/ASModelImpl;
    invoke-direct {v2}, Lmf/org/apache/xerces/dom/ASModelImpl;-><init>()V

    .line 253
    .restart local v2    # "newAsModel":Lmf/org/apache/xerces/dom/ASModelImpl;
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Z)Z

    .line 254
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-direct {p0, v2, v3}, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->addGrammars(Lmf/org/apache/xerces/dom/ASModelImpl;Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;)V

    .line 256
    :cond_1
    return-object v2
.end method

.method public parseASInputSource(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/dom3/as/ASModel;
    .locals 4
    .param p1, "is"    # Lmf/org/w3c/dom/ls/LSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/dom3/as/DOMASException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->dom2xmlInputSource(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v2

    .line 226
    .local v2, "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :try_start_0
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->parseASInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/dom3/as/ASModel;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Lmf/org/apache/xerces/xni/XNIException;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v1

    .line 230
    .local v1, "ex":Ljava/lang/Exception;
    throw v1
.end method

.method public parseASURI(Ljava/lang/String;)Lmf/org/apache/xerces/dom3/as/ASModel;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/dom3/as/DOMASException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 191
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-direct {v0, v1, p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .local v0, "source":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->parseASInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/dom3/as/ASModel;

    move-result-object v1

    return-object v1
.end method

.method public setAbstractSchema(Lmf/org/apache/xerces/dom3/as/ASModel;)V
    .locals 3
    .param p1, "abstractSchema"    # Lmf/org/apache/xerces/dom3/as/ASModel;

    .prologue
    .line 149
    check-cast p1, Lmf/org/apache/xerces/dom/ASModelImpl;

    .end local p1    # "abstractSchema":Lmf/org/apache/xerces/dom3/as/ASModel;
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->fAbstractSchema:Lmf/org/apache/xerces/dom/ASModelImpl;

    .line 152
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .line 155
    .local v0, "grammarPool":Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;

    .end local v0    # "grammarPool":Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;-><init>()V

    .line 158
    .restart local v0    # "grammarPool":Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {v1, v2, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->fAbstractSchema:Lmf/org/apache/xerces/dom/ASModelImpl;

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->fAbstractSchema:Lmf/org/apache/xerces/dom/ASModelImpl;

    invoke-direct {p0, v1, v0}, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;->initGrammarPool(Lmf/org/apache/xerces/dom/ASModelImpl;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    .line 164
    :cond_1
    return-void
.end method
