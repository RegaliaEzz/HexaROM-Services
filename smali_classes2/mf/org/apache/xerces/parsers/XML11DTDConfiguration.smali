.class public Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;
.super Lmf/org/apache/xerces/util/ParserConfigurationSettings;
.source "XML11DTDConfiguration.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLPullParserConfiguration;
.implements Lmf/org/apache/xerces/parsers/XML11Configurable;


# static fields
.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/datatype-validator-factory"

.field protected static final DOCUMENT_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/document-scanner"

.field protected static final DTD_PROCESSOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/dtd-processor"

.field protected static final DTD_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/dtd-scanner"

.field protected static final DTD_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/dtd"

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final EXTERNAL_GENERAL_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-general-entities"

.field protected static final EXTERNAL_PARAMETER_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-parameter-entities"

.field protected static final JAXP_SCHEMA_LANGUAGE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final LOAD_EXTERNAL_DTD:Ljava/lang/String; = "http://apache.org/xml/features/nonvalidating/load-external-dtd"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final NAMESPACE_BINDER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-binder"

.field protected static final PRINT_EXCEPTION_STACK_TRACE:Z = false

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final XML11_DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "mf.org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

.field protected static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field protected static final XML_STRING:Ljava/lang/String; = "http://xml.org/sax/properties/xml-string"


# instance fields
.field private f11Initialized:Z

.field protected fCommonComponents:Ljava/util/ArrayList;

.field protected fComponents:Ljava/util/ArrayList;

.field protected fConfigUpdated:Z

.field protected fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

.field protected fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field protected fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

.field protected fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

.field protected fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

.field protected fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

.field protected fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

.field protected fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

.field protected fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field protected fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

.field protected fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field protected fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

.field protected fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

.field protected fLocale:Ljava/util/Locale;

.field protected fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

.field protected fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

.field protected fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

.field protected fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

.field protected fParseInProgress:Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field protected fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

.field protected fVersionDetector:Lmf/org/apache/xerces/impl/XMLVersionDetector;

.field protected fXML11Components:Ljava/util/ArrayList;

.field protected fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

.field protected fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

.field protected fXML11DTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

.field protected fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field protected fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

.field protected fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

.field protected fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 334
    invoke-direct {p0, v0, v0, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 335
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    const/4 v0, 0x0

    .line 343
    invoke-direct {p0, p1, v0, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 344
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "grammarPool"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .prologue
    .line 358
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 359
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

    const/4 v3, 0x0

    .line 378
    invoke-direct {p0, p3}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;-><init>(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 223
    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    .line 226
    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    .line 245
    iput-boolean v6, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fParseInProgress:Z

    .line 251
    iput-boolean v6, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

    .line 283
    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 286
    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    .line 289
    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    .line 292
    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    .line 295
    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

    .line 298
    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    .line 301
    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    .line 326
    iput-boolean v6, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->f11Initialized:Z

    .line 382
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

    .line 384
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    .line 386
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    .line 389
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fRecognizedFeatures:Ljava/util/ArrayList;

    .line 390
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fRecognizedProperties:Ljava/util/ArrayList;

    .line 393
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    .line 394
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    .line 398
    const/4 v3, 0x7

    new-array v0, v3, [Ljava/lang/String;

    .line 399
    const-string v3, "http://apache.org/xml/features/continue-after-fatal-error"

    aput-object v3, v0, v6

    const-string v3, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    aput-object v3, v0, v7

    .line 400
    const-string v3, "http://xml.org/sax/features/validation"

    aput-object v3, v0, v8

    .line 401
    const-string v3, "http://xml.org/sax/features/namespaces"

    aput-object v3, v0, v9

    const/4 v3, 0x4

    .line 402
    const-string v4, "http://xml.org/sax/features/external-general-entities"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    .line 403
    const-string v4, "http://xml.org/sax/features/external-parameter-entities"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    .line 404
    const-string v4, "http://apache.org/xml/features/internal/parser-settings"

    aput-object v4, v0, v3

    .line 406
    .local v0, "recognizedFeatures":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 408
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://xml.org/sax/features/validation"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://xml.org/sax/features/namespaces"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://xml.org/sax/features/external-general-entities"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://xml.org/sax/features/external-parameter-entities"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/continue-after-fatal-error"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/internal/parser-settings"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const/16 v3, 0xf

    new-array v1, v3, [Ljava/lang/String;

    .line 419
    const-string v3, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v3, v1, v6

    .line 420
    const-string v3, "http://apache.org/xml/properties/internal/error-handler"

    aput-object v3, v1, v7

    .line 421
    const-string v3, "http://apache.org/xml/properties/internal/entity-resolver"

    aput-object v3, v1, v8

    .line 422
    const-string v3, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v3, v1, v9

    const/4 v3, 0x4

    .line 423
    const-string v4, "http://apache.org/xml/properties/internal/entity-manager"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    .line 424
    const-string v4, "http://apache.org/xml/properties/internal/document-scanner"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    .line 425
    const-string v4, "http://apache.org/xml/properties/internal/dtd-scanner"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    .line 426
    const-string v4, "http://apache.org/xml/properties/internal/dtd-processor"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    .line 427
    const-string v4, "http://apache.org/xml/properties/internal/validator/dtd"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    .line 428
    const-string v4, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    aput-object v4, v1, v3

    const/16 v3, 0xa

    .line 429
    const-string v4, "http://apache.org/xml/properties/internal/validation-manager"

    aput-object v4, v1, v3

    const/16 v3, 0xb

    .line 430
    const-string v4, "http://xml.org/sax/properties/xml-string"

    aput-object v4, v1, v3

    const/16 v3, 0xc

    .line 431
    const-string v4, "http://apache.org/xml/properties/internal/grammar-pool"

    aput-object v4, v1, v3

    const/16 v3, 0xd

    .line 432
    const-string v4, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    aput-object v4, v1, v3

    const/16 v3, 0xe

    .line 433
    const-string v4, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    aput-object v4, v1, v3

    .line 434
    .local v1, "recognizedProperties":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    .line 436
    if-nez p1, :cond_0

    .line 437
    new-instance p1, Lmf/org/apache/xerces/util/SymbolTable;

    .end local p1    # "symbolTable":Lmf/org/apache/xerces/util/SymbolTable;
    invoke-direct {p1}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    .line 439
    .restart local p1    # "symbolTable":Lmf/org/apache/xerces/util/SymbolTable;
    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 440
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/symbol-table"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iput-object p2, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .line 443
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v3, :cond_1

    .line 444
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/grammar-pool"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    :cond_1
    new-instance v3, Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLEntityManager;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    .line 448
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/entity-manager"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addCommonComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 451
    new-instance v3, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 452
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lmf/org/apache/xerces/impl/XMLEntityScanner;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    .line 453
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addCommonComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 456
    new-instance v3, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    .line 457
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/document-scanner"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 460
    new-instance v3, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    .line 461
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/dtd-scanner"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    check-cast v3, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 464
    new-instance v3, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    .line 465
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/dtd-processor"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 468
    new-instance v3, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    .line 469
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/validator/dtd"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 472
    invoke-static {}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getInstance()Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 473
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    new-instance v3, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/validation/ValidationManager;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    .line 476
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/validation-manager"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    new-instance v3, Lmf/org/apache/xerces/impl/XMLVersionDetector;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLVersionDetector;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fVersionDetector:Lmf/org/apache/xerces/impl/XMLVersionDetector;

    .line 481
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v3

    if-nez v3, :cond_2

    .line 482
    new-instance v2, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    .line 483
    .local v2, "xmft":Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v3, v4, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    .line 484
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {v3, v4, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    .line 489
    .end local v2    # "xmft":Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;
    :cond_2
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :goto_0
    iput-boolean v6, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

    .line 497
    return-void

    .line 490
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private initXML11Components()V
    .locals 1

    .prologue
    .line 1326
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->f11Initialized:Z

    if-nez v0, :cond_0

    .line 1329
    const-string v0, "mf.org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getInstance(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 1332
    new-instance v0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    .line 1333
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addXML11Component(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 1334
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    .line 1335
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addXML11Component(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 1338
    new-instance v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    .line 1339
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addXML11Component(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 1340
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    .line 1341
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addXML11Component(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 1343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->f11Initialized:Z

    .line 1345
    :cond_0
    return-void
.end method


# virtual methods
.method protected addCommonComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V
    .locals 1
    .param p1, "component"    # Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .prologue
    .line 1243
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1249
    :goto_0
    return-void

    .line 1246
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1247
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addRecognizedParamsAndSetDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    goto :goto_0
.end method

.method protected addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V
    .locals 1
    .param p1, "component"    # Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .prologue
    .line 1225
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1231
    :goto_0
    return-void

    .line 1228
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1229
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addRecognizedParamsAndSetDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    goto :goto_0
.end method

.method protected addRecognizedParamsAndSetDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V
    .locals 9
    .param p1, "component"    # Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .prologue
    const/4 v8, 0x1

    .line 1281
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v3

    .line 1282
    .local v3, "recognizedFeatures":[Ljava/lang/String;
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 1285
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object v4

    .line 1286
    .local v4, "recognizedProperties":[Ljava/lang/String;
    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    .line 1289
    if-eqz v3, :cond_0

    .line 1290
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v3

    if-lt v1, v7, :cond_2

    .line 1306
    .end local v1    # "i":I
    :cond_0
    if-eqz v4, :cond_1

    .line 1307
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v7, v4

    if-lt v1, v7, :cond_4

    .line 1323
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 1291
    .restart local v1    # "i":I
    :cond_2
    aget-object v0, v3, v1

    .line 1292
    .local v0, "featureId":Ljava/lang/String;
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    .line 1293
    .local v5, "state":Ljava/lang/Boolean;
    if-eqz v5, :cond_3

    .line 1295
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1296
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {v7, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    iput-boolean v8, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

    .line 1290
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1308
    .end local v0    # "featureId":Ljava/lang/String;
    .end local v5    # "state":Ljava/lang/Boolean;
    :cond_4
    aget-object v2, v4, v1

    .line 1309
    .local v2, "propertyId":Ljava/lang/String;
    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1310
    .local v6, "value":Ljava/lang/Object;
    if-eqz v6, :cond_5

    .line 1312
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1313
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    invoke-virtual {v7, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    iput-boolean v8, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

    .line 1307
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected addXML11Component(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V
    .locals 1
    .param p1, "component"    # Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .prologue
    .line 1261
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1267
    :goto_0
    return-void

    .line 1264
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1265
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addRecognizedParamsAndSetDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    goto :goto_0
.end method

.method protected checkFeature(Ljava/lang/String;)V
    .locals 4
    .param p1, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 1082
    const-string v2, "http://apache.org/xml/features/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1083
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "http://apache.org/xml/features/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v0, v2, v3

    .line 1091
    .local v0, "suffixLength":I
    const-string v2, "validation/dynamic"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 1092
    const-string v2, "validation/dynamic"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1152
    .end local v0    # "suffixLength":I
    :cond_0
    :goto_0
    return-void

    .line 1099
    .restart local v0    # "suffixLength":I
    :cond_1
    const-string v2, "validation/default-attribute-values"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 1100
    const-string v2, "validation/default-attribute-values"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1102
    const/4 v1, 0x1

    .line 1103
    .local v1, "type":S
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 1108
    .end local v1    # "type":S
    :cond_2
    const-string v2, "validation/validate-content-models"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 1109
    const-string v2, "validation/validate-content-models"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1111
    const/4 v1, 0x1

    .line 1112
    .restart local v1    # "type":S
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 1117
    .end local v1    # "type":S
    :cond_3
    const-string v2, "nonvalidating/load-dtd-grammar"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 1118
    const-string v2, "nonvalidating/load-dtd-grammar"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1124
    :cond_4
    const-string v2, "nonvalidating/load-external-dtd"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 1125
    const-string v2, "nonvalidating/load-external-dtd"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1132
    :cond_5
    const-string v2, "validation/validate-datatypes"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_6

    .line 1133
    const-string v2, "validation/validate-datatypes"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1134
    const/4 v1, 0x1

    .line 1135
    .restart local v1    # "type":S
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 1139
    .end local v1    # "type":S
    :cond_6
    const-string v2, "internal/parser-settings"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_7

    .line 1140
    const-string v2, "internal/parser-settings"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1141
    const/4 v1, 0x1

    .line 1142
    .restart local v1    # "type":S
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 1150
    .end local v0    # "suffixLength":I
    .end local v1    # "type":S
    :cond_7
    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->checkFeature(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected checkProperty(Ljava/lang/String;)V
    .locals 4
    .param p1, "propertyId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 1173
    const-string v2, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1174
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "http://apache.org/xml/properties/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v0, v2, v3

    .line 1176
    .local v0, "suffixLength":I
    const-string v2, "internal/dtd-scanner"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1177
    const-string v2, "internal/dtd-scanner"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1212
    .end local v0    # "suffixLength":I
    :goto_0
    return-void

    .line 1183
    :cond_0
    const-string v2, "http://xml.org/sax/properties/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1184
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "http://xml.org/sax/properties/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v0, v2, v3

    .line 1196
    .restart local v0    # "suffixLength":I
    const-string v2, "xml-string"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 1197
    const-string v2, "xml-string"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1201
    const/4 v1, 0x1

    .line 1202
    .local v1, "type":S
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 1210
    .end local v0    # "suffixLength":I
    .end local v1    # "type":S
    :cond_1
    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->checkProperty(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->closeReaders()V

    .line 652
    return-void
.end method

.method protected configurePipeline()V
    .locals 2

    .prologue
    .line 994
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    if-eq v0, v1, :cond_0

    .line 995
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 997
    const-string v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1001
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    if-eq v0, v1, :cond_1

    .line 1002
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    .line 1003
    const-string v0, "http://apache.org/xml/properties/internal/dtd-scanner"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1004
    const-string v0, "http://apache.org/xml/properties/internal/dtd-processor"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1006
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 1007
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 1008
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 1009
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_2

    .line 1010
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 1013
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    .line 1014
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDContentModelSource(Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    .line 1015
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    .line 1016
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_3

    .line 1017
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->setDTDContentModelSource(Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    .line 1021
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_6

    .line 1022
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    if-eq v0, v1, :cond_4

    .line 1023
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    .line 1024
    const-string v0, "http://apache.org/xml/properties/internal/document-scanner"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1025
    const-string v0, "http://apache.org/xml/properties/internal/validator/dtd"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1027
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->setDTDValidator(Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;)V

    .line 1028
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 1029
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 1030
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 1031
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_5

    .line 1032
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 1034
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .line 1059
    :goto_0
    return-void

    .line 1037
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    if-nez v0, :cond_7

    .line 1038
    new-instance v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    .line 1039
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    .line 1041
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 1042
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 1044
    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    if-eq v0, v1, :cond_8

    .line 1045
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    .line 1046
    const-string v0, "http://apache.org/xml/properties/internal/document-scanner"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1047
    const-string v0, "http://apache.org/xml/properties/internal/validator/dtd"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1050
    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 1051
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 1052
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 1053
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_9

    .line 1054
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 1056
    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    goto :goto_0
.end method

.method protected configureXML11Pipeline()V
    .locals 2

    .prologue
    .line 924
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    if-eq v0, v1, :cond_0

    .line 925
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 926
    const-string v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 928
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    if-eq v0, v1, :cond_1

    .line 929
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    .line 930
    const-string v0, "http://apache.org/xml/properties/internal/dtd-scanner"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 931
    const-string v0, "http://apache.org/xml/properties/internal/dtd-processor"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 934
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 935
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 936
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 937
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_2

    .line 938
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 941
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    .line 942
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDContentModelSource(Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    .line 943
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    .line 944
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_3

    .line 945
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->setDTDContentModelSource(Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    .line 949
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_6

    .line 950
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    if-eq v0, v1, :cond_4

    .line 951
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    .line 952
    const-string v0, "http://apache.org/xml/properties/internal/document-scanner"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 953
    const-string v0, "http://apache.org/xml/properties/internal/validator/dtd"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 956
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->setDTDValidator(Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;)V

    .line 957
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 958
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 959
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 961
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_5

    .line 962
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 964
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .line 990
    :goto_0
    return-void

    .line 968
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    if-nez v0, :cond_7

    .line 970
    new-instance v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    .line 971
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addXML11Component(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 972
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

    .line 973
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->addXML11Component(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 975
    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    if-eq v0, v1, :cond_8

    .line 976
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    .line 977
    const-string v0, "http://apache.org/xml/properties/internal/document-scanner"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 978
    const-string v0, "http://apache.org/xml/properties/internal/validator/dtd"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 980
    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 981
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 982
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 984
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_9

    .line 985
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 987
    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    goto :goto_0
.end method

.method public getDTDContentModelHandler()Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    return-object v0
.end method

.method public getDTDHandler()Lmf/org/apache/xerces/xni/XMLDTDHandler;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    return-object v0
.end method

.method public getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-object v0
.end method

.method public getEntityResolver()Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

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
    .line 785
    const-string v0, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

    .line 788
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->getFeature(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fLocale:Ljava/util/Locale;

    return-object v0
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

    .line 664
    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fParseInProgress:Z

    if-eqz v1, :cond_0

    .line 666
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    const-string v2, "FWK005 parse may not be called while parsing."

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 668
    :cond_0
    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fParseInProgress:Z

    .line 671
    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    .line 672
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->parse(Z)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fParseInProgress:Z

    .line 692
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->cleanup()V

    .line 695
    return-void

    .line 673
    :catch_0
    move-exception v0

    .line 676
    .local v0, "ex":Lmf/org/apache/xerces/xni/XNIException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 689
    .end local v0    # "ex":Lmf/org/apache/xerces/xni/XNIException;
    :catchall_0
    move-exception v1

    .line 690
    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fParseInProgress:Z

    .line 692
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->cleanup()V

    .line 693
    throw v1

    .line 677
    :catch_1
    move-exception v0

    .line 680
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    throw v0

    .line 681
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 684
    .local v0, "ex":Ljava/lang/RuntimeException;
    throw v0

    .line 685
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v0

    .line 688
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

    .line 700
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    if-eqz v3, :cond_0

    .line 702
    :try_start_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->reset()V

    .line 703
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fVersionDetector:Lmf/org/apache/xerces/impl/XMLVersionDetector;

    invoke-virtual {v3, p0}, Lmf/org/apache/xerces/impl/XMLVersionDetector;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 704
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->resetCommon()V

    .line 706
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fVersionDetector:Lmf/org/apache/xerces/impl/XMLVersionDetector;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLVersionDetector;->determineDocVersion(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)S

    move-result v1

    .line 708
    .local v1, "version":S
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 709
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->configurePipeline()V

    .line 710
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->reset()V

    .line 724
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

    .line 727
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fVersionDetector:Lmf/org/apache/xerces/impl/XMLVersionDetector;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    check-cast v2, Lmf/org/apache/xerces/impl/XMLEntityHandler;

    invoke-virtual {v3, v2, v1}, Lmf/org/apache/xerces/impl/XMLVersionDetector;->startDocumentParsing(Lmf/org/apache/xerces/impl/XMLEntityHandler;S)V

    .line 728
    const/4 v2, 0x0

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 749
    .end local v1    # "version":S
    :cond_0
    :try_start_1
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-interface {v2, p1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;->scanDocument(Z)Z
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move-result v2

    :cond_1
    return v2

    .line 713
    .restart local v1    # "version":S
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 714
    :try_start_2
    invoke-direct {p0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->initXML11Components()V

    .line 715
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->configureXML11Pipeline()V

    .line 716
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->resetXML11()V
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 729
    .end local v1    # "version":S
    :catch_0
    move-exception v0

    .line 732
    .local v0, "ex":Lmf/org/apache/xerces/xni/XNIException;
    throw v0

    .line 733
    .end local v0    # "ex":Lmf/org/apache/xerces/xni/XNIException;
    :catch_1
    move-exception v0

    .line 736
    .local v0, "ex":Ljava/io/IOException;
    throw v0

    .line 737
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 740
    .local v0, "ex":Ljava/lang/RuntimeException;
    throw v0

    .line 741
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v0

    .line 744
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v2, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 750
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 753
    .local v0, "ex":Lmf/org/apache/xerces/xni/XNIException;
    throw v0

    .line 754
    .end local v0    # "ex":Lmf/org/apache/xerces/xni/XNIException;
    :catch_5
    move-exception v0

    .line 757
    .local v0, "ex":Ljava/io/IOException;
    throw v0

    .line 758
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 761
    .local v0, "ex":Ljava/lang/RuntimeException;
    throw v0

    .line 762
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_7
    move-exception v0

    .line 765
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v2, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method protected reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 885
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 886
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 891
    return-void

    .line 887
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 888
    .local v0, "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-interface {v0, p0}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 886
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected resetCommon()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 898
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 899
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 904
    return-void

    .line 900
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 901
    .local v0, "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-interface {v0, p0}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 899
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected resetXML11()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 911
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 912
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 917
    return-void

    .line 913
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 914
    .local v0, "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-interface {v0, p0}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 912
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V
    .locals 0
    .param p1, "handler"    # Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    .prologue
    .line 580
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    .line 581
    return-void
.end method

.method public setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V
    .locals 0
    .param p1, "dtdHandler"    # Lmf/org/apache/xerces/xni/XMLDTDHandler;

    .prologue
    .line 566
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    .line 567
    return-void
.end method

.method public setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 2
    .param p1, "documentHandler"    # Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    .prologue
    .line 546
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    .line 547
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 549
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 553
    :cond_0
    return-void
.end method

.method public setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    .locals 2
    .param p1, "resolver"    # Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .prologue
    .line 596
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    return-void
.end method

.method public setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V
    .locals 2
    .param p1, "errorHandler"    # Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    .prologue
    .line 629
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "featureId"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 807
    const/4 v3, 0x1

    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

    .line 809
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 810
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 815
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 816
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_1

    .line 822
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 823
    const/4 v2, 0x0

    :goto_2
    if-lt v2, v1, :cond_2

    .line 833
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    .line 835
    return-void

    .line 811
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 812
    .local v0, "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setFeature(Ljava/lang/String;Z)V

    .line 810
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 817
    .end local v0    # "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 818
    .restart local v0    # "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setFeature(Ljava/lang/String;Z)V

    .line 816
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 824
    .end local v0    # "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 826
    .restart local v0    # "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 828
    :catch_0
    move-exception v3

    goto :goto_3
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
    .line 522
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .line 524
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
    .line 535
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fLocale:Ljava/util/Locale;

    .line 536
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    .line 537
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "propertyId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 845
    const/4 v3, 0x1

    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

    .line 847
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 848
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 853
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 854
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_1

    .line 859
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 860
    const/4 v2, 0x0

    :goto_2
    if-lt v2, v1, :cond_2

    .line 871
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 873
    return-void

    .line 849
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 850
    .local v0, "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 848
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 855
    .end local v0    # "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 856
    .restart local v0    # "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 854
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 861
    .end local v0    # "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 863
    .restart local v0    # "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 865
    :catch_0
    move-exception v3

    goto :goto_3
.end method
