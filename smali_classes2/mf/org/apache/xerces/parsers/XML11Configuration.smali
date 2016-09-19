.class public Lmf/org/apache/xerces/parsers/XML11Configuration;
.super Lmf/org/apache/xerces/util/ParserConfigurationSettings;
.source "XML11Configuration.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLPullParserConfiguration;
.implements Lmf/org/apache/xerces/parsers/XML11Configurable;


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

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

.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field protected static final IDENTITY_CONSTRAINT_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/identity-constraint-checking"

.field protected static final ID_IDREF_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/id-idref-checking"

.field protected static final IGNORE_XSI_TYPE:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

.field protected static final JAXP_SCHEMA_LANGUAGE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final LOAD_EXTERNAL_DTD:Ljava/lang/String; = "http://apache.org/xml/features/nonvalidating/load-external-dtd"

.field protected static final LOCALE:Ljava/lang/String; = "http://apache.org/xml/properties/locale"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final NAMESPACE_BINDER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-binder"

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final NOTIFY_BUILTIN_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-builtin-refs"

.field protected static final NOTIFY_CHAR_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-char-refs"

.field protected static final PRINT_EXCEPTION_STACK_TRACE:Z = false

.field protected static final ROOT_ELEMENT_DECL:Ljava/lang/String; = "http://apache.org/xml/properties/validation/schema/root-element-declaration"

.field protected static final ROOT_TYPE_DEF:Ljava/lang/String; = "http://apache.org/xml/properties/validation/schema/root-type-definition"

.field protected static final SCHEMA_AUGMENT_PSVI:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final SCHEMA_DV_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

.field protected static final SCHEMA_ELEMENT_DEFAULT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/element-default"

.field protected static final SCHEMA_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-schemaLocation"

.field protected static final SCHEMA_NONS_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

.field protected static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field protected static final UNPARSED_ENTITY_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/unparsed-entity-checking"

.field protected static final USE_GRAMMAR_POOL_ONLY:Ljava/lang/String; = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

.field protected static final VALIDATE_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/validate-annotations"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WARN_ON_DUPLICATE_ATTDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

.field protected static final WARN_ON_DUPLICATE_ENTITYDEF:Ljava/lang/String; = "http://apache.org/xml/features/warn-on-duplicate-entitydef"

.field protected static final WARN_ON_UNDECLARED_ELEMDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

.field protected static final XML11_DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "mf.org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

.field protected static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field protected static final XMLSCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final XMLSCHEMA_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field protected static final XML_STRING:Ljava/lang/String; = "http://xml.org/sax/properties/xml-string"


# instance fields
.field private f11Initialized:Z

.field protected final fCommonComponents:Ljava/util/ArrayList;

.field protected final fComponents:Ljava/util/ArrayList;

.field protected fConfigUpdated:Z

.field protected fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

.field protected fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field protected fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

.field protected fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

.field protected fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

.field protected final fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

.field protected final fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

.field protected final fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

.field protected final fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field protected fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

.field protected fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field protected fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

.field protected fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

.field protected fLocale:Ljava/util/Locale;

.field protected final fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

.field protected fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

.field protected fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

.field protected fParseInProgress:Z

.field protected fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field protected final fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

.field protected final fVersionDetector:Lmf/org/apache/xerces/impl/XMLVersionDetector;

.field protected final fXML11Components:Ljava/util/ArrayList;

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

    .line 426
    invoke-direct {p0, v0, v0, v0}, Lmf/org/apache/xerces/parsers/XML11Configuration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 427
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    const/4 v0, 0x0

    .line 435
    invoke-direct {p0, p1, v0, v0}, Lmf/org/apache/xerces/parsers/XML11Configuration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 436
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "grammarPool"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .prologue
    .line 450
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/parsers/XML11Configuration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 451
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

    .line 470
    invoke-direct {p0, p3}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;-><init>(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 337
    iput-boolean v6, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fParseInProgress:Z

    .line 342
    iput-boolean v6, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fConfigUpdated:Z

    .line 374
    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 377
    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    .line 380
    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    .line 383
    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    .line 386
    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

    .line 389
    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    .line 392
    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    .line 418
    iput-boolean v6, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->f11Initialized:Z

    .line 474
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fComponents:Ljava/util/ArrayList;

    .line 476
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11Components:Ljava/util/ArrayList;

    .line 478
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCommonComponents:Ljava/util/ArrayList;

    .line 481
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fRecognizedFeatures:Ljava/util/ArrayList;

    .line 482
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fRecognizedProperties:Ljava/util/ArrayList;

    .line 485
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    .line 486
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    .line 490
    const/16 v3, 0x16

    new-array v0, v3, [Ljava/lang/String;

    .line 491
    const-string v3, "http://apache.org/xml/features/continue-after-fatal-error"

    aput-object v3, v0, v6

    const-string v3, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    aput-object v3, v0, v7

    .line 492
    const-string v3, "http://xml.org/sax/features/validation"

    aput-object v3, v0, v8

    .line 493
    const-string v3, "http://xml.org/sax/features/namespaces"

    aput-object v3, v0, v9

    const/4 v3, 0x4

    .line 494
    const-string v4, "http://apache.org/xml/features/validation/schema/normalized-value"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "http://apache.org/xml/features/validation/schema/element-default"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "http://apache.org/xml/features/validation/schema/augment-psvi"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    .line 495
    const-string v4, "http://apache.org/xml/features/generate-synthetic-annotations"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "http://apache.org/xml/features/validate-annotations"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    .line 496
    const-string v4, "http://apache.org/xml/features/honour-all-schemaLocations"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "http://apache.org/xml/features/namespace-growth"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    .line 497
    const-string v4, "http://apache.org/xml/features/internal/tolerate-duplicates"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    .line 498
    const-string v4, "http://apache.org/xml/features/validation/id-idref-checking"

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const-string v4, "http://apache.org/xml/features/validation/identity-constraint-checking"

    aput-object v4, v0, v3

    const/16 v3, 0xf

    .line 499
    const-string v4, "http://apache.org/xml/features/validation/unparsed-entity-checking"

    aput-object v4, v0, v3

    const/16 v3, 0x10

    const-string v4, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    aput-object v4, v0, v3

    const/16 v3, 0x11

    .line 504
    const-string v4, "http://apache.org/xml/features/validation/schema"

    aput-object v4, v0, v3

    const/16 v3, 0x12

    const-string v4, "http://apache.org/xml/features/validation/schema-full-checking"

    aput-object v4, v0, v3

    const/16 v3, 0x13

    .line 505
    const-string v4, "http://xml.org/sax/features/external-general-entities"

    aput-object v4, v0, v3

    const/16 v3, 0x14

    .line 506
    const-string v4, "http://xml.org/sax/features/external-parameter-entities"

    aput-object v4, v0, v3

    const/16 v3, 0x15

    .line 507
    const-string v4, "http://apache.org/xml/features/internal/parser-settings"

    aput-object v4, v0, v3

    .line 510
    .local v0, "recognizedFeatures":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 512
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://xml.org/sax/features/validation"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://xml.org/sax/features/namespaces"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://xml.org/sax/features/external-general-entities"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://xml.org/sax/features/external-parameter-entities"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/continue-after-fatal-error"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/validation/schema/element-default"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/validation/schema/normalized-value"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/validation/schema/augment-psvi"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/generate-synthetic-annotations"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/validate-annotations"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/honour-all-schemaLocations"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/namespace-growth"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/internal/tolerate-duplicates"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/validation/id-idref-checking"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/validation/identity-constraint-checking"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/validation/unparsed-entity-checking"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/features/internal/parser-settings"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const/16 v3, 0x16

    new-array v1, v3, [Ljava/lang/String;

    .line 536
    const-string v3, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v3, v1, v6

    .line 537
    const-string v3, "http://apache.org/xml/properties/internal/error-handler"

    aput-object v3, v1, v7

    .line 538
    const-string v3, "http://apache.org/xml/properties/internal/entity-resolver"

    aput-object v3, v1, v8

    .line 539
    const-string v3, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v3, v1, v9

    const/4 v3, 0x4

    .line 540
    const-string v4, "http://apache.org/xml/properties/internal/entity-manager"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    .line 541
    const-string v4, "http://apache.org/xml/properties/internal/document-scanner"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    .line 542
    const-string v4, "http://apache.org/xml/properties/internal/dtd-scanner"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    .line 543
    const-string v4, "http://apache.org/xml/properties/internal/dtd-processor"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    .line 544
    const-string v4, "http://apache.org/xml/properties/internal/validator/dtd"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    .line 545
    const-string v4, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    aput-object v4, v1, v3

    const/16 v3, 0xa

    .line 546
    const-string v4, "http://apache.org/xml/properties/internal/validation-manager"

    aput-object v4, v1, v3

    const/16 v3, 0xb

    .line 547
    const-string v4, "http://apache.org/xml/properties/internal/validator/schema"

    aput-object v4, v1, v3

    const/16 v3, 0xc

    .line 548
    const-string v4, "http://xml.org/sax/properties/xml-string"

    aput-object v4, v1, v3

    const/16 v3, 0xd

    .line 549
    const-string v4, "http://apache.org/xml/properties/internal/grammar-pool"

    aput-object v4, v1, v3

    const/16 v3, 0xe

    .line 550
    const-string v4, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    aput-object v4, v1, v3

    const/16 v3, 0xf

    .line 551
    const-string v4, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    aput-object v4, v1, v3

    const/16 v3, 0x10

    .line 556
    const-string v4, "http://apache.org/xml/properties/schema/external-schemaLocation"

    aput-object v4, v1, v3

    const/16 v3, 0x11

    .line 557
    const-string v4, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    aput-object v4, v1, v3

    const/16 v3, 0x12

    .line 558
    const-string v4, "http://apache.org/xml/properties/locale"

    aput-object v4, v1, v3

    const/16 v3, 0x13

    .line 559
    const-string v4, "http://apache.org/xml/properties/validation/schema/root-type-definition"

    aput-object v4, v1, v3

    const/16 v3, 0x14

    .line 560
    const-string v4, "http://apache.org/xml/properties/validation/schema/root-element-declaration"

    aput-object v4, v1, v3

    const/16 v3, 0x15

    .line 561
    const-string v4, "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

    aput-object v4, v1, v3

    .line 563
    .local v1, "recognizedProperties":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/parsers/XML11Configuration;->addRecognizedProperties([Ljava/lang/String;)V

    .line 565
    if-nez p1, :cond_0

    .line 566
    new-instance p1, Lmf/org/apache/xerces/util/SymbolTable;

    .end local p1    # "symbolTable":Lmf/org/apache/xerces/util/SymbolTable;
    invoke-direct {p1}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    .line 568
    .restart local p1    # "symbolTable":Lmf/org/apache/xerces/util/SymbolTable;
    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 569
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/symbol-table"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    iput-object p2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .line 572
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v3, :cond_1

    .line 573
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/grammar-pool"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    :cond_1
    new-instance v3, Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLEntityManager;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    .line 577
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/entity-manager"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11Configuration;->addCommonComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 580
    new-instance v3, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 581
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lmf/org/apache/xerces/impl/XMLEntityScanner;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    .line 582
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11Configuration;->addCommonComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 585
    new-instance v3, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    .line 586
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/document-scanner"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11Configuration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 589
    new-instance v3, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    .line 590
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/dtd-scanner"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    check-cast v3, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11Configuration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 593
    new-instance v3, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    .line 594
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/dtd-processor"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11Configuration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 597
    new-instance v3, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    .line 598
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/validator/dtd"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11Configuration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 601
    invoke-static {}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getInstance()Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 602
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    new-instance v3, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/validation/ValidationManager;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    .line 605
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/validation-manager"

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    new-instance v3, Lmf/org/apache/xerces/impl/XMLVersionDetector;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLVersionDetector;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fVersionDetector:Lmf/org/apache/xerces/impl/XMLVersionDetector;

    .line 610
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v3

    if-nez v3, :cond_2

    .line 611
    new-instance v2, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    .line 612
    .local v2, "xmft":Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v3, v4, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    .line 613
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {v3, v4, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    .line 618
    .end local v2    # "xmft":Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;
    :cond_2
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :goto_0
    iput-boolean v6, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fConfigUpdated:Z

    .line 626
    return-void

    .line 619
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private initXML11Components()V
    .locals 1

    .prologue
    .line 1572
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->f11Initialized:Z

    if-nez v0, :cond_0

    .line 1575
    const-string v0, "mf.org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getInstance(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 1578
    new-instance v0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    .line 1579
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->addXML11Component(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 1580
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    .line 1581
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->addXML11Component(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 1584
    new-instance v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    .line 1585
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->addXML11Component(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 1586
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    .line 1587
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->addXML11Component(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 1589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->f11Initialized:Z

    .line 1591
    :cond_0
    return-void
.end method


# virtual methods
.method protected addCommonComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V
    .locals 1
    .param p1, "component"    # Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .prologue
    .line 1489
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1495
    :goto_0
    return-void

    .line 1492
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1493
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/XML11Configuration;->addRecognizedParamsAndSetDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    goto :goto_0
.end method

.method protected addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V
    .locals 1
    .param p1, "component"    # Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .prologue
    .line 1471
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1477
    :goto_0
    return-void

    .line 1474
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1475
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/XML11Configuration;->addRecognizedParamsAndSetDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    goto :goto_0
.end method

.method protected addRecognizedParamsAndSetDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V
    .locals 9
    .param p1, "component"    # Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .prologue
    const/4 v8, 0x1

    .line 1527
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v3

    .line 1528
    .local v3, "recognizedFeatures":[Ljava/lang/String;
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11Configuration;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 1531
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object v4

    .line 1532
    .local v4, "recognizedProperties":[Ljava/lang/String;
    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/parsers/XML11Configuration;->addRecognizedProperties([Ljava/lang/String;)V

    .line 1535
    if-eqz v3, :cond_0

    .line 1536
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v3

    if-lt v1, v7, :cond_2

    .line 1552
    .end local v1    # "i":I
    :cond_0
    if-eqz v4, :cond_1

    .line 1553
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v7, v4

    if-lt v1, v7, :cond_4

    .line 1569
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 1537
    .restart local v1    # "i":I
    :cond_2
    aget-object v0, v3, v1

    .line 1538
    .local v0, "featureId":Ljava/lang/String;
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    .line 1539
    .local v5, "state":Ljava/lang/Boolean;
    if-eqz v5, :cond_3

    .line 1541
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1542
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {v7, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    iput-boolean v8, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fConfigUpdated:Z

    .line 1536
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1554
    .end local v0    # "featureId":Ljava/lang/String;
    .end local v5    # "state":Ljava/lang/Boolean;
    :cond_4
    aget-object v2, v4, v1

    .line 1555
    .local v2, "propertyId":Ljava/lang/String;
    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1556
    .local v6, "value":Ljava/lang/Object;
    if-eqz v6, :cond_5

    .line 1558
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1559
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    invoke-virtual {v7, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    iput-boolean v8, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fConfigUpdated:Z

    .line 1553
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected addXML11Component(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V
    .locals 1
    .param p1, "component"    # Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .prologue
    .line 1507
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1513
    :goto_0
    return-void

    .line 1510
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1511
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/XML11Configuration;->addRecognizedParamsAndSetDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

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
    .line 1284
    const-string v2, "http://apache.org/xml/features/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1285
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "http://apache.org/xml/features/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v0, v2, v3

    .line 1293
    .local v0, "suffixLength":I
    const-string v2, "validation/dynamic"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 1294
    const-string v2, "validation/dynamic"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1381
    .end local v0    # "suffixLength":I
    :cond_0
    :goto_0
    return-void

    .line 1301
    .restart local v0    # "suffixLength":I
    :cond_1
    const-string v2, "validation/default-attribute-values"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 1302
    const-string v2, "validation/default-attribute-values"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1304
    const/4 v1, 0x1

    .line 1305
    .local v1, "type":S
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 1310
    .end local v1    # "type":S
    :cond_2
    const-string v2, "validation/validate-content-models"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 1311
    const-string v2, "validation/validate-content-models"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1313
    const/4 v1, 0x1

    .line 1314
    .restart local v1    # "type":S
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 1319
    .end local v1    # "type":S
    :cond_3
    const-string v2, "nonvalidating/load-dtd-grammar"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 1320
    const-string v2, "nonvalidating/load-dtd-grammar"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1326
    :cond_4
    const-string v2, "nonvalidating/load-external-dtd"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 1327
    const-string v2, "nonvalidating/load-external-dtd"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1334
    :cond_5
    const-string v2, "validation/validate-datatypes"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_6

    .line 1335
    const-string v2, "validation/validate-datatypes"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1336
    const/4 v1, 0x1

    .line 1337
    .restart local v1    # "type":S
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 1344
    .end local v1    # "type":S
    :cond_6
    const-string v2, "validation/schema"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_7

    .line 1345
    const-string v2, "validation/schema"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1349
    :cond_7
    const-string v2, "validation/schema-full-checking"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_8

    .line 1350
    const-string v2, "validation/schema-full-checking"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1355
    :cond_8
    const-string v2, "validation/schema/normalized-value"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_9

    .line 1356
    const-string v2, "validation/schema/normalized-value"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1361
    :cond_9
    const-string v2, "validation/schema/element-default"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_a

    .line 1362
    const-string v2, "validation/schema/element-default"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1367
    :cond_a
    const-string v2, "internal/parser-settings"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_b

    .line 1368
    const-string v2, "internal/parser-settings"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1369
    const/4 v1, 0x1

    .line 1370
    .restart local v1    # "type":S
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 1379
    .end local v0    # "suffixLength":I
    .end local v1    # "type":S
    :cond_b
    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->checkFeature(Ljava/lang/String;)V

    goto/16 :goto_0
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
    .line 1402
    const-string v2, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1403
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "http://apache.org/xml/properties/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v0, v2, v3

    .line 1405
    .local v0, "suffixLength":I
    const-string v2, "internal/dtd-scanner"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 1406
    const-string v2, "internal/dtd-scanner"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1458
    .end local v0    # "suffixLength":I
    :cond_0
    :goto_0
    return-void

    .line 1409
    .restart local v0    # "suffixLength":I
    :cond_1
    const-string v2, "schema/external-schemaLocation"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 1410
    const-string v2, "schema/external-schemaLocation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1413
    :cond_2
    const-string v2, "schema/external-noNamespaceSchemaLocation"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 1414
    const-string v2, "schema/external-noNamespaceSchemaLocation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1419
    .end local v0    # "suffixLength":I
    :cond_3
    const-string v2, "http://java.sun.com/xml/jaxp/properties/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1420
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "http://java.sun.com/xml/jaxp/properties/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v0, v2, v3

    .line 1422
    .restart local v0    # "suffixLength":I
    const-string v2, "schemaSource"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 1423
    const-string v2, "schemaSource"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1429
    .end local v0    # "suffixLength":I
    :cond_4
    const-string v2, "http://xml.org/sax/properties/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1430
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "http://xml.org/sax/properties/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v0, v2, v3

    .line 1442
    .restart local v0    # "suffixLength":I
    const-string v2, "xml-string"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 1443
    const-string v2, "xml-string"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1447
    const/4 v1, 0x1

    .line 1448
    .local v1, "type":S
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 1456
    .end local v0    # "suffixLength":I
    .end local v1    # "type":S
    :cond_5
    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->checkProperty(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->closeReaders()V

    .line 780
    return-void
.end method

.method protected configurePipeline()V
    .locals 3

    .prologue
    .line 1172
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    if-eq v1, v2, :cond_0

    .line 1173
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 1175
    const-string v1, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1179
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    if-eq v1, v2, :cond_1

    .line 1180
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    .line 1181
    const-string v1, "http://apache.org/xml/properties/internal/dtd-scanner"

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1182
    const-string v1, "http://apache.org/xml/properties/internal/dtd-processor"

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1184
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 1185
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 1186
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 1187
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_2

    .line 1188
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 1191
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    .line 1192
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDContentModelSource(Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    .line 1193
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    .line 1194
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v1, :cond_3

    .line 1195
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->setDTDContentModelSource(Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    .line 1199
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string v2, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_9

    .line 1200
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    if-eq v1, v2, :cond_4

    .line 1201
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    .line 1202
    const-string v1, "http://apache.org/xml/properties/internal/document-scanner"

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1203
    const-string v1, "http://apache.org/xml/properties/internal/validator/dtd"

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1205
    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->setDTDValidator(Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;)V

    .line 1206
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 1207
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 1208
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 1209
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_5

    .line 1210
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 1212
    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .line 1238
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string v2, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_8

    .line 1240
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    if-nez v1, :cond_6

    .line 1241
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    .line 1243
    const-string v1, "http://apache.org/xml/properties/internal/validator/schema"

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1244
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/parsers/XML11Configuration;->addCommonComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 1245
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v1, p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 1247
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v1

    if-nez v1, :cond_6

    .line 1248
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    .line 1249
    .local v0, "xmft":Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v1, v2, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    .line 1253
    .end local v0    # "xmft":Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;
    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 1254
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 1255
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 1256
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_7

    .line 1257
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 1259
    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .line 1261
    :cond_8
    return-void

    .line 1215
    :cond_9
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    if-nez v1, :cond_a

    .line 1216
    new-instance v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    .line 1217
    new-instance v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    .line 1219
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/parsers/XML11Configuration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 1220
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/parsers/XML11Configuration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 1222
    :cond_a
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    if-eq v1, v2, :cond_b

    .line 1223
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    .line 1224
    const-string v1, "http://apache.org/xml/properties/internal/document-scanner"

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1225
    const-string v1, "http://apache.org/xml/properties/internal/validator/dtd"

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1228
    :cond_b
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 1229
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 1230
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 1231
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_c

    .line 1232
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 1234
    :cond_c
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    goto/16 :goto_0
.end method

.method protected configureXML11Pipeline()V
    .locals 3

    .prologue
    .line 1077
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    if-eq v1, v2, :cond_0

    .line 1078
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 1079
    const-string v1, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1081
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    if-eq v1, v2, :cond_1

    .line 1082
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    .line 1083
    const-string v1, "http://apache.org/xml/properties/internal/dtd-scanner"

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1084
    const-string v1, "http://apache.org/xml/properties/internal/dtd-processor"

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1087
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 1088
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 1089
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 1090
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_2

    .line 1091
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 1094
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    .line 1095
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDContentModelSource(Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    .line 1096
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    .line 1097
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v1, :cond_3

    .line 1098
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->setDTDContentModelSource(Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    .line 1102
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string v2, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_9

    .line 1103
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    if-eq v1, v2, :cond_4

    .line 1104
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    .line 1105
    const-string v1, "http://apache.org/xml/properties/internal/document-scanner"

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1106
    const-string v1, "http://apache.org/xml/properties/internal/validator/dtd"

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1109
    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->setDTDValidator(Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;)V

    .line 1110
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 1111
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 1112
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 1114
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_5

    .line 1115
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 1117
    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11NSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .line 1144
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string v2, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_8

    .line 1146
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    if-nez v1, :cond_6

    .line 1147
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    .line 1149
    const-string v1, "http://apache.org/xml/properties/internal/validator/schema"

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1150
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/parsers/XML11Configuration;->addCommonComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 1151
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v1, p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 1153
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v1

    if-nez v1, :cond_6

    .line 1154
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    .line 1155
    .local v0, "xmft":Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v1, v2, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    .line 1159
    .end local v0    # "xmft":Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;
    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 1160
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 1161
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 1162
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_7

    .line 1163
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 1165
    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .line 1168
    :cond_8
    return-void

    .line 1121
    :cond_9
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    if-nez v1, :cond_a

    .line 1123
    new-instance v1, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    .line 1124
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/parsers/XML11Configuration;->addXML11Component(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 1125
    new-instance v1, Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

    .line 1126
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/parsers/XML11Configuration;->addXML11Component(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 1128
    :cond_a
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    if-eq v1, v2, :cond_b

    .line 1129
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    .line 1130
    const-string v1, "http://apache.org/xml/properties/internal/document-scanner"

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1131
    const-string v1, "http://apache.org/xml/properties/internal/validator/dtd"

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1133
    :cond_b
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 1134
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DocScanner:Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 1135
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 1137
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_c

    .line 1138
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 1140
    :cond_c
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11DTDValidator:Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    goto/16 :goto_0
.end method

.method public getDTDContentModelHandler()Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    return-object v0
.end method

.method public getDTDHandler()Lmf/org/apache/xerces/xni/XMLDTDHandler;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    return-object v0
.end method

.method public getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-object v0
.end method

.method public getEntityResolver()Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    .locals 2

    .prologue
    .line 735
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    .locals 2

    .prologue
    .line 769
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

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
    .line 913
    const-string v0, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fConfigUpdated:Z

    .line 916
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->getFeature(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method getFeature0(Ljava/lang/String;)Z
    .locals 1
    .param p1, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 1600
    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fLocale:Ljava/util/Locale;

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
    .line 979
    const-string v0, "http://apache.org/xml/properties/locale"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 982
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

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

    .line 792
    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fParseInProgress:Z

    if-eqz v1, :cond_0

    .line 794
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    const-string v2, "FWK005 parse may not be called while parsing."

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 796
    :cond_0
    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fParseInProgress:Z

    .line 799
    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    .line 800
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/parsers/XML11Configuration;->parse(Z)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fParseInProgress:Z

    .line 820
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->cleanup()V

    .line 823
    return-void

    .line 801
    :catch_0
    move-exception v0

    .line 804
    .local v0, "ex":Lmf/org/apache/xerces/xni/XNIException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 817
    .end local v0    # "ex":Lmf/org/apache/xerces/xni/XNIException;
    :catchall_0
    move-exception v1

    .line 818
    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fParseInProgress:Z

    .line 820
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->cleanup()V

    .line 821
    throw v1

    .line 805
    :catch_1
    move-exception v0

    .line 808
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    throw v0

    .line 809
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 812
    .local v0, "ex":Ljava/lang/RuntimeException;
    throw v0

    .line 813
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v0

    .line 816
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

    .line 828
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    if-eqz v3, :cond_0

    .line 830
    :try_start_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->reset()V

    .line 831
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fVersionDetector:Lmf/org/apache/xerces/impl/XMLVersionDetector;

    invoke-virtual {v3, p0}, Lmf/org/apache/xerces/impl/XMLVersionDetector;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 832
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->resetCommon()V

    .line 834
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fVersionDetector:Lmf/org/apache/xerces/impl/XMLVersionDetector;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLVersionDetector;->determineDocVersion(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)S

    move-result v1

    .line 836
    .local v1, "version":S
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 837
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->configurePipeline()V

    .line 838
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->reset()V

    .line 852
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fConfigUpdated:Z

    .line 855
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fVersionDetector:Lmf/org/apache/xerces/impl/XMLVersionDetector;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    check-cast v2, Lmf/org/apache/xerces/impl/XMLEntityHandler;

    invoke-virtual {v3, v2, v1}, Lmf/org/apache/xerces/impl/XMLVersionDetector;->startDocumentParsing(Lmf/org/apache/xerces/impl/XMLEntityHandler;S)V

    .line 856
    const/4 v2, 0x0

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 877
    .end local v1    # "version":S
    :cond_0
    :try_start_1
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-interface {v2, p1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;->scanDocument(Z)Z
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move-result v2

    :cond_1
    return v2

    .line 841
    .restart local v1    # "version":S
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 842
    :try_start_2
    invoke-direct {p0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->initXML11Components()V

    .line 843
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->configureXML11Pipeline()V

    .line 844
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->resetXML11()V
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 857
    .end local v1    # "version":S
    :catch_0
    move-exception v0

    .line 860
    .local v0, "ex":Lmf/org/apache/xerces/xni/XNIException;
    throw v0

    .line 861
    .end local v0    # "ex":Lmf/org/apache/xerces/xni/XNIException;
    :catch_1
    move-exception v0

    .line 864
    .local v0, "ex":Ljava/io/IOException;
    throw v0

    .line 865
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 868
    .local v0, "ex":Ljava/lang/RuntimeException;
    throw v0

    .line 869
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v0

    .line 872
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v2, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 878
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 881
    .local v0, "ex":Lmf/org/apache/xerces/xni/XNIException;
    throw v0

    .line 882
    .end local v0    # "ex":Lmf/org/apache/xerces/xni/XNIException;
    :catch_5
    move-exception v0

    .line 885
    .local v0, "ex":Ljava/io/IOException;
    throw v0

    .line 886
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 889
    .local v0, "ex":Ljava/lang/RuntimeException;
    throw v0

    .line 890
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_7
    move-exception v0

    .line 893
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
    .line 1036
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1037
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 1042
    return-void

    .line 1038
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 1039
    .local v0, "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-interface {v0, p0}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 1037
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
    .line 1049
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1050
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 1055
    return-void

    .line 1051
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 1052
    .local v0, "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-interface {v0, p0}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 1050
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
    .line 1063
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1064
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 1069
    return-void

    .line 1065
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 1066
    .local v0, "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-interface {v0, p0}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 1064
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V
    .locals 0
    .param p1, "handler"    # Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    .prologue
    .line 708
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    .line 709
    return-void
.end method

.method public setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V
    .locals 0
    .param p1, "dtdHandler"    # Lmf/org/apache/xerces/xni/XMLDTDHandler;

    .prologue
    .line 694
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    .line 695
    return-void
.end method

.method public setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 2
    .param p1, "documentHandler"    # Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    .prologue
    .line 674
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    .line 675
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 677
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 681
    :cond_0
    return-void
.end method

.method public setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    .locals 2
    .param p1, "resolver"    # Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .prologue
    .line 724
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    return-void
.end method

.method public setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V
    .locals 2
    .param p1, "errorHandler"    # Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    .prologue
    .line 757
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
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
    .line 935
    const/4 v3, 0x1

    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fConfigUpdated:Z

    .line 937
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 938
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 943
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 944
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_1

    .line 950
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 951
    const/4 v2, 0x0

    :goto_2
    if-lt v2, v1, :cond_2

    .line 961
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    .line 963
    return-void

    .line 939
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 940
    .local v0, "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setFeature(Ljava/lang/String;Z)V

    .line 938
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 945
    .end local v0    # "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 946
    .restart local v0    # "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setFeature(Ljava/lang/String;Z)V

    .line 944
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 952
    .end local v0    # "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 954
    .restart local v0    # "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 956
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
    .line 651
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .line 653
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
    .line 664
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fLocale:Ljava/util/Locale;

    .line 665
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    .line 666
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
    .line 993
    const/4 v3, 0x1

    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fConfigUpdated:Z

    .line 994
    const-string v3, "http://apache.org/xml/properties/locale"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p2

    .line 995
    check-cast v3, Ljava/util/Locale;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setLocale(Ljava/util/Locale;)V

    .line 998
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 999
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 1004
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1005
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_2

    .line 1010
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1011
    const/4 v2, 0x0

    :goto_2
    if-lt v2, v1, :cond_3

    .line 1022
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1024
    return-void

    .line 1000
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 1001
    .local v0, "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 999
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1006
    .end local v0    # "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 1007
    .restart local v0    # "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1005
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1012
    .end local v0    # "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XML11Configuration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 1014
    .restart local v0    # "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1011
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1016
    :catch_0
    move-exception v3

    goto :goto_3
.end method
