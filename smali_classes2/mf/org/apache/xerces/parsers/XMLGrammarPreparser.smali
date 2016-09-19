.class public Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;
.super Ljava/lang/Object;
.source "XMLGrammarPreparser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;
    }
.end annotation


# static fields
.field private static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final GRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field private static final KNOWN_LOADERS:Ljava/util/Hashtable;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"


# instance fields
.field protected fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

.field protected final fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field private final fLoaders:Ljava/util/Hashtable;

.field protected fLocale:Ljava/util/Locale;

.field private fModCount:I

.field protected final fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 82
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->KNOWN_LOADERS:Ljava/util/Hashtable;

    .line 86
    sget-object v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->KNOWN_LOADERS:Ljava/util/Hashtable;

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    .line 87
    const-string v2, "mf.org.apache.xerces.impl.xs.XMLSchemaLoader"

    .line 86
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->KNOWN_LOADERS:Ljava/util/Hashtable;

    const-string v1, "http://www.w3.org/TR/REC-xml"

    .line 90
    const-string v2, "mf.org.apache.xerces.impl.dtd.XMLDTDLoader"

    .line 89
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 95
    const-string v2, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 96
    const-string v2, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 97
    const-string v2, "http://apache.org/xml/properties/internal/error-handler"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 98
    const-string v2, "http://apache.org/xml/properties/internal/entity-resolver"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 99
    const-string v2, "http://apache.org/xml/properties/internal/grammar-pool"

    aput-object v2, v0, v1

    .line 94
    sput-object v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 100
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    .line 131
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 133
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    .line 134
    new-instance v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 135
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->setLocale(Ljava/util/Locale;)V

    .line 136
    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .line 138
    return-void
.end method

.method private clearModCounts()V
    .locals 3

    .prologue
    .line 377
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 378
    .local v0, "loaders":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    .line 382
    const/4 v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    .line 383
    return-void

    .line 379
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    .line 380
    .local v1, "xglc":Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;
    const/4 v2, 0x0

    iput v2, v1, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->modCount:I

    goto :goto_0
.end method


# virtual methods
.method public getEntityResolver()Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v0

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;

    .prologue
    .line 347
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    iget-object v0, v1, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->loader:Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;

    .line 348
    .local v0, "gl":Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;
    invoke-interface {v0, p2}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;->getFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getGrammarPool()Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    return-object v0
.end method

.method public getLoader(Ljava/lang/String;)Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 295
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    .line 296
    .local v0, "xglc":Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->loader:Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "propertyId"    # Ljava/lang/String;

    .prologue
    .line 360
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    iget-object v0, v1, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->loader:Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;

    .line 361
    .local v0, "gl":Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;
    invoke-interface {v0, p2}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public preparseGrammar(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "is"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    .line 196
    .local v1, "xglc":Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;
    iget-object v0, v1, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->loader:Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;

    .line 197
    .local v0, "gl":Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;
    iget v2, v1, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->modCount:I

    iget v3, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    if-eq v2, v3, :cond_1

    .line 199
    const-string v2, "http://apache.org/xml/properties/internal/symbol-table"

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-interface {v0, v2, v3}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    const-string v2, "http://apache.org/xml/properties/internal/entity-resolver"

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    invoke-interface {v0, v2, v3}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    const-string v2, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-interface {v0, v2, v3}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v2, :cond_0

    .line 205
    :try_start_0
    const-string v2, "http://apache.org/xml/properties/internal/grammar-pool"

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v0, v2, v3}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_0
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    iput v2, v1, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->modCount:I

    .line 212
    :cond_1
    invoke-interface {v0, p2}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v2

    .line 214
    .end local v0    # "gl":Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;
    .end local v1    # "xglc":Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 206
    .restart local v0    # "gl":Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;
    .restart local v1    # "xglc":Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public registerPreparser(Ljava/lang/String;Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;)Z
    .locals 8
    .param p1, "grammarType"    # Ljava/lang/String;
    .param p2, "loader"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 156
    if-nez p2, :cond_1

    .line 157
    sget-object v6, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->KNOWN_LOADERS:Ljava/util/Hashtable;

    invoke-virtual {v6, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 159
    sget-object v6, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->KNOWN_LOADERS:Ljava/util/Hashtable;

    invoke-virtual {v6, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 161
    .local v3, "loaderName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lmf/org/apache/xerces/parsers/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 162
    .local v0, "cl":Ljava/lang/ClassLoader;
    const/4 v6, 0x1

    invoke-static {v3, v0, v6}, Lmf/org/apache/xerces/parsers/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;

    .line 163
    .local v2, "gl":Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    new-instance v7, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    invoke-direct {v7, v2}, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;)V

    invoke-virtual {v6, p1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v2    # "gl":Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;
    .end local v3    # "loaderName":Ljava/lang/String;
    :goto_0
    return v4

    .line 164
    .restart local v3    # "loaderName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move v4, v5

    .line 165
    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "loaderName":Ljava/lang/String;
    :cond_0
    move v4, v5

    .line 169
    goto :goto_0

    .line 172
    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    new-instance v6, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    invoke-direct {v6, p2}, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;)V

    invoke-virtual {v5, p1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    .locals 1
    .param p1, "entityResolver"    # Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .prologue
    .line 256
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    if-eq v0, p1, :cond_1

    .line 259
    iget v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    if-gez v0, :cond_0

    .line 260
    invoke-direct {p0}, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->clearModCounts()V

    .line 262
    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .line 264
    :cond_1
    return-void
.end method

.method public setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V
    .locals 2
    .param p1, "errorHandler"    # Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    .prologue
    .line 242
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "featureId"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 305
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 306
    .local v1, "loaders":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1

    .line 316
    const-string v2, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {v2, v3, p2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setFeature(Ljava/lang/String;Z)V

    .line 319
    :cond_0
    return-void

    .line 307
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    iget-object v0, v2, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->loader:Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;

    .line 309
    .local v0, "gl":Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 310
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setGrammarPool(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1
    .param p1, "grammarPool"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .prologue
    .line 277
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eq v0, p1, :cond_1

    .line 280
    iget v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    if-gez v0, :cond_0

    .line 281
    invoke-direct {p0}, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->clearModCounts()V

    .line 283
    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .line 285
    :cond_1
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 226
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLocale:Ljava/util/Locale;

    .line 227
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    .line 228
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "propId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 329
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 330
    .local v1, "loaders":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    .line 338
    return-void

    .line 331
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    iget-object v0, v2, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->loader:Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;

    .line 333
    .local v0, "gl":Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    :catch_0
    move-exception v2

    goto :goto_0
.end method
