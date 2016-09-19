.class public Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;
.super Lmf/org/apache/xerces/parsers/BasicParserConfiguration;
.source "SchemaParsingConfig.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLPullParserConfiguration;


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/datatype-validator-factory"

.field protected static final DOCUMENT_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/document-scanner"

.field protected static final DTD_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/dtd-scanner"

.field protected static final DTD_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/dtd"

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field protected static final LOAD_EXTERNAL_DTD:Ljava/lang/String; = "http://apache.org/xml/features/nonvalidating/load-external-dtd"

.field protected static final LOCALE:Ljava/lang/String; = "http://apache.org/xml/properties/locale"

.field protected static final NAMESPACE_BINDER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-binder"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final NOTIFY_BUILTIN_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-builtin-refs"

.field protected static final NOTIFY_CHAR_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-char-refs"

.field private static final PRINT_EXCEPTION_STACK_TRACE:Z = false

.field protected static final SCHEMA_ELEMENT_DEFAULT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/element-default"

.field protected static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WARN_ON_DUPLICATE_ATTDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

.field protected static final WARN_ON_UNDECLARED_ELEMDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

.field protected static final XML11_DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "mf.org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

.field protected static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field private f11Initialized:Z

.field protected fConfigUpdated:Z

.field protected fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

.field protected fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field protected fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

.field protected final fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

.field protected final fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field protected final fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

.field protected final fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field protected fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

.field protected fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

.field protected final fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

.field protected fParseInProgress:Z

.field protected final fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

.field protected final fVersionDetector:Lmf/org/apache/xerces/impl/XMLVersionDetector;

.field protected fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

.field protected fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field protected fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 254
    invoke-direct {p0, v0, v0, v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 255
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    const/4 v0, 0x0

    .line 263
    invoke-direct {p0, p1, v0, v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 264
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "grammarPool"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 280
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 10
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "grammarPool"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    .param p3, "parentSettings"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 297
    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 190
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 193
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    .line 196
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    .line 237
    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fParseInProgress:Z

    .line 243
    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fConfigUpdated:Z

    .line 246
    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->f11Initialized:Z

    .line 300
    const/16 v3, 0x9

    new-array v0, v3, [Ljava/lang/String;

    .line 301
    const-string v3, "http://apache.org/xml/features/internal/parser-settings"

    aput-object v3, v0, v6

    const-string v3, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    aput-object v3, v0, v7

    const-string v3, "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

    aput-object v3, v0, v8

    .line 302
    const-string v3, "http://apache.org/xml/features/allow-java-encodings"

    aput-object v3, v0, v9

    const/4 v3, 0x4

    const-string v4, "http://apache.org/xml/features/continue-after-fatal-error"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    .line 303
    const-string v4, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "http://apache.org/xml/features/scanner/notify-builtin-refs"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    .line 304
    const-string v4, "http://apache.org/xml/features/scanner/notify-char-refs"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "http://apache.org/xml/features/generate-synthetic-annotations"

    aput-object v4, v0, v3

    .line 306
    .local v0, "recognizedFeatures":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 307
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/internal/parser-settings"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/allow-java-encodings"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/continue-after-fatal-error"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/scanner/notify-builtin-refs"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/scanner/notify-char-refs"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/generate-synthetic-annotations"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const/16 v3, 0xb

    new-array v1, v3, [Ljava/lang/String;

    .line 321
    const-string v3, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v3, v1, v6

    .line 322
    const-string v3, "http://apache.org/xml/properties/internal/entity-manager"

    aput-object v3, v1, v7

    .line 323
    const-string v3, "http://apache.org/xml/properties/internal/document-scanner"

    aput-object v3, v1, v8

    .line 324
    const-string v3, "http://apache.org/xml/properties/internal/dtd-scanner"

    aput-object v3, v1, v9

    const/4 v3, 0x4

    .line 325
    const-string v4, "http://apache.org/xml/properties/internal/validator/dtd"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    .line 326
    const-string v4, "http://apache.org/xml/properties/internal/namespace-binder"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    .line 327
    const-string v4, "http://apache.org/xml/properties/internal/grammar-pool"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    .line 328
    const-string v4, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    .line 329
    const-string v4, "http://apache.org/xml/properties/internal/validation-manager"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    .line 330
    const-string v4, "http://apache.org/xml/features/generate-synthetic-annotations"

    aput-object v4, v1, v3

    const/16 v3, 0xa

    .line 331
    const-string v4, "http://apache.org/xml/properties/locale"

    aput-object v4, v1, v3

    .line 333
    .local v1, "recognizedProperties":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->addRecognizedProperties([Ljava/lang/String;)V

    .line 335
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .line 336
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v3, :cond_0

    .line 337
    const-string v3, "http://apache.org/xml/properties/internal/grammar-pool"

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    :cond_0
    new-instance v3, Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLEntityManager;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    .line 341
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/entity-manager"

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 344
    new-instance v3, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 345
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lmf/org/apache/xerces/impl/XMLEntityScanner;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    .line 346
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 349
    new-instance v3, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    .line 350
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/document-scanner"

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->addRecognizedParamsAndSetDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 353
    new-instance v3, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    .line 354
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/dtd-scanner"

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->addRecognizedParamsAndSetDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 357
    invoke-static {}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getInstance()Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 358
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    .line 359
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 358
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    new-instance v3, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/validation/ValidationManager;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    .line 362
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/validation-manager"

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    new-instance v3, Lmf/org/apache/xerces/impl/XMLVersionDetector;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLVersionDetector;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fVersionDetector:Lmf/org/apache/xerces/impl/XMLVersionDetector;

    .line 367
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v3

    if-nez v3, :cond_1

    .line 368
    new-instance v2, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    .line 369
    .local v2, "xmft":Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v3, v4, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    .line 370
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {v3, v4, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    .line 373
    .end local v2    # "xmft":Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v3

    if-nez v3, :cond_2

    .line 374
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    .line 375
    .local v2, "xmft":Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v3, v4, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    .line 380
    .end local v2    # "xmft":Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;
    :cond_2
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->setLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private addRecognizedParamsAndSetDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V
    .locals 9
    .param p1, "component"    # Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .prologue
    const/4 v8, 0x1

    .line 945
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v3

    .line 946
    .local v3, "recognizedFeatures":[Ljava/lang/String;
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 949
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object v4

    .line 950
    .local v4, "recognizedProperties":[Ljava/lang/String;
    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->addRecognizedProperties([Ljava/lang/String;)V

    .line 953
    if-eqz v3, :cond_0

    .line 954
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v3

    if-lt v1, v7, :cond_2

    .line 970
    .end local v1    # "i":I
    :cond_0
    if-eqz v4, :cond_1

    .line 971
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v7, v4

    if-lt v1, v7, :cond_4

    .line 987
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 955
    .restart local v1    # "i":I
    :cond_2
    aget-object v0, v3, v1

    .line 956
    .local v0, "featureId":Ljava/lang/String;
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    .line 957
    .local v5, "state":Ljava/lang/Boolean;
    if-eqz v5, :cond_3

    .line 959
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 960
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {v7, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fConfigUpdated:Z

    .line 954
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 972
    .end local v0    # "featureId":Ljava/lang/String;
    .end local v5    # "state":Ljava/lang/Boolean;
    :cond_4
    aget-object v2, v4, v1

    .line 973
    .local v2, "propertyId":Ljava/lang/String;
    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 974
    .local v6, "value":Ljava/lang/Object;
    if-eqz v6, :cond_5

    .line 976
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fProperties:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 977
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fProperties:Ljava/util/HashMap;

    invoke-virtual {v7, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fConfigUpdated:Z

    .line 971
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initXML11Components()V
    .locals 1

    .prologue
    .line 1018
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->f11Initialized:Z

    if-nez v0, :cond_0

    .line 1020
    const-string v0, "mf.org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getInstance(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 1023
    new-instance v0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    .line 1024
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->addRecognizedParamsAndSetDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 1027
    new-instance v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    .line 1028
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->addRecognizedParamsAndSetDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 1030
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->f11Initialized:Z

    .line 1032
    :cond_0
    return-void
.end method


# virtual methods
.method protected checkFeature(Ljava/lang/String;)V
    .locals 4
    .param p1, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 823
    const-string v2, "http://apache.org/xml/features/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 824
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "http://apache.org/xml/features/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v0, v2, v3

    .line 832
    .local v0, "suffixLength":I
    const-string v2, "validation/dynamic"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 833
    const-string v2, "validation/dynamic"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 885
    .end local v0    # "suffixLength":I
    :cond_0
    :goto_0
    return-void

    .line 839
    .restart local v0    # "suffixLength":I
    :cond_1
    const-string v2, "validation/default-attribute-values"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 840
    const-string v2, "validation/default-attribute-values"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 842
    const/4 v1, 0x1

    .line 843
    .local v1, "type":S
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 848
    .end local v1    # "type":S
    :cond_2
    const-string v2, "validation/validate-content-models"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 849
    const-string v2, "validation/validate-content-models"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 851
    const/4 v1, 0x1

    .line 852
    .restart local v1    # "type":S
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 857
    .end local v1    # "type":S
    :cond_3
    const-string v2, "nonvalidating/load-dtd-grammar"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 858
    const-string v2, "nonvalidating/load-dtd-grammar"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 864
    :cond_4
    const-string v2, "nonvalidating/load-external-dtd"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 865
    const-string v2, "nonvalidating/load-external-dtd"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 872
    :cond_5
    const-string v2, "validation/validate-datatypes"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_6

    .line 873
    const-string v2, "validation/validate-datatypes"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 874
    const/4 v1, 0x1

    .line 875
    .restart local v1    # "type":S
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 883
    .end local v0    # "suffixLength":I
    .end local v1    # "type":S
    :cond_6
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->checkFeature(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected checkProperty(Ljava/lang/String;)V
    .locals 3
    .param p1, "propertyId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 907
    const-string v1, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 908
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "http://apache.org/xml/properties/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 910
    .local v0, "suffixLength":I
    const-string v1, "internal/dtd-scanner"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 911
    const-string v1, "internal/dtd-scanner"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 931
    .end local v0    # "suffixLength":I
    :cond_0
    :goto_0
    return-void

    .line 916
    :cond_1
    const-string v1, "http://java.sun.com/xml/jaxp/properties/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 917
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "http://java.sun.com/xml/jaxp/properties/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 919
    .restart local v0    # "suffixLength":I
    const-string v1, "schemaSource"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 920
    const-string v1, "schemaSource"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 929
    .end local v0    # "suffixLength":I
    :cond_2
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->checkProperty(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->closeReaders()V

    .line 660
    return-void
.end method

.method protected configurePipeline()V
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    if-eq v0, v1, :cond_0

    .line 734
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 736
    const-string v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 740
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    if-eq v0, v1, :cond_1

    .line 741
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    .line 742
    const-string v0, "http://apache.org/xml/properties/internal/document-scanner"

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 744
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 745
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_2

    .line 746
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 748
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .line 751
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    if-eq v0, v1, :cond_3

    .line 752
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    .line 753
    const-string v0, "http://apache.org/xml/properties/internal/dtd-scanner"

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 755
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 756
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_4

    .line 757
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 759
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    .line 760
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_5

    .line 761
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->setDTDContentModelSource(Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    .line 764
    :cond_5
    return-void
.end method

.method protected configureXML11Pipeline()V
    .locals 2

    .prologue
    .line 769
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    if-eq v0, v1, :cond_0

    .line 770
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 772
    const-string v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 776
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    if-eq v0, v1, :cond_1

    .line 777
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    .line 778
    const-string v0, "http://apache.org/xml/properties/internal/document-scanner"

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 780
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 781
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_2

    .line 782
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 784
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .line 787
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    if-eq v0, v1, :cond_3

    .line 788
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    .line 789
    const-string v0, "http://apache.org/xml/properties/internal/dtd-scanner"

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 791
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 792
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_4

    .line 793
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 795
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    .line 796
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_5

    .line 797
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->setDTDContentModelSource(Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    .line 800
    :cond_5
    return-void
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
    .line 408
    const-string v0, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fConfigUpdated:Z

    .line 411
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
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
    .line 470
    const-string v0, "http://apache.org/xml/properties/locale"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 473
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 4
    .param p1, "source"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 676
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fParseInProgress:Z

    if-eqz v1, :cond_0

    .line 678
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    const-string v2, "FWK005 parse may not be called while parsing."

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 680
    :cond_0
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fParseInProgress:Z

    .line 683
    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    .line 684
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->parse(Z)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fParseInProgress:Z

    .line 709
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->cleanup()V

    .line 712
    return-void

    .line 686
    :catch_0
    move-exception v0

    .line 689
    .local v0, "ex":Lmf/org/apache/xerces/xni/XNIException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 706
    .end local v0    # "ex":Lmf/org/apache/xerces/xni/XNIException;
    :catchall_0
    move-exception v1

    .line 707
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fParseInProgress:Z

    .line 709
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->cleanup()V

    .line 710
    throw v1

    .line 691
    :catch_1
    move-exception v0

    .line 694
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    throw v0

    .line 696
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 699
    .local v0, "ex":Ljava/lang/RuntimeException;
    throw v0

    .line 701
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v0

    .line 704
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public parse(Z)Z
    .locals 5
    .param p1, "complete"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 575
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    if-eqz v3, :cond_0

    .line 577
    :try_start_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->reset()V

    .line 578
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fVersionDetector:Lmf/org/apache/xerces/impl/XMLVersionDetector;

    invoke-virtual {v3, p0}, Lmf/org/apache/xerces/impl/XMLVersionDetector;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 579
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->reset()V

    .line 581
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fVersionDetector:Lmf/org/apache/xerces/impl/XMLVersionDetector;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLVersionDetector;->determineDocVersion(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)S

    move-result v1

    .line 583
    .local v1, "version":S
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 584
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->configurePipeline()V

    .line 585
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->resetXML10()V

    .line 599
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fConfigUpdated:Z

    .line 602
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fVersionDetector:Lmf/org/apache/xerces/impl/XMLVersionDetector;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    check-cast v2, Lmf/org/apache/xerces/impl/XMLEntityHandler;

    invoke-virtual {v3, v2, v1}, Lmf/org/apache/xerces/impl/XMLVersionDetector;->startDocumentParsing(Lmf/org/apache/xerces/impl/XMLEntityHandler;S)V

    .line 603
    const/4 v2, 0x0

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 628
    .end local v1    # "version":S
    :cond_0
    :try_start_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-interface {v2, p1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;->scanDocument(Z)Z
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move-result v2

    :cond_1
    return v2

    .line 588
    .restart local v1    # "version":S
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 589
    :try_start_2
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->initXML11Components()V

    .line 590
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->configureXML11Pipeline()V

    .line 591
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->resetXML11()V
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 605
    .end local v1    # "version":S
    :catch_0
    move-exception v0

    .line 608
    .local v0, "ex":Lmf/org/apache/xerces/xni/XNIException;
    throw v0

    .line 610
    .end local v0    # "ex":Lmf/org/apache/xerces/xni/XNIException;
    :catch_1
    move-exception v0

    .line 613
    .local v0, "ex":Ljava/io/IOException;
    throw v0

    .line 615
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 618
    .local v0, "ex":Ljava/lang/RuntimeException;
    throw v0

    .line 620
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v0

    .line 623
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v2, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 630
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 633
    .local v0, "ex":Lmf/org/apache/xerces/xni/XNIException;
    throw v0

    .line 635
    .end local v0    # "ex":Lmf/org/apache/xerces/xni/XNIException;
    :catch_5
    move-exception v0

    .line 638
    .local v0, "ex":Ljava/io/IOException;
    throw v0

    .line 640
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 643
    .local v0, "ex":Ljava/lang/RuntimeException;
    throw v0

    .line 645
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_7
    move-exception v0

    .line 648
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v2, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public reset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 726
    invoke-super {p0}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->reset()V

    .line 728
    return-void
.end method

.method public resetNodePool()V
    .locals 0

    .prologue
    .line 1015
    return-void
.end method

.method protected final resetXML10()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 994
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 995
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 996
    return-void
.end method

.method protected final resetXML11()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1003
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 1004
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 1005
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "featureId"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fConfigUpdated:Z

    .line 434
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->setFeature(Ljava/lang/String;Z)V

    .line 435
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setFeature(Ljava/lang/String;Z)V

    .line 438
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->f11Initialized:Z

    if-eqz v0, :cond_0

    .line 440
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 445
    :goto_0
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 452
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 454
    return-void

    .line 448
    :catch_0
    move-exception v0

    goto :goto_1

    .line 443
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 0
    .param p1, "inputSource"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 552
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .line 554
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 522
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->setLocale(Ljava/util/Locale;)V

    .line 523
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    .line 524
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "propertyId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fConfigUpdated:Z

    .line 486
    const-string v0, "http://apache.org/xml/properties/locale"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 487
    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->setLocale(Ljava/util/Locale;)V

    .line 491
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 492
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 495
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->f11Initialized:Z

    if-eqz v0, :cond_1

    .line 497
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 502
    :goto_0
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 509
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 511
    return-void

    .line 505
    :catch_0
    move-exception v0

    goto :goto_1

    .line 500
    :catch_1
    move-exception v0

    goto :goto_0
.end method
