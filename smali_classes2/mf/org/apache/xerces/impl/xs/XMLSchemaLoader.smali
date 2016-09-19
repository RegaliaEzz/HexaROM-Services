.class public Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;
.super Ljava/lang/Object;
.source "XMLSchemaLoader.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;
.implements Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;
.implements Lmf/org/apache/xerces/xs/XSLoader;
.implements Lmf/org/w3c/dom/DOMConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;
    }
.end annotation


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field protected static final AUGMENT_PSVI:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final DISALLOW_DOCTYPE:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field public static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field public static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final LOCALE:Ljava/lang/String; = "http://apache.org/xml/properties/locale"

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SCHEMA_DV_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

.field protected static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final SCHEMA_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-schemaLocation"

.field protected static final SCHEMA_NONS_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

.field protected static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field protected static final STANDARD_URI_CONFORMANT_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/standard-uri-conformant"

.field public static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field protected static final VALIDATE_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/validate-annotations"

.field public static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field private fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

.field private fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

.field private fDefaultSchemaDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

.field private fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

.field private fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

.field private fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field private fExternalNoNSSchema:Ljava/lang/String;

.field private fExternalSchemas:Ljava/lang/String;

.field private fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

.field private fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field private fIsCheckedFully:Z

.field private fJAXPCache:Ljava/util/WeakHashMap;

.field private fJAXPProcessed:Z

.field private fJAXPSource:Ljava/lang/Object;

.field private final fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

.field private fLocale:Ljava/util/Locale;

.field private fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

.field private fResourceResolver:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

.field private fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

.field private fSettingsChanged:Z

.field private fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

.field private fUserEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

.field private fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 155
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 156
    const-string v1, "http://apache.org/xml/features/validation/schema-full-checking"

    aput-object v1, v0, v3

    .line 157
    const-string v1, "http://apache.org/xml/features/validation/schema/augment-psvi"

    aput-object v1, v0, v4

    .line 158
    const-string v1, "http://apache.org/xml/features/continue-after-fatal-error"

    aput-object v1, v0, v5

    .line 159
    const-string v1, "http://apache.org/xml/features/allow-java-encodings"

    aput-object v1, v0, v6

    .line 160
    const-string v1, "http://apache.org/xml/features/standard-uri-conformant"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 161
    const-string v2, "http://apache.org/xml/features/disallow-doctype-decl"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 162
    const-string v2, "http://apache.org/xml/features/generate-synthetic-annotations"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 163
    const-string v2, "http://apache.org/xml/features/validate-annotations"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 164
    const-string v2, "http://apache.org/xml/features/honour-all-schemaLocations"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 165
    const-string v2, "http://apache.org/xml/features/namespace-growth"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 166
    const-string v2, "http://apache.org/xml/features/internal/tolerate-duplicates"

    aput-object v2, v0, v1

    .line 155
    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    .line 214
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    .line 215
    const-string v1, "http://apache.org/xml/properties/internal/entity-manager"

    aput-object v1, v0, v3

    .line 216
    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v1, v0, v4

    .line 217
    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v1, v0, v5

    .line 218
    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    aput-object v1, v0, v6

    .line 219
    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 220
    const-string v2, "http://apache.org/xml/properties/internal/grammar-pool"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 221
    const-string v2, "http://apache.org/xml/properties/schema/external-schemaLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 222
    const-string v2, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 223
    const-string v2, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 224
    const-string v2, "http://apache.org/xml/properties/security-manager"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 225
    const-string v2, "http://apache.org/xml/properties/locale"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 226
    const-string v2, "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

    aput-object v2, v0, v1

    .line 214
    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 227
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 271
    new-instance v1, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v1}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    new-instance v3, Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLEntityManager;-><init>()V

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)V

    .line 272
    return-void
.end method

.method constructor <init>(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)V
    .locals 7
    .param p1, "errorReporter"    # Lmf/org/apache/xerces/impl/XMLErrorReporter;
    .param p2, "grammarBucket"    # Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;
    .param p3, "sHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;
    .param p4, "builder"    # Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    .prologue
    const/4 v1, 0x0

    .line 289
    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)V

    .line 290
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 7
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    const/4 v2, 0x0

    .line 275
    new-instance v3, Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLEntityManager;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)V

    .line 276
    return-void
.end method

.method constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)V
    .locals 5
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "errorReporter"    # Lmf/org/apache/xerces/impl/XMLErrorReporter;
    .param p3, "entityResolver"    # Lmf/org/apache/xerces/impl/XMLEntityManager;
    .param p4, "grammarBucket"    # Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;
    .param p5, "sHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;
    .param p6, "builder"    # Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance v1, Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-direct {v1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    .line 233
    new-instance v1, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 234
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    .line 235
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fUserEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .line 236
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .line 237
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalSchemas:Ljava/lang/String;

    .line 238
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalNoNSSchema:Ljava/lang/String;

    .line 240
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    .line 242
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fIsCheckedFully:Z

    .line 244
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z

    .line 246
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSettingsChanged:Z

    .line 251
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    .line 254
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    .line 258
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLocale:Ljava/util/Locale;

    .line 261
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    .line 264
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    .line 267
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fResourceResolver:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    .line 300
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->addRecognizedProperties([Ljava/lang/String;)V

    .line 302
    if-eqz p1, :cond_0

    .line 303
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    const-string v2, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v1, v2, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 306
    :cond_0
    if-nez p2, :cond_1

    .line 307
    new-instance p2, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .end local p2    # "errorReporter":Lmf/org/apache/xerces/impl/XMLErrorReporter;
    invoke-direct {p2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    .line 308
    .restart local p2    # "errorReporter":Lmf/org/apache/xerces/impl/XMLErrorReporter;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLocale:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    .line 309
    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    new-instance v2, Lmf/org/apache/xerces/util/DefaultErrorHandler;

    invoke-direct {v2}, Lmf/org/apache/xerces/util/DefaultErrorHandler;-><init>()V

    invoke-virtual {p2, v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 312
    :cond_1
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 314
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v1

    if-nez v1, :cond_2

    .line 315
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    new-instance v3, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    .line 317
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    const-string v2, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 318
    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    .line 320
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    if-eqz v1, :cond_3

    .line 321
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    const-string v2, "http://apache.org/xml/properties/internal/entity-manager"

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 325
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    const-string v2, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {v1, v2, v4}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    .line 327
    if-nez p4, :cond_4

    .line 328
    new-instance p4, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    .end local p4    # "grammarBucket":Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;
    invoke-direct {p4}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;-><init>()V

    .line 330
    .restart local p4    # "grammarBucket":Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;
    :cond_4
    iput-object p4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    .line 331
    if-nez p5, :cond_5

    .line 332
    new-instance p5, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    .end local p5    # "sHandler":Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;
    invoke-direct {p5, p0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;-><init>(Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;)V

    .line 334
    .restart local p5    # "sHandler":Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;
    :cond_5
    iput-object p5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    .line 337
    new-instance v0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;-><init>()V

    .line 339
    .local v0, "nodeFactory":Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;
    if-nez p6, :cond_6

    .line 340
    new-instance p6, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    .end local p6    # "builder":Lmf/org/apache/xerces/impl/xs/models/CMBuilder;
    invoke-direct {p6, v0}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;-><init>(Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;)V

    .line 342
    .restart local p6    # "builder":Lmf/org/apache/xerces/impl/xs/models/CMBuilder;
    :cond_6
    iput-object p6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    .line 343
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "flag1"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 344
    new-instance v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;-><init>(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    .line 345
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPCache:Ljava/util/WeakHashMap;

    .line 347
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSettingsChanged:Z

    .line 348
    return-void
.end method

.method private initGrammarBucket()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1103
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v3, :cond_0

    .line 1104
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    const-string v5, "http://www.w3.org/2001/XMLSchema"

    invoke-interface {v3, v5}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v1

    .line 1105
    .local v1, "initialGrammars":[Lmf/org/apache/xerces/xni/grammars/Grammar;
    if-eqz v1, :cond_1

    array-length v2, v1

    .line 1106
    .local v2, "length":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v2, :cond_2

    .line 1118
    .end local v0    # "i":I
    .end local v1    # "initialGrammars":[Lmf/org/apache/xerces/xni/grammars/Grammar;
    .end local v2    # "length":I
    :cond_0
    return-void

    .restart local v1    # "initialGrammars":[Lmf/org/apache/xerces/xni/grammars/Grammar;
    :cond_1
    move v2, v4

    .line 1105
    goto :goto_0

    .line 1109
    .restart local v0    # "i":I
    .restart local v2    # "length":I
    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    aget-object v3, v1, v0

    check-cast v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1112
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v5, "http://www.w3.org/TR/xml-schema-1"

    .line 1113
    const-string v6, "GrammarConflict"

    const/4 v7, 0x0

    .line 1112
    invoke-virtual {v3, v5, v6, v7, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 1106
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private parserSettingsUpdated(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)Z
    .locals 1
    .param p1, "componentManager"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    .prologue
    .line 1093
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    if-eq p1, v0, :cond_0

    .line 1095
    :try_start_0
    const-string v0, "http://apache.org/xml/features/internal/parser-settings"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1099
    :goto_0
    return v0

    .line 1097
    :catch_0
    move-exception v0

    .line 1099
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static processExternalHints(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V
    .locals 8
    .param p0, "sl"    # Ljava/lang/String;
    .param p1, "nsl"    # Ljava/lang/String;
    .param p2, "locations"    # Ljava/util/Hashtable;
    .param p3, "er"    # Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .prologue
    const/4 v7, 0x0

    .line 633
    if-eqz p0, :cond_0

    .line 638
    :try_start_0
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_SCHEMALOCATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    .line 640
    .local v0, "attrDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    .line 641
    const/4 v3, 0x0

    invoke-static {p0, p2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->tokenizeSchemaLocationStr(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 643
    const-string v3, "http://www.w3.org/TR/xml-schema-1"

    .line 644
    const-string v4, "SchemaLocation"

    .line 645
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    .line 646
    const/4 v6, 0x0

    .line 643
    invoke-virtual {p3, v3, v4, v5, v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    .end local v0    # "attrDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 660
    :try_start_1
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NONAMESPACESCHEMALOCATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    .line 661
    .restart local v0    # "attrDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, p1, v4, v5}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    .line 662
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    .line 663
    .local v2, "la":Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;
    if-nez v2, :cond_1

    .line 664
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    .end local v2    # "la":Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;
    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;-><init>()V

    .line 665
    .restart local v2    # "la":Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {p2, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    :cond_1
    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->addLocation(Ljava/lang/String;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_1

    .line 676
    .end local v0    # "attrDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .end local v2    # "la":Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;
    :cond_2
    :goto_1
    return-void

    .line 649
    :catch_0
    move-exception v1

    .line 651
    .local v1, "ex":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    const-string v3, "http://www.w3.org/TR/xml-schema-1"

    .line 652
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v5

    .line 651
    invoke-virtual {p3, v3, v4, v5, v7}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    .line 669
    .end local v1    # "ex":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    :catch_1
    move-exception v1

    .line 671
    .restart local v1    # "ex":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    const-string v3, "http://www.w3.org/TR/xml-schema-1"

    .line 672
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v5

    .line 671
    invoke-virtual {p3, v3, v4, v5, v7}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_1
.end method

.method private processJAXPSchemaSource(Ljava/util/Hashtable;)V
    .locals 19
    .param p1, "locationPairs"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 722
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z

    .line 723
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    if-nez v12, :cond_1

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 728
    .local v2, "componentType":Ljava/lang/Class;
    const/4 v11, 0x0

    .line 729
    .local v11, "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    const/4 v9, 0x0

    .line 730
    .local v9, "sid":Ljava/lang/String;
    if-nez v2, :cond_7

    .line 732
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    instance-of v12, v12, Ljava/io/InputStream;

    if-nez v12, :cond_2

    .line 733
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    instance-of v12, v12, Lorg/xml/sax/InputSource;

    if-eqz v12, :cond_3

    .line 734
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPCache:Ljava/util/WeakHashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 735
    .local v3, "g":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v3, :cond_3

    .line 736
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v12, v3}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto :goto_0

    .line 740
    .end local v3    # "g":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->reset()V

    .line 741
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->xsdToXMLInputSource(Ljava/lang/Object;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v11

    .line 742
    invoke-virtual {v11}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v9

    .line 743
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    const/4 v13, 0x3

    iput-short v13, v12, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    .line 744
    if-eqz v9, :cond_4

    .line 745
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v11}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setBaseSystemId(Ljava/lang/String;)V

    .line 746
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v12, v9}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setLiteralSystemId(Ljava/lang/String;)V

    .line 747
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v12, v9}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setExpandedSystemId(Ljava/lang/String;)V

    .line 748
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    iput-object v13, v12, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    .line 750
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v12, v11, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadSchema(Lmf/org/apache/xerces/impl/xs/XSDDescription;Lmf/org/apache/xerces/xni/parser/XMLInputSource;Ljava/util/Hashtable;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v3

    .line 752
    .restart local v3    # "g":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v3, :cond_0

    .line 753
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    instance-of v12, v12, Ljava/io/InputStream;

    if-nez v12, :cond_5

    .line 754
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    instance-of v12, v12, Lorg/xml/sax/InputSource;

    if-eqz v12, :cond_6

    .line 755
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPCache:Ljava/util/WeakHashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    invoke-virtual {v12, v13, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fIsCheckedFully:Z

    if-eqz v12, :cond_6

    .line 757
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fullSchemaChecking(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    .line 760
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v12, v3}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto/16 :goto_0

    .line 764
    .end local v3    # "g":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :cond_7
    const-class v12, Ljava/lang/Object;

    if-eq v2, v12, :cond_8

    .line 765
    const-class v12, Ljava/lang/String;

    if-eq v2, v12, :cond_8

    .line 766
    const-class v12, Ljava/io/File;

    if-eq v2, v12, :cond_8

    .line 767
    const-class v12, Ljava/io/InputStream;

    if-eq v2, v12, :cond_8

    .line 768
    const-class v12, Lorg/xml/sax/InputSource;

    if-eq v2, v12, :cond_8

    .line 769
    const-class v12, Ljava/io/File;

    invoke-virtual {v12, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 770
    const-class v12, Ljava/io/InputStream;

    invoke-virtual {v12, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 771
    const-class v12, Lorg/xml/sax/InputSource;

    invoke-virtual {v12, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 772
    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v12

    if-nez v12, :cond_8

    .line 775
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v13, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v7

    .line 776
    .local v7, "mf":Lmf/org/apache/xerces/util/MessageFormatter;
    new-instance v12, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    .line 777
    const/4 v13, 0x1

    .line 778
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v14}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v14

    const-string v15, "jaxp12-schema-source-type.2"

    .line 779
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    .line 778
    move-object/from16 v0, v16

    invoke-interface {v7, v14, v15, v0}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 776
    invoke-direct {v12, v13, v14}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v12

    .line 784
    .end local v7    # "mf":Lmf/org/apache/xerces/util/MessageFormatter;
    :cond_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    .line 786
    .local v8, "objArr":[Ljava/lang/Object;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 787
    .local v6, "jaxpSchemaSourceNamespaces":Ljava/util/ArrayList;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v12, v8

    if-ge v5, v12, :cond_0

    .line 788
    aget-object v12, v8, v5

    instance-of v12, v12, Ljava/io/InputStream;

    if-nez v12, :cond_9

    .line 789
    aget-object v12, v8, v5

    instance-of v12, v12, Lorg/xml/sax/InputSource;

    if-eqz v12, :cond_b

    .line 790
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPCache:Ljava/util/WeakHashMap;

    aget-object v13, v8, v5

    invoke-virtual {v12, v13}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 791
    .restart local v3    # "g":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v3, :cond_b

    .line 792
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v12, v3}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 787
    .end local v3    # "g":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :cond_a
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 796
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->reset()V

    .line 797
    aget-object v12, v8, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->xsdToXMLInputSource(Ljava/lang/Object;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v11

    .line 798
    invoke-virtual {v11}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v9

    .line 799
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    const/4 v13, 0x3

    iput-short v13, v12, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    .line 800
    if-eqz v9, :cond_c

    .line 801
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v11}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setBaseSystemId(Ljava/lang/String;)V

    .line 802
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v12, v9}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setLiteralSystemId(Ljava/lang/String;)V

    .line 803
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v12, v9}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setExpandedSystemId(Ljava/lang/String;)V

    .line 804
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    iput-object v13, v12, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    .line 806
    :cond_c
    const/4 v10, 0x0

    .line 808
    .local v10, "targetNamespace":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, p1

    invoke-virtual {v12, v11, v13, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->parseSchema(Lmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/apache/xerces/impl/xs/XSDDescription;Ljava/util/Hashtable;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v4

    .line 810
    .local v4, "grammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fIsCheckedFully:Z

    if-eqz v12, :cond_d

    .line 811
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fullSchemaChecking(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    .line 813
    :cond_d
    if-eqz v4, :cond_a

    .line 814
    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v10

    .line 815
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 817
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v13, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v7

    .line 818
    .restart local v7    # "mf":Lmf/org/apache/xerces/util/MessageFormatter;
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v13

    .line 819
    const-string v14, "jaxp12-schema-source-ns"

    const/4 v15, 0x0

    .line 818
    invoke-interface {v7, v13, v14, v15}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 822
    .end local v7    # "mf":Lmf/org/apache/xerces/util/MessageFormatter;
    :cond_e
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    aget-object v12, v8, v5

    instance-of v12, v12, Ljava/io/InputStream;

    if-nez v12, :cond_f

    .line 825
    aget-object v12, v8, v5

    instance-of v12, v12, Lorg/xml/sax/InputSource;

    if-eqz v12, :cond_10

    .line 826
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPCache:Ljava/util/WeakHashMap;

    aget-object v13, v8, v5

    invoke-virtual {v12, v13, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v12, v4}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto/16 :goto_2
.end method

.method public static resolveDocument(Lmf/org/apache/xerces/impl/xs/XSDDescription;Ljava/util/Hashtable;Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 9
    .param p0, "desc"    # Lmf/org/apache/xerces/impl/xs/XSDDescription;
    .param p1, "locationPairs"    # Ljava/util/Hashtable;
    .param p2, "entityResolver"    # Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 602
    const/4 v2, 0x0

    .line 604
    .local v2, "loc":Ljava/lang/String;
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 605
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fromInstance()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 607
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v3

    .line 608
    .local v3, "namespace":Ljava/lang/String;
    if-nez v3, :cond_3

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 610
    .local v4, "ns":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    .line 611
    .local v5, "tempLA":Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;
    if-eqz v5, :cond_1

    .line 612
    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->getFirstLocation()Ljava/lang/String;

    move-result-object v2

    .line 617
    .end local v3    # "namespace":Ljava/lang/String;
    .end local v4    # "ns":Ljava/lang/String;
    .end local v5    # "tempLA":Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;
    :cond_1
    if-nez v2, :cond_2

    .line 618
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getLocationHints()[Ljava/lang/String;

    move-result-object v1

    .line 619
    .local v1, "hints":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v6, v1

    if-lez v6, :cond_2

    .line 620
    aget-object v2, v1, v8

    .line 623
    .end local v1    # "hints":[Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getBaseSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v8}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 624
    .local v0, "expandedLoc":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setLiteralSystemId(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setExpandedSystemId(Ljava/lang/String;)V

    .line 626
    invoke-interface {p2, p0}, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;->resolveEntity(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v6

    return-object v6

    .end local v0    # "expandedLoc":Ljava/lang/String;
    .restart local v3    # "namespace":Ljava/lang/String;
    :cond_3
    move-object v4, v3

    .line 608
    goto :goto_0
.end method

.method private static saxToXMLInputSource(Lorg/xml/sax/InputSource;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 11
    .param p0, "sis"    # Lorg/xml/sax/InputSource;

    .prologue
    const/4 v3, 0x0

    .line 891
    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v1

    .line 892
    .local v1, "publicId":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 894
    .local v2, "systemId":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v4

    .line 895
    .local v4, "charStream":Ljava/io/Reader;
    if-eqz v4, :cond_0

    .line 896
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    .line 906
    :goto_0
    return-object v0

    .line 900
    :cond_0
    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v9

    .line 901
    .local v9, "byteStream":Ljava/io/InputStream;
    if-eqz v9, :cond_1

    .line 902
    new-instance v5, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .line 903
    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v10

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    .line 902
    invoke-direct/range {v5 .. v10}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v0, v5

    goto :goto_0

    .line 906
    :cond_1
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static tokenizeSchemaLocationStr(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)Z
    .locals 6
    .param p0, "schemaStr"    # Ljava/lang/String;
    .param p1, "locations"    # Ljava/util/Hashtable;
    .param p2, "base"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 685
    if-eqz p0, :cond_0

    .line 686
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, " \n\t\r"

    invoke-direct {v3, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    .local v3, "t":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_2

    .line 708
    .end local v3    # "t":Ljava/util/StringTokenizer;
    :cond_0
    const/4 v4, 0x1

    :cond_1
    return v4

    .line 689
    .restart local v3    # "t":Ljava/util/StringTokenizer;
    :cond_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 690
    .local v2, "namespace":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 693
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 694
    .local v1, "location":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    .line 695
    .local v0, "la":Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;
    if-nez v0, :cond_3

    .line 696
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    .end local v0    # "la":Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;
    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;-><init>()V

    .line 697
    .restart local v0    # "la":Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;
    invoke-virtual {p1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    :cond_3
    if-eqz p2, :cond_4

    .line 701
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v1, p2, v5}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 705
    :cond_4
    :goto_1
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->addLocation(Ljava/lang/String;)V

    goto :goto_0

    .line 702
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private xsdToXMLInputSource(Ljava/lang/Object;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 16
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 837
    move-object/from16 v0, p1

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object/from16 v10, p1

    .line 840
    check-cast v10, Ljava/lang/String;

    .line 841
    .local v10, "loc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->reset()V

    .line 842
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v10, v4, v6}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    const/4 v12, 0x0

    .line 845
    .local v12, "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->resolveEntity(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 852
    :goto_0
    if-nez v12, :cond_0

    .line 855
    new-instance v1, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v10, v4}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    .end local v10    # "loc":Ljava/lang/String;
    .end local v12    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .end local p1    # "val":Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 847
    .restart local v10    # "loc":Ljava/lang/String;
    .restart local v12    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .restart local p1    # "val":Ljava/lang/Object;
    :catch_0
    move-exception v7

    .line 848
    .local v7, "ex":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    .line 849
    const-string v4, "schema_reference.4"

    .line 850
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v10, v6, v13

    const/4 v13, 0x1

    .line 848
    invoke-virtual {v1, v2, v4, v6, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    .end local v7    # "ex":Ljava/io/IOException;
    :cond_0
    move-object v1, v12

    .line 857
    goto :goto_1

    .line 859
    .end local v10    # "loc":Ljava/lang/String;
    .end local v12    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :cond_1
    move-object/from16 v0, p1

    instance-of v1, v0, Lorg/xml/sax/InputSource;

    if-eqz v1, :cond_2

    .line 860
    check-cast p1, Lorg/xml/sax/InputSource;

    .end local p1    # "val":Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->saxToXMLInputSource(Lorg/xml/sax/InputSource;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v1

    goto :goto_1

    .line 862
    .restart local p1    # "val":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p1

    instance-of v1, v0, Ljava/io/InputStream;

    if-eqz v1, :cond_3

    .line 863
    new-instance v1, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v5, p1

    .line 864
    check-cast v5, Ljava/io/InputStream;

    const/4 v6, 0x0

    .line 863
    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_1

    .line 866
    :cond_3
    move-object/from16 v0, p1

    instance-of v1, v0, Ljava/io/File;

    if-eqz v1, :cond_4

    move-object/from16 v8, p1

    .line 867
    check-cast v8, Ljava/io/File;

    .line 868
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->filepath2URI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 869
    .local v3, "escapedURI":Ljava/lang/String;
    const/4 v5, 0x0

    .line 871
    .local v5, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v5    # "is":Ljava/io/InputStream;
    .local v9, "is":Ljava/io/InputStream;
    move-object v5, v9

    .line 878
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :goto_2
    new-instance v1, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_1

    .line 873
    :catch_1
    move-exception v7

    .line 874
    .local v7, "ex":Ljava/io/FileNotFoundException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    .line 875
    const-string v4, "schema_reference.4"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v13

    .line 876
    const/4 v13, 0x1

    .line 874
    invoke-virtual {v1, v2, v4, v6, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_2

    .line 880
    .end local v3    # "escapedURI":Ljava/lang/String;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v7    # "ex":Ljava/io/FileNotFoundException;
    .end local v8    # "file":Ljava/io/File;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v11

    .line 881
    .local v11, "mf":Lmf/org/apache/xerces/util/MessageFormatter;
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    .line 882
    const/4 v4, 0x1

    .line 883
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v6

    const-string v13, "jaxp12-schema-source-type.1"

    .line 884
    const/4 v1, 0x1

    new-array v14, v1, [Ljava/lang/Object;

    const/4 v15, 0x0

    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_3
    aput-object v1, v14, v15

    .line 883
    invoke-interface {v11, v6, v13, v14}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 881
    invoke-direct {v2, v4, v1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 884
    :cond_5
    const-string v1, "null"

    goto :goto_3
.end method


# virtual methods
.method public canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1204
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 1205
    const-string v2, "validate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1206
    const-string v2, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1207
    const-string v2, "http://apache.org/xml/features/validate-annotations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1208
    const-string v2, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1209
    const-string v2, "http://apache.org/xml/features/allow-java-encodings"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1210
    const-string v2, "http://apache.org/xml/features/standard-uri-conformant"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1211
    const-string v2, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1212
    const-string v2, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1213
    const-string v2, "http://apache.org/xml/features/namespace-growth"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1214
    const-string v2, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 1233
    :cond_1
    :goto_0
    return v0

    .line 1220
    :cond_2
    const-string v2, "error-handler"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1221
    const-string v2, "resource-resolver"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1222
    const-string v2, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1223
    const-string v2, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1224
    const-string v2, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1225
    const-string v2, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1226
    const-string v2, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1227
    const-string v2, "http://apache.org/xml/properties/schema/external-schemaLocation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1228
    const-string v2, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1229
    const-string v2, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1230
    const-string v2, "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    .line 1231
    goto :goto_0
.end method

.method dom2xmlInputSource(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 6
    .param p1, "is"    # Lmf/org/w3c/dom/ls/LSInput;

    .prologue
    .line 1374
    const/4 v0, 0x0

    .line 1385
    .local v0, "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getCharacterStream()Ljava/io/Reader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1386
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .end local v0    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 1387
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getCharacterStream()Ljava/io/Reader;

    move-result-object v4

    .line 1388
    const-string v5, "UTF-16"

    .line 1386
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    .line 1409
    .restart local v0    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :goto_0
    return-object v0

    .line 1391
    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1392
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .end local v0    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 1393
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getByteStream()Ljava/io/InputStream;

    move-result-object v4

    .line 1394
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getEncoding()Ljava/lang/String;

    move-result-object v5

    .line 1392
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1395
    .restart local v0    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    goto :goto_0

    .line 1398
    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1399
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .end local v0    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 1400
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/StringReader;

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 1401
    const-string v5, "UTF-16"

    .line 1399
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    .line 1402
    .restart local v0    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    goto :goto_0

    .line 1405
    :cond_2
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .end local v0    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 1406
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    .line 1405
    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    goto :goto_0
.end method

.method public getConfig()Lmf/org/w3c/dom/DOMConfiguration;
    .locals 0

    .prologue
    .line 1125
    return-object p0
.end method

.method public getEntityResolver()Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fUserEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v0

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "featureId"    # Ljava/lang/String;

    .prologue
    .line 949
    const-string v0, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 952
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGlobalElementDecl(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 3
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    .line 1414
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    .line 1415
    .local v0, "sGrammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v0, :cond_0

    .line 1416
    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v1

    .line 1418
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1241
    const-string v6, "error-handler"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1242
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz v6, :cond_0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v5}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object v5

    .line 1255
    :cond_0
    :goto_0
    return-object v5

    .line 1244
    :cond_1
    const-string v6, "resource-resolver"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1245
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fResourceResolver:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    if-eqz v6, :cond_0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fResourceResolver:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-virtual {v5}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;->getEntityResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;

    move-result-object v5

    goto :goto_0

    .line 1249
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getFeature(Ljava/lang/String;)Z

    move-result v2

    .line 1250
    .local v2, "feature":Z
    if-eqz v2, :cond_3

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1251
    .end local v2    # "feature":Z
    :catch_0
    move-exception v0

    .line 1254
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .local v4, "property":Ljava/lang/Object;
    move-object v5, v4

    .line 1255
    goto :goto_0

    .line 1256
    .end local v4    # "property":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 1259
    .local v1, "ex":Ljava/lang/Exception;
    const-string v5, "http://www.w3.org/dom/DOMTR"

    .line 1260
    const-string v6, "FEATURE_NOT_SUPPORTED"

    .line 1261
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    .line 1258
    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1262
    .local v3, "msg":Ljava/lang/String;
    new-instance v5, Lmf/org/w3c/dom/DOMException;

    const/16 v6, 0x9

    invoke-direct {v5, v6, v3}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5
.end method

.method public getParameterNames()Lmf/org/w3c/dom/DOMStringList;
    .locals 2

    .prologue
    .line 1271
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    if-nez v1, :cond_0

    .line 1272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1273
    .local v0, "v":Ljava/util/ArrayList;
    const-string v1, "validate"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1274
    const-string v1, "error-handler"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1275
    const-string v1, "resource-resolver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1276
    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1277
    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1278
    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1279
    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1280
    const-string v1, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1281
    const-string v1, "http://apache.org/xml/properties/schema/external-schemaLocation"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1282
    const-string v1, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1283
    const-string v1, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1284
    const-string v1, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1285
    const-string v1, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1286
    const-string v1, "http://apache.org/xml/features/allow-java-encodings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1287
    const-string v1, "http://apache.org/xml/features/standard-uri-conformant"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1288
    const-string v1, "http://apache.org/xml/features/validate-annotations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    const-string v1, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1290
    const-string v1, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1291
    const-string v1, "http://apache.org/xml/features/namespace-growth"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1292
    const-string v1, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1293
    new-instance v1, Lmf/org/apache/xerces/dom/DOMStringListImpl;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/dom/DOMStringListImpl;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    .line 1295
    .end local v0    # "v":Ljava/util/ArrayList;
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    return-object v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "propertyId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "propertyId"    # Ljava/lang/String;

    .prologue
    .line 960
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    sget-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    sget-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public load(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xs/XSModel;
    .locals 3
    .param p1, "is"    # Lmf/org/w3c/dom/ls/LSInput;

    .prologue
    .line 1133
    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->dom2xmlInputSource(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v1

    .line 1134
    .local v1, "g":Lmf/org/apache/xerces/xni/grammars/Grammar;
    check-cast v1, Lmf/org/apache/xerces/xni/grammars/XSGrammar;

    .end local v1    # "g":Lmf/org/apache/xerces/xni/grammars/Grammar;
    invoke-interface {v1}, Lmf/org/apache/xerces/xni/grammars/XSGrammar;->toXSModel()Lmf/org/apache/xerces/xs/XSModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1137
    :goto_0
    return-object v2

    .line 1135
    :catch_0
    move-exception v0

    .line 1136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reportDOMFatalError(Ljava/lang/Exception;)V

    .line 1137
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 7
    .param p1, "source"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 536
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 537
    const/4 v3, 0x0

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSettingsChanged:Z

    .line 538
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    .line 539
    .local v0, "desc":Lmf/org/apache/xerces/impl/xs/XSDDescription;
    const/4 v3, 0x3

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    .line 540
    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setBaseSystemId(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setLiteralSystemId(Ljava/lang/String;)V

    .line 543
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 547
    .local v2, "locationPairs":Ljava/util/Hashtable;
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalSchemas:Ljava/lang/String;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalNoNSSchema:Ljava/lang/String;

    .line 548
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 547
    invoke-static {v3, v4, v2, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->processExternalHints(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    .line 549
    invoke-virtual {p0, v0, p1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadSchema(Lmf/org/apache/xerces/impl/xs/XSDDescription;Lmf/org/apache/xerces/xni/parser/XMLInputSource;Ljava/util/Hashtable;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    .line 551
    .local v1, "grammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v3, :cond_0

    .line 552
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    const-string v4, "http://www.w3.org/2001/XMLSchema"

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammars()[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    .line 555
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fIsCheckedFully:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPCache:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_0

    .line 556
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {v3, v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fullSchemaChecking(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    .line 559
    :cond_0
    return-object v1
.end method

.method public loadGrammar([Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 3
    .param p1, "source"    # [Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 513
    array-length v1, p1

    .line 514
    .local v1, "numSource":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 517
    return-void

    .line 515
    :cond_0
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public loadInputList(Lmf/org/apache/xerces/xs/LSInputList;)Lmf/org/apache/xerces/xs/XSModel;
    .locals 5
    .param p1, "is"    # Lmf/org/apache/xerces/xs/LSInputList;

    .prologue
    .line 1145
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/LSInputList;->getLength()I

    move-result v3

    .line 1146
    .local v3, "length":I
    new-array v1, v3, [Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 1147
    .local v1, "gs":[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 1155
    new-instance v4, Lmf/org/apache/xerces/impl/xs/XSModelImpl;

    invoke-direct {v4, v1}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;-><init>([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    :goto_1
    return-object v4

    .line 1149
    :cond_0
    :try_start_0
    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xs/LSInputList;->item(I)Lmf/org/w3c/dom/ls/LSInput;

    move-result-object v4

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->dom2xmlInputSource(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v4

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aput-object v4, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1147
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1150
    :catch_0
    move-exception v0

    .line 1151
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reportDOMFatalError(Ljava/lang/Exception;)V

    .line 1152
    const/4 v4, 0x0

    goto :goto_1
.end method

.method loadSchema(Lmf/org/apache/xerces/impl/xs/XSDDescription;Lmf/org/apache/xerces/xni/parser/XMLInputSource;Ljava/util/Hashtable;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 2
    .param p1, "desc"    # Lmf/org/apache/xerces/impl/xs/XSDDescription;
    .param p2, "source"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .param p3, "locationPairs"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 579
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z

    if-nez v1, :cond_0

    .line 580
    invoke-direct {p0, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->processJAXPSchemaSource(Ljava/util/Hashtable;)V

    .line 582
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v1, p2, p1, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->parseSchema(Lmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/apache/xerces/impl/xs/XSDDescription;Ljava/util/Hashtable;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    .line 584
    .local v0, "grammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    return-object v0
.end method

.method public loadURI(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSModel;
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1163
    :try_start_0
    new-instance v3, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v1

    .line 1164
    .local v1, "g":Lmf/org/apache/xerces/xni/grammars/Grammar;
    check-cast v1, Lmf/org/apache/xerces/xni/grammars/XSGrammar;

    .end local v1    # "g":Lmf/org/apache/xerces/xni/grammars/Grammar;
    invoke-interface {v1}, Lmf/org/apache/xerces/xni/grammars/XSGrammar;->toXSModel()Lmf/org/apache/xerces/xs/XSModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1168
    :goto_0
    return-object v2

    .line 1166
    :catch_0
    move-exception v0

    .line 1167
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reportDOMFatalError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public loadURIList(Lmf/org/apache/xerces/xs/StringList;)Lmf/org/apache/xerces/xs/XSModel;
    .locals 9
    .param p1, "uriList"    # Lmf/org/apache/xerces/xs/StringList;

    .prologue
    const/4 v5, 0x0

    .line 1176
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/StringList;->getLength()I

    move-result v3

    .line 1177
    .local v3, "length":I
    new-array v1, v3, [Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 1178
    .local v1, "gs":[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 1187
    new-instance v4, Lmf/org/apache/xerces/impl/xs/XSModelImpl;

    invoke-direct {v4, v1}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;-><init>([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    :goto_1
    return-object v4

    .line 1181
    :cond_0
    :try_start_0
    new-instance v4, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    const/4 v6, 0x0

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xs/StringList;->item(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v4, v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 1180
    aput-object v4, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1178
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1182
    :catch_0
    move-exception v0

    .line 1183
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reportDOMFatalError(Ljava/lang/Exception;)V

    move-object v4, v5

    .line 1184
    goto :goto_1
.end method

.method reportDOMFatalError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1191
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz v1, :cond_0

    .line 1192
    new-instance v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    .line 1193
    .local v0, "error":Lmf/org/apache/xerces/dom/DOMErrorImpl;
    iput-object p1, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    .line 1194
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 1195
    const/4 v1, 0x3

    iput-short v1, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    .line 1196
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object v1

    invoke-interface {v1, v0}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    .line 1198
    .end local v0    # "error":Lmf/org/apache/xerces/dom/DOMErrorImpl;
    :cond_0
    return-void
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 8
    .param p1, "componentManager"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 968
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->reset()V

    .line 970
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->reset()V

    .line 972
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSettingsChanged:Z

    if-eqz v5, :cond_0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->parserSettingsUpdated(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 974
    :cond_0
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z

    .line 976
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->initGrammarBucket()V

    .line 977
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    if-eqz v5, :cond_1

    .line 978
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->reset()V

    .line 1087
    :cond_1
    :goto_0
    return-void

    .line 986
    :cond_2
    const-string v5, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/XMLEntityManager;

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    .line 989
    const-string v5, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 992
    const/4 v1, 0x0

    .line 994
    .local v1, "dvFactory":Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;
    :try_start_0
    const-string v5, "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-object v1, v0
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_7

    .line 997
    :goto_1
    if-nez v1, :cond_4

    .line 998
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fDefaultSchemaDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    if-nez v5, :cond_3

    .line 999
    invoke-static {}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->getInstance()Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-result-object v5

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fDefaultSchemaDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    .line 1001
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fDefaultSchemaDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    .line 1003
    :cond_4
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->setDVFactory(Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;)V

    .line 1007
    :try_start_1
    const-string v5, "http://apache.org/xml/properties/schema/external-schemaLocation"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalSchemas:Ljava/lang/String;

    .line 1009
    const-string v5, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1008
    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalNoNSSchema:Ljava/lang/String;
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1016
    :goto_2
    :try_start_2
    const-string v5, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    .line 1017
    const/4 v5, 0x0

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1026
    :goto_3
    :try_start_3
    const-string v5, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1030
    :goto_4
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->initGrammarBucket()V

    .line 1032
    const/4 v4, 0x1

    .line 1034
    .local v4, "psvi":Z
    :try_start_4
    const-string v5, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v4

    .line 1045
    :goto_5
    if-nez v4, :cond_5

    .line 1059
    :cond_5
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->setDeclPool(Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;)V

    .line 1060
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->setDeclPool(Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;)V

    .line 1061
    instance-of v5, v1, Lmf/org/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;

    if-eqz v5, :cond_6

    .line 1062
    check-cast v1, Lmf/org/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;

    .end local v1    # "dvFactory":Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;
    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;->setDeclPool(Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;)V

    .line 1068
    :cond_6
    :try_start_5
    const-string v5, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    .line 1069
    .local v3, "fatalError":Z
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v6, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {v5, v6, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setFeature(Ljava/lang/String;Z)V
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_6

    .line 1074
    .end local v3    # "fatalError":Z
    :goto_6
    :try_start_6
    const-string v5, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fIsCheckedFully:Z
    :try_end_6
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1081
    :goto_7
    :try_start_7
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const-string v6, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->setGenerateSyntheticAnnotations(Z)V
    :try_end_7
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1086
    :goto_8
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v5, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    goto/16 :goto_0

    .line 1010
    .end local v4    # "psvi":Z
    .restart local v1    # "dvFactory":Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;
    :catch_0
    move-exception v2

    .line 1011
    .local v2, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalSchemas:Ljava/lang/String;

    .line 1012
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalNoNSSchema:Ljava/lang/String;

    goto :goto_2

    .line 1019
    .end local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_1
    move-exception v2

    .line 1020
    .restart local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    .line 1021
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z

    goto :goto_3

    .line 1027
    .end local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_2
    move-exception v2

    .line 1028
    .restart local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    goto :goto_4

    .line 1035
    .end local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    .restart local v4    # "psvi":Z
    :catch_3
    move-exception v2

    .line 1036
    .restart local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    const/4 v4, 0x0

    goto :goto_5

    .line 1076
    .end local v1    # "dvFactory":Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;
    .end local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_4
    move-exception v2

    .line 1077
    .restart local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fIsCheckedFully:Z

    goto :goto_7

    .line 1083
    .end local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_5
    move-exception v2

    .line 1084
    .restart local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v5, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->setGenerateSyntheticAnnotations(Z)V

    goto :goto_8

    .line 1070
    .end local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_6
    move-exception v5

    goto :goto_6

    .line 995
    .end local v4    # "psvi":Z
    .restart local v1    # "dvFactory":Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;
    :catch_7
    move-exception v5

    goto/16 :goto_1
.end method

.method public setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    .locals 2
    .param p1, "entityResolver"    # Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .prologue
    .line 491
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fUserEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .line 492
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 493
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 494
    return-void
.end method

.method public setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V
    .locals 2
    .param p1, "errorHandler"    # Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    .prologue
    .line 477
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 478
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "featureId"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSettingsChanged:Z

    .line 383
    const-string v0, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {v0, v1, p2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setFeature(Ljava/lang/String;Z)V

    .line 389
    :cond_0
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    .line 390
    return-void

    .line 386
    :cond_1
    const-string v0, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->setGenerateSyntheticAnnotations(Z)V

    goto :goto_0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 462
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLocale:Ljava/util/Locale;

    .line 463
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    .line 464
    return-void
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
    const/16 v8, 0x9

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1302
    instance-of v4, p2, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 1303
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1304
    .local v3, "state":Z
    const-string v4, "validate"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 1370
    .end local v3    # "state":Z
    :goto_0
    return-void

    .line 1308
    .restart local v3    # "state":Z
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1309
    :catch_0
    move-exception v0

    .line 1312
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "http://www.w3.org/dom/DOMTR"

    .line 1313
    const-string v5, "FEATURE_NOT_SUPPORTED"

    .line 1314
    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    .line 1311
    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1315
    .local v2, "msg":Ljava/lang/String;
    new-instance v4, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v4, v8, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    .line 1319
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "state":Z
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string v4, "error-handler"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1320
    instance-of v4, p2, Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v4, :cond_2

    .line 1322
    :try_start_1
    new-instance v4, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    check-cast p2, Lmf/org/w3c/dom/DOMErrorHandler;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-direct {v4, p2}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;-><init>(Lmf/org/w3c/dom/DOMErrorHandler;)V

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    .line 1323
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1324
    :catch_1
    move-exception v4

    goto :goto_0

    .line 1330
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string v4, "http://www.w3.org/dom/DOMTR"

    .line 1331
    const-string v5, "FEATURE_NOT_SUPPORTED"

    .line 1332
    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    .line 1329
    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1333
    .restart local v2    # "msg":Ljava/lang/String;
    new-instance v4, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v4, v8, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    .line 1338
    .end local v2    # "msg":Ljava/lang/String;
    :cond_3
    const-string v4, "resource-resolver"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1339
    instance-of v4, p2, Lmf/org/w3c/dom/ls/LSResourceResolver;

    if-eqz v4, :cond_4

    .line 1341
    :try_start_2
    new-instance v4, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    check-cast p2, Lmf/org/w3c/dom/ls/LSResourceResolver;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-direct {v4, p2}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;-><init>(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fResourceResolver:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    .line 1342
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fResourceResolver:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1344
    :catch_2
    move-exception v4

    goto :goto_0

    .line 1349
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    const-string v4, "http://www.w3.org/dom/DOMTR"

    .line 1350
    const-string v5, "FEATURE_NOT_SUPPORTED"

    .line 1351
    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    .line 1348
    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1352
    .restart local v2    # "msg":Ljava/lang/String;
    new-instance v4, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v4, v8, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    .line 1358
    .end local v2    # "msg":Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 1359
    :catch_3
    move-exception v1

    .line 1363
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "http://www.w3.org/dom/DOMTR"

    .line 1364
    const-string v5, "FEATURE_NOT_SUPPORTED"

    .line 1365
    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    .line 1362
    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1366
    .restart local v2    # "msg":Ljava/lang/String;
    new-instance v4, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v4, v8, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "propertyId"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSettingsChanged:Z

    .line 425
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 426
    const-string v0, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    .line 428
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z

    .line 451
    .end local p2    # "state":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 430
    .restart local p2    # "state":Ljava/lang/Object;
    :cond_1
    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 431
    check-cast p2, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .end local p2    # "state":Ljava/lang/Object;
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    goto :goto_0

    .line 433
    .restart local p2    # "state":Ljava/lang/Object;
    :cond_2
    const-string v0, "http://apache.org/xml/properties/schema/external-schemaLocation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 434
    check-cast p2, Ljava/lang/String;

    .end local p2    # "state":Ljava/lang/Object;
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalSchemas:Ljava/lang/String;

    goto :goto_0

    .line 436
    .restart local p2    # "state":Ljava/lang/Object;
    :cond_3
    const-string v0, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 437
    check-cast p2, Ljava/lang/String;

    .end local p2    # "state":Ljava/lang/Object;
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalNoNSSchema:Ljava/lang/String;

    goto :goto_0

    .line 439
    .restart local p2    # "state":Ljava/lang/Object;
    :cond_4
    const-string v0, "http://apache.org/xml/properties/locale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 440
    check-cast p2, Ljava/util/Locale;

    .end local p2    # "state":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setLocale(Ljava/util/Locale;)V

    goto :goto_0

    .line 442
    .restart local p2    # "state":Ljava/lang/Object;
    :cond_5
    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 443
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1, p2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 445
    :cond_6
    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    check-cast p2, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .end local p2    # "state":Ljava/lang/Object;
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 447
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 448
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/xml-schema-1"

    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    goto :goto_0
.end method
