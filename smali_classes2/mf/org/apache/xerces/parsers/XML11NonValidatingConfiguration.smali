.class public Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;
.super Lmf/org/apache/xerces/util/ParserConfigurationSettings;
.source "XML11NonValidatingConfiguration.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLPullParserConfiguration;
.implements Lmf/org/apache/xerces/parsers/XML11Configurable;


# static fields
.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/datatype-validator-factory"

.field protected static final DOCUMENT_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/document-scanner"

.field protected static final DTD_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/dtd-scanner"

.field protected static final DTD_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/dtd"

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final EXTERNAL_GENERAL_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-general-entities"

.field protected static final EXTERNAL_PARAMETER_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-parameter-entities"

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

.field protected fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

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

.field protected fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

.field protected fParseInProgress:Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field protected fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

.field protected fVersionDetector:Lmf/org/apache/xerces/impl/XMLVersionDetector;

.field protected fXML11Components:Ljava/util/ArrayList;

.field protected fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

.field protected fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field protected fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

.field protected fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 273
    invoke-direct {p0, v0, v0, v0}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 274
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    const/4 v0, 0x0

    .line 282
    invoke-direct {p0, p1, v0, v0}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 283
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "grammarPool"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 298
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

    .line 317
    invoke-direct {p0, p3}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;-><init>(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 180
    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11Components:Ljava/util/ArrayList;

    .line 183
    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    .line 202
    iput-boolean v6, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fParseInProgress:Z

    .line 207
    iput-boolean v6, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fConfigUpdated:Z

    .line 230
    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 233
    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    .line 236
    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    .line 239
    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    .line 265
    iput-boolean v6, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->f11Initialized:Z

    .line 321
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fComponents:Ljava/util/ArrayList;

    .line 323
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11Components:Ljava/util/ArrayList;

    .line 325
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    .line 328
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fRecognizedFeatures:Ljava/util/ArrayList;

    .line 329
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fRecognizedProperties:Ljava/util/ArrayList;

    .line 332
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fFeatures:Ljava/util/HashMap;

    .line 333
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

    .line 337
    const/4 v3, 0x6

    new-array v0, v3, [Ljava/lang/String;

    .line 338
    const-string v3, "http://apache.org/xml/features/continue-after-fatal-error"

    aput-object v3, v0, v6

    .line 339
    const-string v3, "http://xml.org/sax/features/validation"

    aput-object v3, v0, v7

    .line 340
    const-string v3, "http://xml.org/sax/features/namespaces"

    aput-object v3, v0, v8

    .line 341
    const-string v3, "http://xml.org/sax/features/external-general-entities"

    aput-object v3, v0, v9

    const/4 v3, 0x4

    .line 342
    const-string v4, "http://xml.org/sax/features/external-parameter-entities"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    .line 343
    const-string v4, "http://apache.org/xml/features/internal/parser-settings"

    aput-object v4, v0, v3

    .line 345
    .local v0, "recognizedFeatures":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 348
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://xml.org/sax/features/validation"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://xml.org/sax/features/namespaces"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://xml.org/sax/features/external-general-entities"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://xml.org/sax/features/external-parameter-entities"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/continue-after-fatal-error"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/internal/parser-settings"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const/16 v3, 0xd

    new-array v1, v3, [Ljava/lang/String;

    .line 358
    const-string v3, "http://xml.org/sax/properties/xml-string"

    aput-object v3, v1, v6

    .line 359
    const-string v3, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v3, v1, v7

    .line 360
    const-string v3, "http://apache.org/xml/properties/internal/error-handler"

    aput-object v3, v1, v8

    .line 361
    const-string v3, "http://apache.org/xml/properties/internal/entity-resolver"

    aput-object v3, v1, v9

    const/4 v3, 0x4

    .line 362
    const-string v4, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    .line 363
    const-string v4, "http://apache.org/xml/properties/internal/entity-manager"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    .line 364
    const-string v4, "http://apache.org/xml/properties/internal/document-scanner"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    .line 365
    const-string v4, "http://apache.org/xml/properties/internal/dtd-scanner"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    .line 366
    const-string v4, "http://apache.org/xml/properties/internal/validator/dtd"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    .line 367
    const-string v4, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    aput-object v4, v1, v3

    const/16 v3, 0xa

    .line 368
    const-string v4, "http://apache.org/xml/properties/internal/validation-manager"

    aput-object v4, v1, v3

    const/16 v3, 0xb

    .line 369
    const-string v4, "http://xml.org/sax/properties/xml-string"

    aput-object v4, v1, v3

    const/16 v3, 0xc

    .line 370
    const-string v4, "http://apache.org/xml/properties/internal/grammar-pool"

    aput-object v4, v1, v3

    .line 371
    .local v1, "recognizedProperties":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    .line 373
    if-nez p1, :cond_0

    .line 374
    new-instance p1, Lmf/org/apache/xerces/util/SymbolTable;

    .end local p1    # "symbolTable":Lmf/org/apache/xerces/util/SymbolTable;
    invoke-direct {p1}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    .line 376
    .restart local p1    # "symbolTable":Lmf/org/apache/xerces/util/SymbolTable;
    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 377
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/symbol-table"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iput-object p2, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .line 380
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v3, :cond_1

    .line 381
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/grammar-pool"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    :cond_1
    new-instance v3, Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLEntityManager;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    .line 385
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/entity-manager"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->addCommonComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 388
    new-instance v3, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 389
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lmf/org/apache/xerces/impl/XMLEntityScanner;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    .line 390
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->addCommonComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 393
    new-instance v3, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    .line 394
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/document-scanner"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 397
    new-instance v3, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    .line 398
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/dtd-scanner"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    check-cast v3, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 401
    invoke-static {}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getInstance()Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 402
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    new-instance v3, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/validation/ValidationManager;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    .line 405
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/validation-manager"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    new-instance v3, Lmf/org/apache/xerces/impl/XMLVersionDetector;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLVersionDetector;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fVersionDetector:Lmf/org/apache/xerces/impl/XMLVersionDetector;

    .line 410
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v3

    if-nez v3, :cond_2

    .line 411
    new-instance v2, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    .line 412
    .local v2, "xmft":Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v3, v4, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    .line 413
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {v3, v4, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    .line 418
    .end local v2    # "xmft":Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;
    :cond_2
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->setLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :goto_0
    iput-boolean v6, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fConfigUpdated:Z

    .line 426
    return-void

    .line 419
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private initXML11Components()V
    .locals 1

    .prologue
    .line 1225
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->f11Initialized:Z

    if-nez v0, :cond_0

    .line 1228
    const-string v0, "mf.org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getInstance(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 1231
    new-instance v0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    .line 1232
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->addXML11Component(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 1235
    new-instance v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    .line 1236
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->addXML11Component(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 1238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->f11Initialized:Z

    .line 1240
    :cond_0
    return-void
.end method


# virtual methods
.method protected addCommonComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V
    .locals 1
    .param p1, "component"    # Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .prologue
    .line 1142
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1148
    :goto_0
    return-void

    .line 1145
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->addRecognizedParamsAndSetDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    goto :goto_0
.end method

.method protected addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V
    .locals 1
    .param p1, "component"    # Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .prologue
    .line 1124
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    :goto_0
    return-void

    .line 1127
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->addRecognizedParamsAndSetDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    goto :goto_0
.end method

.method protected addRecognizedParamsAndSetDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V
    .locals 9
    .param p1, "component"    # Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .prologue
    const/4 v8, 0x1

    .line 1180
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v3

    .line 1181
    .local v3, "recognizedFeatures":[Ljava/lang/String;
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 1184
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object v4

    .line 1185
    .local v4, "recognizedProperties":[Ljava/lang/String;
    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    .line 1188
    if-eqz v3, :cond_0

    .line 1189
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v3

    if-lt v1, v7, :cond_2

    .line 1205
    .end local v1    # "i":I
    :cond_0
    if-eqz v4, :cond_1

    .line 1206
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v7, v4

    if-lt v1, v7, :cond_4

    .line 1222
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 1190
    .restart local v1    # "i":I
    :cond_2
    aget-object v0, v3, v1

    .line 1191
    .local v0, "featureId":Ljava/lang/String;
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    .line 1192
    .local v5, "state":Ljava/lang/Boolean;
    if-eqz v5, :cond_3

    .line 1194
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1195
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {v7, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    iput-boolean v8, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fConfigUpdated:Z

    .line 1189
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1207
    .end local v0    # "featureId":Ljava/lang/String;
    .end local v5    # "state":Ljava/lang/Boolean;
    :cond_4
    aget-object v2, v4, v1

    .line 1208
    .local v2, "propertyId":Ljava/lang/String;
    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1209
    .local v6, "value":Ljava/lang/Object;
    if-eqz v6, :cond_5

    .line 1211
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1212
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

    invoke-virtual {v7, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    iput-boolean v8, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fConfigUpdated:Z

    .line 1206
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected addXML11Component(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V
    .locals 1
    .param p1, "component"    # Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .prologue
    .line 1160
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1166
    :goto_0
    return-void

    .line 1163
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->addRecognizedParamsAndSetDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

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
    .line 972
    const-string v2, "http://apache.org/xml/features/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 973
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "http://apache.org/xml/features/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v0, v2, v3

    .line 981
    .local v0, "suffixLength":I
    const-string v2, "validation/dynamic"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 982
    const-string v2, "validation/dynamic"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1042
    .end local v0    # "suffixLength":I
    :cond_0
    :goto_0
    return-void

    .line 989
    .restart local v0    # "suffixLength":I
    :cond_1
    const-string v2, "validation/default-attribute-values"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 990
    const-string v2, "validation/default-attribute-values"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 992
    const/4 v1, 0x1

    .line 993
    .local v1, "type":S
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 998
    .end local v1    # "type":S
    :cond_2
    const-string v2, "validation/validate-content-models"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 999
    const-string v2, "validation/validate-content-models"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1001
    const/4 v1, 0x1

    .line 1002
    .restart local v1    # "type":S
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 1007
    .end local v1    # "type":S
    :cond_3
    const-string v2, "nonvalidating/load-dtd-grammar"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 1008
    const-string v2, "nonvalidating/load-dtd-grammar"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1014
    :cond_4
    const-string v2, "nonvalidating/load-external-dtd"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 1015
    const-string v2, "nonvalidating/load-external-dtd"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1022
    :cond_5
    const-string v2, "validation/validate-datatypes"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_6

    .line 1023
    const-string v2, "validation/validate-datatypes"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1024
    const/4 v1, 0x1

    .line 1025
    .restart local v1    # "type":S
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 1029
    .end local v1    # "type":S
    :cond_6
    const-string v2, "internal/parser-settings"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_7

    .line 1030
    const-string v2, "internal/parser-settings"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1031
    const/4 v1, 0x1

    .line 1032
    .restart local v1    # "type":S
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 1040
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
    .line 1063
    const-string v2, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1064
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "http://apache.org/xml/properties/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v0, v2, v3

    .line 1066
    .local v0, "suffixLength":I
    const-string v2, "internal/dtd-scanner"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 1067
    const-string v2, "internal/dtd-scanner"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1111
    .end local v0    # "suffixLength":I
    :cond_0
    :goto_0
    return-void

    .line 1072
    :cond_1
    const-string v2, "http://java.sun.com/xml/jaxp/properties/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1073
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "http://java.sun.com/xml/jaxp/properties/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v0, v2, v3

    .line 1075
    .restart local v0    # "suffixLength":I
    const-string v2, "schemaSource"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 1076
    const-string v2, "schemaSource"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1082
    .end local v0    # "suffixLength":I
    :cond_2
    const-string v2, "http://xml.org/sax/properties/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1083
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "http://xml.org/sax/properties/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v0, v2, v3

    .line 1095
    .restart local v0    # "suffixLength":I
    const-string v2, "xml-string"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 1096
    const-string v2, "xml-string"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1100
    const/4 v1, 0x1

    .line 1101
    .local v1, "type":S
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 1109
    .end local v0    # "suffixLength":I
    .end local v1    # "type":S
    :cond_3
    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->checkProperty(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->closeReaders()V

    .line 578
    return-void
.end method

.method protected configurePipeline()V
    .locals 2

    .prologue
    .line 902
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    if-eq v0, v1, :cond_0

    .line 903
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 905
    const-string v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 909
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    if-eq v0, v1, :cond_1

    .line 910
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    .line 911
    const-string v0, "http://apache.org/xml/properties/internal/dtd-scanner"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 913
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 914
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    .line 917
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_4

    .line 918
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    if-eq v0, v1, :cond_2

    .line 919
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    .line 920
    const-string v0, "http://apache.org/xml/properties/internal/document-scanner"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 922
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->setDTDValidator(Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;)V

    .line 923
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 924
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_3

    .line 925
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 927
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .line 949
    :goto_0
    return-void

    .line 930
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    if-nez v0, :cond_5

    .line 931
    new-instance v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    .line 933
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 936
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    if-eq v0, v1, :cond_6

    .line 937
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    .line 938
    const-string v0, "http://apache.org/xml/properties/internal/document-scanner"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 942
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 943
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_7

    .line 944
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 946
    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    goto :goto_0
.end method

.method protected configureXML11Pipeline()V
    .locals 2

    .prologue
    .line 852
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    if-eq v0, v1, :cond_0

    .line 853
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 854
    const-string v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 858
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    if-eq v0, v1, :cond_1

    .line 859
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    .line 860
    const-string v0, "http://apache.org/xml/properties/internal/dtd-scanner"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 862
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 863
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    .line 866
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_4

    .line 867
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    if-eq v0, v1, :cond_2

    .line 868
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    .line 869
    const-string v0, "http://apache.org/xml/properties/internal/document-scanner"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 872
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->setDTDValidator(Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;)V

    .line 873
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 874
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_3

    .line 875
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 877
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .line 898
    :goto_0
    return-void

    .line 881
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    if-nez v0, :cond_5

    .line 883
    new-instance v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    .line 884
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->addXML11Component(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 886
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    if-eq v0, v1, :cond_6

    .line 887
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    .line 888
    const-string v0, "http://apache.org/xml/properties/internal/document-scanner"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 890
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 892
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_7

    .line 893
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 895
    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    goto :goto_0
.end method

.method public getDTDContentModelHandler()Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    return-object v0
.end method

.method public getDTDHandler()Lmf/org/apache/xerces/xni/XMLDTDHandler;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    return-object v0
.end method

.method public getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-object v0
.end method

.method public getEntityResolver()Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

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
    .line 711
    const-string v0, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fConfigUpdated:Z

    .line 714
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
    .line 804
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fLocale:Ljava/util/Locale;

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

    .line 590
    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fParseInProgress:Z

    if-eqz v1, :cond_0

    .line 592
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    const-string v2, "FWK005 parse may not be called while parsing."

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 594
    :cond_0
    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fParseInProgress:Z

    .line 597
    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    .line 598
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->parse(Z)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fParseInProgress:Z

    .line 618
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->cleanup()V

    .line 621
    return-void

    .line 599
    :catch_0
    move-exception v0

    .line 602
    .local v0, "ex":Lmf/org/apache/xerces/xni/XNIException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 615
    .end local v0    # "ex":Lmf/org/apache/xerces/xni/XNIException;
    :catchall_0
    move-exception v1

    .line 616
    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fParseInProgress:Z

    .line 618
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->cleanup()V

    .line 619
    throw v1

    .line 603
    :catch_1
    move-exception v0

    .line 606
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    throw v0

    .line 607
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 610
    .local v0, "ex":Ljava/lang/RuntimeException;
    throw v0

    .line 611
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v0

    .line 614
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

    .line 626
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    if-eqz v3, :cond_0

    .line 628
    :try_start_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->reset()V

    .line 629
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fVersionDetector:Lmf/org/apache/xerces/impl/XMLVersionDetector;

    invoke-virtual {v3, p0}, Lmf/org/apache/xerces/impl/XMLVersionDetector;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 630
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->resetCommon()V

    .line 632
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fVersionDetector:Lmf/org/apache/xerces/impl/XMLVersionDetector;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLVersionDetector;->determineDocVersion(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)S

    move-result v1

    .line 634
    .local v1, "version":S
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 635
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->configurePipeline()V

    .line 636
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->reset()V

    .line 650
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fConfigUpdated:Z

    .line 653
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fVersionDetector:Lmf/org/apache/xerces/impl/XMLVersionDetector;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    check-cast v2, Lmf/org/apache/xerces/impl/XMLEntityHandler;

    invoke-virtual {v3, v2, v1}, Lmf/org/apache/xerces/impl/XMLVersionDetector;->startDocumentParsing(Lmf/org/apache/xerces/impl/XMLEntityHandler;S)V

    .line 654
    const/4 v2, 0x0

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 675
    .end local v1    # "version":S
    :cond_0
    :try_start_1
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-interface {v2, p1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;->scanDocument(Z)Z
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move-result v2

    :cond_1
    return v2

    .line 639
    .restart local v1    # "version":S
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 640
    :try_start_2
    invoke-direct {p0}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->initXML11Components()V

    .line 641
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->configureXML11Pipeline()V

    .line 642
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->resetXML11()V
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 655
    .end local v1    # "version":S
    :catch_0
    move-exception v0

    .line 658
    .local v0, "ex":Lmf/org/apache/xerces/xni/XNIException;
    throw v0

    .line 659
    .end local v0    # "ex":Lmf/org/apache/xerces/xni/XNIException;
    :catch_1
    move-exception v0

    .line 662
    .local v0, "ex":Ljava/io/IOException;
    throw v0

    .line 663
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 666
    .local v0, "ex":Ljava/lang/RuntimeException;
    throw v0

    .line 667
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v0

    .line 670
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v2, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 676
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 679
    .local v0, "ex":Lmf/org/apache/xerces/xni/XNIException;
    throw v0

    .line 680
    .end local v0    # "ex":Lmf/org/apache/xerces/xni/XNIException;
    :catch_5
    move-exception v0

    .line 683
    .local v0, "ex":Ljava/io/IOException;
    throw v0

    .line 684
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 687
    .local v0, "ex":Ljava/lang/RuntimeException;
    throw v0

    .line 688
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_7
    move-exception v0

    .line 691
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
    .line 811
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 812
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 817
    return-void

    .line 813
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 814
    .local v0, "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-interface {v0, p0}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 812
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
    .line 824
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 825
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 830
    return-void

    .line 826
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 827
    .local v0, "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-interface {v0, p0}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 825
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
    .line 838
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 839
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 844
    return-void

    .line 840
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 841
    .local v0, "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-interface {v0, p0}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 839
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V
    .locals 0
    .param p1, "handler"    # Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    .prologue
    .line 506
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    .line 507
    return-void
.end method

.method public setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V
    .locals 0
    .param p1, "dtdHandler"    # Lmf/org/apache/xerces/xni/XMLDTDHandler;

    .prologue
    .line 492
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    .line 493
    return-void
.end method

.method public setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 2
    .param p1, "documentHandler"    # Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    .prologue
    .line 472
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    .line 473
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 475
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 479
    :cond_0
    return-void
.end method

.method public setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    .locals 2
    .param p1, "resolver"    # Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .prologue
    .line 522
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    return-void
.end method

.method public setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V
    .locals 2
    .param p1, "errorHandler"    # Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    .prologue
    .line 555
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
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
    .line 733
    const/4 v3, 0x1

    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fConfigUpdated:Z

    .line 735
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 736
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 741
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 742
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_1

    .line 748
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 749
    const/4 v2, 0x0

    :goto_2
    if-lt v2, v1, :cond_2

    .line 759
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    .line 761
    return-void

    .line 737
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 738
    .local v0, "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setFeature(Ljava/lang/String;Z)V

    .line 736
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 743
    .end local v0    # "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 744
    .restart local v0    # "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setFeature(Ljava/lang/String;Z)V

    .line 742
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 750
    .end local v0    # "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 752
    .restart local v0    # "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 754
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
    .line 448
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .line 450
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
    .line 461
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fLocale:Ljava/util/Locale;

    .line 462
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    .line 463
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
    .line 771
    const/4 v3, 0x1

    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fConfigUpdated:Z

    .line 773
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 774
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 779
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 780
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_1

    .line 785
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 786
    const/4 v2, 0x0

    :goto_2
    if-lt v2, v1, :cond_2

    .line 797
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 799
    return-void

    .line 775
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 776
    .local v0, "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 774
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 781
    .end local v0    # "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 782
    .restart local v0    # "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 780
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 787
    .end local v0    # "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11NonValidatingConfiguration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 789
    .restart local v0    # "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 791
    :catch_0
    move-exception v3

    goto :goto_3
.end method
