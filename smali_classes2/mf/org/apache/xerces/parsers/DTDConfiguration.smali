.class public Lmf/org/apache/xerces/parsers/DTDConfiguration;
.super Lmf/org/apache/xerces/parsers/BasicParserConfiguration;
.source "DTDConfiguration.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLPullParserConfiguration;


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/datatype-validator-factory"

.field protected static final DOCUMENT_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/document-scanner"

.field protected static final DTD_PROCESSOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/dtd-processor"

.field protected static final DTD_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/dtd-scanner"

.field protected static final DTD_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/dtd"

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final JAXP_SCHEMA_LANGUAGE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final LOAD_EXTERNAL_DTD:Ljava/lang/String; = "http://apache.org/xml/features/nonvalidating/load-external-dtd"

.field protected static final LOCALE:Ljava/lang/String; = "http://apache.org/xml/properties/locale"

.field protected static final NAMESPACE_BINDER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-binder"

.field protected static final NOTIFY_BUILTIN_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-builtin-refs"

.field protected static final NOTIFY_CHAR_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-char-refs"

.field protected static final PRINT_EXCEPTION_STACK_TRACE:Z = false

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WARN_ON_DUPLICATE_ATTDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

.field protected static final WARN_ON_DUPLICATE_ENTITYDEF:Ljava/lang/String; = "http://apache.org/xml/features/warn-on-duplicate-entitydef"

.field protected static final WARN_ON_UNDECLARED_ELEMDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

.field protected static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field protected fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

.field protected fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

.field protected fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

.field protected fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field protected fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field protected fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

.field protected fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

.field protected fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

.field protected fParseInProgress:Z

.field protected fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

.field protected fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 244
    invoke-direct {p0, v0, v0, v0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 245
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    const/4 v0, 0x0

    .line 253
    invoke-direct {p0, p1, v0, v0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 254
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "grammarPool"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 270
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 7
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "grammarPool"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    .param p3, "parentSettings"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 287
    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 236
    iput-boolean v4, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fParseInProgress:Z

    .line 290
    new-array v0, v6, [Ljava/lang/String;

    .line 294
    const-string v3, "http://apache.org/xml/features/continue-after-fatal-error"

    aput-object v3, v0, v4

    .line 295
    const-string v3, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    aput-object v3, v0, v5

    .line 300
    .local v0, "recognizedFeatures":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 306
    const-string v3, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 307
    const-string v3, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    invoke-virtual {p0, v3, v5}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 313
    const/16 v3, 0xd

    new-array v1, v3, [Ljava/lang/String;

    .line 314
    const-string v3, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v3, v1, v4

    .line 315
    const-string v3, "http://apache.org/xml/properties/internal/entity-manager"

    aput-object v3, v1, v5

    .line 316
    const-string v3, "http://apache.org/xml/properties/internal/document-scanner"

    aput-object v3, v1, v6

    const/4 v3, 0x3

    .line 317
    const-string v4, "http://apache.org/xml/properties/internal/dtd-scanner"

    aput-object v4, v1, v3

    const/4 v3, 0x4

    .line 318
    const-string v4, "http://apache.org/xml/properties/internal/dtd-processor"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    .line 319
    const-string v4, "http://apache.org/xml/properties/internal/validator/dtd"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    .line 320
    const-string v4, "http://apache.org/xml/properties/internal/namespace-binder"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    .line 321
    const-string v4, "http://apache.org/xml/properties/internal/grammar-pool"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    .line 322
    const-string v4, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    .line 323
    const-string v4, "http://apache.org/xml/properties/internal/validation-manager"

    aput-object v4, v1, v3

    const/16 v3, 0xa

    .line 324
    const-string v4, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    aput-object v4, v1, v3

    const/16 v3, 0xb

    .line 325
    const-string v4, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    aput-object v4, v1, v3

    const/16 v3, 0xc

    .line 326
    const-string v4, "http://apache.org/xml/properties/locale"

    aput-object v4, v1, v3

    .line 328
    .local v1, "recognizedProperties":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    .line 330
    iput-object p2, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .line 331
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v3, :cond_0

    .line 332
    const-string v3, "http://apache.org/xml/properties/internal/grammar-pool"

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 335
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->createEntityManager()Lmf/org/apache/xerces/impl/XMLEntityManager;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    .line 336
    const-string v3, "http://apache.org/xml/properties/internal/entity-manager"

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 337
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 339
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->createErrorReporter()Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 340
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lmf/org/apache/xerces/impl/XMLEntityScanner;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    .line 341
    const-string v3, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 342
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 344
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->createDocumentScanner()Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    .line 345
    const-string v3, "http://apache.org/xml/properties/internal/document-scanner"

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 346
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    instance-of v3, v3, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    if-eqz v3, :cond_1

    .line 347
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    check-cast v3, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 350
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->createDTDScanner()Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    .line 351
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    if-eqz v3, :cond_2

    .line 352
    const-string v3, "http://apache.org/xml/properties/internal/dtd-scanner"

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 353
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    instance-of v3, v3, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    if-eqz v3, :cond_2

    .line 354
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    check-cast v3, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 358
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->createDTDProcessor()Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    .line 359
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    if-eqz v3, :cond_3

    .line 360
    const-string v3, "http://apache.org/xml/properties/internal/dtd-processor"

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 361
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 364
    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->createDTDValidator()Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    .line 365
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    if-eqz v3, :cond_4

    .line 366
    const-string v3, "http://apache.org/xml/properties/internal/validator/dtd"

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 367
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 370
    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->createNamespaceBinder()Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    .line 371
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    if-eqz v3, :cond_5

    .line 372
    const-string v3, "http://apache.org/xml/properties/internal/namespace-binder"

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 373
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 376
    :cond_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->createDatatypeValidatorFactory()Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 377
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    if-eqz v3, :cond_6

    .line 378
    const-string v3, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    .line 379
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 378
    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 381
    :cond_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->createValidationManager()Lmf/org/apache/xerces/impl/validation/ValidationManager;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    .line 383
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    if-eqz v3, :cond_7

    .line 384
    const-string v3, "http://apache.org/xml/properties/internal/validation-manager"

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 387
    :cond_7
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v3

    if-nez v3, :cond_8

    .line 388
    new-instance v2, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    .line 389
    .local v2, "xmft":Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v3, v4, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    .line 390
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {v3, v4, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    .line 395
    .end local v2    # "xmft":Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;
    :cond_8
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->setLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :goto_0
    return-void

    .line 397
    :catch_0
    move-exception v3

    goto :goto_0
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
    .line 721
    const-string v2, "http://apache.org/xml/features/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 722
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "http://apache.org/xml/features/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v0, v2, v3

    .line 730
    .local v0, "suffixLength":I
    const-string v2, "validation/dynamic"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 731
    const-string v2, "validation/dynamic"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 784
    .end local v0    # "suffixLength":I
    :cond_0
    :goto_0
    return-void

    .line 738
    .restart local v0    # "suffixLength":I
    :cond_1
    const-string v2, "validation/default-attribute-values"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 739
    const-string v2, "validation/default-attribute-values"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 741
    const/4 v1, 0x1

    .line 742
    .local v1, "type":S
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 747
    .end local v1    # "type":S
    :cond_2
    const-string v2, "validation/validate-content-models"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 748
    const-string v2, "validation/validate-content-models"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 750
    const/4 v1, 0x1

    .line 751
    .restart local v1    # "type":S
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 756
    .end local v1    # "type":S
    :cond_3
    const-string v2, "nonvalidating/load-dtd-grammar"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 757
    const-string v2, "nonvalidating/load-dtd-grammar"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 763
    :cond_4
    const-string v2, "nonvalidating/load-external-dtd"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 764
    const-string v2, "nonvalidating/load-external-dtd"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 771
    :cond_5
    const-string v2, "validation/validate-datatypes"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_6

    .line 772
    const-string v2, "validation/validate-datatypes"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 773
    const/4 v1, 0x1

    .line 774
    .restart local v1    # "type":S
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 782
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
    .line 806
    const-string v1, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 807
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "http://apache.org/xml/properties/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 809
    .local v0, "suffixLength":I
    const-string v1, "internal/dtd-scanner"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 810
    const-string v1, "internal/dtd-scanner"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 821
    .end local v0    # "suffixLength":I
    :goto_0
    return-void

    .line 819
    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->checkProperty(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->closeReaders()V

    .line 548
    return-void
.end method

.method protected configureDTDPipeline()V
    .locals 3

    .prologue
    .line 667
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/properties/internal/dtd-scanner"

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    if-eqz v0, :cond_2

    .line 670
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/properties/internal/dtd-processor"

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 672
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 673
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 674
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 678
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    .line 679
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDContentModelSource(Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    .line 680
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    .line 681
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_1

    .line 682
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->setDTDContentModelSource(Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    .line 698
    :cond_1
    :goto_0
    return-void

    .line 686
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 687
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_3

    .line 688
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 690
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    .line 691
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_1

    .line 692
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->setDTDContentModelSource(Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    goto :goto_0
.end method

.method protected configurePipeline()V
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    if-eqz v0, :cond_1

    .line 632
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 633
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    .line 636
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 637
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 638
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 639
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 640
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .line 661
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->configureDTDPipeline()V

    .line 662
    return-void

    .line 643
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 644
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 645
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    goto :goto_0

    .line 649
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_2

    .line 650
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 651
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 652
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 653
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    goto :goto_0

    .line 656
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 657
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    goto :goto_0
.end method

.method protected createDTDProcessor()Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;
    .locals 1

    .prologue
    .line 847
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;-><init>()V

    return-object v0
.end method

.method protected createDTDScanner()Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;
    .locals 1

    .prologue
    .line 842
    new-instance v0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;-><init>()V

    return-object v0
.end method

.method protected createDTDValidator()Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;
    .locals 1

    .prologue
    .line 852
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;-><init>()V

    return-object v0
.end method

.method protected createDatatypeValidatorFactory()Lmf/org/apache/xerces/impl/dv/DTDDVFactory;
    .locals 1

    .prologue
    .line 862
    invoke-static {}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getInstance()Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v0

    return-object v0
.end method

.method protected createDocumentScanner()Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;
    .locals 1

    .prologue
    .line 837
    new-instance v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;-><init>()V

    return-object v0
.end method

.method protected createEntityManager()Lmf/org/apache/xerces/impl/XMLEntityManager;
    .locals 1

    .prologue
    .line 827
    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;-><init>()V

    return-object v0
.end method

.method protected createErrorReporter()Lmf/org/apache/xerces/impl/XMLErrorReporter;
    .locals 1

    .prologue
    .line 832
    new-instance v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    return-object v0
.end method

.method protected createNamespaceBinder()Lmf/org/apache/xerces/impl/XMLNamespaceBinder;
    .locals 1

    .prologue
    .line 857
    new-instance v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;-><init>()V

    return-object v0
.end method

.method protected createValidationManager()Lmf/org/apache/xerces/impl/validation/ValidationManager;
    .locals 1

    .prologue
    .line 865
    new-instance v0, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;-><init>()V

    return-object v0
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
    const-string v0, "http://apache.org/xml/properties/locale"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 413
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

    .line 564
    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fParseInProgress:Z

    if-eqz v1, :cond_0

    .line 566
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    const-string v2, "FWK005 parse may not be called while parsing."

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 568
    :cond_0
    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fParseInProgress:Z

    .line 571
    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    .line 572
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->parse(Z)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fParseInProgress:Z

    .line 597
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->cleanup()V

    .line 600
    return-void

    .line 574
    :catch_0
    move-exception v0

    .line 577
    .local v0, "ex":Lmf/org/apache/xerces/xni/XNIException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 594
    .end local v0    # "ex":Lmf/org/apache/xerces/xni/XNIException;
    :catchall_0
    move-exception v1

    .line 595
    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fParseInProgress:Z

    .line 597
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->cleanup()V

    .line 598
    throw v1

    .line 579
    :catch_1
    move-exception v0

    .line 582
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    throw v0

    .line 584
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 587
    .local v0, "ex":Ljava/lang/RuntimeException;
    throw v0

    .line 589
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v0

    .line 592
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public parse(Z)Z
    .locals 3
    .param p1, "complete"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 486
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    if-eqz v1, :cond_0

    .line 489
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->reset()V

    .line 490
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    .line 491
    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 516
    :cond_0
    :try_start_1
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-interface {v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;->scanDocument(Z)Z
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move-result v1

    return v1

    .line 493
    :catch_0
    move-exception v0

    .line 496
    .local v0, "ex":Lmf/org/apache/xerces/xni/XNIException;
    throw v0

    .line 498
    .end local v0    # "ex":Lmf/org/apache/xerces/xni/XNIException;
    :catch_1
    move-exception v0

    .line 501
    .local v0, "ex":Ljava/io/IOException;
    throw v0

    .line 503
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 506
    .local v0, "ex":Ljava/lang/RuntimeException;
    throw v0

    .line 508
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v0

    .line 511
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 518
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 521
    .local v0, "ex":Lmf/org/apache/xerces/xni/XNIException;
    throw v0

    .line 523
    .end local v0    # "ex":Lmf/org/apache/xerces/xni/XNIException;
    :catch_5
    move-exception v0

    .line 526
    .local v0, "ex":Ljava/io/IOException;
    throw v0

    .line 528
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 531
    .local v0, "ex":Ljava/lang/RuntimeException;
    throw v0

    .line 533
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_7
    move-exception v0

    .line 536
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method protected reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 613
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->reset()V

    .line 616
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->configurePipeline()V

    .line 617
    invoke-super {p0}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->reset()V

    .line 618
    return-void
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
    .line 463
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .line 465
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
    .line 433
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->setLocale(Ljava/util/Locale;)V

    .line 434
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    .line 435
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
    .line 418
    const-string v0, "http://apache.org/xml/properties/locale"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 419
    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->setLocale(Ljava/util/Locale;)V

    .line 421
    :cond_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 422
    return-void
.end method
