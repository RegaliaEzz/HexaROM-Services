.class public Lmf/org/apache/xerces/parsers/DOMParserImpl;
.super Lmf/org/apache/xerces/parsers/AbstractDOMParser;
.source "DOMParserImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/ls/LSParser;
.implements Lmf/org/w3c/dom/DOMConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;,
        Lmf/org/apache/xerces/parsers/DOMParserImpl$NullLSParserFilter;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field protected static final DISALLOW_DOCTYPE_DECL_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field protected static final DYNAMIC_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final PSVI_AUGMENT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field protected static final VALIDATION_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final XMLSCHEMA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field protected static final XMLSCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"


# instance fields
.field private abortHandler:Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

.field private abortNow:Z

.field private currentThread:Ljava/lang/Thread;

.field protected fBusy:Z

.field protected fNamespaceDeclarations:Z

.field private fNullFilterInUse:Z

.field private fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

.field private fSchemaLocation:Ljava/lang/String;

.field protected fSchemaType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "configuration"    # Ljava/lang/String;
    .param p2, "schemaType"    # Ljava/lang/String;

    .prologue
    .line 167
    .line 169
    const-string v0, "mf.org.apache.xerces.xni.parser.XMLParserConfiguration"

    .line 168
    invoke-static {v0, p1}, Lmf/org/apache/xerces/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    .line 171
    if-eqz p2, :cond_0

    .line 172
    sget-object v0, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .line 179
    const-string v1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    .line 180
    sget-object v2, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    .line 178
    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    sget-object v0, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    sget-object v0, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .line 186
    const-string v1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    .line 187
    sget-object v2, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    .line 185
    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 2
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    .line 263
    .line 265
    const-string v0, "mf.org.apache.xerces.xni.parser.XMLParserConfiguration"

    .line 266
    const-string v1, "mf.org.apache.xerces.parsers.XIncludeAwareParserConfiguration"

    .line 264
    invoke-static {v0, v1}, Lmf/org/apache/xerces/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    .line 267
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .line 268
    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    .line 267
    invoke-interface {v0, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 2
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "grammarPool"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .prologue
    .line 279
    .line 281
    const-string v0, "mf.org.apache.xerces.xni.parser.XMLParserConfiguration"

    .line 282
    const-string v1, "mf.org.apache.xerces.parsers.XIncludeAwareParserConfiguration"

    .line 280
    invoke-static {v0, v1}, Lmf/org/apache/xerces/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    .line 283
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .line 284
    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    .line 283
    invoke-interface {v0, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .line 287
    const-string v1, "http://apache.org/xml/properties/internal/grammar-pool"

    .line 286
    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 5
    .param p1, "config"    # Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 197
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    .line 138
    iput-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNamespaceDeclarations:Z

    .line 142
    iput-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    .line 144
    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    .line 146
    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    .line 152
    iput-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaLocation:Ljava/lang/String;

    .line 155
    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNullFilterInUse:Z

    .line 156
    iput-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortHandler:Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    .line 200
    const/16 v1, 0xa

    new-array v0, v1, [Ljava/lang/String;

    .line 201
    const-string v1, "canonical-form"

    aput-object v1, v0, v3

    .line 202
    const-string v1, "cdata-sections"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    .line 203
    const-string v2, "charset-overrides-xml-encoding"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 204
    const-string v2, "infoset"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 205
    const-string v2, "namespace-declarations"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 206
    const-string v2, "split-cdata-sections"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 207
    const-string v2, "supported-media-types-only"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 208
    const-string v2, "certified"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 209
    const-string v2, "well-formed"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 210
    const-string v2, "ignore-unknown-character-denormalizations"

    aput-object v2, v0, v1

    .line 213
    .local v0, "domRecognizedFeatures":[Ljava/lang/String;
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "http://apache.org/xml/features/dom/defer-node-expansion"

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 227
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "namespace-declarations"

    invoke-interface {v1, v2, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 228
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "well-formed"

    invoke-interface {v1, v2, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 229
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "http://apache.org/xml/features/include-comments"

    invoke-interface {v1, v2, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 230
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {v1, v2, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 231
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "http://xml.org/sax/features/namespaces"

    invoke-interface {v1, v2, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 233
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 234
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 235
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 238
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "canonical-form"

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 239
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "charset-overrides-xml-encoding"

    invoke-interface {v1, v2, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 240
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "split-cdata-sections"

    invoke-interface {v1, v2, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 241
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "supported-media-types-only"

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 242
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "ignore-unknown-character-denormalizations"

    invoke-interface {v1, v2, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 246
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "certified"

    invoke-interface {v1, v2, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 252
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "http://apache.org/xml/features/validation/schema/normalized-value"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static newFeatureNotFoundError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1410
    const-string v1, "http://www.w3.org/dom/DOMTR"

    .line 1411
    const-string v2, "FEATURE_NOT_FOUND"

    .line 1412
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 1409
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1413
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-object v1
.end method

.method private static newFeatureNotSupportedError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1401
    const-string v1, "http://www.w3.org/dom/DOMTR"

    .line 1402
    const-string v2, "FEATURE_NOT_SUPPORTED"

    .line 1403
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 1400
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1404
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-object v1
.end method

.method private static newInvalidStateError()Lmf/org/w3c/dom/DOMException;
    .locals 4

    .prologue
    .line 1393
    const-string v1, "http://www.w3.org/dom/DOMTR"

    .line 1394
    const-string v2, "INVALID_STATE_ERR"

    const/4 v3, 0x0

    .line 1392
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1395
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0xb

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method private static newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1419
    const-string v1, "http://www.w3.org/dom/DOMTR"

    .line 1420
    const-string v2, "TYPE_MISMATCH_ERR"

    .line 1421
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 1418
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1422
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x11

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-object v1
.end method

.method private restoreHandlers()V
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 1030
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 1031
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    .line 1032
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 1128
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    if-eqz v0, :cond_2

    .line 1129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    .line 1130
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 1131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    .line 1132
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortHandler:Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    if-nez v0, :cond_0

    .line 1133
    new-instance v0, Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;-><init>(Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;)V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortHandler:Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    .line 1135
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortHandler:Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 1136
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortHandler:Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 1137
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortHandler:Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    .line 1138
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1139
    sget-object v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v0

    .line 1141
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1144
    :cond_2
    return-void
.end method

.method public canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 770
    if-nez p2, :cond_1

    .line 864
    .end local p2    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v4

    .line 774
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v5, p2, Ljava/lang/Boolean;

    if-eqz v5, :cond_a

    .line 775
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 776
    .local v2, "state":Z
    const-string v5, "supported-media-types-only"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 777
    const-string v5, "normalize-characters"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 778
    const-string v5, "check-character-normalization"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 779
    const-string v5, "canonical-form"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 781
    :cond_2
    if-eqz v2, :cond_3

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    .line 783
    :cond_4
    const-string v5, "well-formed"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 784
    const-string v5, "ignore-unknown-character-denormalizations"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 786
    :cond_5
    if-nez v2, :cond_0

    move v4, v3

    goto :goto_0

    .line 788
    :cond_6
    const-string v5, "cdata-sections"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 789
    const-string v5, "charset-overrides-xml-encoding"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 790
    const-string v5, "comments"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 791
    const-string v5, "datatype-normalization"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 792
    const-string v5, "disallow-doctype"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 793
    const-string v5, "entities"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 794
    const-string v5, "infoset"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 795
    const-string v5, "namespaces"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 796
    const-string v5, "namespace-declarations"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 797
    const-string v5, "validate"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 798
    const-string v5, "validate-if-schema"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 799
    const-string v5, "element-content-whitespace"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 800
    const-string v5, "xml-declaration"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 809
    :try_start_0
    const-string v5, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 810
    const-string v1, "http://apache.org/xml/features/honour-all-schemaLocations"

    .line 821
    .local v1, "normalizedName":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v5, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 824
    .end local v1    # "normalizedName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    move v4, v3

    .line 825
    goto/16 :goto_0

    .line 812
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :cond_7
    const-string v5, "http://apache.org/xml/features/namespace-growth"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 813
    const-string v1, "http://apache.org/xml/features/namespace-growth"

    .line 814
    .restart local v1    # "normalizedName":Ljava/lang/String;
    goto :goto_2

    .line 815
    .end local v1    # "normalizedName":Ljava/lang/String;
    :cond_8
    const-string v5, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 816
    const-string v1, "http://apache.org/xml/features/internal/tolerate-duplicates"

    .line 817
    .restart local v1    # "normalizedName":Ljava/lang/String;
    goto :goto_2

    .line 819
    .end local v1    # "normalizedName":Ljava/lang/String;
    :cond_9
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1    # "normalizedName":Ljava/lang/String;
    goto :goto_2

    .line 829
    .end local v1    # "normalizedName":Ljava/lang/String;
    .end local v2    # "state":Z
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_a
    const-string v5, "error-handler"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 830
    instance-of v5, p2, Lmf/org/w3c/dom/DOMErrorHandler;

    if-nez v5, :cond_0

    if-eqz p2, :cond_0

    move v4, v3

    .line 833
    goto/16 :goto_0

    .line 835
    :cond_b
    const-string v5, "resource-resolver"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 836
    instance-of v5, p2, Lmf/org/w3c/dom/ls/LSResourceResolver;

    if-nez v5, :cond_0

    if-eqz p2, :cond_0

    move v4, v3

    .line 839
    goto/16 :goto_0

    .line 841
    :cond_c
    const-string v5, "schema-type"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 842
    instance-of v5, p2, Ljava/lang/String;

    if-eqz v5, :cond_d

    .line 843
    sget-object v5, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 844
    sget-object v5, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_d
    if-eqz p2, :cond_0

    move v4, v3

    .line 847
    goto/16 :goto_0

    .line 849
    :cond_e
    const-string v5, "schema-location"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 850
    instance-of v5, p2, Ljava/lang/String;

    if-nez v5, :cond_0

    if-eqz p2, :cond_0

    move v4, v3

    .line 852
    goto/16 :goto_0

    .line 854
    :cond_f
    const-string v5, "http://apache.org/xml/properties/dom/document-class-name"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 860
    :try_start_1
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 863
    :catch_1
    move-exception v0

    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    move v4, v3

    .line 864
    goto/16 :goto_0
.end method

.method dom2xmlInputSource(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 7
    .param p1, "is"    # Lmf/org/w3c/dom/ls/LSInput;

    .prologue
    .line 1068
    const/4 v0, 0x0

    .line 1071
    .local v0, "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getCharacterStream()Ljava/io/Reader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1072
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .end local v0    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 1073
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getCharacterStream()Ljava/io/Reader;

    move-result-object v4

    .line 1074
    const-string v5, "UTF-16"

    .line 1072
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    .line 1106
    .restart local v0    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :goto_0
    return-object v0

    .line 1077
    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1078
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .end local v0    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 1079
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getByteStream()Ljava/io/InputStream;

    move-result-object v4

    .line 1080
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getEncoding()Ljava/lang/String;

    move-result-object v5

    .line 1078
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1081
    .restart local v0    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    goto :goto_0

    .line 1084
    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1085
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .end local v0    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 1086
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/StringReader;

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 1087
    const-string v5, "UTF-16"

    .line 1085
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    .line 1088
    .restart local v0    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    goto :goto_0

    .line 1090
    :cond_2
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_4

    .line 1091
    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 1092
    :cond_4
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .end local v0    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 1093
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    .line 1092
    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    .restart local v0    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    goto :goto_0

    .line 1097
    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz v1, :cond_6

    .line 1098
    new-instance v6, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v6}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    .line 1099
    .local v6, "error":Lmf/org/apache/xerces/dom/DOMErrorImpl;
    const-string v1, "no-input-specified"

    iput-object v1, v6, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    .line 1100
    const-string v1, "no-input-specified"

    iput-object v1, v6, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 1101
    const/4 v1, 0x3

    iput-short v1, v6, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    .line 1102
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object v1

    invoke-interface {v1, v6}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    .line 1104
    .end local v6    # "error":Lmf/org/apache/xerces/dom/DOMErrorImpl;
    :cond_6
    new-instance v1, Lmf/org/w3c/dom/ls/LSException;

    const/16 v2, 0x51

    const-string v3, "no-input-specified"

    invoke-direct {v1, v2, v3}, Lmf/org/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public getAsync()Z
    .locals 1

    .prologue
    .line 1113
    const/4 v0, 0x0

    return v0
.end method

.method public getBusy()Z
    .locals 1

    .prologue
    .line 1120
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    return v0
.end method

.method public getDomConfig()Lmf/org/w3c/dom/DOMConfiguration;
    .locals 0

    .prologue
    .line 323
    return-object p0
.end method

.method public getFilter()Lmf/org/w3c/dom/ls/LSParserFilter;
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNullFilterInUse:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 630
    const-string v4, "comments"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 631
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/features/include-comments"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 632
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 761
    :cond_0
    :goto_0
    return-object v3

    .line 633
    :cond_1
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 635
    :cond_2
    const-string v4, "datatype-normalization"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 636
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 637
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 638
    :cond_3
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 640
    :cond_4
    const-string v4, "entities"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 641
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 642
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 643
    :cond_5
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 645
    :cond_6
    const-string v4, "namespaces"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 646
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://xml.org/sax/features/namespaces"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 647
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 648
    :cond_7
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 650
    :cond_8
    const-string v4, "validate"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 651
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://xml.org/sax/features/validation"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 652
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 653
    :cond_9
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 655
    :cond_a
    const-string v4, "validate-if-schema"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 656
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 657
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 658
    :cond_b
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 660
    :cond_c
    const-string v4, "element-content-whitespace"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 661
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 662
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 663
    :cond_d
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 665
    :cond_e
    const-string v4, "disallow-doctype"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 666
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/features/disallow-doctype-decl"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 667
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 668
    :cond_f
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 670
    :cond_10
    const-string v4, "infoset"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 675
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://xml.org/sax/features/namespaces"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 676
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "namespace-declarations"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 677
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/features/include-comments"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 678
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 679
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 680
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 681
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 682
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 675
    const/4 v1, 0x1

    .line 683
    .local v1, "infoset":Z
    :goto_1
    if-eqz v1, :cond_12

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 675
    .end local v1    # "infoset":Z
    :cond_11
    const/4 v1, 0x0

    goto :goto_1

    .line 683
    .restart local v1    # "infoset":Z
    :cond_12
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 685
    .end local v1    # "infoset":Z
    :cond_13
    const-string v4, "cdata-sections"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 686
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 687
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_14
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 689
    :cond_15
    const-string v4, "check-character-normalization"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 690
    const-string v4, "normalize-characters"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 691
    :cond_16
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 693
    :cond_17
    const-string v4, "namespace-declarations"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 694
    const-string v4, "well-formed"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 695
    const-string v4, "ignore-unknown-character-denormalizations"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 696
    const-string v4, "canonical-form"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 697
    const-string v4, "supported-media-types-only"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 698
    const-string v4, "split-cdata-sections"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 699
    const-string v4, "charset-overrides-xml-encoding"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 700
    :cond_18
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 701
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 702
    :cond_19
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 704
    :cond_1a
    const-string v4, "error-handler"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 705
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz v4, :cond_0

    .line 706
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object v3

    goto/16 :goto_0

    .line 710
    :cond_1b
    const-string v4, "resource-resolver"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 713
    :try_start_0
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v5, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {v4, v5}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .line 714
    .local v0, "entityResolver":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    if-eqz v0, :cond_0

    .line 715
    instance-of v4, v0, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    if-eqz v4, :cond_0

    .line 716
    check-cast v0, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    .end local v0    # "entityResolver":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    invoke-virtual {v0}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;->getEntityResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    goto/16 :goto_0

    .line 722
    :cond_1c
    const-string v3, "schema-type"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 723
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .line 724
    const-string v4, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    .line 723
    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 726
    :cond_1d
    const-string v3, "schema-location"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 727
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaLocation:Ljava/lang/String;

    goto/16 :goto_0

    .line 729
    :cond_1e
    const-string v3, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 730
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 732
    :cond_1f
    const-string v3, "http://apache.org/xml/properties/dom/document-class-name"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 733
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/properties/dom/document-class-name"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 741
    :cond_20
    const-string v3, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 742
    const-string v2, "http://apache.org/xml/features/honour-all-schemaLocations"

    .line 754
    .local v2, "normalizedName":Ljava/lang/String;
    :goto_2
    :try_start_1
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 755
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 744
    .end local v2    # "normalizedName":Ljava/lang/String;
    :cond_21
    const-string v3, "http://apache.org/xml/features/namespace-growth"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 745
    const-string v2, "http://apache.org/xml/features/namespace-growth"

    .line 746
    .restart local v2    # "normalizedName":Ljava/lang/String;
    goto :goto_2

    .line 747
    .end local v2    # "normalizedName":Ljava/lang/String;
    :cond_22
    const-string v3, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 748
    const-string v2, "http://apache.org/xml/features/internal/tolerate-duplicates"

    .line 749
    .restart local v2    # "normalizedName":Ljava/lang/String;
    goto :goto_2

    .line 751
    .end local v2    # "normalizedName":Ljava/lang/String;
    :cond_23
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "normalizedName":Ljava/lang/String;
    goto :goto_2

    .line 755
    :cond_24
    :try_start_2
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 757
    :catch_0
    move-exception v3

    .line 761
    :try_start_3
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v3

    goto/16 :goto_0

    .line 763
    :catch_1
    move-exception v3

    .line 765
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newFeatureNotFoundError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v3

    throw v3

    .line 719
    .end local v2    # "normalizedName":Ljava/lang/String;
    :catch_2
    move-exception v4

    goto/16 :goto_0
.end method

.method public getParameterNames()Lmf/org/w3c/dom/DOMStringList;
    .locals 2

    .prologue
    .line 878
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    if-nez v1, :cond_0

    .line 879
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 882
    .local v0, "parameters":Ljava/util/ArrayList;
    const-string v1, "namespaces"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    const-string v1, "cdata-sections"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    const-string v1, "canonical-form"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    const-string v1, "namespace-declarations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    const-string v1, "split-cdata-sections"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    const-string v1, "entities"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    const-string v1, "validate-if-schema"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 890
    const-string v1, "validate"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    const-string v1, "datatype-normalization"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    const-string v1, "charset-overrides-xml-encoding"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    const-string v1, "check-character-normalization"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    const-string v1, "supported-media-types-only"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    const-string v1, "ignore-unknown-character-denormalizations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    const-string v1, "normalize-characters"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    const-string v1, "well-formed"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    const-string v1, "infoset"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    const-string v1, "disallow-doctype"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    const-string v1, "element-content-whitespace"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    const-string v1, "comments"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    const-string v1, "error-handler"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    const-string v1, "resource-resolver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    const-string v1, "schema-location"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    const-string v1, "schema-type"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    new-instance v1, Lmf/org/apache/xerces/dom/DOMStringListImpl;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/dom/DOMStringListImpl;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    .line 914
    .end local v0    # "parameters":Ljava/util/ArrayList;
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    return-object v1
.end method

.method public parse(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/w3c/dom/Document;
    .locals 6
    .param p1, "is"    # Lmf/org/w3c/dom/ls/LSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ls/LSException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 981
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->dom2xmlInputSource(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v3

    .line 982
    .local v3, "xmlInputSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    iget-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    if-eqz v4, :cond_0

    .line 983
    invoke-static {}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newInvalidStateError()Lmf/org/w3c/dom/DOMException;

    move-result-object v4

    throw v4

    .line 987
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    .line 988
    const/4 v4, 0x1

    iput-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    .line 989
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    .line 990
    const/4 v4, 0x0

    iput-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    .line 991
    iget-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 993
    const/4 v4, 0x0

    iput-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    .line 994
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1022
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->getDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    .line 1023
    .local v0, "doc":Lmf/org/w3c/dom/Document;
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->dropDocumentReferences()V

    .line 1024
    .end local v0    # "doc":Lmf/org/w3c/dom/Document;
    :goto_0
    return-object v0

    .line 996
    :catch_0
    move-exception v1

    .line 997
    .local v1, "e":Ljava/lang/Exception;
    iput-boolean v5, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    .line 998
    iget-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 999
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1001
    :cond_2
    iget-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    if-eqz v4, :cond_3

    .line 1002
    iput-boolean v5, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    .line 1003
    invoke-direct {p0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->restoreHandlers()V

    .line 1004
    const/4 v0, 0x0

    goto :goto_0

    .line 1008
    :cond_3
    sget-object v4, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    if-eq v1, v4, :cond_1

    .line 1009
    instance-of v4, v1, Lmf/org/apache/xerces/xni/parser/XMLParseException;

    if-nez v4, :cond_4

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz v4, :cond_4

    .line 1010
    new-instance v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v2}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    .line 1011
    .local v2, "error":Lmf/org/apache/xerces/dom/DOMErrorImpl;
    iput-object v1, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    .line 1012
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 1013
    const/4 v4, 0x3

    iput-short v4, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    .line 1014
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object v4

    invoke-interface {v4, v2}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    .line 1019
    .end local v2    # "error":Lmf/org/apache/xerces/dom/DOMErrorImpl;
    :cond_4
    const/16 v4, 0x51

    invoke-static {v4, v1}, Lmf/org/apache/xerces/util/DOMUtil;->createLSException(SLjava/lang/Throwable;)Lmf/org/w3c/dom/ls/LSException;

    move-result-object v4

    invoke-virtual {v4}, Lmf/org/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Lmf/org/w3c/dom/ls/LSException;

    throw v4
.end method

.method public parseURI(Ljava/lang/String;)Lmf/org/w3c/dom/Document;
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ls/LSException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 927
    iget-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    if-eqz v4, :cond_0

    .line 928
    invoke-static {}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newInvalidStateError()Lmf/org/w3c/dom/DOMException;

    move-result-object v4

    throw v4

    .line 931
    :cond_0
    new-instance v3, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-direct {v3, v0, p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    .local v3, "source":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    .line 934
    const/4 v4, 0x1

    iput-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    .line 935
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    .line 936
    const/4 v4, 0x0

    iput-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    .line 937
    iget-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 939
    const/4 v4, 0x0

    iput-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    .line 940
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 968
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->getDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    .line 969
    .local v0, "doc":Lmf/org/w3c/dom/Document;
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->dropDocumentReferences()V

    .line 970
    .end local v0    # "doc":Lmf/org/w3c/dom/Document;
    :goto_0
    return-object v0

    .line 942
    :catch_0
    move-exception v1

    .line 943
    .local v1, "e":Ljava/lang/Exception;
    iput-boolean v5, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    .line 944
    iget-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 945
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 947
    :cond_2
    iget-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    if-eqz v4, :cond_3

    .line 948
    iput-boolean v5, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    .line 949
    invoke-direct {p0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->restoreHandlers()V

    goto :goto_0

    .line 954
    :cond_3
    sget-object v4, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    if-eq v1, v4, :cond_1

    .line 955
    instance-of v4, v1, Lmf/org/apache/xerces/xni/parser/XMLParseException;

    if-nez v4, :cond_4

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz v4, :cond_4

    .line 956
    new-instance v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v2}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    .line 957
    .local v2, "error":Lmf/org/apache/xerces/dom/DOMErrorImpl;
    iput-object v1, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    .line 958
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 959
    const/4 v4, 0x3

    iput-short v4, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    .line 960
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object v4

    invoke-interface {v4, v2}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    .line 965
    .end local v2    # "error":Lmf/org/apache/xerces/dom/DOMErrorImpl;
    :cond_4
    const/16 v4, 0x51

    invoke-static {v4, v1}, Lmf/org/apache/xerces/util/DOMUtil;->createLSException(SLjava/lang/Throwable;)Lmf/org/w3c/dom/ls/LSException;

    move-result-object v4

    invoke-virtual {v4}, Lmf/org/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Lmf/org/w3c/dom/ls/LSException;

    throw v4
.end method

.method public parseWithContext(Lmf/org/w3c/dom/ls/LSInput;Lmf/org/w3c/dom/Node;S)Lmf/org/w3c/dom/Node;
    .locals 3
    .param p1, "is"    # Lmf/org/w3c/dom/ls/LSInput;
    .param p2, "cnode"    # Lmf/org/w3c/dom/Node;
    .param p3, "action"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;,
            Lmf/org/w3c/dom/ls/LSException;
        }
    .end annotation

    .prologue
    .line 1056
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 298
    invoke-super {p0}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->reset()V

    .line 302
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "namespace-declarations"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    .line 301
    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNamespaceDeclarations:Z

    .line 305
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNullFilterInUse:Z

    if-eqz v0, :cond_0

    .line 306
    iput-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    .line 307
    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNullFilterInUse:Z

    .line 309
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSkippedElemStack:Ljava/util/Stack;

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSkippedElemStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    .line 312
    :cond_1
    iput v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fRejectedElementDepth:I

    .line 313
    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fFilterReject:Z

    .line 314
    iput-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public setFilter(Lmf/org/w3c/dom/ls/LSParserFilter;)V
    .locals 1
    .param p1, "filter"    # Lmf/org/w3c/dom/ls/LSParserFilter;

    .prologue
    .line 353
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    if-eqz v0, :cond_1

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNullFilterInUse:Z

    .line 355
    sget-object v0, Lmf/org/apache/xerces/parsers/DOMParserImpl$NullLSParserFilter;->INSTANCE:Lmf/org/apache/xerces/parsers/DOMParserImpl$NullLSParserFilter;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    .line 360
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSkippedElemStack:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSkippedElemStack:Ljava/util/Stack;

    .line 363
    :cond_0
    return-void

    .line 358
    :cond_1
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 371
    instance-of v6, p2, Ljava/lang/Boolean;

    if-eqz v6, :cond_15

    .line 372
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 374
    .local v4, "state":Z
    :try_start_0
    const-string v6, "comments"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 375
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://apache.org/xml/features/include-comments"

    invoke-interface {v6, v7, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 624
    .end local v4    # "state":Z
    :cond_0
    :goto_0
    return-void

    .line 377
    .restart local v4    # "state":Z
    :cond_1
    const-string v6, "datatype-normalization"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 378
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-interface {v6, v7, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 480
    :catch_0
    move-exception v1

    .line 481
    .local v1, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newFeatureNotFoundError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v6

    throw v6

    .line 380
    .end local v1    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :cond_2
    :try_start_1
    const-string v6, "entities"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 381
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-interface {v6, v7, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    .line 383
    :cond_3
    const-string v6, "disallow-doctype"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 384
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://apache.org/xml/features/disallow-doctype-decl"

    invoke-interface {v6, v7, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    .line 386
    :cond_4
    const-string v6, "supported-media-types-only"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 387
    const-string v6, "normalize-characters"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 388
    const-string v6, "check-character-normalization"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 389
    const-string v6, "canonical-form"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 390
    :cond_5
    if-eqz v4, :cond_0

    .line 391
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newFeatureNotSupportedError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v6

    throw v6

    .line 395
    :cond_6
    const-string v6, "namespaces"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 396
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://xml.org/sax/features/namespaces"

    invoke-interface {v6, v7, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    .line 398
    :cond_7
    const-string v6, "infoset"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 400
    if-eqz v4, :cond_0

    .line 403
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://xml.org/sax/features/namespaces"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 404
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "namespace-declarations"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 405
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://apache.org/xml/features/include-comments"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 406
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 410
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://apache.org/xml/features/validation/dynamic"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 411
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 412
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://apache.org/xml/features/validation/schema/normalized-value"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 413
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://apache.org/xml/features/create-cdata-nodes"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 416
    :cond_8
    const-string v6, "cdata-sections"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 417
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-interface {v6, v7, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 419
    :cond_9
    const-string v6, "namespace-declarations"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 420
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "namespace-declarations"

    invoke-interface {v6, v7, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 422
    :cond_a
    const-string v6, "well-formed"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 423
    const-string v6, "ignore-unknown-character-denormalizations"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 424
    :cond_b
    if-nez v4, :cond_0

    .line 425
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newFeatureNotSupportedError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v6

    throw v6

    .line 430
    :cond_c
    const-string v6, "validate"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 431
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://xml.org/sax/features/validation"

    invoke-interface {v6, v7, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 432
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    sget-object v7, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    if-eq v6, v7, :cond_d

    .line 433
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://apache.org/xml/features/validation/schema"

    invoke-interface {v6, v7, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 434
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-interface {v6, v7, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 436
    :cond_d
    if-eqz v4, :cond_0

    .line 437
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://apache.org/xml/features/validation/dynamic"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 440
    :cond_e
    const-string v6, "validate-if-schema"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 441
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {v6, v7, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 443
    if-eqz v4, :cond_0

    .line 444
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://xml.org/sax/features/validation"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 447
    :cond_f
    const-string v6, "element-content-whitespace"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 448
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {v6, v7, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 450
    :cond_10
    const-string v6, "psvi"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 453
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://apache.org/xml/features/validation/schema/augment-psvi"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 454
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://apache.org/xml/properties/dom/document-class-name"

    .line 455
    const-string v8, "mf.org.apache.xerces.dom.PSVIDocumentImpl"

    .line 454
    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 464
    :cond_11
    const-string v6, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 465
    const-string v3, "http://apache.org/xml/features/honour-all-schemaLocations"

    .line 476
    .local v3, "normalizedName":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v6, v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 467
    .end local v3    # "normalizedName":Ljava/lang/String;
    :cond_12
    const-string v6, "http://apache.org/xml/features/namespace-growth"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 468
    const-string v3, "http://apache.org/xml/features/namespace-growth"

    .line 469
    .restart local v3    # "normalizedName":Ljava/lang/String;
    goto :goto_1

    .line 470
    .end local v3    # "normalizedName":Ljava/lang/String;
    :cond_13
    const-string v6, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 471
    const-string v3, "http://apache.org/xml/features/internal/tolerate-duplicates"

    .line 472
    .restart local v3    # "normalizedName":Ljava/lang/String;
    goto :goto_1

    .line 474
    .end local v3    # "normalizedName":Ljava/lang/String;
    :cond_14
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .restart local v3    # "normalizedName":Ljava/lang/String;
    goto :goto_1

    .line 485
    .end local v3    # "normalizedName":Ljava/lang/String;
    .end local v4    # "state":Z
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_15
    const-string v6, "error-handler"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 486
    instance-of v6, p2, Lmf/org/w3c/dom/DOMErrorHandler;

    if-nez v6, :cond_16

    if-nez p2, :cond_17

    .line 488
    :cond_16
    :try_start_2
    new-instance v6, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    check-cast p2, Lmf/org/w3c/dom/DOMErrorHandler;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-direct {v6, p2}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;-><init>(Lmf/org/w3c/dom/DOMErrorHandler;)V

    iput-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    .line 489
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://apache.org/xml/properties/internal/error-handler"

    iget-object v8, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 491
    :catch_1
    move-exception v6

    goto/16 :goto_0

    .line 494
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_17
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v6

    throw v6

    .line 498
    :cond_18
    const-string v6, "resource-resolver"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 499
    instance-of v6, p2, Lmf/org/w3c/dom/ls/LSResourceResolver;

    if-nez v6, :cond_19

    if-nez p2, :cond_1a

    .line 501
    :cond_19
    :try_start_3
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://apache.org/xml/properties/internal/entity-resolver"

    new-instance v8, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    check-cast p2, Lmf/org/w3c/dom/ls/LSResourceResolver;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-direct {v8, p2}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;-><init>(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 503
    :catch_2
    move-exception v6

    goto/16 :goto_0

    .line 506
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1a
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v6

    throw v6

    .line 510
    :cond_1b
    const-string v6, "schema-location"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 511
    instance-of v6, p2, Ljava/lang/String;

    if-nez v6, :cond_1c

    if-nez p2, :cond_20

    .line 513
    :cond_1c
    if-nez p2, :cond_1d

    .line 514
    const/4 v6, 0x0

    :try_start_4
    iput-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaLocation:Ljava/lang/String;

    .line 515
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .line 516
    const-string v7, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    .line 517
    const/4 v8, 0x0

    .line 515
    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 541
    :catch_3
    move-exception v6

    goto/16 :goto_0

    .line 520
    :cond_1d
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    iput-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaLocation:Ljava/lang/String;

    .line 523
    new-instance v5, Ljava/util/StringTokenizer;

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaLocation:Ljava/lang/String;

    const-string v7, " \n\t\r"

    invoke-direct {v5, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    .local v5, "t":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 525
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .local v2, "locations":Ljava/util/ArrayList;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    :goto_2
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-nez v6, :cond_1e

    .line 530
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .line 531
    const-string v7, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    .line 532
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    .line 530
    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 528
    :cond_1e
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 535
    .end local v2    # "locations":Ljava/util/ArrayList;
    :cond_1f
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .line 536
    const-string v7, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    .line 535
    invoke-interface {v6, v7, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 544
    .end local v5    # "t":Ljava/util/StringTokenizer;
    :cond_20
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v6

    throw v6

    .line 548
    :cond_21
    const-string v6, "schema-type"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 549
    instance-of v6, p2, Ljava/lang/String;

    if-nez v6, :cond_22

    if-nez p2, :cond_25

    .line 551
    :cond_22
    if-nez p2, :cond_23

    .line 553
    :try_start_5
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://apache.org/xml/features/validation/schema"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 554
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://apache.org/xml/features/validation/schema-full-checking"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 556
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    .line 558
    const/4 v8, 0x0

    .line 556
    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 559
    const/4 v6, 0x0

    iput-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    goto/16 :goto_0

    .line 582
    :catch_4
    move-exception v6

    goto/16 :goto_0

    .line 561
    :cond_23
    sget-object v6, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 563
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://apache.org/xml/features/validation/schema"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 564
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://apache.org/xml/features/validation/schema-full-checking"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 566
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    .line 568
    sget-object v8, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    .line 566
    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 569
    sget-object v6, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    iput-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    goto/16 :goto_0

    .line 571
    :cond_24
    sget-object v6, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 573
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://apache.org/xml/features/validation/schema"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 574
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://apache.org/xml/features/validation/schema-full-checking"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 576
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    .line 578
    sget-object v8, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    .line 576
    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 579
    sget-object v6, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    iput-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 585
    :cond_25
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v6

    throw v6

    .line 589
    :cond_26
    const-string v6, "http://apache.org/xml/properties/dom/document-class-name"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 590
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v7, "http://apache.org/xml/properties/dom/document-class-name"

    invoke-interface {v6, v7, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 594
    :cond_27
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 596
    .restart local v3    # "normalizedName":Ljava/lang/String;
    :try_start_6
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v6, v3, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    .line 599
    :catch_5
    move-exception v6

    .line 605
    :try_start_7
    const-string v6, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 606
    const-string v3, "http://apache.org/xml/features/honour-all-schemaLocations"

    .line 614
    :cond_28
    :goto_3
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v6, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    .line 615
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v6

    throw v6
    :try_end_7
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_6

    .line 618
    :catch_6
    move-exception v6

    .line 621
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newFeatureNotFoundError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v6

    throw v6

    .line 608
    :cond_29
    :try_start_8
    const-string v6, "http://apache.org/xml/features/namespace-growth"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 609
    const-string v3, "http://apache.org/xml/features/namespace-growth"

    .line 610
    goto :goto_3

    .line 611
    :cond_2a
    const-string v6, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 612
    const-string v3, "http://apache.org/xml/features/internal/tolerate-duplicates"
    :try_end_8
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_3
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;

    .prologue
    .line 1161
    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNamespaceDeclarations:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNamespaceAware:Z

    if-eqz v2, :cond_0

    .line 1162
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v1

    .line 1163
    .local v1, "len":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_1

    .line 1170
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1171
    return-void

    .line 1164
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    :cond_1
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getPrefix(I)Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 1165
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 1166
    :cond_2
    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->removeAttributeAt(I)V

    .line 1163
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
