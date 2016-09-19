.class public Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;
.super Lmf/org/apache/xerces/parsers/BasicParserConfiguration;
.source "NonValidatingConfiguration.java"

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

.field protected static final WARN_ON_DUPLICATE_ENTITYDEF:Ljava/lang/String; = "http://apache.org/xml/features/warn-on-duplicate-entitydef"

.field protected static final WARN_ON_UNDECLARED_ELEMDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

.field protected static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field protected fConfigUpdated:Z

.field protected fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

.field protected fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field protected fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field protected fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

.field protected fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

.field private fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

.field private fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

.field protected fParseInProgress:Z

.field protected fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

.field protected fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 226
    invoke-direct {p0, v0, v0, v0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 227
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    const/4 v0, 0x0

    .line 235
    invoke-direct {p0, p1, v0, v0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 236
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "grammarPool"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 252
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

    const/4 v6, 0x0

    .line 269
    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 205
    iput-boolean v6, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fConfigUpdated:Z

    .line 218
    iput-boolean v6, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fParseInProgress:Z

    .line 272
    new-array v0, v9, [Ljava/lang/String;

    .line 273
    const-string v3, "http://apache.org/xml/features/internal/parser-settings"

    aput-object v3, v0, v6

    .line 274
    const-string v3, "http://xml.org/sax/features/namespaces"

    aput-object v3, v0, v7

    .line 278
    const-string v3, "http://apache.org/xml/features/continue-after-fatal-error"

    aput-object v3, v0, v8

    .line 284
    .local v0, "recognizedFeatures":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 290
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/continue-after-fatal-error"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/internal/parser-settings"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://xml.org/sax/features/namespaces"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const/16 v3, 0xa

    new-array v1, v3, [Ljava/lang/String;

    .line 300
    const-string v3, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v3, v1, v6

    .line 301
    const-string v3, "http://apache.org/xml/properties/internal/entity-manager"

    aput-object v3, v1, v7

    .line 302
    const-string v3, "http://apache.org/xml/properties/internal/document-scanner"

    aput-object v3, v1, v8

    .line 303
    const-string v3, "http://apache.org/xml/properties/internal/dtd-scanner"

    aput-object v3, v1, v9

    const/4 v3, 0x4

    .line 304
    const-string v4, "http://apache.org/xml/properties/internal/validator/dtd"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    .line 305
    const-string v4, "http://apache.org/xml/properties/internal/namespace-binder"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    .line 306
    const-string v4, "http://apache.org/xml/properties/internal/grammar-pool"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    .line 307
    const-string v4, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    .line 308
    const-string v4, "http://apache.org/xml/properties/internal/validation-manager"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    .line 309
    const-string v4, "http://apache.org/xml/properties/locale"

    aput-object v4, v1, v3

    .line 311
    .local v1, "recognizedProperties":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    .line 313
    iput-object p2, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .line 314
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v3, :cond_0

    .line 315
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/grammar-pool"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->createEntityManager()Lmf/org/apache/xerces/impl/XMLEntityManager;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    .line 319
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/entity-manager"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 322
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->createErrorReporter()Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 323
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lmf/org/apache/xerces/impl/XMLEntityScanner;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    .line 324
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 330
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->createDTDScanner()Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    .line 331
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    if-eqz v3, :cond_1

    .line 332
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/dtd-scanner"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    instance-of v3, v3, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    if-eqz v3, :cond_1

    .line 334
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    check-cast v3, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 338
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->createDatatypeValidatorFactory()Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 339
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    if-eqz v3, :cond_2

    .line 340
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    .line 341
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 340
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->createValidationManager()Lmf/org/apache/xerces/impl/validation/ValidationManager;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    .line 345
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    if-eqz v3, :cond_3

    .line 346
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/validation-manager"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v3

    if-nez v3, :cond_4

    .line 350
    new-instance v2, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    .line 351
    .local v2, "xmft":Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v3, v4, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    .line 352
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {v3, v4, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    .line 355
    .end local v2    # "xmft":Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;
    :cond_4
    iput-boolean v6, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fConfigUpdated:Z

    .line 359
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->setLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    return-void

    .line 361
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
    .line 654
    const-string v2, "http://apache.org/xml/features/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 655
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "http://apache.org/xml/features/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v0, v2, v3

    .line 663
    .local v0, "suffixLength":I
    const-string v2, "validation/dynamic"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 664
    const-string v2, "validation/dynamic"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 716
    .end local v0    # "suffixLength":I
    :cond_0
    :goto_0
    return-void

    .line 670
    .restart local v0    # "suffixLength":I
    :cond_1
    const-string v2, "validation/default-attribute-values"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 671
    const-string v2, "validation/default-attribute-values"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 673
    const/4 v1, 0x1

    .line 674
    .local v1, "type":S
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 679
    .end local v1    # "type":S
    :cond_2
    const-string v2, "validation/validate-content-models"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 680
    const-string v2, "validation/validate-content-models"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 682
    const/4 v1, 0x1

    .line 683
    .restart local v1    # "type":S
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 688
    .end local v1    # "type":S
    :cond_3
    const-string v2, "nonvalidating/load-dtd-grammar"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 689
    const-string v2, "nonvalidating/load-dtd-grammar"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 695
    :cond_4
    const-string v2, "nonvalidating/load-external-dtd"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 696
    const-string v2, "nonvalidating/load-external-dtd"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 703
    :cond_5
    const-string v2, "validation/validate-datatypes"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_6

    .line 704
    const-string v2, "validation/validate-datatypes"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 705
    const/4 v1, 0x1

    .line 706
    .restart local v1    # "type":S
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 714
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
    .line 738
    const-string v1, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 739
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "http://apache.org/xml/properties/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 741
    .local v0, "suffixLength":I
    const-string v1, "internal/dtd-scanner"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 742
    const-string v1, "internal/dtd-scanner"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 762
    .end local v0    # "suffixLength":I
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    const-string v1, "http://java.sun.com/xml/jaxp/properties/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 748
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "http://java.sun.com/xml/jaxp/properties/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 750
    .restart local v0    # "suffixLength":I
    const-string v1, "schemaSource"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 751
    const-string v1, "schemaSource"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 760
    .end local v0    # "suffixLength":I
    :cond_2
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->checkProperty(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->closeReaders()V

    .line 527
    return-void
.end method

.method protected configurePipeline()V
    .locals 3

    .prologue
    .line 604
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_2

    .line 605
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    if-nez v0, :cond_0

    .line 606
    new-instance v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    .line 607
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 609
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/properties/internal/document-scanner"

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->setDTDValidator(Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;)V

    .line 611
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    .line 622
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 623
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .line 625
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 627
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    .line 631
    :cond_1
    return-void

    .line 614
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    if-nez v0, :cond_3

    .line 615
    new-instance v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    .line 616
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 618
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/properties/internal/document-scanner"

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    goto :goto_0
.end method

.method protected createDTDScanner()Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;
    .locals 1

    .prologue
    .line 783
    new-instance v0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;-><init>()V

    return-object v0
.end method

.method protected createDatatypeValidatorFactory()Lmf/org/apache/xerces/impl/dv/DTDDVFactory;
    .locals 1

    .prologue
    .line 788
    invoke-static {}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getInstance()Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v0

    return-object v0
.end method

.method protected createDocumentScanner()Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;
    .locals 1

    .prologue
    .line 778
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createEntityManager()Lmf/org/apache/xerces/impl/XMLEntityManager;
    .locals 1

    .prologue
    .line 768
    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;-><init>()V

    return-object v0
.end method

.method protected createErrorReporter()Lmf/org/apache/xerces/impl/XMLErrorReporter;
    .locals 1

    .prologue
    .line 773
    new-instance v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    return-object v0
.end method

.method protected createValidationManager()Lmf/org/apache/xerces/impl/validation/ValidationManager;
    .locals 1

    .prologue
    .line 791
    new-instance v0, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;-><init>()V

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
    .line 410
    const-string v0, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fConfigUpdated:Z

    .line 413
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
    .line 379
    const-string v0, "http://apache.org/xml/properties/locale"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 382
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

    .line 543
    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fParseInProgress:Z

    if-eqz v1, :cond_0

    .line 545
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    const-string v2, "FWK005 parse may not be called while parsing."

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 547
    :cond_0
    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fParseInProgress:Z

    .line 550
    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    .line 551
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->parse(Z)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fParseInProgress:Z

    .line 576
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->cleanup()V

    .line 579
    return-void

    .line 553
    :catch_0
    move-exception v0

    .line 556
    .local v0, "ex":Lmf/org/apache/xerces/xni/XNIException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 573
    .end local v0    # "ex":Lmf/org/apache/xerces/xni/XNIException;
    :catchall_0
    move-exception v1

    .line 574
    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fParseInProgress:Z

    .line 576
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->cleanup()V

    .line 577
    throw v1

    .line 558
    :catch_1
    move-exception v0

    .line 561
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    throw v0

    .line 563
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 566
    .local v0, "ex":Ljava/lang/RuntimeException;
    throw v0

    .line 568
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v0

    .line 571
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
    .line 465
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    if-eqz v1, :cond_0

    .line 468
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->reset()V

    .line 469
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    .line 470
    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 495
    :cond_0
    :try_start_1
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-interface {v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;->scanDocument(Z)Z
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move-result v1

    return v1

    .line 472
    :catch_0
    move-exception v0

    .line 475
    .local v0, "ex":Lmf/org/apache/xerces/xni/XNIException;
    throw v0

    .line 477
    .end local v0    # "ex":Lmf/org/apache/xerces/xni/XNIException;
    :catch_1
    move-exception v0

    .line 480
    .local v0, "ex":Ljava/io/IOException;
    throw v0

    .line 482
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 485
    .local v0, "ex":Ljava/lang/RuntimeException;
    throw v0

    .line 487
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v0

    .line 490
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 497
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 500
    .local v0, "ex":Lmf/org/apache/xerces/xni/XNIException;
    throw v0

    .line 502
    .end local v0    # "ex":Lmf/org/apache/xerces/xni/XNIException;
    :catch_5
    move-exception v0

    .line 505
    .local v0, "ex":Ljava/io/IOException;
    throw v0

    .line 507
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 510
    .local v0, "ex":Ljava/lang/RuntimeException;
    throw v0

    .line 512
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_7
    move-exception v0

    .line 515
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
    .line 592
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->reset()V

    .line 595
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->configurePipeline()V

    .line 596
    invoke-super {p0}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->reset()V

    .line 598
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
    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fConfigUpdated:Z

    .line 374
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 375
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
    .line 442
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .line 444
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
    .line 403
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->setLocale(Ljava/util/Locale;)V

    .line 404
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    .line 405
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
    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fConfigUpdated:Z

    .line 388
    const-string v0, "http://apache.org/xml/properties/locale"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 389
    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->setLocale(Ljava/util/Locale;)V

    .line 391
    :cond_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 392
    return-void
.end method
