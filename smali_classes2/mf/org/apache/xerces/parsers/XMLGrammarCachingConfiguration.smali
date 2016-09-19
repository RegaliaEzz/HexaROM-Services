.class public Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;
.super Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;
.source "XMLGrammarCachingConfiguration.java"


# static fields
.field public static final BIG_PRIME:I = 0x7f7

.field protected static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final fStaticGrammarPool:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;

.field protected static final fStaticSymbolTable:Lmf/org/apache/xerces/util/SynchronizedSymbolTable;


# instance fields
.field protected fDTDLoader:Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;

.field protected fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;

    const/16 v1, 0x7f7

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;-><init>(I)V

    .line 79
    sput-object v0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fStaticSymbolTable:Lmf/org/apache/xerces/util/SynchronizedSymbolTable;

    .line 84
    new-instance v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;-><init>()V

    .line 83
    sput-object v0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fStaticGrammarPool:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;

    .line 88
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 104
    sget-object v0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fStaticSymbolTable:Lmf/org/apache/xerces/util/SynchronizedSymbolTable;

    sget-object v1, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fStaticGrammarPool:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 2
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    .line 113
    sget-object v0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fStaticGrammarPool:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "grammarPool"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 3
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "grammarPool"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    .param p3, "parentSettings"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 156
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    .line 157
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    const-string v1, "http://apache.org/xml/properties/internal/grammar-pool"

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fDTDLoader:Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;

    .line 161
    return-void
.end method


# virtual methods
.method protected checkFeature(Ljava/lang/String;)V
    .locals 0
    .param p1, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->checkFeature(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method protected checkProperty(Ljava/lang/String;)V
    .locals 0
    .param p1, "propertyId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->checkProperty(Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public clearGrammarPool()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->clear()V

    .line 181
    return-void
.end method

.method public lockGrammarPool()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->lockPool()V

    .line 173
    return-void
.end method

.method parseDTD(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/impl/dtd/DTDGrammar;
    .locals 6
    .param p1, "is"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->getEntityResolver()Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    move-result-object v1

    .line 330
    .local v1, "resolver":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    if-eqz v1, :cond_0

    .line 331
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fDTDLoader:Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V

    .line 333
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fDTDLoader:Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;

    const-string v3, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v2, v3, v4}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 338
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fDTDLoader:Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    .line 340
    .local v0, "grammar":Lmf/org/apache/xerces/impl/dtd/DTDGrammar;
    if-eqz v0, :cond_1

    .line 341
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    const-string v3, "http://www.w3.org/TR/REC-xml"

    .line 342
    const/4 v4, 0x1

    new-array v4, v4, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 341
    invoke-interface {v2, v3, v4}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    .line 345
    :cond_1
    return-object v0
.end method

.method public parseGrammar(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 207
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-direct {v0, v1, p2, v1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .local v0, "source":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->parseGrammar(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v1

    return-object v1
.end method

.method public parseGrammar(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "is"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    const-string v0, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->parseXMLSchema(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    .line 233
    :cond_0
    const-string v0, "http://www.w3.org/TR/REC-xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->parseDTD(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-result-object v0

    goto :goto_0

    .line 237
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method parseXMLSchema(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 8
    .param p1, "is"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->getEntityResolver()Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    move-result-object v3

    .line 294
    .local v3, "resolver":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    if-eqz v3, :cond_0

    .line 295
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V

    .line 297
    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v5, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v4

    if-nez v4, :cond_1

    .line 298
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v5, "http://www.w3.org/TR/xml-schema-1"

    new-instance v6, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;

    invoke-direct {v6}, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    .line 300
    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    const-string v5, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    const-string v2, "http://apache.org/xml/properties/"

    .line 303
    .local v2, "propPrefix":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "schema/external-schemaLocation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "propName":Ljava/lang/String;
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "schema/external-noNamespaceSchemaLocation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 306
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 307
    const-string v1, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    .line 308
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 309
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    const-string v5, "http://apache.org/xml/features/validation/schema-full-checking"

    const-string v6, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setFeature(Ljava/lang/String;Z)V

    .line 314
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v4, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 316
    .local v0, "grammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v0, :cond_2

    .line 317
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    const-string v5, "http://www.w3.org/2001/XMLSchema"

    .line 318
    const/4 v6, 0x1

    new-array v6, v6, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    .line 317
    invoke-interface {v4, v5, v6}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    .line 321
    :cond_2
    return-object v0
.end method

.method public unlockGrammarPool()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->unlockPool()V

    .line 189
    return-void
.end method
