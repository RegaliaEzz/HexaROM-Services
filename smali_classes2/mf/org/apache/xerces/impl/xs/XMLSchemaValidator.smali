.class public Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
.super Ljava/lang/Object;
.source "XMLSchemaValidator.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;
.implements Lmf/org/apache/xerces/xni/parser/XMLDocumentFilter;
.implements Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;
.implements Lmf/org/apache/xerces/impl/RevalidationHandler;
.implements Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$UniqueValueStore;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;
    }
.end annotation


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field private static final BUFFER_SIZE:I = 0x14

.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field private static final DEBUG:Z = false

.field private static final DEBUG_NORMALIZATION:Z = false

.field protected static final DYNAMIC_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field private static final EMPTY_TABLE:Ljava/util/Hashtable;

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field public static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field public static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field protected static final IDENTITY_CONSTRAINT_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/identity-constraint-checking"

.field protected static final ID_CONSTRAINT_NUM:I = 0x1

.field protected static final ID_IDREF_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/id-idref-checking"

.field protected static final IGNORE_XSI_TYPE:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

.field static final INC_STACK_SIZE:I = 0x8

.field static final INITIAL_STACK_SIZE:I = 0x8

.field protected static final JAXP_SCHEMA_LANGUAGE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final ROOT_ELEMENT_DECL:Ljava/lang/String; = "http://apache.org/xml/properties/validation/schema/root-element-declaration"

.field protected static final ROOT_TYPE_DEF:Ljava/lang/String; = "http://apache.org/xml/properties/validation/schema/root-type-definition"

.field protected static final SCHEMA_AUGMENT_PSVI:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final SCHEMA_DV_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

.field protected static final SCHEMA_ELEMENT_DEFAULT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/element-default"

.field protected static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final SCHEMA_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-schemaLocation"

.field protected static final SCHEMA_NONS_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

.field protected static final SCHEMA_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field protected static final STANDARD_URI_CONFORMANT_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/standard-uri-conformant"

.field public static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field protected static final UNPARSED_ENTITY_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/unparsed-entity-checking"

.field protected static final USE_GRAMMAR_POOL_ONLY:Ljava/lang/String; = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

.field protected static final VALIDATE_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/validate-annotations"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field public static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field static final XSI_NIL:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

.field static final XSI_NONAMESPACESCHEMALOCATION:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

.field static final XSI_SCHEMALOCATION:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

.field static final XSI_TYPE:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;


# instance fields
.field private fAppendBuffer:Z

.field protected fAugPSVI:Z

.field protected final fAugmentations:Lmf/org/apache/xerces/util/AugmentationsImpl;

.field private final fBuffer:Ljava/lang/StringBuffer;

.field private final fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

.field private fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

.field private fCMStateStack:[[I

.field private fCurrCMState:[I

.field private fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

.field private fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

.field protected fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

.field private fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

.field protected fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

.field protected fDoValidation:Z

.field protected fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

.field protected fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

.field protected fDynamicValidation:Z

.field private fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

.field private fElementDepth:I

.field private final fEmptyXMLStr:Lmf/org/apache/xerces/xni/XMLString;

.field protected fEntityRef:Z

.field protected fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

.field protected final fExpandedLocationPairs:Ljava/util/Hashtable;

.field protected fExternalNoNamespaceSchema:Ljava/lang/String;

.field protected fExternalSchemas:Ljava/lang/String;

.field private fFirstChunk:Z

.field protected fFullChecking:Z

.field private final fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

.field protected fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field private fIDCChecking:Z

.field protected fIdConstraint:Z

.field private fIgnoreXSITypeDepth:I

.field protected fInCDATA:Z

.field protected fJaxpSchemaSource:Ljava/lang/Object;

.field protected final fLocationPairs:Ljava/util/Hashtable;

.field private fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

.field protected fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

.field private fNFullValidationDepth:I

.field private fNNoneValidationDepth:I

.field protected fNamespaceGrowth:Z

.field private fNil:Z

.field private fNilStack:[Z

.field protected fNormalizeData:Z

.field private final fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

.field private fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

.field private fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

.field private final fQNameDV:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

.field private fRootElementDeclQName:Ljavax/xml/namespace/QName;

.field private fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

.field private fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

.field private fRootTypeQName:Ljavax/xml/namespace/QName;

.field private fSawCharacters:Z

.field private fSawText:Z

.field private fSawTextStack:[Z

.field protected fSchemaDynamicValidation:Z

.field protected fSchemaElementDefault:Z

.field private final fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

.field private fSchemaType:Ljava/lang/String;

.field private fSkipValidationDepth:I

.field private fState4ApplyDefault:Lmf/org/apache/xerces/impl/validation/ValidationState;

.field private fState4XsiType:Lmf/org/apache/xerces/impl/validation/ValidationState;

.field private fStrictAssess:Z

.field private fStrictAssessStack:[Z

.field private fStringContent:[Z

.field private fSubElement:Z

.field private fSubElementStack:[Z

.field private final fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private final fTempQName:Lmf/org/apache/xerces/xni/QName;

.field private fTrailing:Z

.field private fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

.field private fUnionType:Z

.field protected final fUnparsedLocations:Ljava/util/ArrayList;

.field protected fUseGrammarPoolOnly:Z

.field private fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

.field protected fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

.field private fValidationRoot:Ljava/lang/String;

.field protected fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

.field protected fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

.field private fWhiteSpace:S

.field protected final fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

.field protected final fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

.field private final nodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xb

    .line 261
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    .line 262
    const-string v1, "http://xml.org/sax/features/validation"

    aput-object v1, v0, v4

    .line 263
    const-string v1, "http://apache.org/xml/features/validation/schema"

    aput-object v1, v0, v5

    .line 264
    const-string v1, "http://apache.org/xml/features/validation/dynamic"

    aput-object v1, v0, v6

    .line 265
    const-string v1, "http://apache.org/xml/features/validation/schema-full-checking"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    .line 266
    const-string v2, "http://apache.org/xml/features/allow-java-encodings"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 267
    const-string v2, "http://apache.org/xml/features/continue-after-fatal-error"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 268
    const-string v2, "http://apache.org/xml/features/standard-uri-conformant"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 269
    const-string v2, "http://apache.org/xml/features/generate-synthetic-annotations"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 270
    const-string v2, "http://apache.org/xml/features/validate-annotations"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 271
    const-string v2, "http://apache.org/xml/features/honour-all-schemaLocations"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 272
    const-string v2, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    aput-object v2, v0, v1

    .line 273
    const-string v1, "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

    aput-object v1, v0, v3

    const/16 v1, 0xc

    .line 274
    const-string v2, "http://apache.org/xml/features/validation/id-idref-checking"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 275
    const-string v2, "http://apache.org/xml/features/validation/identity-constraint-checking"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 276
    const-string v2, "http://apache.org/xml/features/validation/unparsed-entity-checking"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 277
    const-string v2, "http://apache.org/xml/features/namespace-growth"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 278
    const-string v2, "http://apache.org/xml/features/internal/tolerate-duplicates"

    aput-object v2, v0, v1

    .line 260
    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    .line 283
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Boolean;

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    .line 314
    new-array v0, v3, [Ljava/lang/String;

    .line 315
    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v1, v0, v4

    .line 316
    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v1, v0, v5

    .line 317
    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    aput-object v1, v0, v6

    .line 318
    const-string v1, "http://apache.org/xml/properties/internal/validation-manager"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    .line 319
    const-string v2, "http://apache.org/xml/properties/schema/external-schemaLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 320
    const-string v2, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 321
    const-string v2, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 322
    const-string v2, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 323
    const-string v2, "http://apache.org/xml/properties/validation/schema/root-type-definition"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 324
    const-string v2, "http://apache.org/xml/properties/validation/schema/root-element-declaration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 325
    const-string v2, "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

    aput-object v2, v0, v1

    .line 313
    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 330
    new-array v0, v3, [Ljava/lang/Object;

    .line 329
    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    .line 338
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_TYPE:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 339
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_NIL:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 340
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_SCHEMALOCATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_SCHEMALOCATION:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 341
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NONAMESPACESCHEMALOCATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_NONAMESPACESCHEMALOCATION:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 344
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->EMPTY_TABLE:Ljava/util/Hashtable;

    .line 1156
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v1, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    new-instance v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    .line 358
    new-instance v0, Lmf/org/apache/xerces/util/AugmentationsImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/AugmentationsImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugmentations:Lmf/org/apache/xerces/util/AugmentationsImpl;

    .line 364
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z

    .line 365
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaDynamicValidation:Z

    .line 366
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    .line 367
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFullChecking:Z

    .line 368
    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    .line 369
    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z

    .line 370
    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    .line 371
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    .line 372
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    .line 375
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z

    .line 378
    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaType:Ljava/lang/String;

    .line 381
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityRef:Z

    .line 382
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fInCDATA:Z

    .line 505
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;-><init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    .line 511
    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    .line 512
    new-instance v0, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    .line 516
    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    .line 517
    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;

    .line 520
    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fJaxpSchemaSource:Ljava/lang/Object;

    .line 523
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    .line 524
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    .line 525
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExpandedLocationPairs:Ljava/util/Hashtable;

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnparsedLocations:Ljava/util/ArrayList;

    .line 1154
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0, v7, v5, v1}, Lmf/org/apache/xerces/xni/XMLString;-><init>([CII)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEmptyXMLStr:Lmf/org/apache/xerces/xni/XMLString;

    .line 1157
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    .line 1158
    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFirstChunk:Z

    .line 1160
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTrailing:Z

    .line 1161
    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    .line 1162
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    .line 1165
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    .line 1166
    new-instance v0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;-><init>(Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    .line 1172
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const-string v1, "QName"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fQNameDV:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 1174
    new-instance v0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->nodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    .line 1177
    new-instance v0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->nodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;-><init>(Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    .line 1181
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    .line 1182
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 1183
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    .line 1184
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    .line 1185
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    .line 1181
    invoke-direct {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;-><init>(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    .line 1209
    new-array v0, v6, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    .line 1215
    new-array v0, v6, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 1221
    new-array v0, v6, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    .line 1227
    new-array v0, v6, [Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    .line 1233
    new-array v0, v6, [Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 1239
    new-array v0, v6, [Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    .line 1245
    new-array v0, v6, [[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    .line 1248
    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    .line 1251
    new-array v0, v6, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    .line 1254
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    .line 1257
    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    .line 1260
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    .line 1263
    new-array v0, v6, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    .line 1266
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    .line 1269
    new-array v0, v6, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    .line 1272
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    .line 1275
    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    .line 1276
    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 1279
    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    .line 1280
    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 1287
    new-instance v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 1291
    new-instance v0, Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/validation/ValidationState;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4XsiType:Lmf/org/apache/xerces/impl/validation/ValidationState;

    .line 1295
    new-instance v0, Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/validation/ValidationState;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4ApplyDefault:Lmf/org/apache/xerces/impl/validation/ValidationState;

    .line 1313
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    .line 1316
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;-><init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    .line 1324
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4XsiType:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setExtraChecking(Z)V

    .line 1325
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4ApplyDefault:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setFacetChecking(Z)V

    .line 1327
    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;)I
    .locals 1

    .prologue
    .line 1203
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    return v0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 0

    .prologue
    .line 1641
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->activateSelectorFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    return-void
.end method

.method private activateSelectorFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 4
    .param p1, "ic"    # Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    .prologue
    .line 1642
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getSelector()Lmf/org/apache/xerces/impl/xs/identity/Selector;

    move-result-object v2

    .line 1643
    .local v2, "selector":Lmf/org/apache/xerces/impl/xs/identity/Selector;
    move-object v0, p0

    .line 1644
    .local v0, "activator":Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;
    if-nez v2, :cond_0

    .line 1649
    :goto_0
    return-void

    .line 1646
    :cond_0
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-virtual {v2, v0, v3}, Lmf/org/apache/xerces/impl/xs/identity/Selector;->createMatcher(Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v1

    .line 1647
    .local v1, "matcher":Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->addMatcher(Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;)V

    .line 1648
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->startDocumentFragment()V

    goto :goto_0
.end method

.method private expectedStr(Ljava/util/Vector;)Ljava/lang/String;
    .locals 4
    .param p1, "expected"    # Ljava/util/Vector;

    .prologue
    .line 3580
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "{"

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3581
    .local v1, "ret":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    .line 3582
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 3587
    const/16 v3, 0x7d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3588
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 3583
    :cond_0
    if-lez v0, :cond_1

    .line 3584
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3585
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3582
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private hasSchemaComponent(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;SLmf/org/apache/xerces/xni/QName;)Z
    .locals 4
    .param p1, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "contextType"    # S
    .param p3, "triggeringComponent"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2736
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 2737
    iget-object v0, p3, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 2738
    .local v0, "localName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 2739
    packed-switch p2, :pswitch_data_0

    .end local v0    # "localName":Ljava/lang/String;
    :cond_0
    move v1, v2

    .line 2749
    :cond_1
    :goto_0
    return v1

    .line 2741
    .restart local v0    # "localName":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getElementDeclaration(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSElementDeclaration;

    move-result-object v3

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 2743
    :pswitch_1
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getAttributeDeclaration(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    move-result-object v3

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 2745
    :pswitch_2
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTypeDefinition(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v3

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 2739
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private normalizeWhitespace(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "collapse"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1852
    move v3, p2

    .line 1854
    .local v3, "skipSpace":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1857
    .local v2, "size":I
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v4, v4

    if-ge v4, v2, :cond_1

    .line 1858
    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    new-array v5, v2, [C

    iput-object v5, v4, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    .line 1860
    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v6, v4, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .line 1861
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v6, v4, Lmf/org/apache/xerces/xni/XMLString;->length:I

    .line 1863
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_3

    .line 1876
    if-eqz v3, :cond_2

    .line 1877
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v4, v4, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-eqz v4, :cond_2

    .line 1879
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v5, v4, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lmf/org/apache/xerces/xni/XMLString;->length:I

    .line 1881
    :cond_2
    return-void

    .line 1864
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1865
    .local v0, "c":C
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1866
    if-nez v3, :cond_4

    .line 1868
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v6, v5, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v5, Lmf/org/apache/xerces/xni/XMLString;->length:I

    const/16 v5, 0x20

    aput-char v5, v4, v6

    .line 1869
    move v3, p2

    .line 1863
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1872
    :cond_5
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v6, v5, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v5, Lmf/org/apache/xerces/xni/XMLString;->length:I

    aput-char v0, v4, v6

    .line 1873
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;Z)V
    .locals 11
    .param p1, "value"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "collapse"    # Z

    .prologue
    .line 1781
    move v5, p2

    .line 1782
    .local v5, "skipSpace":Z
    const/4 v3, 0x0

    .line 1783
    .local v3, "sawNonWS":Z
    const/4 v2, 0x0

    .line 1784
    .local v2, "leading":Z
    const/4 v6, 0x0

    .line 1786
    .local v6, "trailing":Z
    iget v7, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v8, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int v4, v7, v8

    .line 1789
    .local v4, "size":I
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    if-eqz v7, :cond_0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v7, v7

    iget v8, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v8, v8, 0x1

    if-ge v7, v8, :cond_1

    .line 1790
    :cond_0
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v8, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v8, v8, 0x1

    new-array v8, v8, [C

    iput-object v8, v7, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    .line 1793
    :cond_1
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v8, 0x1

    iput v8, v7, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .line 1794
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v8, 0x1

    iput v8, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    .line 1796
    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .local v1, "i":I
    :goto_0
    if-lt v1, v4, :cond_6

    .line 1814
    if-eqz v5, :cond_2

    .line 1815
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v7, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_a

    .line 1817
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v8, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    .line 1818
    const/4 v6, 0x1

    .line 1826
    :cond_2
    :goto_1
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v7, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    .line 1827
    iget-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFirstChunk:Z

    if-nez v7, :cond_3

    iget-short v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 1828
    iget-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTrailing:Z

    if-eqz v7, :cond_b

    .line 1831
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v8, 0x0

    iput v8, v7, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .line 1832
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    const/4 v8, 0x0

    const/16 v9, 0x20

    aput-char v9, v7, v8

    .line 1843
    :cond_3
    :goto_2
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v8, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v9, v9, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    sub-int/2addr v8, v9

    iput v8, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    .line 1845
    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTrailing:Z

    .line 1847
    if-nez v6, :cond_4

    if-eqz v3, :cond_5

    .line 1848
    :cond_4
    const/4 v7, 0x0

    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFirstChunk:Z

    .line 1849
    :cond_5
    return-void

    .line 1797
    :cond_6
    iget-object v7, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v0, v7, v1

    .line 1798
    .local v0, "c":C
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1799
    if-nez v5, :cond_7

    .line 1801
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v9, v8, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Lmf/org/apache/xerces/xni/XMLString;->length:I

    const/16 v8, 0x20

    aput-char v8, v7, v9

    .line 1802
    move v5, p2

    .line 1804
    :cond_7
    if-nez v3, :cond_8

    .line 1806
    const/4 v2, 0x1

    .line 1796
    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1809
    :cond_9
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v9, v8, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Lmf/org/apache/xerces/xni/XMLString;->length:I

    aput-char v0, v7, v9

    .line 1810
    const/4 v5, 0x0

    .line 1811
    const/4 v3, 0x1

    goto :goto_3

    .line 1819
    .end local v0    # "c":C
    :cond_a
    if-eqz v2, :cond_2

    iget-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFirstChunk:Z

    if-nez v7, :cond_2

    .line 1822
    const/4 v6, 0x1

    goto :goto_1

    .line 1833
    :cond_b
    if-eqz v2, :cond_3

    .line 1836
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v8, 0x0

    iput v8, v7, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .line 1837
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    const/4 v8, 0x0

    const/16 v9, 0x20

    aput-char v9, v7, v8

    goto :goto_2
.end method

.method private setLocationHints(Lmf/org/apache/xerces/impl/xs/XSDDescription;[Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 4
    .param p1, "desc"    # Lmf/org/apache/xerces/impl/xs/XSDDescription;
    .param p2, "locations"    # [Ljava/lang/String;
    .param p3, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    const/4 v3, 0x0

    .line 2753
    array-length v0, p2

    .line 2754
    .local v0, "length":I
    if-nez p3, :cond_0

    .line 2755
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, v1, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    .line 2756
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    invoke-static {p2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2761
    :goto_0
    return-void

    .line 2759
    :cond_0
    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setLocationHints(Lmf/org/apache/xerces/impl/xs/XSDDescription;[Ljava/lang/String;Lmf/org/apache/xerces/xs/StringList;)V

    goto :goto_0
.end method

.method private setLocationHints(Lmf/org/apache/xerces/impl/xs/XSDDescription;[Ljava/lang/String;Lmf/org/apache/xerces/xs/StringList;)V
    .locals 8
    .param p1, "desc"    # Lmf/org/apache/xerces/impl/xs/XSDDescription;
    .param p2, "locations"    # [Ljava/lang/String;
    .param p3, "docLocations"    # Lmf/org/apache/xerces/xs/StringList;

    .prologue
    const/4 v7, 0x0

    .line 2764
    array-length v4, p2

    .line 2765
    .local v4, "length":I
    new-array v2, v4, [Ljava/lang/String;

    .line 2766
    .local v2, "hints":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 2768
    .local v0, "counter":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v1, v0

    .end local v0    # "counter":I
    .local v1, "counter":I
    :goto_0
    if-lt v3, v4, :cond_1

    .line 2774
    if-lez v1, :cond_0

    .line 2775
    if-ne v1, v4, :cond_2

    .line 2776
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iput-object v2, v5, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    .line 2783
    :cond_0
    :goto_1
    return-void

    .line 2769
    :cond_1
    aget-object v5, p2, v3

    invoke-interface {p3, v5}, Lmf/org/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2770
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "counter":I
    .restart local v0    # "counter":I
    aget-object v5, p2, v3

    aput-object v5, v2, v1

    .line 2768
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    .end local v0    # "counter":I
    .restart local v1    # "counter":I
    goto :goto_0

    .line 2779
    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    new-array v6, v1, [Ljava/lang/String;

    iput-object v6, v5, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    .line 2780
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    invoke-static {v2, v7, v5, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_3
    move v0, v1

    .end local v1    # "counter":I
    .restart local v0    # "counter":I
    goto :goto_2
.end method


# virtual methods
.method public activateField(Lmf/org/apache/xerces/impl/xs/identity/Field;I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;
    .locals 4
    .param p1, "field"    # Lmf/org/apache/xerces/impl/xs/identity/Field;
    .param p2, "initialDepth"    # I

    .prologue
    .line 1620
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/Field;->getIdentityConstraint()Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->getValueStoreFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    move-result-object v1

    .line 1621
    .local v1, "valueStore":Lmf/org/apache/xerces/impl/xs/identity/ValueStore;
    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/impl/xs/identity/Field;->createMatcher(Lmf/org/apache/xerces/impl/xs/identity/ValueStore;)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v0

    .line 1622
    .local v0, "matcher":Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->addMatcher(Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;)V

    .line 1623
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->startDocumentFragment()V

    .line 1624
    return-object v0
.end method

.method addDefaultAttributes(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V
    .locals 22
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "attrGrp"    # Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    .prologue
    .line 3194
    invoke-virtual/range {p3 .. p3}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v7

    .line 3195
    .local v7, "attrUses":Lmf/org/apache/xerces/xs/XSObjectList;
    invoke-interface {v7}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v17

    .line 3203
    .local v17, "useCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move/from16 v0, v17

    if-lt v14, v0, :cond_0

    .line 3260
    return-void

    .line 3205
    :cond_0
    invoke-interface {v7, v14}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v12

    check-cast v12, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    .line 3206
    .local v12, "currUse":Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    iget-object v11, v12, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 3208
    .local v11, "currDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    iget-short v10, v12, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    .line 3209
    .local v10, "constType":S
    iget-object v13, v12, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 3210
    .local v13, "defaultValue":Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    if-nez v10, :cond_1

    .line 3211
    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v10

    .line 3212
    iget-object v13, v11, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 3215
    :cond_1
    iget-object v0, v11, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v11, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_4

    const/4 v15, 0x1

    .line 3221
    .local v15, "isSpecified":Z
    :goto_1
    iget-short v0, v12, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 3222
    if-nez v15, :cond_2

    .line 3224
    const-string v18, "cvc-complex-type.4"

    .line 3225
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    const/16 v20, 0x1

    iget-object v0, v11, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    .line 3223
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3228
    :cond_2
    if-nez v15, :cond_3

    if-eqz v10, :cond_3

    .line 3230
    new-instance v4, Lmf/org/apache/xerces/xni/QName;

    const/16 v18, 0x0

    iget-object v0, v11, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v11, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v11, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v4, v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3231
    .local v4, "attName":Lmf/org/apache/xerces/xni/QName;
    if-eqz v13, :cond_5

    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v16

    .line 3233
    .local v16, "normalized":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p2

    instance-of v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v8, p2

    .line 3234
    check-cast v8, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    .line 3235
    .local v8, "attrs":Lmf/org/apache/xerces/util/XMLAttributesImpl;
    invoke-virtual {v8}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v5

    .line 3236
    .local v5, "attrIndex":I
    const-string v18, "CDATA"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v8, v4, v0, v1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    .line 3242
    .end local v8    # "attrs":Lmf/org/apache/xerces/util/XMLAttributesImpl;
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 3245
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v9

    .line 3246
    .local v9, "augs":Lmf/org/apache/xerces/xni/Augmentations;
    new-instance v6, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;

    invoke-direct {v6}, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;-><init>()V

    .line 3247
    .local v6, "attrPSVI":Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;
    const-string v18, "ATTRIBUTE_PSVI"

    move-object/from16 v0, v18

    invoke-interface {v9, v0, v6}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3249
    iput-object v11, v6, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    .line 3250
    iget-object v0, v11, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v6, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 3251
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lmf/org/apache/xerces/xs/XSValue;)V

    .line 3252
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationRoot:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v6, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidationContext:Ljava/lang/String;

    .line 3253
    const/16 v18, 0x2

    move/from16 v0, v18

    iput-short v0, v6, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidity:S

    .line 3254
    const/16 v18, 0x2

    move/from16 v0, v18

    iput-short v0, v6, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidationAttempted:S

    .line 3255
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v6, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fSpecified:Z

    .line 3203
    .end local v4    # "attName":Lmf/org/apache/xerces/xni/QName;
    .end local v5    # "attrIndex":I
    .end local v6    # "attrPSVI":Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;
    .end local v9    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    .end local v16    # "normalized":Ljava/lang/String;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 3215
    .end local v15    # "isSpecified":Z
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 3231
    .restart local v4    # "attName":Lmf/org/apache/xerces/xni/QName;
    .restart local v15    # "isSpecified":Z
    :cond_5
    const-string v16, ""

    goto :goto_2

    .line 3239
    .restart local v16    # "normalized":Ljava/lang/String;
    :cond_6
    const-string v18, "CDATA"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-interface {v0, v4, v1, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .restart local v5    # "attrIndex":I
    goto :goto_3
.end method

.method public characterData(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)Z
    .locals 9
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 971
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-nez v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    .line 978
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v3, :cond_4

    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    const/4 v6, -0x1

    if-eq v3, v6, :cond_4

    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    if-eqz v3, :cond_4

    .line 980
    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    if-ne v3, v8, :cond_0

    move v4, v5

    :cond_0
    invoke-direct {p0, p1, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->normalizeWhitespace(Ljava/lang/String;Z)V

    .line 981
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v6, v6, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v7, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v3, v4, v6, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 989
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 990
    .local v0, "allWhiteSpace":Z
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v3, :cond_2

    .line 991
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_2

    .line 992
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 993
    .local v1, "ctype":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    iget-short v3, v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne v3, v8, :cond_2

    .line 995
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_5

    .line 1005
    .end local v1    # "ctype":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .end local v2    # "i":I
    :cond_2
    :goto_3
    return v0

    .end local v0    # "allWhiteSpace":Z
    :cond_3
    move v3, v5

    .line 971
    goto :goto_0

    .line 983
    :cond_4
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    if-eqz v3, :cond_1

    .line 984
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 996
    .restart local v0    # "allWhiteSpace":Z
    .restart local v1    # "ctype":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .restart local v2    # "i":I
    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 997
    const/4 v0, 0x0

    .line 998
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    goto :goto_3

    .line 995
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 842
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleCharacters(Lmf/org/apache/xerces/xni/XMLString;)Lmf/org/apache/xerces/xni/XMLString;

    move-result-object p1

    .line 844
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 845
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    if-eqz v0, :cond_1

    .line 850
    if-eqz p2, :cond_0

    .line 851
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEmptyXMLStr:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method checkElementMatchesRootElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/xni/QName;)V
    .locals 4
    .param p1, "rootElementDecl"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .param p2, "element"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    .line 3564
    iget-object v0, p2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 3565
    iget-object v0, p2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    if-eq v0, v1, :cond_1

    .line 3566
    :cond_0
    const-string v0, "cvc-elt.1.b"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3568
    :cond_1
    return-void
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1086
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1090
    :cond_0
    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "rootElement"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 771
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 775
    :cond_0
    return-void
.end method

.method public elementDefault(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1010
    return-void
.end method

.method elementLocallyValidComplexType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "textContent"    # Ljava/lang/Object;

    .prologue
    .line 3442
    const/4 v1, 0x0

    .line 3443
    .local v1, "actualValue":Ljava/lang/Object;
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 3449
    .local v3, "ctype":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    iget-boolean v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    if-nez v10, :cond_3

    .line 3451
    iget-short v10, v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-nez v10, :cond_4

    .line 3452
    iget-boolean v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-nez v10, :cond_0

    iget-boolean v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-eqz v10, :cond_4

    .line 3453
    :cond_0
    const-string v10, "cvc-complex-type.2.1"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3479
    .end local v1    # "actualValue":Ljava/lang/Object;
    :cond_1
    :goto_0
    iget-short v10, v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    const/4 v11, 0x2

    if-eq v10, v11, :cond_2

    .line 3480
    iget-short v10, v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    const/4 v11, 0x3

    if-ne v10, v11, :cond_3

    .line 3486
    :cond_2
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    if-ltz v10, :cond_3

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v11, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    invoke-interface {v10, v11}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->endContentModel([I)Z

    move-result v10

    if-nez v10, :cond_3

    .line 3487
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v11, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    invoke-interface {v10, v11}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->whatCanGoHere([I)Ljava/util/Vector;

    move-result-object v10

    invoke-direct {p0, v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->expectedStr(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v6

    .line 3488
    .local v6, "expected":Ljava/lang/String;
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v11, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    invoke-interface {v10, v11}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->occurenceInfo([I)[I

    move-result-object v8

    .line 3489
    .local v8, "occurenceInfo":[I
    if-eqz v8, :cond_b

    .line 3490
    const/4 v10, 0x0

    aget v7, v8, v10

    .line 3491
    .local v7, "minOccurs":I
    const/4 v10, 0x2

    aget v2, v8, v10

    .line 3493
    .local v2, "count":I
    if-ge v2, v7, :cond_a

    .line 3494
    sub-int v9, v7, v2

    .line 3495
    .local v9, "required":I
    const/4 v10, 0x1

    if-le v9, v10, :cond_9

    .line 3496
    const-string v10, "cvc-complex-type.2.4.j"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 3497
    iget-object v13, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    const/4 v14, 0x3

    aget v14, v8, v14

    invoke-interface {v13, v14}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->getTermName(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 3496
    invoke-virtual {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3514
    .end local v2    # "count":I
    .end local v6    # "expected":Ljava/lang/String;
    .end local v7    # "minOccurs":I
    .end local v8    # "occurenceInfo":[I
    .end local v9    # "required":I
    :cond_3
    :goto_1
    return-object v1

    .line 3456
    .restart local v1    # "actualValue":Ljava/lang/Object;
    :cond_4
    iget-short v10, v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    .line 3457
    iget-boolean v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-eqz v10, :cond_5

    .line 3458
    const-string v10, "cvc-complex-type.2.2"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3459
    :cond_5
    iget-object v4, v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 3461
    .local v4, "dv":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    :try_start_0
    iget-boolean v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v10, :cond_6

    iget-boolean v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    if-eqz v10, :cond_7

    .line 3462
    :cond_6
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setNormalizationRequired(Z)V

    .line 3464
    :cond_7
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    iget-object v11, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v0, p2

    invoke-interface {v4, v0, v10, v11}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_0

    .line 3465
    :catch_0
    move-exception v5

    .line 3466
    .local v5, "e":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3467
    const-string v10, "cvc-complex-type.2.2"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3473
    .end local v4    # "dv":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .end local v5    # "e":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    :cond_8
    iget-short v10, v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 3474
    iget-boolean v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    if-eqz v10, :cond_1

    .line 3475
    const-string v10, "cvc-complex-type.2.3"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3500
    .end local v1    # "actualValue":Ljava/lang/Object;
    .restart local v2    # "count":I
    .restart local v6    # "expected":Ljava/lang/String;
    .restart local v7    # "minOccurs":I
    .restart local v8    # "occurenceInfo":[I
    .restart local v9    # "required":I
    :cond_9
    const-string v10, "cvc-complex-type.2.4.i"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 3501
    iget-object v13, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    const/4 v14, 0x3

    aget v14, v8, v14

    invoke-interface {v13, v14}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->getTermName(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 3500
    invoke-virtual {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 3505
    .end local v9    # "required":I
    :cond_a
    const-string v10, "cvc-complex-type.2.4.b"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v6, v11, v12

    invoke-virtual {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 3509
    .end local v2    # "count":I
    .end local v7    # "minOccurs":I
    :cond_b
    const-string v10, "cvc-complex-type.2.4.b"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v6, v11, v12

    invoke-virtual {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method elementLocallyValidType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "textContent"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3407
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v3, :cond_1

    .line 3408
    const/4 v2, 0x0

    .line 3438
    :cond_0
    :goto_0
    return-object v2

    .line 3410
    :cond_1
    const/4 v2, 0x0

    .line 3414
    .local v2, "retValue":Ljava/lang/Object;
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5

    .line 3416
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-eqz v3, :cond_2

    .line 3417
    const-string v3, "cvc-type.3.1.2"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3419
    :cond_2
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    if-nez v3, :cond_0

    .line 3420
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 3422
    .local v0, "dv":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    :try_start_0
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    if-eqz v3, :cond_4

    .line 3423
    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setNormalizationRequired(Z)V

    .line 3425
    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-interface {v0, p2, v3, v4}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 3426
    :catch_0
    move-exception v1

    .line 3427
    .local v1, "e":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3429
    const-string v3, "cvc-type.3.1.3"

    .line 3430
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v4, v7

    aput-object p2, v4, v6

    .line 3428
    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3435
    .end local v0    # "dv":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .end local v1    # "e":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    :cond_5
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->elementLocallyValidComplexType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 809
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    .line 814
    .local v0, "modifiedAugs":Lmf/org/apache/xerces/xni/Augmentations;
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    .line 817
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    .line 818
    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    .line 821
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_2

    .line 822
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-nez v1, :cond_3

    .line 823
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, p2, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 830
    :cond_2
    :goto_0
    return-void

    .line 825
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, p2, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 826
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 827
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 935
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fInCDATA:Z

    .line 936
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 940
    :cond_0
    return-void
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 951
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleEndDocument()V

    .line 954
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 957
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    .line 959
    return-void
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 894
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    .line 895
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    .line 897
    .local v0, "modifiedAugs":Lmf/org/apache/xerces/xni/Augmentations;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_1

    .line 898
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-nez v1, :cond_2

    .line 899
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 905
    :cond_1
    :goto_0
    return-void

    .line 901
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 902
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method final endElementPSVI(Z[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 6
    .param p1, "root"    # Z
    .param p2, "grammars"    # [Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 2524
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v3, :cond_3

    .line 2525
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    .line 2528
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v4, v3, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSElementDeclaration;

    .line 2529
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v4, v3, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 2530
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iput-object v4, v3, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fNotation:Lmf/org/apache/xerces/xs/XSNotationDeclaration;

    .line 2531
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationRoot:Ljava/lang/String;

    iput-object v4, v3, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationContext:Ljava/lang/String;

    .line 2532
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    iput-boolean v4, v3, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fNil:Z

    .line 2537
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    if-le v3, v4, :cond_4

    .line 2538
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-short v1, v3, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    .line 2552
    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-ne v3, v4, :cond_0

    .line 2553
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    .line 2555
    :cond_0
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-ne v3, v4, :cond_1

    .line 2556
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    .line 2559
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-eqz v3, :cond_2

    .line 2560
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-boolean v2, v3, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fSpecified:Z

    .line 2561
    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lmf/org/apache/xerces/xs/XSValue;)V

    .line 2563
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    if-eqz v3, :cond_7

    .line 2568
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->mergeContext()[Ljava/lang/String;

    move-result-object v0

    .line 2571
    .local v0, "errors":[Ljava/lang/String;
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-object v0, v3, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fErrors:[Ljava/lang/String;

    .line 2573
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    .line 2574
    if-nez v0, :cond_6

    .line 2573
    :goto_1
    iput-short v1, v3, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidity:S

    .line 2584
    .end local v0    # "errors":[Ljava/lang/String;
    :goto_2
    if-eqz p1, :cond_3

    .line 2586
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-object p2, v1, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fGrammars:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 2587
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    const/4 v2, 0x0

    iput-object v2, v1, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fSchemaInformation:Lmf/org/apache/xerces/xs/XSModel;

    .line 2591
    :cond_3
    return-object p3

    .line 2543
    :cond_4
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    if-le v3, v4, :cond_5

    .line 2544
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-short v5, v3, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    goto :goto_0

    .line 2548
    :cond_5
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-short v2, v3, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    goto :goto_0

    .restart local v0    # "errors":[Ljava/lang/String;
    :cond_6
    move v1, v2

    .line 2574
    goto :goto_1

    .line 2577
    .end local v0    # "errors":[Ljava/lang/String;
    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-short v5, v1, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidity:S

    .line 2581
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->popContext()[Ljava/lang/String;

    goto :goto_2
.end method

.method public endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityRef:Z

    .line 1135
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1139
    :cond_0
    return-void
.end method

.method public endValueScopeFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)V
    .locals 2
    .param p1, "identityConstraint"    # Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    .param p2, "initialDepth"    # I

    .prologue
    .line 1635
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v1, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->getValueStoreFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    move-result-object v0

    .line 1636
    .local v0, "valueStore":Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->endValueScope()V

    .line 1638
    return-void
.end method

.method ensureStackCapacity()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1673
    iget v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    array-length v8, v8

    if-ne v7, v8, :cond_0

    .line 1674
    iget v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v6, v7, 0x8

    .line 1675
    .local v6, "newSize":I
    new-array v0, v6, [Z

    .line 1676
    .local v0, "newArrayB":[Z
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    iget v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1677
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    .line 1679
    new-array v2, v6, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 1680
    .local v2, "newArrayE":[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v7, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1681
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 1683
    new-array v0, v6, [Z

    .line 1684
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    iget v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1685
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    .line 1687
    new-array v4, v6, [Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    .line 1688
    .local v4, "newArrayN":[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iget v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1689
    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    .line 1691
    new-array v5, v6, [Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 1692
    .local v5, "newArrayT":[Lmf/org/apache/xerces/xs/XSTypeDefinition;
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v7, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1693
    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 1695
    new-array v1, v6, [Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    .line 1696
    .local v1, "newArrayC":[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1697
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    .line 1699
    new-array v0, v6, [Z

    .line 1700
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    iget v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1701
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    .line 1703
    new-array v0, v6, [Z

    .line 1704
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    iget v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1705
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    .line 1707
    new-array v0, v6, [Z

    .line 1708
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    iget v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1709
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    .line 1711
    new-array v3, v6, [[I

    .line 1712
    .local v3, "newArrayIA":[[I
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    iget v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v7, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1713
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    .line 1716
    .end local v0    # "newArrayB":[Z
    .end local v1    # "newArrayC":[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    .end local v2    # "newArrayE":[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .end local v3    # "newArrayIA":[[I
    .end local v4    # "newArrayN":[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    .end local v5    # "newArrayT":[Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .end local v6    # "newSize":I
    :cond_0
    return-void
.end method

.method findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 17
    .param p1, "contextType"    # S
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "enclosingElement"    # Lmf/org/apache/xerces/xni/QName;
    .param p4, "triggeringComponent"    # Lmf/org/apache/xerces/xni/QName;
    .param p5, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;

    .prologue
    .line 2644
    const/4 v9, 0x0

    .line 2646
    .local v9, "grammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v9

    .line 2648
    if-nez v9, :cond_0

    .line 2649
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setNamespace(Ljava/lang/String;)V

    .line 2650
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v3, :cond_0

    .line 2651
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v9

    .end local v9    # "grammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    check-cast v9, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 2652
    .restart local v9    # "grammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v9, :cond_0

    .line 2655
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z

    invoke-virtual {v3, v9, v4, v5}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ZZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2658
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 2659
    const-string v4, "http://www.w3.org/TR/xml-schema-1"

    .line 2660
    const-string v5, "GrammarConflict"

    .line 2661
    const/4 v6, 0x0

    .line 2662
    const/4 v7, 0x0

    .line 2658
    invoke-virtual {v3, v4, v5, v6, v7}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 2663
    const/4 v9, 0x0

    .line 2669
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    if-nez v3, :cond_8

    if-eqz v9, :cond_1

    .line 2670
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v9, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->hasSchemaComponent(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;SLmf/org/apache/xerces/xni/QName;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 2671
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->reset()V

    .line 2672
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move/from16 v0, p1

    iput-short v0, v3, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    .line 2673
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setNamespace(Ljava/lang/String;)V

    .line 2674
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, p3

    iput-object v0, v3, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fEnclosedElementName:Lmf/org/apache/xerces/xni/QName;

    .line 2675
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, p4

    iput-object v0, v3, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fTriggeringComponent:Lmf/org/apache/xerces/xni/QName;

    .line 2676
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, p5

    iput-object v0, v3, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    .line 2677
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-eqz v3, :cond_2

    .line 2678
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setBaseSystemId(Ljava/lang/String;)V

    .line 2681
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    .line 2683
    .local v12, "locationPairs":Ljava/util/Hashtable;
    if-nez p2, :cond_3

    sget-object p2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .end local p2    # "namespace":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 2684
    .local v10, "locationArray":Ljava/lang/Object;
    if-eqz v10, :cond_4

    .line 2685
    check-cast v10, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    .end local v10    # "locationArray":Ljava/lang/Object;
    invoke-virtual {v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->getLocationArray()[Ljava/lang/String;

    move-result-object v13

    .line 2686
    .local v13, "temp":[Ljava/lang/String;
    array-length v3, v13

    if-eqz v3, :cond_4

    .line 2687
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setLocationHints(Lmf/org/apache/xerces/impl/xs/XSDDescription;[Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 2691
    .end local v13    # "temp":[Ljava/lang/String;
    :cond_4
    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 2692
    :cond_5
    const/4 v14, 0x1

    .line 2693
    .local v14, "toParseSchema":Z
    if-eqz v9, :cond_6

    .line 2695
    sget-object v12, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->EMPTY_TABLE:Ljava/util/Hashtable;

    .line 2702
    :cond_6
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    .line 2704
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .line 2701
    invoke-static {v3, v12, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->resolveDocument(Lmf/org/apache/xerces/impl/xs/XSDDescription;Ljava/util/Hashtable;Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v15

    .line 2705
    .local v15, "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    if-eqz v9, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_7

    .line 2709
    :try_start_1
    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v3

    invoke-virtual {v15}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z
    :try_end_1
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_7

    .line 2710
    const/4 v14, 0x0

    .line 2716
    :cond_7
    :goto_0
    if-eqz v14, :cond_8

    .line 2717
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    invoke-virtual {v3, v4, v15, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadSchema(Lmf/org/apache/xerces/impl/xs/XSDDescription;Lmf/org/apache/xerces/xni/parser/XMLInputSource;Ljava/util/Hashtable;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v9

    .line 2731
    .end local v12    # "locationPairs":Ljava/util/Hashtable;
    .end local v14    # "toParseSchema":Z
    .end local v15    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :cond_8
    :goto_1
    return-object v9

    .line 2720
    .restart local v12    # "locationPairs":Ljava/util/Hashtable;
    .restart local v14    # "toParseSchema":Z
    :catch_0
    move-exception v8

    .line 2721
    .local v8, "ex":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getLocationHints()[Ljava/lang/String;

    move-result-object v11

    .line 2722
    .local v11, "locationHints":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 2723
    const-string v4, "http://www.w3.org/TR/xml-schema-1"

    .line 2724
    const-string v5, "schema_reference.4"

    .line 2725
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v16, 0x0

    if-eqz v11, :cond_9

    const/4 v7, 0x0

    aget-object v7, v11, v7

    :goto_2
    aput-object v7, v6, v16

    .line 2726
    const/4 v7, 0x0

    .line 2722
    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    goto :goto_1

    .line 2725
    :cond_9
    sget-object v7, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_2

    .line 2713
    .end local v8    # "ex":Ljava/io/IOException;
    .end local v11    # "locationHints":[Ljava/lang/String;
    .restart local v15    # "xis":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method getAndCheckXsiType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 11
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "xsiType"    # Ljava/lang/String;
    .param p3, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;

    .prologue
    .line 2792
    const/4 v5, 0x0

    .line 2794
    .local v5, "typeName":Lmf/org/apache/xerces/xni/QName;
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fQNameDV:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    const/4 v3, 0x0

    invoke-interface {v1, p2, v2, v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/xni/QName;

    move-object v5, v0
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2807
    const/4 v10, 0x0

    .line 2809
    .local v10, "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    iget-object v1, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    .line 2810
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    iget-object v2, v5, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v10

    .line 2813
    :cond_0
    if-nez v10, :cond_1

    .line 2817
    const/4 v2, 0x7

    .line 2818
    iget-object v3, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v1, p0

    move-object v4, p1

    move-object v6, p3

    .line 2816
    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v9

    .line 2823
    .local v9, "grammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v9, :cond_1

    .line 2824
    iget-object v1, v5, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v9, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v10

    .line 2827
    .end local v9    # "grammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :cond_1
    if-nez v10, :cond_3

    .line 2828
    const-string v1, "cvc-elt.4.2"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2829
    const/4 v10, 0x0

    .line 2853
    .end local v10    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_2
    :goto_0
    return-object v10

    .line 2795
    :catch_0
    move-exception v8

    .line 2796
    .local v8, "e":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2798
    const-string v1, "cvc-elt.4.1"

    .line 2799
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2800
    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 2801
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 2802
    aput-object p2, v2, v3

    .line 2797
    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2803
    const/4 v10, 0x0

    goto :goto_0

    .line 2834
    .end local v8    # "e":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    .restart local v10    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v1, :cond_2

    .line 2835
    const/4 v7, 0x0

    .line 2840
    .local v7, "block":S
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v1, :cond_4

    .line 2841
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-short v7, v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    .line 2843
    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_5

    .line 2844
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBlock:S

    or-int/2addr v1, v7

    int-to-short v7, v1

    .line 2846
    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-static {v10, v1, v7}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkTypeDerivationOk(Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2848
    const-string v1, "cvc-elt.4.3"

    .line 2849
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v4}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2847
    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-object v0
.end method

.method public getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    return-object v0
.end method

.method getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 2
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;

    .prologue
    .line 2596
    if-nez p1, :cond_0

    .line 2597
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugmentations:Lmf/org/apache/xerces/util/AugmentationsImpl;

    .line 2598
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    .line 2600
    :cond_0
    const-string v0, "ELEMENT_PSVI"

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    invoke-interface {p1, v0, v1}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2601
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->reset()V

    .line 2603
    return-object p1
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "featureId"    # Ljava/lang/String;

    .prologue
    .line 632
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 637
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 633
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 634
    sget-object v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object v1, v1, v0

    goto :goto_1

    .line 632
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getGlobalElementDecl(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 7
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    const/4 v3, 0x0

    .line 1654
    .line 1655
    const/4 v1, 0x5

    .line 1656
    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v0, p0

    move-object v4, p1

    move-object v5, v3

    .line 1654
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v6

    .line 1660
    .local v6, "sGrammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v6, :cond_0

    .line 1661
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v3

    .line 1663
    :cond_0
    return-object v3
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "propertyId"    # Ljava/lang/String;

    .prologue
    .line 650
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 655
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 651
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 652
    sget-object v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_1

    .line 650
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    sget-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 573
    sget-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method getXsiNil(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;)Z
    .locals 7
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "xsiNil"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2860
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getNillable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2862
    const-string v3, "cvc-elt.3.1"

    .line 2863
    new-array v4, v4, [Ljava/lang/Object;

    .line 2864
    iget-object v5, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v4, v2

    .line 2865
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 2861
    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move v1, v2

    .line 2884
    :cond_1
    :goto_0
    return v1

    .line 2870
    :cond_2
    invoke-static {p2}, Lmf/org/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2871
    .local v0, "value":Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2872
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2873
    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v3, :cond_1

    .line 2874
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v3

    if-ne v3, v4, :cond_1

    .line 2876
    const-string v3, "cvc-elt.3.2.2"

    .line 2877
    new-array v4, v4, [Ljava/lang/Object;

    .line 2878
    iget-object v5, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v4, v2

    .line 2879
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 2875
    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method handleCharacters(Lmf/org/apache/xerces/xni/XMLString;)Lmf/org/apache/xerces/xni/XMLString;
    .locals 9
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1739
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    if-ltz v3, :cond_0

    move-object v2, p1

    .line 1771
    .end local p1    # "text":Lmf/org/apache/xerces/xni/XMLString;
    .local v2, "text":Lmf/org/apache/xerces/xni/XMLString;
    :goto_0
    return-object v2

    .line 1742
    .end local v2    # "text":Lmf/org/apache/xerces/xni/XMLString;
    .restart local p1    # "text":Lmf/org/apache/xerces/xni/XMLString;
    :cond_0
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-nez v3, :cond_5

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-gtz v3, :cond_5

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    .line 1747
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v3, :cond_2

    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    const/4 v6, -0x1

    if-eq v3, v6, :cond_2

    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    if-eqz v3, :cond_2

    .line 1749
    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    if-ne v3, v8, :cond_1

    move v4, v5

    :cond_1
    invoke-direct {p0, p1, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;Z)V

    .line 1750
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    .line 1752
    :cond_2
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    if-eqz v3, :cond_3

    .line 1753
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v6, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v7, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v3, v4, v6, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1757
    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v3, :cond_4

    .line 1758
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_4

    .line 1759
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 1760
    .local v0, "ctype":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne v3, v8, :cond_4

    .line 1762
    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .local v1, "i":I
    :goto_2
    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v3, v4

    if-lt v1, v3, :cond_6

    .end local v0    # "ctype":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .end local v1    # "i":I
    :cond_4
    :goto_3
    move-object v2, p1

    .line 1771
    .end local p1    # "text":Lmf/org/apache/xerces/xni/XMLString;
    .restart local v2    # "text":Lmf/org/apache/xerces/xni/XMLString;
    goto :goto_0

    .end local v2    # "text":Lmf/org/apache/xerces/xni/XMLString;
    .restart local p1    # "text":Lmf/org/apache/xerces/xni/XMLString;
    :cond_5
    move v3, v5

    .line 1742
    goto :goto_1

    .line 1763
    .restart local v0    # "ctype":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .restart local v1    # "i":I
    :cond_6
    iget-object v3, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v3, v3, v1

    invoke-static {v3}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1764
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    goto :goto_3

    .line 1762
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method handleEndDocument()V
    .locals 1

    .prologue
    .line 1730
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIDCChecking:Z

    if-eqz v0, :cond_0

    .line 1731
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->endDocument()V

    .line 1733
    :cond_0
    return-void
.end method

.method handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 19
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;

    .prologue
    .line 2342
    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    if-ltz v3, :cond_3

    .line 2345
    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-ne v3, v4, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    if-lez v3, :cond_2

    .line 2347
    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    .line 2348
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    .line 2349
    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    .line 2350
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v3, v3, v4

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    .line 2351
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 2352
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v3, v3, v4

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    .line 2353
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    .line 2354
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 2355
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    .line 2356
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v3, v3, v4

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    .line 2357
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    .line 2358
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v3, v3, v4

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    .line 2359
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v3, v3, v4

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    .line 2370
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFullChecking:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    if-nez v3, :cond_0

    .line 2372
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    .line 2373
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    .line 2374
    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    .line 2375
    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 2371
    invoke-static {v3, v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fullSchemaChecking(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    .line 2378
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v3, :cond_1

    .line 2379
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p2

    :cond_1
    move-object/from16 v9, p2

    .line 2516
    .end local p2    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    .local v9, "augs":Lmf/org/apache/xerces/xni/Augmentations;
    :goto_1
    return-object v9

    .line 2362
    .end local v9    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    .restart local p2    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    goto :goto_0

    .line 2384
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->processElementContent(Lmf/org/apache/xerces/xni/QName;)V

    .line 2386
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIDCChecking:Z

    if-eqz v3, :cond_5

    .line 2391
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherCount()I

    move-result v16

    .line 2392
    .local v16, "oldCount":I
    add-int/lit8 v11, v16, -0x1

    .local v11, "i":I
    :goto_2
    if-gez v11, :cond_a

    .line 2414
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 2415
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->popContext()V

    .line 2418
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherCount()I

    move-result v15

    .line 2420
    .local v15, "newCount":I
    add-int/lit8 v11, v16, -0x1

    :goto_3
    if-ge v11, v15, :cond_f

    .line 2433
    add-int/lit8 v11, v16, -0x1

    :goto_4
    if-ge v11, v15, :cond_11

    .line 2447
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->endElement()V

    .line 2453
    .end local v11    # "i":I
    .end local v15    # "newCount":I
    .end local v16    # "oldCount":I
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    if-ge v3, v4, :cond_6

    .line 2454
    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    .line 2457
    :cond_6
    const/4 v10, 0x0

    .line 2459
    .local v10, "grammars":[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-nez v3, :cond_14

    .line 2461
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->checkIDRefID()Ljava/lang/String;

    move-result-object v13

    .line 2462
    .local v13, "invIdRef":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->resetIDTables()V

    .line 2463
    if-eqz v13, :cond_7

    .line 2464
    const-string v3, "cvc-id.1"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v13, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2467
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFullChecking:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    if-nez v3, :cond_8

    .line 2469
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    .line 2470
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    .line 2471
    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    .line 2472
    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 2468
    invoke-static {v3, v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fullSchemaChecking(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    .line 2475
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammars()[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v10

    .line 2477
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v3, :cond_9

    .line 2479
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_5
    array-length v3, v10

    if-lt v14, v3, :cond_13

    .line 2482
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    const-string v4, "http://www.w3.org/2001/XMLSchema"

    invoke-interface {v3, v4, v10}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    .line 2484
    .end local v14    # "k":I
    :cond_9
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v10, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endElementPSVI(Z[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p2

    .end local v13    # "invIdRef":Ljava/lang/String;
    :goto_6
    move-object/from16 v9, p2

    .line 2516
    .end local p2    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    .restart local v9    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    goto/16 :goto_1

    .line 2393
    .end local v9    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    .end local v10    # "grammars":[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .restart local v11    # "i":I
    .restart local v16    # "oldCount":I
    .restart local p2    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v3, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherAt(I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v2

    .line 2394
    .local v2, "matcher":Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v3, :cond_b

    .line 2395
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v6, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-short v7, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v8, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xs/XSTypeDefinition;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V

    .line 2392
    :goto_7
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_2

    .line 2400
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 2401
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getNillable()Z

    move-result v5

    .line 2402
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-nez v3, :cond_c

    .line 2403
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v6, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    .line 2405
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-nez v3, :cond_d

    .line 2406
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-short v7, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    .line 2408
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-nez v3, :cond_e

    .line 2409
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v8, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    :goto_a
    move-object/from16 v3, p1

    .line 2398
    invoke-virtual/range {v2 .. v8}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xs/XSTypeDefinition;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V

    goto :goto_7

    .line 2404
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v6, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    goto :goto_8

    .line 2407
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-short v7, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    goto :goto_9

    .line 2410
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v8, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    goto :goto_a

    .line 2421
    .end local v2    # "matcher":Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;
    .restart local v15    # "newCount":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v3, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherAt(I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v2

    .line 2422
    .restart local v2    # "matcher":Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;
    instance-of v3, v2, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;

    if-eqz v3, :cond_10

    move-object/from16 v17, v2

    .line 2423
    check-cast v17, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;

    .line 2425
    .local v17, "selMatcher":Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;
    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->getIdentityConstraint()Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v12

    .local v12, "id":Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    if-eqz v12, :cond_10

    .line 2426
    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_10

    .line 2427
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->getInitialDepth()I

    move-result v4

    invoke-virtual {v3, v12, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->transplant(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)V

    .line 2420
    .end local v12    # "id":Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    .end local v17    # "selMatcher":Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;
    :cond_10
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_3

    .line 2434
    .end local v2    # "matcher":Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v3, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherAt(I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v2

    .line 2435
    .restart local v2    # "matcher":Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;
    instance-of v3, v2, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;

    if-eqz v3, :cond_12

    move-object/from16 v17, v2

    .line 2436
    check-cast v17, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;

    .line 2438
    .restart local v17    # "selMatcher":Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;
    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->getIdentityConstraint()Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v12

    .restart local v12    # "id":Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    if-eqz v12, :cond_12

    .line 2439
    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_12

    .line 2441
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->getInitialDepth()I

    move-result v4

    invoke-virtual {v3, v12, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->getValueStoreFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    move-result-object v18

    .line 2442
    .local v18, "values":Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;
    if-eqz v18, :cond_12

    .line 2443
    invoke-virtual/range {v18 .. v18}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->endDocumentFragment()V

    .line 2433
    .end local v12    # "id":Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    .end local v17    # "selMatcher":Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;
    .end local v18    # "values":Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;
    :cond_12
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_4

    .line 2480
    .end local v2    # "matcher":Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;
    .end local v11    # "i":I
    .end local v15    # "newCount":I
    .end local v16    # "oldCount":I
    .restart local v10    # "grammars":[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .restart local v13    # "invIdRef":Ljava/lang/String;
    .restart local v14    # "k":I
    :cond_13
    aget-object v3, v10, v14

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->setImmutable(Z)V

    .line 2479
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_5

    .line 2486
    .end local v13    # "invIdRef":Ljava/lang/String;
    .end local v14    # "k":I
    :cond_14
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v10, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endElementPSVI(Z[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p2

    .line 2489
    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    .line 2492
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v3, v3, v4

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    .line 2493
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 2494
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v3, v3, v4

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    .line 2495
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    .line 2496
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 2497
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    .line 2498
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v3, v3, v4

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    .line 2499
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    .line 2500
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v3, v3, v4

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    .line 2501
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v3, v3, v4

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    .line 2508
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    .line 2511
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    .line 2513
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    goto/16 :goto_6
.end method

.method handleIgnorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 1
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;

    .prologue
    .line 1886
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    if-ltz v0, :cond_0

    .line 1892
    :cond_0
    return-void
.end method

.method handleStartDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;)V
    .locals 2
    .param p1, "locator"    # Lmf/org/apache/xerces/xni/XMLLocator;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1720
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIDCChecking:Z

    if-eqz v0, :cond_0

    .line 1721
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->startDocument()V

    .line 1723
    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v0, :cond_1

    .line 1724
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fGrammars:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 1725
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fSchemaInformation:Lmf/org/apache/xerces/xs/XSModel;

    .line 1727
    :cond_1
    return-void
.end method

.method handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 31
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;

    .prologue
    .line 1902
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->isGrammarFound()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1903
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaType:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 1908
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaDynamicValidation:Z

    .line 1920
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    if-nez v4, :cond_1

    .line 1922
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_SCHEMALOCATION:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1924
    .local v27, "sLocation":Ljava/lang/String;
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NONAMESPACESCHEMALOCATION:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1928
    .local v22, "nsLocation":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->storeLocations(Ljava/lang/String;Ljava/lang/String;)V

    .line 1933
    .end local v22    # "nsLocation":Ljava/lang/String;
    .end local v27    # "sLocation":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    if-ltz v4, :cond_3

    .line 1934
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    .line 1935
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v4, :cond_2

    .line 1936
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    :cond_2
    move-object/from16 v11, p3

    .line 2327
    .end local p3    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    .local v11, "augs":Lmf/org/apache/xerces/xni/Augmentations;
    :goto_0
    return-object v11

    .line 1945
    .end local v11    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    .restart local p3    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    :cond_3
    const/4 v14, 0x0

    .line 1946
    .local v14, "decl":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    if-eqz v4, :cond_4

    .line 1947
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v5, v6}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->oneTransition(Lmf/org/apache/xerces/xni/QName;[ILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object v14

    .line 1949
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 1950
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v13, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 1953
    .local v13, "ctype":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    iget-object v4, v13, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-eqz v4, :cond_c

    .line 1954
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    invoke-interface {v4, v5}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->whatCanGoHere([I)Ljava/util/Vector;

    move-result-object v21

    .local v21, "next":Ljava/util/Vector;
    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 1955
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->expectedStr(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v16

    .line 1956
    .local v16, "expected":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    invoke-interface {v4, v5}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->occurenceInfo([I)[I

    move-result-object v23

    .line 1957
    .local v23, "occurenceInfo":[I
    if-eqz v23, :cond_b

    .line 1958
    const/4 v4, 0x0

    aget v20, v23, v4

    .line 1959
    .local v20, "minOccurs":I
    const/4 v4, 0x1

    aget v19, v23, v4

    .line 1960
    .local v19, "maxOccurs":I
    const/4 v4, 0x2

    aget v12, v23, v4

    .line 1962
    .local v12, "count":I
    move/from16 v0, v20

    if-ge v12, v0, :cond_9

    .line 1963
    sub-int v25, v20, v12

    .line 1964
    .local v25, "required":I
    const/4 v4, 0x1

    move/from16 v0, v25

    if-le v0, v4, :cond_8

    .line 1965
    const-string v4, "cvc-complex-type.2.4.h"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 1966
    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    const/4 v8, 0x3

    aget v8, v23, v8

    invoke-interface {v7, v8}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->getTermName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1965
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2007
    .end local v12    # "count":I
    .end local v13    # "ctype":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .end local v14    # "decl":Ljava/lang/Object;
    .end local v16    # "expected":Ljava/lang/String;
    .end local v19    # "maxOccurs":I
    .end local v20    # "minOccurs":I
    .end local v21    # "next":Ljava/util/Vector;
    .end local v23    # "occurenceInfo":[I
    .end local v25    # "required":I
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 2008
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->ensureStackCapacity()V

    .line 2009
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 2010
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    .line 2011
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aput-object v6, v4, v5

    .line 2012
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    aput-boolean v6, v4, v5

    .line 2013
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    aput-object v6, v4, v5

    .line 2014
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    aput-object v6, v4, v5

    .line 2015
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    aput-boolean v6, v4, v5

    .line 2016
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    aput-object v6, v4, v5

    .line 2017
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    aput-object v6, v4, v5

    .line 2018
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    aput-boolean v6, v4, v5

    .line 2019
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    aput-boolean v6, v4, v5

    .line 2024
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    .line 2025
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 2026
    const/16 v28, 0x0

    .line 2027
    .local v28, "wildcard":Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 2028
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    .line 2029
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    .line 2030
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    .line 2033
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2034
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    .line 2035
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    .line 2039
    if-eqz v14, :cond_6

    .line 2040
    instance-of v4, v14, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v4, :cond_f

    .line 2041
    check-cast v14, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-object/from16 v0, p0

    iput-object v14, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 2048
    :cond_6
    :goto_2
    if-eqz v28, :cond_10

    move-object/from16 v0, v28

    iget-short v4, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    const/4 v5, 0x2

    if-ne v4, v5, :cond_10

    .line 2049
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iput v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    .line 2050
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v4, :cond_7

    .line 2051
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    :cond_7
    move-object/from16 v11, p3

    .line 2052
    .end local p3    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    .restart local v11    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    goto/16 :goto_0

    .line 1969
    .end local v11    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    .end local v28    # "wildcard":Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    .restart local v12    # "count":I
    .restart local v13    # "ctype":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .restart local v14    # "decl":Ljava/lang/Object;
    .restart local v16    # "expected":Ljava/lang/String;
    .restart local v19    # "maxOccurs":I
    .restart local v20    # "minOccurs":I
    .restart local v21    # "next":Ljava/util/Vector;
    .restart local v23    # "occurenceInfo":[I
    .restart local v25    # "required":I
    .restart local p3    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    :cond_8
    const-string v4, "cvc-complex-type.2.4.g"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 1970
    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    const/4 v8, 0x3

    aget v8, v23, v8

    invoke-interface {v7, v8}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->getTermName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1969
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1974
    .end local v25    # "required":I
    :cond_9
    move/from16 v0, v19

    if-lt v12, v0, :cond_a

    const/4 v4, -0x1

    move/from16 v0, v19

    if-eq v0, v4, :cond_a

    .line 1975
    const-string v4, "cvc-complex-type.2.4.e"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 1976
    aput-object v16, v5, v6

    const/4 v6, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1975
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1979
    :cond_a
    const-string v4, "cvc-complex-type.2.4.a"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v16, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1983
    .end local v12    # "count":I
    .end local v19    # "maxOccurs":I
    .end local v20    # "minOccurs":I
    :cond_b
    const-string v4, "cvc-complex-type.2.4.a"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v16, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1987
    .end local v16    # "expected":Ljava/lang/String;
    .end local v21    # "next":Ljava/util/Vector;
    .end local v23    # "occurenceInfo":[I
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    invoke-interface {v4, v5}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->occurenceInfo([I)[I

    move-result-object v23

    .line 1988
    .restart local v23    # "occurenceInfo":[I
    if-eqz v23, :cond_e

    .line 1989
    const/4 v4, 0x1

    aget v19, v23, v4

    .line 1990
    .restart local v19    # "maxOccurs":I
    const/4 v4, 0x2

    aget v12, v23, v4

    .line 1992
    .restart local v12    # "count":I
    move/from16 v0, v19

    if-lt v12, v0, :cond_d

    const/4 v4, -0x1

    move/from16 v0, v19

    if-eq v0, v4, :cond_d

    .line 1993
    const-string v4, "cvc-complex-type.2.4.f"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1996
    :cond_d
    const-string v4, "cvc-complex-type.2.4.d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2000
    .end local v12    # "count":I
    .end local v19    # "maxOccurs":I
    :cond_e
    const-string v4, "cvc-complex-type.2.4.d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .end local v13    # "ctype":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .end local v14    # "decl":Ljava/lang/Object;
    .end local v23    # "occurenceInfo":[I
    .restart local v28    # "wildcard":Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    :cond_f
    move-object/from16 v28, v14

    .line 2043
    check-cast v28, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    goto/16 :goto_2

    .line 2055
    :cond_10
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-nez v4, :cond_11

    .line 2057
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v4, :cond_18

    .line 2058
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 2059
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->checkElementMatchesRootElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/xni/QName;)V

    .line 2074
    :cond_11
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v4, :cond_13

    .line 2078
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v4, :cond_12

    .line 2082
    const/4 v5, 0x5

    .line 2083
    move-object/from16 v0, p1

    iget-object v6, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 2084
    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 2081
    invoke-virtual/range {v4 .. v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v26

    .line 2087
    .local v26, "sGrammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v26, :cond_12

    .line 2088
    move-object/from16 v0, p1

    iget-object v4, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 2092
    .end local v26    # "sGrammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v4, :cond_13

    .line 2094
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 2099
    :cond_13
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    if-ne v4, v5, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v4, :cond_14

    .line 2100
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    .line 2104
    :cond_14
    const/16 v30, 0x0

    .line 2105
    .local v30, "xsiType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    if-lt v4, v5, :cond_15

    .line 2106
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 2110
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v4, :cond_2c

    if-nez v30, :cond_2c

    .line 2114
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-nez v4, :cond_2b

    .line 2117
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z

    if-nez v4, :cond_16

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaDynamicValidation:Z

    if-eqz v4, :cond_1d

    .line 2124
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    if-eqz v4, :cond_1b

    .line 2125
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v4, v5}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 2126
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v4, :cond_17

    .line 2127
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-interface {v4, v5}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 2129
    :cond_17
    const/4 v4, -0x2

    move-object/from16 v0, p0

    iput v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v11, p3

    .line 2130
    .end local p3    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    .restart local v11    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    goto/16 :goto_0

    .line 2061
    .end local v11    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    .end local v30    # "xsiType":Ljava/lang/String;
    .restart local p3    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    if-eqz v4, :cond_19

    .line 2062
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->processRootElementDeclQName(Ljavax/xml/namespace/QName;Lmf/org/apache/xerces/xni/QName;)V

    goto/16 :goto_3

    .line 2065
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v4, :cond_1a

    .line 2066
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto/16 :goto_3

    .line 2068
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    if-eqz v4, :cond_11

    .line 2069
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->processRootTypeQName(Ljavax/xml/namespace/QName;)V

    goto/16 :goto_3

    .line 2133
    .restart local v30    # "xsiType":Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iput v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    .line 2134
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v4, :cond_1c

    .line 2135
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    :cond_1c
    move-object/from16 v11, p3

    .line 2136
    .end local p3    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    .restart local v11    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    goto/16 :goto_0

    .line 2144
    .end local v11    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    .restart local p3    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 2145
    const-string v5, "http://www.w3.org/TR/xml-schema-1"

    .line 2146
    const-string v6, "cvc-elt.1.a"

    .line 2147
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-object v9, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v9, v7, v8

    .line 2148
    const/4 v8, 0x1

    .line 2144
    invoke-virtual {v4, v5, v6, v7, v8}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 2160
    :cond_1e
    :goto_4
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 2161
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    .line 2162
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iput v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    .line 2164
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    .line 2169
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->pushContext()V

    .line 2207
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getAbstract()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 2208
    const-string v4, "cvc-elt.2"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2211
    :cond_1f
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-nez v4, :cond_20

    .line 2212
    move-object/from16 v0, p1

    iget-object v4, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationRoot:Ljava/lang/String;

    .line 2216
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v4, :cond_21

    .line 2218
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFirstChunk:Z

    .line 2219
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTrailing:Z

    .line 2220
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    .line 2221
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    .line 2226
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v4}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v4

    const/16 v5, 0xf

    if-ne v4, v5, :cond_33

    .line 2227
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v13, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 2228
    .restart local v13    # "ctype":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAbstract()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 2229
    const-string v4, "cvc-type.2"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2231
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v4, :cond_23

    .line 2234
    iget-short v4, v13, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    const/4 v5, 0x1

    if-ne v4, v5, :cond_23

    .line 2235
    iget-object v4, v13, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v4}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_32

    .line 2236
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    .line 2263
    .end local v13    # "ctype":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    :cond_23
    :goto_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    .line 2264
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v4}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v4

    const/16 v5, 0xf

    if-ne v4, v5, :cond_24

    .line 2265
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentModel(Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    .line 2269
    :cond_24
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    .line 2270
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    if-eqz v4, :cond_25

    .line 2271
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    invoke-interface {v4}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->startContentModel()[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    .line 2274
    :cond_25
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 2276
    .local v29, "xsiNil":Ljava/lang/String;
    if-eqz v29, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v4, :cond_26

    .line 2277
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getXsiNil(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    .line 2281
    :cond_26
    const/4 v10, 0x0

    .line 2282
    .local v10, "attrGrp":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v4}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v4

    const/16 v5, 0xf

    if-ne v4, v5, :cond_27

    .line 2283
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v13, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 2284
    .restart local v13    # "ctype":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v10

    .line 2287
    .end local v13    # "ctype":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    :cond_27
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIDCChecking:Z

    if-eqz v4, :cond_28

    .line 2289
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->startElement()V

    .line 2290
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->pushContext()V

    .line 2292
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDCPos:I

    if-lez v4, :cond_28

    .line 2293
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    .line 2295
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-object/from16 v0, p0

    invoke-virtual {v4, v5, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->initValueStoresFor(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;)V

    .line 2298
    :cond_28
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->processAttributes(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V

    .line 2301
    if-eqz v10, :cond_29

    .line 2302
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->addDefaultAttributes(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V

    .line 2306
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherCount()I

    move-result v12

    .line 2307
    .restart local v12    # "count":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_7
    move/from16 v0, v17

    if-lt v0, v12, :cond_35

    .line 2312
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v4, :cond_2a

    .line 2313
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    .line 2316
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationRoot:Ljava/lang/String;

    iput-object v5, v4, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationContext:Ljava/lang/String;

    .line 2318
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v5, v4, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSElementDeclaration;

    .line 2320
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v5, v4, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 2322
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iput-object v5, v4, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fNotation:Lmf/org/apache/xerces/xs/XSNotationDeclaration;

    .line 2324
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    iput-boolean v5, v4, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fNil:Z

    :cond_2a
    move-object/from16 v11, p3

    .line 2327
    .end local p3    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    .restart local v11    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    goto/16 :goto_0

    .line 2153
    .end local v10    # "attrGrp":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .end local v11    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    .end local v12    # "count":I
    .end local v17    # "i":I
    .end local v29    # "xsiNil":Ljava/lang/String;
    .restart local p3    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    :cond_2b
    if-eqz v28, :cond_1e

    move-object/from16 v0, v28

    iget-short v4, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1e

    .line 2155
    const-string v4, "cvc-complex-type.2.4.c"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2174
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->pushContext()V

    .line 2177
    if-eqz v30, :cond_2d

    .line 2178
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v24, v0

    .line 2179
    .local v24, "oldType":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getAndCheckXsiType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 2181
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v4, :cond_2d

    .line 2182
    if-nez v24, :cond_2e

    .line 2183
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 2189
    .end local v24    # "oldType":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_2d
    :goto_8
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iput v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    .line 2191
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v4, :cond_2f

    .line 2192
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2f

    .line 2193
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    goto/16 :goto_5

    .line 2185
    .restart local v24    # "oldType":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_2e
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto :goto_8

    .line 2196
    .end local v24    # "oldType":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v4}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_30

    .line 2197
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    goto/16 :goto_5

    .line 2200
    :cond_30
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v13, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 2201
    .restart local v13    # "ctype":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    iget-short v4, v13, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    const/4 v5, 0x1

    if-ne v4, v5, :cond_31

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    goto/16 :goto_5

    :cond_31
    const/4 v4, 0x0

    goto :goto_9

    .line 2239
    :cond_32
    :try_start_0
    iget-object v4, v13, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v4}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getWhitespace()S

    move-result v4

    move-object/from16 v0, p0

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/DatatypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    .line 2240
    :catch_0
    move-exception v4

    goto/16 :goto_6

    .line 2248
    .end local v13    # "ctype":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    :cond_33
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v4, :cond_23

    .line 2250
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v15, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 2251
    .local v15, "dv":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    invoke-interface {v15}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_34

    .line 2252
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    goto/16 :goto_6

    .line 2255
    :cond_34
    :try_start_1
    invoke-interface {v15}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getWhitespace()S

    move-result v4

    move-object/from16 v0, p0

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/DatatypeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_6

    .line 2256
    :catch_1
    move-exception v4

    goto/16 :goto_6

    .line 2308
    .end local v15    # "dv":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .restart local v10    # "attrGrp":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .restart local v12    # "count":I
    .restart local v17    # "i":I
    .restart local v29    # "xsiNil":Ljava/lang/String;
    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherAt(I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v18

    .line 2309
    .local v18, "matcher":Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)V

    .line 2307
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_7
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 874
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleIgnorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 876
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 880
    :cond_0
    return-void
.end method

.method processAttributes(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V
    .locals 28
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "attrGrp"    # Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    .prologue
    .line 2894
    const/16 v27, 0x0

    .line 2897
    .local v27, "wildcardIDName":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v16

    .line 2899
    .local v16, "attCount":I
    const/16 v19, 0x0

    .line 2900
    .local v19, "augs":Lmf/org/apache/xerces/xni/Augmentations;
    const/4 v8, 0x0

    .line 2903
    .local v8, "attrPSVI":Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v2

    const/16 v3, 0x10

    if-eq v2, v3, :cond_2

    .line 2902
    const/16 v24, 0x0

    .line 2905
    .local v24, "isSimple":Z
    :goto_0
    const/16 v17, 0x0

    .line 2906
    .local v17, "attrUses":Lmf/org/apache/xerces/xs/XSObjectList;
    const/16 v26, 0x0

    .line 2907
    .local v26, "useCount":I
    const/16 v18, 0x0

    .line 2908
    .local v18, "attrWildcard":Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    if-nez v24, :cond_0

    .line 2909
    invoke-virtual/range {p3 .. p3}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v17

    .line 2910
    invoke-interface/range {v17 .. v17}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v26

    .line 2911
    move-object/from16 v0, p3

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object/from16 v18, v0

    .line 2917
    :cond_0
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_1
    move/from16 v0, v16

    if-lt v5, v0, :cond_3

    .line 3062
    if-nez v24, :cond_1

    move-object/from16 v0, p3

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    if-eqz v2, :cond_1

    if-eqz v27, :cond_1

    .line 3064
    const-string v2, "cvc-complex-type.5.2"

    .line 3065
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v3, v4

    const/4 v4, 0x1

    aput-object v27, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p3

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    aput-object v7, v3, v4

    .line 3063
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3068
    :cond_1
    return-void

    .line 2902
    .end local v5    # "index":I
    .end local v17    # "attrUses":Lmf/org/apache/xerces/xs/XSObjectList;
    .end local v18    # "attrWildcard":Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    .end local v24    # "isSimple":Z
    .end local v26    # "useCount":I
    :cond_2
    const/16 v24, 0x1

    goto :goto_0

    .line 2919
    .restart local v5    # "index":I
    .restart local v17    # "attrUses":Lmf/org/apache/xerces/xs/XSObjectList;
    .restart local v18    # "attrWildcard":Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    .restart local v24    # "isSimple":Z
    .restart local v26    # "useCount":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    .line 2925
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    if-eqz v2, :cond_5

    .line 2926
    :cond_4
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v19

    .line 2927
    const-string v2, "ATTRIBUTE_PSVI"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "attrPSVI":Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;
    check-cast v8, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;

    .line 2928
    .restart local v8    # "attrPSVI":Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;
    if-eqz v8, :cond_8

    .line 2929
    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->reset()V

    .line 2935
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationRoot:Ljava/lang/String;

    iput-object v2, v8, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidationContext:Ljava/lang/String;

    .line 2944
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    if-ne v2, v3, :cond_c

    .line 2945
    const/4 v6, 0x0

    .line 2946
    .local v6, "attrDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    if-ne v2, v3, :cond_9

    .line 2947
    sget-object v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_TYPE:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 2958
    :cond_6
    :goto_3
    if-eqz v6, :cond_c

    .line 2959
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->processOneAttribute(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;ILmf/org/apache/xerces/impl/xs/XSAttributeDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;)V

    .line 2917
    .end local v6    # "attrDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    :cond_7
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 2931
    :cond_8
    new-instance v8, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;

    .end local v8    # "attrPSVI":Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;
    invoke-direct {v8}, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;-><init>()V

    .line 2932
    .restart local v8    # "attrPSVI":Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;
    const-string v2, "ATTRIBUTE_PSVI"

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v8}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2949
    .restart local v6    # "attrDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    if-ne v2, v3, :cond_a

    .line 2950
    sget-object v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_NIL:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 2951
    goto :goto_3

    .line 2952
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_SCHEMALOCATION:Ljava/lang/String;

    if-ne v2, v3, :cond_b

    .line 2953
    sget-object v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_SCHEMALOCATION:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 2954
    goto :goto_3

    .line 2955
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NONAMESPACESCHEMALOCATION:Ljava/lang/String;

    if-ne v2, v3, :cond_6

    .line 2956
    sget-object v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_NONAMESPACESCHEMALOCATION:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    goto :goto_3

    .line 2965
    .end local v6    # "attrDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v2, v3, :cond_7

    .line 2966
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    const-string v3, "xmlns:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2971
    if-eqz v24, :cond_d

    .line 2973
    const-string v2, "cvc-type.3.1.1"

    .line 2974
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v3, v4

    .line 2972
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 2979
    :cond_d
    const/16 v21, 0x0

    .line 2980
    .local v21, "currUse":Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_5
    move/from16 v0, v23

    move/from16 v1, v26

    if-lt v0, v1, :cond_f

    .line 2994
    :goto_6
    if-nez v21, :cond_11

    .line 2997
    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 3000
    :cond_e
    const-string v2, "cvc-complex-type.3.2.2"

    .line 3001
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v3, v4

    .line 2999
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3004
    move-object/from16 v0, p0

    iget v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iput v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    goto/16 :goto_4

    .line 2981
    :cond_f
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v25

    check-cast v25, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    .line 2982
    .local v25, "oneUse":Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    move-object/from16 v0, v25

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v2, v3, :cond_10

    .line 2983
    move-object/from16 v0, v25

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v2, v3, :cond_10

    .line 2984
    move-object/from16 v21, v25

    .line 2985
    goto :goto_6

    .line 2980
    :cond_10
    add-int/lit8 v23, v23, 0x1

    goto :goto_5

    .line 3010
    .end local v25    # "oneUse":Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    :cond_11
    const/16 v20, 0x0

    .line 3011
    .local v20, "currDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    if-eqz v21, :cond_13

    .line 3012
    move-object/from16 v0, v21

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .end local v20    # "currDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .local v13, "currDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    :cond_12
    :goto_7
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move v12, v5

    move-object/from16 v14, v21

    move-object v15, v8

    .line 3058
    invoke-virtual/range {v9 .. v15}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->processOneAttribute(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;ILmf/org/apache/xerces/impl/xs/XSAttributeDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;)V

    goto/16 :goto_4

    .line 3016
    .end local v13    # "currDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .restart local v20    # "currDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    :cond_13
    move-object/from16 v0, v18

    iget-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    .line 3022
    const/4 v10, 0x6

    .line 3023
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 3025
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v9, p0

    move-object/from16 v12, p1

    move-object/from16 v14, p2

    .line 3021
    invoke-virtual/range {v9 .. v14}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v22

    .line 3028
    .local v22, "grammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v22, :cond_16

    .line 3029
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v13

    .line 3033
    .end local v20    # "currDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .restart local v13    # "currDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    :goto_8
    if-nez v13, :cond_14

    .line 3035
    move-object/from16 v0, v18

    iget-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 3037
    const-string v2, "cvc-complex-type.3.2.2"

    .line 3038
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v3, v4

    .line 3036
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 3046
    :cond_14
    iget-object v2, v13, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getTypeCategory()S

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_12

    .line 3047
    iget-object v2, v13, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3048
    if-eqz v27, :cond_15

    .line 3050
    const-string v2, "cvc-complex-type.5.1"

    .line 3051
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v3, v4

    const/4 v4, 0x1

    iget-object v7, v13, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    aput-object v7, v3, v4

    const/4 v4, 0x2

    aput-object v27, v3, v4

    .line 3049
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 3053
    :cond_15
    iget-object v0, v13, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    move-object/from16 v27, v0

    goto/16 :goto_7

    .end local v13    # "currDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .restart local v20    # "currDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    :cond_16
    move-object/from16 v13, v20

    .end local v20    # "currDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .restart local v13    # "currDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    goto :goto_8
.end method

.method processElementContent(Lmf/org/apache/xerces/xni/QName;)V
    .locals 14
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3269
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v5, :cond_2

    .line 3270
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz v5, :cond_2

    .line 3271
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-nez v5, :cond_2

    .line 3272
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-nez v5, :cond_2

    .line 3273
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    if-nez v5, :cond_2

    .line 3275
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v4

    .line 3276
    .local v4, "strv":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 3277
    .local v1, "bufLen":I
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    if-eqz v5, :cond_0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v5, v5

    if-ge v5, v1, :cond_1

    .line 3278
    :cond_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    new-array v6, v1, [C

    iput-object v6, v5, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    .line 3280
    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    invoke-virtual {v4, v9, v1, v5, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 3281
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v9, v5, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .line 3282
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v1, v5, Lmf/org/apache/xerces/xni/XMLString;->length:I

    .line 3283
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    .line 3287
    .end local v1    # "bufLen":I
    .end local v4    # "strv":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v13, v5, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    .line 3291
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    if-eqz v5, :cond_4

    .line 3292
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-eqz v5, :cond_4

    .line 3294
    :cond_3
    const-string v5, "cvc-elt.3.2.1"

    .line 3295
    new-array v6, v11, [Ljava/lang/Object;

    .line 3296
    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v9

    .line 3297
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 3293
    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3301
    :cond_4
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->reset()V

    .line 3305
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v5, :cond_b

    .line 3306
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v5

    if-eqz v5, :cond_b

    .line 3307
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-nez v5, :cond_b

    .line 3308
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-nez v5, :cond_b

    .line 3309
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    if-nez v5, :cond_b

    .line 3311
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eq v5, v6, :cond_5

    .line 3315
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 3316
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v6

    .line 3317
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4XsiType:Lmf/org/apache/xerces/impl/validation/ValidationState;

    .line 3314
    invoke-static {v5, v6, v7, v13}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->ElementDefaultValidImmediate(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v5

    .line 3313
    if-nez v5, :cond_5

    .line 3321
    const-string v5, "cvc-elt.5.1.1"

    .line 3322
    new-array v6, v12, [Ljava/lang/Object;

    .line 3323
    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v9

    .line 3324
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v7}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 3325
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    .line 3320
    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3330
    :cond_5
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->elementLocallyValidType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3388
    :cond_6
    :goto_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-nez v5, :cond_a

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    if-eqz v5, :cond_a

    .line 3391
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v2, v5, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    .line 3392
    .local v2, "content":Ljava/lang/String;
    if-nez v2, :cond_7

    .line 3393
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3395
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 3396
    .restart local v1    # "bufLen":I
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    if-eqz v5, :cond_8

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v5, v5

    if-ge v5, v1, :cond_9

    .line 3397
    :cond_8
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    new-array v6, v1, [C

    iput-object v6, v5, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    .line 3399
    :cond_9
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    invoke-virtual {v2, v9, v1, v5, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 3400
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v9, v5, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .line 3401
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v1, v5, Lmf/org/apache/xerces/xni/XMLString;->length:I

    .line 3402
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {v5, v6, v13}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 3404
    .end local v1    # "bufLen":I
    .end local v2    # "content":Ljava/lang/String;
    :cond_a
    return-void

    .line 3337
    :cond_b
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->elementLocallyValidType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3339
    .local v0, "actualValue":Ljava/lang/Object;
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v5, :cond_6

    .line 3340
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v5

    if-ne v5, v11, :cond_6

    .line 3341
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    if-nez v5, :cond_6

    .line 3342
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3344
    .restart local v2    # "content":Ljava/lang/String;
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-eqz v5, :cond_c

    .line 3345
    const-string v5, "cvc-elt.5.2.2.1"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3347
    :cond_c
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v5}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v5

    const/16 v6, 0xf

    if-ne v5, v6, :cond_f

    .line 3348
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 3350
    .local v3, "ctype":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    iget-short v5, v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne v5, v12, :cond_d

    .line 3352
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 3354
    const-string v5, "cvc-elt.5.2.2.2.1"

    .line 3355
    new-array v6, v12, [Ljava/lang/Object;

    .line 3356
    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v9

    .line 3357
    aput-object v2, v6, v10

    .line 3358
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    aput-object v7, v6, v11

    .line 3353
    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3361
    :cond_d
    iget-short v5, v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne v5, v10, :cond_6

    .line 3362
    if-eqz v0, :cond_6

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-static {v5, v6}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->isComparable(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 3363
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 3365
    :cond_e
    const-string v5, "cvc-elt.5.2.2.2.2"

    .line 3366
    new-array v6, v12, [Ljava/lang/Object;

    .line 3367
    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v9

    .line 3368
    aput-object v2, v6, v10

    .line 3369
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    .line 3364
    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3372
    .end local v3    # "ctype":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    :cond_f
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v5}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v5

    const/16 v6, 0x10

    if-ne v5, v6, :cond_6

    .line 3373
    if-eqz v0, :cond_6

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-static {v5, v6}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->isComparable(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 3374
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 3378
    :cond_10
    const-string v5, "cvc-elt.5.2.2.2.2"

    .line 3379
    new-array v6, v12, [Ljava/lang/Object;

    .line 3380
    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v9

    .line 3381
    aput-object v2, v6, v10

    .line 3382
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    .line 3377
    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method processOneAttribute(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;ILmf/org/apache/xerces/impl/xs/XSAttributeDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;)V
    .locals 13
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "index"    # I
    .param p4, "currDecl"    # Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .param p5, "currUse"    # Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    .param p6, "attrPSVI"    # Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;

    .prologue
    .line 3078
    invoke-interface/range {p2 .. p3}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 3079
    .local v4, "attrValue":Ljava/lang/String;
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->pushContext()V

    .line 3087
    move-object/from16 v0, p4

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 3089
    .local v3, "attDV":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    const/4 v2, 0x0

    .line 3091
    .local v2, "actualValue":Ljava/lang/Object;
    :try_start_0
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-interface {v3, v4, v9, v10}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v2

    .line 3093
    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v9, :cond_0

    .line 3094
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v9, v9, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    move/from16 v0, p3

    invoke-interface {p2, v0, v9}, Lmf/org/apache/xerces/xni/XMLAttributes;->setValue(ILjava/lang/String;)V

    .line 3097
    :cond_0
    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 3098
    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getPrimitiveKind()S

    move-result v9

    const/16 v10, 0x14

    if-ne v9, v10, :cond_1

    .line 3099
    move-object v0, v2

    check-cast v0, Lmf/org/apache/xerces/xni/QName;

    move-object v8, v0

    .line 3100
    .local v8, "qName":Lmf/org/apache/xerces/xni/QName;
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v10, v8, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v6

    .line 3108
    .local v6, "grammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v6, :cond_1

    .line 3109
    iget-object v9, v8, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v9

    iput-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3124
    .end local v2    # "actualValue":Ljava/lang/Object;
    .end local v6    # "grammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .end local v8    # "qName":Lmf/org/apache/xerces/xni/QName;
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual/range {p4 .. p4}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 3125
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v0, p4

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-static {v9, v10}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->isComparable(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object/from16 v0, p4

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v9, v9, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 3127
    :cond_2
    const-string v9, "cvc-attribute.4"

    .line 3128
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 3129
    iget-object v12, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 3130
    iget-object v12, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v12, v12, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    .line 3131
    aput-object v4, v10, v11

    const/4 v11, 0x3

    .line 3132
    move-object/from16 v0, p4

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 3126
    invoke-virtual {p0, v9, v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3137
    :cond_3
    if-eqz v2, :cond_5

    .line 3138
    if-eqz p5, :cond_5

    .line 3139
    move-object/from16 v0, p5

    iget-short v9, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    .line 3140
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v0, p5

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-static {v9, v10}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->isComparable(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object/from16 v0, p5

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v9, v9, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 3142
    :cond_4
    const-string v9, "cvc-complex-type.3.1"

    .line 3143
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 3144
    iget-object v12, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 3145
    iget-object v12, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v12, v12, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    .line 3146
    aput-object v4, v10, v11

    const/4 v11, 0x3

    .line 3147
    move-object/from16 v0, p5

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 3141
    invoke-virtual {p0, v9, v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3150
    :cond_5
    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    if-eqz v9, :cond_6

    .line 3151
    move-object/from16 v0, p6

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v9, v10}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lmf/org/apache/xerces/xs/XSValue;)V

    .line 3154
    :cond_6
    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v9, :cond_7

    .line 3156
    move-object/from16 v0, p4

    move-object/from16 v1, p6

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    .line 3158
    move-object/from16 v0, p6

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 3164
    move-object/from16 v0, p6

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v9, v10}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lmf/org/apache/xerces/xs/XSValue;)V

    .line 3167
    const/4 v9, 0x2

    move-object/from16 v0, p6

    iput-short v9, v0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidationAttempted:S

    .line 3170
    iget v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iput v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    .line 3172
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->mergeContext()[Ljava/lang/String;

    move-result-object v5

    .line 3174
    .local v5, "errors":[Ljava/lang/String;
    move-object/from16 v0, p6

    iput-object v5, v0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fErrors:[Ljava/lang/String;

    .line 3177
    if-nez v5, :cond_9

    const/4 v9, 0x2

    .line 3176
    :goto_1
    move-object/from16 v0, p6

    iput-short v9, v0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidity:S

    .line 3179
    .end local v5    # "errors":[Ljava/lang/String;
    :cond_7
    return-void

    .line 3113
    :catch_0
    move-exception v7

    .line 3114
    .local v7, "idve":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3116
    const-string v10, "cvc-attribute.3"

    .line 3117
    const/4 v9, 0x4

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v12, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v11, v9

    const/4 v9, 0x1

    iget-object v12, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v12, v12, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v11, v9

    const/4 v9, 0x2

    aput-object v4, v11, v9

    const/4 v12, 0x3

    .line 3118
    instance-of v9, v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v9, :cond_8

    move-object v9, v3

    .line 3119
    check-cast v9, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getTypeName()Ljava/lang/String;

    move-result-object v9

    :goto_2
    aput-object v9, v11, v12

    .line 3115
    invoke-virtual {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3119
    :cond_8
    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 3177
    .end local v7    # "idve":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    .restart local v5    # "errors":[Ljava/lang/String;
    :cond_9
    const/4 v9, 0x1

    goto :goto_1
.end method

.method processRootElementDeclQName(Ljavax/xml/namespace/QName;Lmf/org/apache/xerces/xni/QName;)V
    .locals 8
    .param p1, "rootElementDeclQName"    # Ljavax/xml/namespace/QName;
    .param p2, "element"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    const/4 v3, 0x0

    .line 3541
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 3542
    .local v2, "rootElementDeclNamespace":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3543
    const/4 v2, 0x0

    .line 3546
    :cond_0
    const/4 v1, 0x5

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 3545
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v7

    .line 3547
    .local v7, "grammarForRootElement":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v7, :cond_1

    .line 3548
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 3550
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_3

    .line 3551
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3552
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    .line 3554
    .local v6, "declName":Ljava/lang/String;
    :goto_0
    const-string v0, "cvc-elt.1.a"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v1, v3

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3559
    .end local v6    # "declName":Ljava/lang/String;
    :goto_1
    return-void

    .line 3553
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 3557
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {p0, v0, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->checkElementMatchesRootElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/xni/QName;)V

    goto :goto_1
.end method

.method processRootTypeQName(Ljavax/xml/namespace/QName;)V
    .locals 8
    .param p1, "rootTypeQName"    # Ljavax/xml/namespace/QName;

    .prologue
    const/4 v3, 0x0

    .line 3518
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 3519
    .local v2, "rootTypeNamespace":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3520
    const/4 v2, 0x0

    .line 3522
    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3523
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 3532
    :cond_1
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v0, :cond_2

    .line 3533
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3534
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v7

    .line 3536
    .local v7, "typeName":Ljava/lang/String;
    :goto_1
    const-string v0, "cvc-type.1"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v1, v3

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3538
    .end local v7    # "typeName":Ljava/lang/String;
    :cond_2
    return-void

    .line 3527
    :cond_3
    const/4 v1, 0x5

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 3526
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v6

    .line 3528
    .local v6, "grammarForRootType":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v6, :cond_1

    .line 3529
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto :goto_0

    .line 3535
    .end local v6    # "grammarForRootType":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1113
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1117
    :cond_0
    return-void
.end method

.method reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 3571
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    if-eqz v0, :cond_0

    .line 3572
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    .line 3573
    const-string v1, "http://www.w3.org/TR/xml-schema-1"

    .line 3576
    const/4 v2, 0x1

    .line 3572
    invoke-virtual {v0, v1, p1, p2, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 3577
    :cond_0
    return-void
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 12
    .param p1, "componentManager"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 1346
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    .line 1348
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->clear()V

    .line 1349
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExpandedLocationPairs:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->clear()V

    .line 1352
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->resetIDTables()V

    .line 1355
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v6, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 1358
    iput-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 1359
    iput-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    .line 1360
    iput-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    .line 1361
    iput v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    .line 1362
    iput v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    .line 1363
    iput v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    .line 1364
    iput v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    .line 1365
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    .line 1366
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaDynamicValidation:Z

    .line 1369
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityRef:Z

    .line 1370
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fInCDATA:Z

    .line 1372
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->clear()V

    .line 1375
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    const-string v6, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v9, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->reset(Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    .line 1379
    :try_start_0
    const-string v6, "http://apache.org/xml/features/internal/parser-settings"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1385
    .local v2, "parser_settings":Z
    :goto_0
    if-nez v2, :cond_0

    .line 1387
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v6, v7}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->addValidationState(Lmf/org/apache/xerces/impl/validation/ValidationState;)V

    .line 1389
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->nodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->reset()V

    .line 1392
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    .line 1393
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;

    .line 1394
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    .line 1395
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v9, v9, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 1391
    invoke-static {v6, v7, v8, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->processExternalHints(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    .line 1591
    :goto_1
    return-void

    .line 1381
    .end local v2    # "parser_settings":Z
    :catch_0
    move-exception v0

    .line 1382
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    const/4 v2, 0x1

    .restart local v2    # "parser_settings":Z
    goto :goto_0

    .line 1400
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :cond_0
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->nodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v6, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 1403
    const-string v6, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/util/SymbolTable;

    .line 1404
    .local v5, "symbolTable":Lmf/org/apache/xerces/util/SymbolTable;
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    if-eq v5, v6, :cond_1

    .line 1405
    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 1409
    :cond_1
    :try_start_1
    const-string v6, "http://apache.org/xml/features/namespace-growth"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1415
    :goto_2
    :try_start_2
    const-string v6, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1420
    :goto_3
    iget-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z

    if-eqz v6, :cond_3

    .line 1421
    iput-boolean v11, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    .line 1430
    :goto_4
    iget-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    if-eqz v6, :cond_2

    .line 1432
    :try_start_3
    const-string v6, "http://apache.org/xml/features/validation/schema"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_13

    .line 1438
    :cond_2
    :goto_5
    :try_start_4
    const-string v6, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFullChecking:Z
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1444
    :goto_6
    :try_start_5
    const-string v6, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1450
    :goto_7
    :try_start_6
    const-string v6, "http://apache.org/xml/features/validation/schema/element-default"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z
    :try_end_6
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1456
    :goto_8
    :try_start_7
    const-string v6, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z
    :try_end_7
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_7

    .line 1463
    :goto_9
    :try_start_8
    const-string v6, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    .line 1462
    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1461
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaType:Ljava/lang/String;
    :try_end_8
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_8

    .line 1469
    :goto_a
    :try_start_9
    const-string v6, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z
    :try_end_9
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_9 .. :try_end_9} :catch_9

    .line 1475
    :goto_b
    const-string v6, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .line 1477
    const-string v6, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    .line 1478
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v6, v9}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->addValidationState(Lmf/org/apache/xerces/impl/validation/ValidationState;)V

    .line 1479
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v6, v9}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setSymbolTable(Lmf/org/apache/xerces/util/SymbolTable;)V

    .line 1482
    :try_start_a
    const-string v6, "http://apache.org/xml/properties/validation/schema/root-type-definition"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1483
    .local v4, "rootType":Ljava/lang/Object;
    if-nez v4, :cond_4

    .line 1484
    const/4 v6, 0x0

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    .line 1485
    const/4 v6, 0x0

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :try_end_a
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_a .. :try_end_a} :catch_a

    .line 1502
    .end local v4    # "rootType":Ljava/lang/Object;
    :goto_c
    :try_start_b
    const-string v6, "http://apache.org/xml/properties/validation/schema/root-element-declaration"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1503
    .local v3, "rootDecl":Ljava/lang/Object;
    if-nez v3, :cond_6

    .line 1504
    const/4 v6, 0x0

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    .line 1505
    const/4 v6, 0x0

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    :try_end_b
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_b .. :try_end_b} :catch_b

    .line 1523
    .end local v3    # "rootDecl":Ljava/lang/Object;
    :goto_d
    :try_start_c
    const-string v6, "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_c
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_c .. :try_end_c} :catch_c

    move-result v1

    .line 1531
    .local v1, "ignoreXSIType":Z
    :goto_e
    if-eqz v1, :cond_8

    move v6, v7

    :goto_f
    iput v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    .line 1534
    :try_start_d
    const-string v6, "http://apache.org/xml/features/validation/identity-constraint-checking"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIDCChecking:Z
    :try_end_d
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_d .. :try_end_d} :catch_d

    .line 1541
    :goto_10
    :try_start_e
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    const-string v7, "http://apache.org/xml/features/validation/id-idref-checking"

    invoke-interface {p1, v7}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setIdIdrefChecking(Z)V
    :try_end_e
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_e .. :try_end_e} :catch_e

    .line 1548
    :goto_11
    :try_start_f
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    const-string v7, "http://apache.org/xml/features/validation/unparsed-entity-checking"

    invoke-interface {p1, v7}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setUnparsedEntityChecking(Z)V
    :try_end_f
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_f .. :try_end_f} :catch_f

    .line 1556
    :goto_12
    :try_start_10
    const-string v6, "http://apache.org/xml/properties/schema/external-schemaLocation"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    .line 1558
    const-string v6, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1557
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;
    :try_end_10
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_10 .. :try_end_10} :catch_10

    .line 1569
    :goto_13
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    .line 1570
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;

    .line 1571
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    .line 1572
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v9, v9, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 1568
    invoke-static {v6, v7, v8, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->processExternalHints(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    .line 1575
    :try_start_11
    const-string v6, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fJaxpSchemaSource:Ljava/lang/Object;
    :try_end_11
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_11 .. :try_end_11} :catch_11

    .line 1583
    :goto_14
    :try_start_12
    const-string v6, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    :try_end_12
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_12 .. :try_end_12} :catch_12

    .line 1588
    :goto_15
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4XsiType:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v6, v5}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setSymbolTable(Lmf/org/apache/xerces/util/SymbolTable;)V

    .line 1589
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4ApplyDefault:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v6, v5}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setSymbolTable(Lmf/org/apache/xerces/util/SymbolTable;)V

    goto/16 :goto_1

    .line 1410
    .end local v1    # "ignoreXSIType":Z
    :catch_1
    move-exception v0

    .line 1411
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z

    goto/16 :goto_2

    .line 1416
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_2
    move-exception v0

    .line 1417
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z

    goto/16 :goto_3

    .line 1424
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :cond_3
    :try_start_13
    const-string v6, "http://xml.org/sax/features/validation"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z
    :try_end_13
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_13 .. :try_end_13} :catch_3

    goto/16 :goto_4

    .line 1425
    :catch_3
    move-exception v0

    .line 1426
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    goto/16 :goto_4

    .line 1439
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_4
    move-exception v0

    .line 1440
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFullChecking:Z

    goto/16 :goto_6

    .line 1445
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_5
    move-exception v0

    .line 1446
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    goto/16 :goto_7

    .line 1451
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_6
    move-exception v0

    .line 1452
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z

    goto/16 :goto_8

    .line 1457
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_7
    move-exception v0

    .line 1458
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v11, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    goto/16 :goto_9

    .line 1464
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_8
    move-exception v0

    .line 1465
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaType:Ljava/lang/String;

    goto/16 :goto_a

    .line 1471
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_9
    move-exception v0

    .line 1472
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    goto/16 :goto_b

    .line 1487
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    .restart local v4    # "rootType":Ljava/lang/Object;
    :cond_4
    :try_start_14
    instance-of v6, v4, Ljavax/xml/namespace/QName;

    if-eqz v6, :cond_5

    .line 1488
    check-cast v4, Ljavax/xml/namespace/QName;

    .end local v4    # "rootType":Ljava/lang/Object;
    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    .line 1489
    const/4 v6, 0x0

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :try_end_14
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_14 .. :try_end_14} :catch_a

    goto/16 :goto_c

    .line 1496
    :catch_a
    move-exception v0

    .line 1497
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    .line 1498
    iput-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto/16 :goto_c

    .line 1492
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    .restart local v4    # "rootType":Ljava/lang/Object;
    :cond_5
    :try_start_15
    check-cast v4, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .end local v4    # "rootType":Ljava/lang/Object;
    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 1493
    const/4 v6, 0x0

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;
    :try_end_15
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_15 .. :try_end_15} :catch_a

    goto/16 :goto_c

    .line 1507
    .restart local v3    # "rootDecl":Ljava/lang/Object;
    :cond_6
    :try_start_16
    instance-of v6, v3, Ljavax/xml/namespace/QName;

    if-eqz v6, :cond_7

    .line 1508
    check-cast v3, Ljavax/xml/namespace/QName;

    .end local v3    # "rootDecl":Ljava/lang/Object;
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    .line 1509
    const/4 v6, 0x0

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    :try_end_16
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_16 .. :try_end_16} :catch_b

    goto/16 :goto_d

    .line 1516
    :catch_b
    move-exception v0

    .line 1517
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    .line 1518
    iput-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto/16 :goto_d

    .line 1512
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    .restart local v3    # "rootDecl":Ljava/lang/Object;
    :cond_7
    :try_start_17
    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .end local v3    # "rootDecl":Ljava/lang/Object;
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 1513
    const/4 v6, 0x0

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;
    :try_end_17
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_17 .. :try_end_17} :catch_b

    goto/16 :goto_d

    .line 1525
    :catch_c
    move-exception v0

    .line 1526
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    const/4 v1, 0x0

    .restart local v1    # "ignoreXSIType":Z
    goto/16 :goto_e

    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :cond_8
    move v6, v8

    .line 1531
    goto/16 :goto_f

    .line 1536
    :catch_d
    move-exception v0

    .line 1537
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v11, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIDCChecking:Z

    goto/16 :goto_10

    .line 1543
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_e
    move-exception v0

    .line 1544
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v6, v11}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setIdIdrefChecking(Z)V

    goto/16 :goto_11

    .line 1550
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_f
    move-exception v0

    .line 1551
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v6, v11}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setUnparsedEntityChecking(Z)V

    goto/16 :goto_12

    .line 1559
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_10
    move-exception v0

    .line 1560
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    .line 1561
    iput-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;

    goto/16 :goto_13

    .line 1576
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_11
    move-exception v0

    .line 1577
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fJaxpSchemaSource:Ljava/lang/Object;

    goto/16 :goto_14

    .line 1584
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_12
    move-exception v0

    .line 1585
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    goto/16 :goto_15

    .line 1433
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    .end local v1    # "ignoreXSIType":Z
    :catch_13
    move-exception v6

    goto/16 :goto_5
.end method

.method public setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 0
    .param p1, "documentHandler"    # Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    .prologue
    .line 664
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    .line 665
    return-void
.end method

.method public setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0
    .param p1, "source"    # Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .prologue
    .line 678
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .line 679
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "featureId"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 565
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "propertyId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 592
    const-string v0, "http://apache.org/xml/properties/validation/schema/root-type-definition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 593
    if-nez p2, :cond_1

    .line 594
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    .line 595
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 620
    .end local p2    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 597
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v0, p2, Ljavax/xml/namespace/QName;

    if-eqz v0, :cond_2

    .line 598
    check-cast p2, Ljavax/xml/namespace/QName;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    .line 599
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto :goto_0

    .line 602
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    check-cast p2, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 603
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    goto :goto_0

    .line 606
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    const-string v0, "http://apache.org/xml/properties/validation/schema/root-element-declaration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    if-nez p2, :cond_4

    .line 608
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    .line 609
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto :goto_0

    .line 611
    :cond_4
    instance-of v0, p2, Ljavax/xml/namespace/QName;

    if-eqz v0, :cond_5

    .line 612
    check-cast p2, Ljavax/xml/namespace/QName;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    .line 613
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto :goto_0

    .line 616
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    check-cast p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 617
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    goto :goto_0
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 917
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fInCDATA:Z

    .line 919
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 923
    :cond_0
    return-void
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "locator"    # Lmf/org/apache/xerces/xni/XMLLocator;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "namespaceContext"    # Lmf/org/apache/xerces/xni/NamespaceContext;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 715
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v0, p3}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    .line 716
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4XsiType:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v0, p3}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    .line 717
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4ApplyDefault:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v0, p3}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    .line 718
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    .line 720
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleStartDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 726
    :cond_0
    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 789
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    .line 791
    .local v0, "modifiedAugs":Lmf/org/apache/xerces/xni/Augmentations;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_0

    .line 792
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, p2, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 795
    :cond_0
    return-void
.end method

.method public startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "encoding"    # Ljava/lang/String;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1041
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityRef:Z

    .line 1043
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1047
    :cond_0
    return-void
.end method

.method public startValueScopeFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)V
    .locals 2
    .param p1, "identityConstraint"    # Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    .param p2, "initialDepth"    # I

    .prologue
    .line 1607
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v1, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->getValueStoreFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    move-result-object v0

    .line 1608
    .local v0, "valueStore":Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->startValueScope()V

    .line 1610
    return-void
.end method

.method storeLocations(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "sLocation"    # Ljava/lang/String;
    .param p2, "nsLocation"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2607
    if-eqz p1, :cond_0

    .line 2608
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v2, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->tokenizeSchemaLocationStr(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2610
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    .line 2611
    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    .line 2612
    const-string v3, "SchemaLocation"

    .line 2613
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    .line 2610
    invoke-virtual {v1, v2, v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 2617
    :cond_0
    if-eqz p2, :cond_3

    .line 2619
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    .line 2620
    .local v0, "la":Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;
    if-nez v0, :cond_1

    .line 2621
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    .end local v0    # "la":Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;
    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;-><init>()V

    .line 2622
    .restart local v0    # "la":Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2624
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-eqz v1, :cond_2

    .line 2626
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 2630
    :cond_2
    :goto_1
    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->addLocation(Ljava/lang/String;)V

    .line 2633
    .end local v0    # "la":Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;
    :cond_3
    return-void

    .line 2608
    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2627
    .restart local v0    # "la":Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1069
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1073
    :cond_0
    return-void
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "standalone"    # Ljava/lang/String;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 745
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 749
    :cond_0
    return-void
.end method
