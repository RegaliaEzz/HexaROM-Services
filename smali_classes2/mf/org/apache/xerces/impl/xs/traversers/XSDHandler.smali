.class public Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;
.super Ljava/lang/Object;
.source "XSDHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$SAX2XNIUtil;,
        Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;,
        Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    }
.end annotation


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field static final ATTRIBUTEGROUP_TYPE:I = 0x2

.field static final ATTRIBUTE_TYPE:I = 0x1

.field private static final CIRCULAR_CODES:[Ljava/lang/String;

.field private static final COMP_TYPE:[Ljava/lang/String;

.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final DEBUG_NODE_POOL:Z = false

.field protected static final DISALLOW_DOCTYPE:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field static final ELEMENT_TYPE:I = 0x3

.field private static final ELE_ERROR_CODES:[Ljava/lang/String;

.field private static final EMPTY_TABLE:Ljava/util/Hashtable;

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field public static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field public static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field static final GROUP_TYPE:I = 0x4

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field static final IDENTITYCONSTRAINT_TYPE:I = 0x5

.field private static final INC_KEYREF_STACK_AMOUNT:I = 0x2

.field private static final INC_STACK_SIZE:I = 0xa

.field private static final INIT_KEYREF_STACK:I = 0x2

.field private static final INIT_STACK_SIZE:I = 0x1e

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final LOCALE:Ljava/lang/String; = "http://apache.org/xml/properties/locale"

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field private static final NAMESPACE_PREFIXES:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field static final NOTATION_TYPE:I = 0x6

.field private static final NS_ERROR_CODES:[[Ljava/lang/String;

.field public static final REDEF_IDENTIFIER:Ljava/lang/String; = "_fn3dktizrknc9pi"

.field protected static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field protected static final STANDARD_URI_CONFORMANT_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/standard-uri-conformant"

.field protected static final STRING_INTERNING:Ljava/lang/String; = "http://xml.org/sax/features/string-interning"

.field public static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field static final TYPEDECL_TYPE:I = 0x7

.field protected static final VALIDATE_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/validate-annotations"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field public static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field protected static final XMLSCHEMA_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"


# instance fields
.field private fAllContext:[I

.field private fAllTNSs:Ljava/util/Vector;

.field fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

.field private fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

.field fAttributeGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;

.field fAttributeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;

.field fComplexTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

.field fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

.field protected fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

.field private fDependencyMap:Ljava/util/Hashtable;

.field private fDoc2SystemId:Ljava/util/Hashtable;

.field private fDoc2XSDocumentMap:Ljava/util/Hashtable;

.field fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

.field private fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

.field private fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field private fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

.field fGrammarBucketAdapter:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;

.field private fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field fGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;

.field fHiddenNodes:Ljava/util/Hashtable;

.field private fHonourAllSchemaLocations:Z

.field private fImportMap:Ljava/util/Hashtable;

.field private fKeyrefElems:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

.field private fKeyrefNamespaceContext:[[Ljava/lang/String;

.field private fKeyrefStackPos:I

.field fKeyrefTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;

.field private fKeyrefs:[Lmf/org/w3c/dom/Element;

.field private fKeyrefsMapXSDocumentInfo:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

.field private fLastSchemaWasDuplicate:Z

.field private fLocalElemNamespaceContext:[[Ljava/lang/String;

.field private fLocalElemStackPos:I

.field private fLocalElementDecl:[Lmf/org/w3c/dom/Element;

.field private fLocalElementDecl_schema:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

.field private fLocationPairs:Ljava/util/Hashtable;

.field fNamespaceGrowth:Z

.field protected fNotationRegistry:Ljava/util/Hashtable;

.field fNotationTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;

.field private fParent:[Lmf/org/apache/xerces/xs/XSObject;

.field private fParticle:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

.field private fRedefine2NSSupport:Ljava/util/Hashtable;

.field private fRedefine2XSDMap:Ljava/util/Hashtable;

.field private fRedefinedRestrictedAttributeGroupRegistry:Ljava/util/Hashtable;

.field private fRedefinedRestrictedGroupRegistry:Ljava/util/Hashtable;

.field private fReportedTNS:Ljava/util/Vector;

.field private fRoot:Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

.field private fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

.field fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

.field fSimpleTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;

.field fStAXSchemaParser:Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field fTolerateDuplicates:Z

.field private fTraversed:Ljava/util/Hashtable;

.field fUniqueOrKeyTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;

.field private fUnparsedAttributeGroupRegistry:Ljava/util/Hashtable;

.field private fUnparsedAttributeGroupRegistrySub:Ljava/util/Hashtable;

.field private fUnparsedAttributeRegistry:Ljava/util/Hashtable;

.field private fUnparsedAttributeRegistrySub:Ljava/util/Hashtable;

.field private fUnparsedElementRegistry:Ljava/util/Hashtable;

.field private fUnparsedElementRegistrySub:Ljava/util/Hashtable;

.field private fUnparsedGroupRegistry:Ljava/util/Hashtable;

.field private fUnparsedGroupRegistrySub:Ljava/util/Hashtable;

.field private fUnparsedIdentityConstraintRegistry:Ljava/util/Hashtable;

.field private fUnparsedIdentityConstraintRegistrySub:Ljava/util/Hashtable;

.field private fUnparsedNotationRegistry:Ljava/util/Hashtable;

.field private fUnparsedNotationRegistrySub:Ljava/util/Hashtable;

.field private fUnparsedRegistriesExt:[Ljava/util/Hashtable;

.field private fUnparsedTypeRegistry:Ljava/util/Hashtable;

.field private fUnparsedTypeRegistrySub:Ljava/util/Hashtable;

.field private fValidateAnnotations:Z

.field fWildCardTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;

.field fXSContentHandler:Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;

.field private fXSDocumentInfoRegistry:Ljava/util/Hashtable;

.field private xl:Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 305
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->EMPTY_TABLE:Ljava/util/Hashtable;

    .line 733
    const/16 v0, 0x8

    new-array v0, v0, [[Ljava/lang/String;

    .line 734
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "src-include.2.1"

    aput-object v2, v1, v6

    const-string v2, "src-include.2.1"

    aput-object v2, v1, v4

    aput-object v1, v0, v6

    .line 735
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "src-redefine.3.1"

    aput-object v2, v1, v6

    const-string v2, "src-redefine.3.1"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    .line 736
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "src-import.3.1"

    aput-object v2, v1, v6

    const-string v2, "src-import.3.2"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    .line 738
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "TargetNamespace.1"

    aput-object v2, v1, v6

    const-string v2, "TargetNamespace.2"

    aput-object v2, v1, v4

    aput-object v1, v0, v7

    .line 739
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "TargetNamespace.1"

    aput-object v2, v1, v6

    const-string v2, "TargetNamespace.2"

    aput-object v2, v1, v4

    aput-object v1, v0, v8

    const/4 v1, 0x6

    .line 740
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "TargetNamespace.1"

    aput-object v3, v2, v6

    const-string v3, "TargetNamespace.2"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 741
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "TargetNamespace.1"

    aput-object v3, v2, v6

    const-string v3, "TargetNamespace.2"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    .line 733
    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->NS_ERROR_CODES:[[Ljava/lang/String;

    .line 744
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 745
    const-string v1, "src-include.1"

    aput-object v1, v0, v6

    const-string v1, "src-redefine.2"

    aput-object v1, v0, v4

    const-string v1, "src-import.2"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "schema_reference.4"

    aput-object v2, v0, v1

    .line 746
    const-string v1, "schema_reference.4"

    aput-object v1, v0, v7

    const-string v1, "schema_reference.4"

    aput-object v1, v0, v8

    const/4 v1, 0x6

    const-string v2, "schema_reference.4"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "schema_reference.4"

    aput-object v2, v0, v1

    .line 744
    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->ELE_ERROR_CODES:[Ljava/lang/String;

    .line 1479
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 1481
    const-string v1, "attribute declaration"

    aput-object v1, v0, v4

    .line 1482
    const-string v1, "attribute group"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    .line 1483
    const-string v2, "element declaration"

    aput-object v2, v0, v1

    .line 1484
    const-string v1, "group"

    aput-object v1, v0, v7

    .line 1485
    const-string v1, "identity constraint"

    aput-object v1, v0, v8

    const/4 v1, 0x6

    .line 1486
    const-string v2, "notation"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 1487
    const-string v2, "type definition"

    aput-object v2, v0, v1

    .line 1479
    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->COMP_TYPE:[Ljava/lang/String;

    .line 1490
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 1491
    const-string v1, "Internal-Error"

    aput-object v1, v0, v6

    .line 1492
    const-string v1, "Internal-Error"

    aput-object v1, v0, v4

    .line 1493
    const-string v1, "src-attribute_group.3"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    .line 1494
    const-string v2, "e-props-correct.6"

    aput-object v2, v0, v1

    .line 1495
    const-string v1, "mg-props-correct.2"

    aput-object v1, v0, v7

    .line 1496
    const-string v1, "Internal-Error"

    aput-object v1, v0, v8

    const/4 v1, 0x6

    .line 1497
    const-string v2, "Internal-Error"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 1498
    const-string v2, "st-props-correct.2"

    aput-object v2, v0, v1

    .line 1490
    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->CIRCULAR_CODES:[Ljava/lang/String;

    .line 1499
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/16 v4, 0x1e

    const/4 v3, 0x0

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNotationRegistry:Ljava/util/Hashtable;

    .line 240
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    .line 250
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistry:Ljava/util/Hashtable;

    .line 251
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistry:Ljava/util/Hashtable;

    .line 252
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistry:Ljava/util/Hashtable;

    .line 253
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistry:Ljava/util/Hashtable;

    .line 254
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistry:Ljava/util/Hashtable;

    .line 255
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistry:Ljava/util/Hashtable;

    .line 256
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistry:Ljava/util/Hashtable;

    .line 260
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistrySub:Ljava/util/Hashtable;

    .line 261
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistrySub:Ljava/util/Hashtable;

    .line 262
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistrySub:Ljava/util/Hashtable;

    .line 263
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistrySub:Ljava/util/Hashtable;

    .line 264
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistrySub:Ljava/util/Hashtable;

    .line 265
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistrySub:Ljava/util/Hashtable;

    .line 266
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistrySub:Ljava/util/Hashtable;

    .line 270
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/util/Hashtable;

    .line 272
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    aput-object v1, v0, v7

    .line 273
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    aput-object v1, v0, v5

    const/4 v1, 0x3

    .line 274
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 275
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 276
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 277
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 278
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedRegistriesExt:[Ljava/util/Hashtable;

    .line 287
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fXSDocumentInfoRegistry:Ljava/util/Hashtable;

    .line 292
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDependencyMap:Ljava/util/Hashtable;

    .line 298
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fImportMap:Ljava/util/Hashtable;

    .line 302
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAllTNSs:Ljava/util/Vector;

    .line 304
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocationPairs:Ljava/util/Hashtable;

    .line 308
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    .line 334
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTraversed:Ljava/util/Hashtable;

    .line 338
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    .line 341
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRoot:Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .line 345
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2XSDocumentMap:Ljava/util/Hashtable;

    .line 349
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefine2XSDMap:Ljava/util/Hashtable;

    .line 352
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefine2NSSupport:Ljava/util/Hashtable;

    .line 359
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedAttributeGroupRegistry:Ljava/util/Hashtable;

    .line 360
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedGroupRegistry:Ljava/util/Hashtable;

    .line 367
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    .line 370
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHonourAllSchemaLocations:Z

    .line 373
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    .line 376
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    .line 424
    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    .line 426
    new-array v0, v4, [Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParticle:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 427
    new-array v0, v4, [Lmf/org/w3c/dom/Element;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl:[Lmf/org/w3c/dom/Element;

    .line 428
    new-array v0, v4, [Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl_schema:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .line 429
    new-array v0, v4, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAllContext:[I

    .line 430
    new-array v0, v4, [Lmf/org/apache/xerces/xs/XSObject;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParent:[Lmf/org/apache/xerces/xs/XSObject;

    .line 431
    filled-new-array {v4, v7}, [I

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemNamespaceContext:[[Ljava/lang/String;

    .line 441
    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    .line 443
    new-array v0, v5, [Lmf/org/w3c/dom/Element;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefs:[Lmf/org/w3c/dom/Element;

    .line 444
    new-array v0, v5, [Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefsMapXSDocumentInfo:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .line 445
    new-array v0, v5, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefElems:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 446
    filled-new-array {v5, v7}, [I

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefNamespaceContext:[[Ljava/lang/String;

    .line 449
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 450
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 451
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 452
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 453
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 454
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 455
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 1466
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fReportedTNS:Ljava/util/Vector;

    .line 4051
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->xl:Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .line 459
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    .line 460
    new-instance v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    new-instance v1, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;-><init>()V

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    .line 461
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;)V
    .locals 1
    .param p1, "gBucket"    # Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    .prologue
    .line 467
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;-><init>()V

    .line 468
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    .line 473
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    .line 474
    return-void
.end method

.method private addGlobalAttributeDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 13
    .param p1, "srcGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "dstGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    const/4 v12, 0x1

    .line 2765
    invoke-virtual {p1, v12}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v0

    .line 2766
    .local v0, "components":Lmf/org/apache/xerces/xs/XSNamedMap;
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v6

    .line 2770
    .local v6, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v6, :cond_0

    .line 2782
    invoke-virtual {p1, v12}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponentsExt(S)Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    move-result-object v1

    .line 2783
    .local v1, "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->getLength()I

    move-result v6

    .line 2785
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v6, :cond_3

    .line 2800
    return-void

    .line 2771
    .end local v1    # "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    :cond_0
    invoke-interface {v0, v3}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 2772
    .local v9, "srcDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v2

    .line 2773
    .local v2, "dstDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    if-nez v2, :cond_2

    .line 2774
    invoke-virtual {p2, v9}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V

    .line 2770
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2776
    :cond_2
    if-eq v2, v9, :cond_1

    iget-boolean v10, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-nez v10, :cond_1

    .line 2777
    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSharingError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2786
    .end local v2    # "dstDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .end local v9    # "srcDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .restart local v1    # "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    :cond_3
    invoke-interface {v1, v3}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2787
    .local v5, "key":Ljava/lang/String;
    const/16 v10, 0x2c

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 2788
    .local v4, "index":I
    const/4 v10, 0x0

    invoke-virtual {v5, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2789
    .local v7, "location":Ljava/lang/String;
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 2791
    .local v8, "name":Ljava/lang/String;
    add-int/lit8 v10, v3, 0x1

    invoke-interface {v1, v10}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 2792
    .restart local v9    # "srcDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    invoke-virtual {p2, v8, v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v2

    .line 2793
    .restart local v2    # "dstDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    if-nez v2, :cond_4

    .line 2794
    invoke-virtual {p2, v9, v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;Ljava/lang/String;)V

    .line 2785
    :cond_4
    add-int/lit8 v3, v3, 0x2

    goto :goto_1
.end method

.method private addGlobalAttributeGroupDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 13
    .param p1, "srcGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "dstGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    const/4 v12, 0x5

    .line 2803
    invoke-virtual {p1, v12}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v0

    .line 2804
    .local v0, "components":Lmf/org/apache/xerces/xs/XSNamedMap;
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v6

    .line 2808
    .local v6, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v6, :cond_0

    .line 2820
    invoke-virtual {p1, v12}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponentsExt(S)Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    move-result-object v1

    .line 2821
    .local v1, "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->getLength()I

    move-result v6

    .line 2823
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v6, :cond_3

    .line 2838
    return-void

    .line 2809
    .end local v1    # "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    :cond_0
    invoke-interface {v0, v3}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    .line 2810
    .local v9, "srcDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v2

    .line 2811
    .local v2, "dstDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    if-nez v2, :cond_2

    .line 2812
    invoke-virtual {p2, v9}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V

    .line 2808
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2814
    :cond_2
    if-eq v2, v9, :cond_1

    iget-boolean v10, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-nez v10, :cond_1

    .line 2815
    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getNamespace()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSharingError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2824
    .end local v2    # "dstDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .end local v9    # "srcDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .restart local v1    # "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    :cond_3
    invoke-interface {v1, v3}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2825
    .local v5, "key":Ljava/lang/String;
    const/16 v10, 0x2c

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 2826
    .local v4, "index":I
    const/4 v10, 0x0

    invoke-virtual {v5, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2827
    .local v7, "location":Ljava/lang/String;
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 2829
    .local v8, "name":Ljava/lang/String;
    add-int/lit8 v10, v3, 0x1

    invoke-interface {v1, v10}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    .line 2830
    .restart local v9    # "srcDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    invoke-virtual {p2, v8, v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v2

    .line 2831
    .restart local v2    # "dstDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    if-nez v2, :cond_4

    .line 2832
    invoke-virtual {p2, v9, v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;)V

    .line 2823
    :cond_4
    add-int/lit8 v3, v3, 0x2

    goto :goto_1
.end method

.method private addGlobalComponent(Lmf/org/apache/xerces/xs/XSObject;Lmf/org/apache/xerces/impl/xs/XSDDescription;)V
    .locals 6
    .param p1, "component"    # Lmf/org/apache/xerces/xs/XSObject;
    .param p2, "desc"    # Lmf/org/apache/xerces/impl/xs/XSDDescription;

    .prologue
    const/4 v5, 0x1

    .line 3160
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 3162
    .local v2, "namespace":Ljava/lang/String;
    invoke-virtual {p2, v2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setNamespace(Ljava/lang/String;)V

    .line 3163
    invoke-direct {p0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v3

    .line 3165
    .local v3, "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getType()S

    move-result v0

    .line 3166
    .local v0, "componentType":S
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3168
    .local v1, "name":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 3236
    .end local p1    # "component":Lmf/org/apache/xerces/xs/XSObject;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .restart local p1    # "component":Lmf/org/apache/xerces/xs/XSObject;
    :pswitch_1
    move-object v4, p1

    .line 3170
    check-cast v4, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v4}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getAnonymous()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3171
    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v4, p1

    .line 3172
    check-cast v4, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    .line 3175
    :cond_1
    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v4

    if-nez v4, :cond_0

    .line 3176
    check-cast p1, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .end local p1    # "component":Lmf/org/apache/xerces/xs/XSObject;
    const-string v4, ""

    invoke-virtual {v3, p1, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;)V

    goto :goto_0

    .restart local p1    # "component":Lmf/org/apache/xerces/xs/XSObject;
    :pswitch_2
    move-object v4, p1

    .line 3181
    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getScope()S

    move-result v4

    if-ne v4, v5, :cond_0

    .line 3182
    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v4, p1

    .line 3183
    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V

    .line 3186
    :cond_2
    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v4

    if-nez v4, :cond_0

    .line 3187
    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .end local p1    # "component":Lmf/org/apache/xerces/xs/XSObject;
    const-string v4, ""

    invoke-virtual {v3, p1, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;Ljava/lang/String;)V

    goto :goto_0

    .line 3192
    .restart local p1    # "component":Lmf/org/apache/xerces/xs/XSObject;
    :pswitch_3
    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v4, p1

    .line 3193
    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V

    .line 3196
    :cond_3
    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v4

    if-nez v4, :cond_0

    .line 3197
    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    .end local p1    # "component":Lmf/org/apache/xerces/xs/XSObject;
    const-string v4, ""

    invoke-virtual {v3, p1, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;)V

    goto :goto_0

    .restart local p1    # "component":Lmf/org/apache/xerces/xs/XSObject;
    :pswitch_4
    move-object v4, p1

    .line 3201
    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getScope()S

    move-result v4

    if-ne v4, v5, :cond_0

    move-object v4, p1

    .line 3202
    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDeclAll(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    .line 3204
    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v4

    if-nez v4, :cond_4

    move-object v4, p1

    .line 3205
    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    .line 3208
    :cond_4
    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v4

    if-nez v4, :cond_0

    .line 3209
    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .end local p1    # "component":Lmf/org/apache/xerces/xs/XSObject;
    const-string v4, ""

    invoke-virtual {v3, p1, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3214
    .restart local p1    # "component":Lmf/org/apache/xerces/xs/XSObject;
    :pswitch_5
    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v4

    if-nez v4, :cond_5

    move-object v4, p1

    .line 3215
    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;)V

    .line 3218
    :cond_5
    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v4

    if-nez v4, :cond_0

    .line 3219
    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    .end local p1    # "component":Lmf/org/apache/xerces/xs/XSObject;
    const-string v4, ""

    invoke-virtual {v3, p1, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3223
    .restart local p1    # "component":Lmf/org/apache/xerces/xs/XSObject;
    :pswitch_6
    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v4

    if-nez v4, :cond_6

    move-object v4, p1

    .line 3224
    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;)V

    .line 3227
    :cond_6
    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v4

    if-nez v4, :cond_0

    .line 3228
    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    .end local p1    # "component":Lmf/org/apache/xerces/xs/XSObject;
    const-string v4, ""

    invoke-virtual {v3, p1, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private addGlobalComponents(Ljava/util/Vector;Ljava/util/Hashtable;)V
    .locals 4
    .param p1, "components"    # Ljava/util/Vector;
    .param p2, "importDependencies"    # Ljava/util/Hashtable;

    .prologue
    .line 3150
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    .line 3151
    .local v0, "desc":Lmf/org/apache/xerces/impl/xs/XSDDescription;
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    .line 3153
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 3156
    invoke-direct {p0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->updateImportDependencies(Ljava/util/Hashtable;)V

    .line 3157
    return-void

    .line 3154
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/xs/XSObject;

    invoke-direct {p0, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalComponent(Lmf/org/apache/xerces/xs/XSObject;Lmf/org/apache/xerces/impl/xs/XSDDescription;)V

    .line 3153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private addGlobalElementDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 12
    .param p1, "srcGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "dstGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    const/4 v11, 0x2

    .line 2727
    invoke-virtual {p1, v11}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v0

    .line 2728
    .local v0, "components":Lmf/org/apache/xerces/xs/XSNamedMap;
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v6

    .line 2732
    .local v6, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v6, :cond_0

    .line 2744
    invoke-virtual {p1, v11}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponentsExt(S)Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    move-result-object v1

    .line 2745
    .local v1, "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->getLength()I

    move-result v6

    .line 2747
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v6, :cond_2

    .line 2762
    return-void

    .line 2733
    .end local v1    # "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    :cond_0
    invoke-interface {v0, v3}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 2734
    .local v9, "srcDecl":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v2

    .line 2735
    .local v2, "dstDecl":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    if-nez v2, :cond_1

    .line 2736
    invoke-virtual {p2, v9}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    .line 2732
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2748
    .end local v2    # "dstDecl":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .end local v9    # "srcDecl":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .restart local v1    # "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    :cond_2
    invoke-interface {v1, v3}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2749
    .local v5, "key":Ljava/lang/String;
    const/16 v10, 0x2c

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 2750
    .local v4, "index":I
    const/4 v10, 0x0

    invoke-virtual {v5, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2751
    .local v7, "location":Ljava/lang/String;
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 2753
    .local v8, "name":Ljava/lang/String;
    add-int/lit8 v10, v3, 0x1

    invoke-interface {v1, v10}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 2754
    .restart local v9    # "srcDecl":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    invoke-virtual {p2, v8, v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v2

    .line 2755
    .restart local v2    # "dstDecl":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    if-nez v2, :cond_3

    .line 2756
    invoke-virtual {p2, v9, v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Ljava/lang/String;)V

    .line 2747
    :cond_3
    add-int/lit8 v3, v3, 0x2

    goto :goto_1
.end method

.method private addGlobalGroupDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 13
    .param p1, "srcGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "dstGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    const/4 v12, 0x6

    .line 2879
    invoke-virtual {p1, v12}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v0

    .line 2880
    .local v0, "components":Lmf/org/apache/xerces/xs/XSNamedMap;
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v6

    .line 2884
    .local v6, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v6, :cond_0

    .line 2896
    invoke-virtual {p1, v12}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponentsExt(S)Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    move-result-object v1

    .line 2897
    .local v1, "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->getLength()I

    move-result v6

    .line 2899
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v6, :cond_3

    .line 2914
    return-void

    .line 2885
    .end local v1    # "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    :cond_0
    invoke-interface {v0, v3}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    .line 2886
    .local v9, "srcDecl":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v2

    .line 2887
    .local v2, "dstDecl":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    if-nez v2, :cond_2

    .line 2888
    invoke-virtual {p2, v9}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;)V

    .line 2884
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2890
    :cond_2
    if-eq v9, v2, :cond_1

    iget-boolean v10, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-nez v10, :cond_1

    .line 2891
    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->getNamespace()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSharingError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2900
    .end local v2    # "dstDecl":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .end local v9    # "srcDecl":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .restart local v1    # "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    :cond_3
    invoke-interface {v1, v3}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2901
    .local v5, "key":Ljava/lang/String;
    const/16 v10, 0x2c

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 2902
    .local v4, "index":I
    const/4 v10, 0x0

    invoke-virtual {v5, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2903
    .local v7, "location":Ljava/lang/String;
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 2905
    .local v8, "name":Ljava/lang/String;
    add-int/lit8 v10, v3, 0x1

    invoke-interface {v1, v10}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    .line 2906
    .restart local v9    # "srcDecl":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    invoke-virtual {p2, v8, v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v2

    .line 2907
    .restart local v2    # "dstDecl":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    if-nez v2, :cond_4

    .line 2908
    invoke-virtual {p2, v9, v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Ljava/lang/String;)V

    .line 2899
    :cond_4
    add-int/lit8 v3, v3, 0x2

    goto :goto_1
.end method

.method private addGlobalNotationDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 13
    .param p1, "srcGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "dstGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    const/16 v12, 0xb

    .line 2841
    invoke-virtual {p1, v12}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v0

    .line 2842
    .local v0, "components":Lmf/org/apache/xerces/xs/XSNamedMap;
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v6

    .line 2846
    .local v6, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v6, :cond_0

    .line 2858
    invoke-virtual {p1, v12}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponentsExt(S)Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    move-result-object v1

    .line 2859
    .local v1, "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->getLength()I

    move-result v6

    .line 2861
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v6, :cond_3

    .line 2876
    return-void

    .line 2847
    .end local v1    # "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    :cond_0
    invoke-interface {v0, v3}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    .line 2848
    .local v9, "srcDecl":Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v2

    .line 2849
    .local v2, "dstDecl":Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    if-nez v2, :cond_2

    .line 2850
    invoke-virtual {p2, v9}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;)V

    .line 2846
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2852
    :cond_2
    if-eq v2, v9, :cond_1

    iget-boolean v10, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-nez v10, :cond_1

    .line 2853
    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->getNamespace()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSharingError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2862
    .end local v2    # "dstDecl":Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    .end local v9    # "srcDecl":Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    .restart local v1    # "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    :cond_3
    invoke-interface {v1, v3}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2863
    .local v5, "key":Ljava/lang/String;
    const/16 v10, 0x2c

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 2864
    .local v4, "index":I
    const/4 v10, 0x0

    invoke-virtual {v5, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2865
    .local v7, "location":Ljava/lang/String;
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 2867
    .local v8, "name":Ljava/lang/String;
    add-int/lit8 v10, v3, 0x1

    invoke-interface {v1, v10}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    .line 2868
    .restart local v9    # "srcDecl":Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    invoke-virtual {p2, v8, v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v2

    .line 2869
    .restart local v2    # "dstDecl":Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    if-nez v2, :cond_4

    .line 2870
    invoke-virtual {p2, v9, v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;Ljava/lang/String;)V

    .line 2861
    :cond_4
    add-int/lit8 v3, v3, 0x2

    goto :goto_1
.end method

.method private addGlobalTypeDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 13
    .param p1, "srcGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "dstGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    const/4 v12, 0x3

    .line 2917
    invoke-virtual {p1, v12}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v0

    .line 2918
    .local v0, "components":Lmf/org/apache/xerces/xs/XSNamedMap;
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v6

    .line 2922
    .local v6, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v6, :cond_0

    .line 2934
    invoke-virtual {p1, v12}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponentsExt(S)Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    move-result-object v1

    .line 2935
    .local v1, "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->getLength()I

    move-result v6

    .line 2937
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v6, :cond_3

    .line 2952
    return-void

    .line 2923
    .end local v1    # "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    :cond_0
    invoke-interface {v0, v3}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 2924
    .local v9, "srcDecl":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    invoke-interface {v9}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v2

    .line 2925
    .local v2, "dstDecl":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    if-nez v2, :cond_2

    .line 2926
    invoke-virtual {p2, v9}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    .line 2922
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2928
    :cond_2
    if-eq v2, v9, :cond_1

    iget-boolean v10, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-nez v10, :cond_1

    .line 2929
    invoke-interface {v9}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSharingError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2938
    .end local v2    # "dstDecl":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .end local v9    # "srcDecl":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .restart local v1    # "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    :cond_3
    invoke-interface {v1, v3}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2939
    .local v5, "key":Ljava/lang/String;
    const/16 v10, 0x2c

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 2940
    .local v4, "index":I
    const/4 v10, 0x0

    invoke-virtual {v5, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2941
    .local v7, "location":Ljava/lang/String;
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 2943
    .local v8, "name":Ljava/lang/String;
    add-int/lit8 v10, v3, 0x1

    invoke-interface {v1, v10}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 2944
    .restart local v9    # "srcDecl":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    invoke-virtual {p2, v8, v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v2

    .line 2945
    .restart local v2    # "dstDecl":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    if-nez v2, :cond_4

    .line 2946
    invoke-virtual {p2, v9, v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;)V

    .line 2937
    :cond_4
    add-int/lit8 v3, v3, 0x2

    goto :goto_1
.end method

.method private addGrammarComponents(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 2
    .param p1, "srcGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "dstGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    .line 2646
    if-nez p2, :cond_0

    .line 2647
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->createGrammarFrom(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 2664
    :goto_0
    return-void

    .line 2651
    :cond_0
    move-object v0, p2

    .line 2652
    .local v0, "tmpGrammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2653
    invoke-direct {p0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->createGrammarFrom(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    .line 2657
    :cond_1
    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addNewGrammarLocations(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 2660
    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addNewImportedGrammars(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 2663
    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addNewGrammarComponents(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto :goto_0
.end method

.method private addGrammars(Ljava/util/Vector;)V
    .locals 6
    .param p1, "grammars"    # Ljava/util/Vector;

    .prologue
    .line 2631
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    .line 2632
    .local v2, "length":I
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    .line 2634
    .local v0, "desc":Lmf/org/apache/xerces/impl/xs/XSDDescription;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 2643
    return-void

    .line 2635
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 2636
    .local v3, "sg1":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setNamespace(Ljava/lang/String;)V

    .line 2638
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    invoke-virtual {p0, v0, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v4

    .line 2639
    .local v4, "sg2":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eq v3, v4, :cond_1

    .line 2640
    invoke-direct {p0, v3, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGrammarComponents(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 2634
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private addImportList(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 5
    .param p1, "sg"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "importedGrammars"    # Ljava/util/Vector;
    .param p3, "namespaceList"    # Ljava/util/Vector;

    .prologue
    .line 3268
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 3271
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 3280
    return-void

    .line 3272
    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    .line 3273
    .local v1, "isg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v1, :cond_1

    .line 3274
    invoke-virtual {p2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3271
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private addNamespaceDependency(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V
    .locals 3
    .param p1, "namespace1"    # Ljava/lang/String;
    .param p2, "namespace2"    # Ljava/lang/String;
    .param p3, "list"    # Ljava/util/Vector;

    .prologue
    .line 3341
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3342
    .local v0, "ns1":Ljava/lang/String;
    invoke-direct {p0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3343
    .local v1, "ns2":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3344
    invoke-virtual {p3, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3345
    invoke-virtual {p3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3348
    :cond_0
    return-void
.end method

.method private addNewGrammarComponents(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 0
    .param p1, "srcGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "dstGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    .line 2717
    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resetComponents()V

    .line 2718
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalElementDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 2719
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalAttributeDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 2720
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalAttributeGroupDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 2721
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalGroupDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 2722
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalTypeDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 2723
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalNotationDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 2724
    return-void
.end method

.method private addNewGrammarLocations(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 6
    .param p1, "srcGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "dstGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    .line 2677
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v3

    .line 2678
    .local v3, "locations":Lmf/org/apache/xerces/xs/StringList;
    invoke-interface {v3}, Lmf/org/apache/xerces/xs/StringList;->size()I

    move-result v2

    .line 2679
    .local v2, "locSize":I
    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v4

    .line 2681
    .local v4, "locations2":Lmf/org/apache/xerces/xs/StringList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 2687
    return-void

    .line 2682
    :cond_0
    invoke-interface {v3, v0}, Lmf/org/apache/xerces/xs/StringList;->item(I)Ljava/lang/String;

    move-result-object v1

    .line 2683
    .local v1, "loc":Ljava/lang/String;
    invoke-interface {v4, v1}, Lmf/org/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2684
    const/4 v5, 0x0

    invoke-virtual {p2, v5, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addDocument(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2681
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private addNewImportedGrammars(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 2
    .param p1, "srcGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "dstGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    .line 2690
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v0

    .line 2691
    .local v0, "igs1":Ljava/util/Vector;
    if-eqz v0, :cond_0

    .line 2692
    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v1

    .line 2694
    .local v1, "igs2":Ljava/util/Vector;
    if-nez v1, :cond_1

    .line 2695
    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "igs2":Ljava/util/Vector;
    check-cast v1, Ljava/util/Vector;

    .line 2696
    .restart local v1    # "igs2":Ljava/util/Vector;
    invoke-virtual {p2, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->setImportedGrammars(Ljava/util/Vector;)V

    .line 2702
    .end local v1    # "igs2":Ljava/util/Vector;
    :cond_0
    :goto_0
    return-void

    .line 2699
    .restart local v1    # "igs2":Ljava/util/Vector;
    :cond_1
    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->updateImportList(Ljava/util/Vector;Ljava/util/Vector;)V

    goto :goto_0
.end method

.method private addRelatedAttribute(Lmf/org/apache/xerces/xs/XSAttributeDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 3
    .param p1, "decl"    # Lmf/org/apache/xerces/xs/XSAttributeDeclaration;
    .param p2, "componentList"    # Ljava/util/Vector;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    .line 3137
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSAttributeDeclaration;->getScope()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3138
    invoke-virtual {p2, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3139
    invoke-direct {p0, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findDependentNamespaces(Ljava/lang/String;Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object v0

    .line 3140
    .local v0, "importedNamespaces":Ljava/util/Vector;
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSAttributeDeclaration;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addNamespaceDependency(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    .line 3141
    invoke-virtual {p2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3147
    .end local v0    # "importedNamespaces":Ljava/util/Vector;
    :cond_0
    :goto_0
    return-void

    .line 3145
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedAttributeComponents(Lmf/org/apache/xerces/xs/XSAttributeDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_0
.end method

.method private addRelatedElement(Lmf/org/apache/xerces/xs/XSElementDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 3
    .param p1, "decl"    # Lmf/org/apache/xerces/xs/XSElementDeclaration;
    .param p2, "componentList"    # Ljava/util/Vector;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    .line 3124
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSElementDeclaration;->getScope()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3125
    invoke-virtual {p2, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3126
    invoke-direct {p0, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findDependentNamespaces(Ljava/lang/String;Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object v0

    .line 3127
    .local v0, "importedNamespaces":Ljava/util/Vector;
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSElementDeclaration;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addNamespaceDependency(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    .line 3128
    invoke-virtual {p2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3134
    .end local v0    # "importedNamespaces":Ljava/util/Vector;
    :cond_0
    :goto_0
    return-void

    .line 3132
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedElementComponents(Lmf/org/apache/xerces/xs/XSElementDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_0
.end method

.method private addRelatedType(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 3
    .param p1, "type"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .param p2, "componentList"    # Ljava/util/Vector;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    .line 3109
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getAnonymous()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3110
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3111
    invoke-virtual {p2, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3112
    invoke-direct {p0, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findDependentNamespaces(Ljava/lang/String;Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object v0

    .line 3113
    .local v0, "importedNamespaces":Ljava/util/Vector;
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addNamespaceDependency(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    .line 3114
    invoke-virtual {p2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3121
    .end local v0    # "importedNamespaces":Ljava/util/Vector;
    :cond_0
    :goto_0
    return-void

    .line 3119
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedTypeComponents(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_0
.end method

.method private canAddComponent(Lmf/org/apache/xerces/xs/XSObject;Lmf/org/apache/xerces/impl/xs/XSDDescription;)Z
    .locals 6
    .param p1, "component"    # Lmf/org/apache/xerces/xs/XSObject;
    .param p2, "desc"    # Lmf/org/apache/xerces/impl/xs/XSDDescription;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2578
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setNamespace(Ljava/lang/String;)V

    .line 2580
    invoke-virtual {p0, p2, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v2

    .line 2581
    .local v2, "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-nez v2, :cond_1

    .line 2627
    :cond_0
    :goto_0
    return v3

    .line 2584
    :cond_1
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->isImmutable()Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 2585
    goto :goto_0

    .line 2588
    :cond_2
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getType()S

    move-result v0

    .line 2589
    .local v0, "componentType":S
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2591
    .local v1, "name":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2598
    :pswitch_1
    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v5

    if-eq v5, p1, :cond_0

    :cond_3
    move v3, v4

    .line 2627
    goto :goto_0

    .line 2593
    :pswitch_2
    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v5

    if-ne v5, p1, :cond_3

    goto :goto_0

    .line 2603
    :pswitch_3
    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v5

    if-ne v5, p1, :cond_3

    goto :goto_0

    .line 2608
    :pswitch_4
    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v5

    if-ne v5, p1, :cond_3

    goto :goto_0

    .line 2613
    :pswitch_5
    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v5

    if-ne v5, p1, :cond_3

    goto :goto_0

    .line 2618
    :pswitch_6
    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v5

    if-ne v5, p1, :cond_3

    goto :goto_0

    .line 2591
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private canAddComponents(Ljava/util/Vector;)Z
    .locals 5
    .param p1, "components"    # Ljava/util/Vector;

    .prologue
    .line 2566
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    .line 2567
    .local v3, "size":I
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    .line 2568
    .local v1, "desc":Lmf/org/apache/xerces/impl/xs/XSDDescription;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 2574
    const/4 v4, 0x1

    :goto_1
    return v4

    .line 2569
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSObject;

    .line 2570
    .local v0, "component":Lmf/org/apache/xerces/xs/XSObject;
    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->canAddComponent(Lmf/org/apache/xerces/xs/XSObject;Lmf/org/apache/xerces/impl/xs/XSDDescription;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2571
    const/4 v4, 0x0

    goto :goto_1

    .line 2568
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private changeRedefineGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)I
    .locals 15
    .param p1, "originalQName"    # Ljava/lang/String;
    .param p2, "elementSought"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;
    .param p4, "curr"    # Lmf/org/w3c/dom/Element;
    .param p5, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .prologue
    .line 3960
    const/4 v14, 0x0

    .line 3961
    .local v14, "result":I
    invoke-static/range {p4 .. p4}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v5

    .line 3962
    .local v5, "child":Lmf/org/w3c/dom/Element;
    :goto_0
    if-nez v5, :cond_0

    .line 3992
    return v14

    .line 3963
    :cond_0
    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    .line 3964
    .local v10, "name":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    .line 3965
    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->changeRedefineGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)I

    move-result v1

    add-int/2addr v14, v1

    .line 3962
    :cond_1
    :goto_1
    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v5

    goto :goto_0

    .line 3967
    :cond_2
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    invoke-interface {v5, v1}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3968
    .local v13, "ref":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3969
    move-object/from16 v0, p5

    invoke-direct {p0, v13, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findQName(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;

    move-result-object v12

    .line 3970
    .local v12, "processedRef":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3971
    sget-object v11, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 3972
    .local v11, "prefix":Ljava/lang/String;
    const-string v1, ":"

    invoke-virtual {v13, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 3973
    .local v7, "colonptr":I
    if-lez v7, :cond_5

    .line 3974
    const/4 v1, 0x0

    invoke-virtual {v13, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 3975
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Lmf/org/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3979
    :goto_2
    add-int/lit8 v14, v14, 0x1

    .line 3980
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3981
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    invoke-interface {v5, v1}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3982
    .local v9, "minOccurs":Ljava/lang/String;
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    invoke-interface {v5, v1}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3983
    .local v8, "maxOccurs":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "1"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3984
    :cond_3
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3985
    :cond_4
    const-string v1, "src-redefine.6.1.2"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v13, v2, v3

    invoke-virtual {p0, v1, v2, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_1

    .line 3978
    .end local v8    # "maxOccurs":Ljava/lang/String;
    .end local v9    # "minOccurs":Ljava/lang/String;
    :cond_5
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-interface {v5, v1, v0}, Lmf/org/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private containedImportedGrammar(Ljava/util/Vector;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Z
    .locals 5
    .param p1, "importedGrammar"    # Ljava/util/Vector;
    .param p2, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    .line 3300
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    .line 3303
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 3309
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 3304
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 3305
    .local v1, "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3306
    const/4 v3, 0x1

    goto :goto_1

    .line 3303
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createAnnotationValidator()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 684
    new-instance v2, Lmf/org/apache/xerces/parsers/XML11Configuration;

    invoke-direct {v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    .line 685
    new-instance v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucketAdapter:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;

    .line 686
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    const-string v3, "http://xml.org/sax/features/validation"

    invoke-virtual {v2, v3, v4}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    .line 687
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    const-string v3, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v2, v3, v4}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    .line 688
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    const-string v3, "http://apache.org/xml/properties/internal/grammar-pool"

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucketAdapter:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;

    invoke-virtual {v2, v3, v4}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 690
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v0

    .line 691
    .local v0, "errorHandler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    const-string v3, "http://apache.org/xml/properties/internal/error-handler"

    if-eqz v0, :cond_0

    .end local v0    # "errorHandler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    :goto_0
    invoke-virtual {v2, v3, v0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 693
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 694
    .local v1, "locale":Ljava/util/Locale;
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    const-string v3, "http://apache.org/xml/properties/locale"

    invoke-virtual {v2, v3, v1}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 695
    return-void

    .line 691
    .end local v1    # "locale":Ljava/util/Locale;
    .restart local v0    # "errorHandler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/util/DefaultErrorHandler;

    .end local v0    # "errorHandler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    invoke-direct {v0}, Lmf/org/apache/xerces/util/DefaultErrorHandler;-><init>()V

    goto :goto_0
.end method

.method private createGrammarFrom(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 2
    .param p1, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    .line 2667
    new-instance v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;-><init>(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 2668
    .local v0, "newGrammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 2670
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->updateImportListWith(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 2672
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->updateImportListFor(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 2673
    return-object v0
.end method

.method private createTraversers()V
    .locals 2

    .prologue
    .line 3363
    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    .line 3364
    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;

    .line 3365
    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;

    .line 3366
    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fComplexTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

    .line 3367
    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    .line 3368
    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;

    .line 3369
    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;

    .line 3370
    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNotationTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;

    .line 3371
    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;

    .line 3372
    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUniqueOrKeyTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;

    .line 3373
    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fWildCardTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;

    .line 3374
    return-void
.end method

.method private doc2SystemId(Lmf/org/w3c/dom/Element;)Ljava/lang/String;
    .locals 2
    .param p1, "ele"    # Lmf/org/w3c/dom/Element;

    .prologue
    .line 319
    const/4 v0, 0x0

    .line 323
    .local v0, "documentURI":Ljava/lang/String;
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v1

    instance-of v1, v1, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    if-eqz v1, :cond_0

    .line 324
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->getDocumentURI()Ljava/lang/String;

    move-result-object v0

    .line 326
    :cond_0
    if-eqz v0, :cond_1

    .end local v0    # "documentURI":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "documentURI":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method private emptyString2Null(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ns"    # Ljava/lang/String;

    .prologue
    .line 315
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .end local p1    # "ns":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private existingGrammars(Ljava/util/Vector;)Z
    .locals 7
    .param p1, "grammars"    # Ljava/util/Vector;

    .prologue
    const/4 v5, 0x0

    .line 2549
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    .line 2550
    .local v2, "length":I
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    .line 2552
    .local v0, "desc":Lmf/org/apache/xerces/impl/xs/XSDDescription;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 2562
    :goto_1
    return v5

    .line 2553
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 2554
    .local v3, "sg1":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setNamespace(Ljava/lang/String;)V

    .line 2556
    invoke-virtual {p0, v0, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v4

    .line 2557
    .local v4, "sg2":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v4, :cond_1

    .line 2558
    const/4 v5, 0x1

    goto :goto_1

    .line 2552
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private expandComponents([Lmf/org/apache/xerces/xs/XSObject;Ljava/util/Hashtable;)Ljava/util/Vector;
    .locals 4
    .param p1, "components"    # [Lmf/org/apache/xerces/xs/XSObject;
    .param p2, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    .line 2955
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 2957
    .local v2, "newComponents":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-lt v1, v3, :cond_0

    .line 2963
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 2968
    return-object v2

    .line 2958
    :cond_0
    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2959
    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2957
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2964
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSObject;

    .line 2965
    .local v0, "component":Lmf/org/apache/xerces/xs/XSObject;
    invoke-direct {p0, v0, v2, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedComponents(Lmf/org/apache/xerces/xs/XSObject;Ljava/util/Vector;Ljava/util/Hashtable;)V

    .line 2963
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private expandGrammars([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Ljava/util/Vector;
    .locals 7
    .param p1, "grammars"    # [Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    .line 2515
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 2517
    .local v0, "currGrammars":Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, p1

    if-lt v2, v6, :cond_0

    .line 2526
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v2, v6, :cond_2

    .line 2545
    return-object v0

    .line 2518
    :cond_0
    aget-object v6, p1, v2

    invoke-virtual {v0, v6}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2519
    aget-object v6, p1, v2

    invoke-virtual {v0, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2517
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2528
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 2530
    .local v4, "sg1":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v1

    .line 2533
    .local v1, "gs":Ljava/util/Vector;
    if-nez v1, :cond_4

    .line 2526
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2537
    :cond_4
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "j":I
    :goto_2
    if-ltz v3, :cond_3

    .line 2538
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 2539
    .local v5, "sg2":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-virtual {v0, v5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 2540
    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2537
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_2
.end method

.method private expandImportList(Ljava/lang/String;Ljava/util/Vector;)V
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "namespaceList"    # Ljava/util/Vector;

    .prologue
    .line 3252
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    .line 3254
    .local v1, "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v1, :cond_0

    .line 3255
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v0

    .line 3256
    .local v0, "isgs":Ljava/util/Vector;
    if-nez v0, :cond_1

    .line 3257
    new-instance v0, Ljava/util/Vector;

    .end local v0    # "isgs":Ljava/util/Vector;
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 3258
    .restart local v0    # "isgs":Ljava/util/Vector;
    invoke-direct {p0, v1, v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addImportList(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Ljava/util/Vector;Ljava/util/Vector;)V

    .line 3259
    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->setImportedGrammars(Ljava/util/Vector;)V

    .line 3265
    .end local v0    # "isgs":Ljava/util/Vector;
    :cond_0
    :goto_0
    return-void

    .line 3262
    .restart local v0    # "isgs":Ljava/util/Vector;
    :cond_1
    invoke-direct {p0, v1, v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->updateImportList(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Ljava/util/Vector;Ljava/util/Vector;)V

    goto :goto_0
.end method

.method private expandRelatedAttributeComponents(Lmf/org/apache/xerces/xs/XSAttributeDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "decl"    # Lmf/org/apache/xerces/xs/XSAttributeDeclaration;
    .param p2, "componentList"    # Ljava/util/Vector;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    .line 2997
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSAttributeDeclaration;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addRelatedType(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 3003
    return-void
.end method

.method private expandRelatedAttributeGroupComponents(Lmf/org/apache/xerces/xs/XSAttributeGroupDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "attrGroup"    # Lmf/org/apache/xerces/xs/XSAttributeGroupDefinition;
    .param p2, "componentList"    # Ljava/util/Vector;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    .line 3035
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSAttributeGroupDefinition;->getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedAttributeUsesComponents(Lmf/org/apache/xerces/xs/XSObjectList;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 3036
    return-void
.end method

.method private expandRelatedAttributeUseComponents(Lmf/org/apache/xerces/xs/XSAttributeUse;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "component"    # Lmf/org/apache/xerces/xs/XSAttributeUse;
    .param p2, "componentList"    # Ljava/util/Vector;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    .line 3081
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSAttributeUse;->getAttrDeclaration()Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addRelatedAttribute(Lmf/org/apache/xerces/xs/XSAttributeDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 3082
    return-void
.end method

.method private expandRelatedAttributeUsesComponents(Lmf/org/apache/xerces/xs/XSObjectList;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 3
    .param p1, "attrUses"    # Lmf/org/apache/xerces/xs/XSObjectList;
    .param p2, "componentList"    # Ljava/util/Vector;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    .line 3073
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 3074
    .local v0, "attrUseSize":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 3077
    return-void

    .line 3073
    .end local v0    # "attrUseSize":I
    .end local v1    # "i":I
    :cond_0
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObjectList;->size()I

    move-result v0

    goto :goto_0

    .line 3075
    .restart local v0    # "attrUseSize":I
    .restart local v1    # "i":I
    :cond_1
    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xs/XSAttributeUse;

    invoke-direct {p0, v2, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedAttributeUseComponents(Lmf/org/apache/xerces/xs/XSAttributeUse;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 3074
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private expandRelatedComplexTypeComponents(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 2
    .param p1, "type"    # Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .param p2, "componentList"    # Ljava/util/Vector;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    .line 3039
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addRelatedType(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 3040
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedAttributeUsesComponents(Lmf/org/apache/xerces/xs/XSObjectList;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 3041
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v0

    .line 3042
    .local v0, "particle":Lmf/org/apache/xerces/xs/XSParticle;
    if-eqz v0, :cond_0

    .line 3043
    invoke-direct {p0, v0, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedParticleComponents(Lmf/org/apache/xerces/xs/XSParticle;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 3045
    :cond_0
    return-void
.end method

.method private expandRelatedComponents(Lmf/org/apache/xerces/xs/XSObject;Ljava/util/Vector;Ljava/util/Hashtable;)V
    .locals 3
    .param p1, "component"    # Lmf/org/apache/xerces/xs/XSObject;
    .param p2, "componentList"    # Ljava/util/Vector;
    .param p3, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    .line 2972
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getType()S

    move-result v0

    .line 2973
    .local v0, "componentType":S
    packed-switch v0, :pswitch_data_0

    .line 2994
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object v1, p1

    .line 2975
    check-cast v1, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p2, v2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedTypeComponents(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_0

    :pswitch_2
    move-object v1, p1

    .line 2978
    check-cast v1, Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p2, v2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedAttributeComponents(Lmf/org/apache/xerces/xs/XSAttributeDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_0

    :pswitch_3
    move-object v1, p1

    .line 2981
    check-cast v1, Lmf/org/apache/xerces/xs/XSAttributeGroupDefinition;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p2, v2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedAttributeGroupComponents(Lmf/org/apache/xerces/xs/XSAttributeGroupDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    :pswitch_4
    move-object v1, p1

    .line 2983
    check-cast v1, Lmf/org/apache/xerces/xs/XSElementDeclaration;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p2, v2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedElementComponents(Lmf/org/apache/xerces/xs/XSElementDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_0

    :pswitch_5
    move-object v1, p1

    .line 2986
    check-cast v1, Lmf/org/apache/xerces/xs/XSModelGroupDefinition;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p2, v2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedModelGroupDefinitionComponents(Lmf/org/apache/xerces/xs/XSModelGroupDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_0

    .line 2973
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private expandRelatedElementComponents(Lmf/org/apache/xerces/xs/XSElementDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 2
    .param p1, "decl"    # Lmf/org/apache/xerces/xs/XSElementDeclaration;
    .param p2, "componentList"    # Ljava/util/Vector;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    .line 3006
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSElementDeclaration;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addRelatedType(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 3013
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSElementDeclaration;->getSubstitutionGroupAffiliation()Lmf/org/apache/xerces/xs/XSElementDeclaration;

    move-result-object v0

    .line 3014
    .local v0, "subElemDecl":Lmf/org/apache/xerces/xs/XSElementDeclaration;
    if-eqz v0, :cond_0

    .line 3015
    invoke-direct {p0, v0, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addRelatedElement(Lmf/org/apache/xerces/xs/XSElementDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 3017
    :cond_0
    return-void
.end method

.method private expandRelatedModelGroupComponents(Lmf/org/apache/xerces/xs/XSModelGroup;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 4
    .param p1, "modelGroup"    # Lmf/org/apache/xerces/xs/XSModelGroup;
    .param p2, "componentList"    # Ljava/util/Vector;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    .line 3101
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSModelGroup;->getParticles()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v2

    .line 3102
    .local v2, "particles":Lmf/org/apache/xerces/xs/XSObjectList;
    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 3103
    .local v1, "length":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_1

    .line 3106
    return-void

    .line 3102
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_0
    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v1

    goto :goto_0

    .line 3104
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    :cond_1
    invoke-interface {v2, v0}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/xs/XSParticle;

    invoke-direct {p0, v3, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedParticleComponents(Lmf/org/apache/xerces/xs/XSParticle;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 3103
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private expandRelatedModelGroupDefinitionComponents(Lmf/org/apache/xerces/xs/XSModelGroupDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "modelGroupDef"    # Lmf/org/apache/xerces/xs/XSModelGroupDefinition;
    .param p2, "componentList"    # Ljava/util/Vector;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    .line 3030
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSModelGroupDefinition;->getModelGroup()Lmf/org/apache/xerces/xs/XSModelGroup;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedModelGroupComponents(Lmf/org/apache/xerces/xs/XSModelGroup;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 3031
    return-void
.end method

.method private expandRelatedParticleComponents(Lmf/org/apache/xerces/xs/XSParticle;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 2
    .param p1, "component"    # Lmf/org/apache/xerces/xs/XSParticle;
    .param p2, "componentList"    # Ljava/util/Vector;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    .line 3086
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSParticle;->getTerm()Lmf/org/apache/xerces/xs/XSTerm;

    move-result-object v0

    .line 3087
    .local v0, "term":Lmf/org/apache/xerces/xs/XSTerm;
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTerm;->getType()S

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 3097
    .end local v0    # "term":Lmf/org/apache/xerces/xs/XSTerm;
    :goto_0
    return-void

    .line 3089
    .restart local v0    # "term":Lmf/org/apache/xerces/xs/XSTerm;
    :sswitch_0
    check-cast v0, Lmf/org/apache/xerces/xs/XSElementDeclaration;

    .end local v0    # "term":Lmf/org/apache/xerces/xs/XSTerm;
    invoke-direct {p0, v0, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addRelatedElement(Lmf/org/apache/xerces/xs/XSElementDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_0

    .line 3092
    .restart local v0    # "term":Lmf/org/apache/xerces/xs/XSTerm;
    :sswitch_1
    check-cast v0, Lmf/org/apache/xerces/xs/XSModelGroup;

    .end local v0    # "term":Lmf/org/apache/xerces/xs/XSTerm;
    invoke-direct {p0, v0, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedModelGroupComponents(Lmf/org/apache/xerces/xs/XSModelGroup;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_0

    .line 3087
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method private expandRelatedSimpleTypeComponents(Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 6
    .param p1, "type"    # Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    .param p2, "componentList"    # Ljava/util/Vector;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    .line 3048
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    .line 3049
    .local v0, "baseType":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    if-eqz v0, :cond_0

    .line 3050
    invoke-direct {p0, v0, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addRelatedType(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 3053
    :cond_0
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getItemType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v2

    .line 3054
    .local v2, "itemType":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    if-eqz v2, :cond_1

    .line 3055
    invoke-direct {p0, v2, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addRelatedType(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 3058
    :cond_1
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getPrimitiveType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v4

    .line 3059
    .local v4, "primitiveType":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    if-eqz v4, :cond_2

    .line 3060
    invoke-direct {p0, v4, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addRelatedType(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 3063
    :cond_2
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v3

    .line 3064
    .local v3, "memberTypes":Lmf/org/apache/xerces/xs/XSObjectList;
    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSObjectList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 3065
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSObjectList;->size()I

    move-result v5

    if-lt v1, v5, :cond_4

    .line 3069
    .end local v1    # "i":I
    :cond_3
    return-void

    .line 3066
    .restart local v1    # "i":I
    :cond_4
    invoke-interface {v3, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-direct {p0, v5, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addRelatedType(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 3065
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private expandRelatedTypeComponents(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "type"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .param p2, "componentList"    # Ljava/util/Vector;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    .line 3020
    instance-of v0, p1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz v0, :cond_1

    .line 3021
    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .end local p1    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedComplexTypeComponents(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 3026
    :cond_0
    :goto_0
    return-void

    .line 3023
    .restart local p1    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_1
    instance-of v0, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v0, :cond_0

    .line 3024
    check-cast p1, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    .end local p1    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedSimpleTypeComponents(Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_0
.end method

.method private findDependentNamespaces(Ljava/lang/String;Ljava/util/Hashtable;)Ljava/util/Vector;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "table"    # Ljava/util/Hashtable;

    .prologue
    .line 3329
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3330
    .local v1, "ns":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 3332
    .local v0, "namespaceList":Ljava/util/Vector;
    if-nez v0, :cond_0

    .line 3333
    new-instance v0, Ljava/util/Vector;

    .end local v0    # "namespaceList":Ljava/util/Vector;
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 3334
    .restart local v0    # "namespaceList":Ljava/util/Vector;
    invoke-virtual {p2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3337
    :cond_0
    return-object v0
.end method

.method private findQName(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .prologue
    .line 3937
    iget-object v1, p2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    .line 3938
    .local v1, "currNSMap":Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;
    const/16 v5, 0x3a

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 3939
    .local v0, "colonPtr":I
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 3940
    .local v3, "prefix":Ljava/lang/String;
    if-lez v0, :cond_0

    .line 3941
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3942
    :cond_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v5, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3943
    .local v4, "uri":Ljava/lang/String;
    if-nez v0, :cond_2

    move-object v2, p1

    .line 3944
    .local v2, "localpart":Ljava/lang/String;
    :goto_0
    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v3, v5, :cond_1

    if-nez v4, :cond_1

    iget-boolean v5, p2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fIsChameleonSchema:Z

    if-eqz v5, :cond_1

    .line 3945
    iget-object v4, p2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    .line 3946
    :cond_1
    if-nez v4, :cond_3

    .line 3947
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3948
    :goto_1
    return-object v5

    .line 3943
    .end local v2    # "localpart":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 3948
    .restart local v2    # "localpart":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method private findXSDocumentForDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .locals 2
    .param p1, "currSchema"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p2, "decl"    # Lmf/org/w3c/dom/Element;
    .param p3, "decl_Doc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .prologue
    .line 4009
    move-object v1, p3

    .line 4010
    .local v1, "temp":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    if-nez v1, :cond_0

    .line 4012
    const/4 v0, 0x0

    .line 4015
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 4014
    check-cast v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .line 4015
    .local v0, "declDocInfo":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    goto :goto_0
.end method

.method private getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .locals 1
    .param p1, "declKey"    # Ljava/lang/String;

    .prologue
    .line 1579
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    return-object v0
.end method

.method private getGlobalAttributeGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .locals 1
    .param p1, "declKey"    # Ljava/lang/String;

    .prologue
    .line 1583
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    return-object v0
.end method

.method private getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 1
    .param p1, "declKey"    # Ljava/lang/String;

    .prologue
    .line 1587
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    return-object v0
.end method

.method private getGlobalGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .locals 1
    .param p1, "declKey"    # Ljava/lang/String;

    .prologue
    .line 1591
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    return-object v0
.end method

.method private getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    .locals 1
    .param p1, "declKey"    # Ljava/lang/String;

    .prologue
    .line 1595
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    return-object v0
.end method

.method private getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 1
    .param p1, "declKey"    # Ljava/lang/String;

    .prologue
    .line 1599
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    return-object v0
.end method

.method private getIDConstraintDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    .locals 1
    .param p1, "declKey"    # Ljava/lang/String;

    .prologue
    .line 1603
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    return-object v0
.end method

.method private getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/DOMInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;
    .locals 19
    .param p1, "schemaNamespace"    # Ljava/lang/String;
    .param p2, "schemaSource"    # Lmf/org/apache/xerces/util/DOMInputSource;
    .param p3, "mustResolve"    # Z
    .param p4, "referType"    # S
    .param p5, "referElement"    # Lmf/org/w3c/dom/Element;

    .prologue
    .line 2288
    const/4 v5, 0x1

    .line 2289
    .local v5, "hasInput":Z
    const/4 v8, 0x0

    .line 2290
    .local v8, "exception":Ljava/io/IOException;
    const/16 v16, 0x0

    .line 2291
    .local v16, "schemaElement":Lmf/org/w3c/dom/Element;
    const/16 v18, 0x0

    .line 2293
    .local v18, "schemaRootElement":Lmf/org/w3c/dom/Element;
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/util/DOMInputSource;->getNode()Lmf/org/w3c/dom/Node;

    move-result-object v13

    .line 2294
    .local v13, "node":Lmf/org/w3c/dom/Node;
    const/4 v14, -0x1

    .line 2295
    .local v14, "nodeType":S
    if-eqz v13, :cond_0

    .line 2296
    invoke-interface {v13}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v14

    .line 2297
    const/16 v3, 0x9

    if-ne v14, v3, :cond_2

    .line 2298
    check-cast v13, Lmf/org/w3c/dom/Document;

    .end local v13    # "node":Lmf/org/w3c/dom/Node;
    invoke-static {v13}, Lmf/org/apache/xerces/util/DOMUtil;->getRoot(Lmf/org/w3c/dom/Document;)Lmf/org/w3c/dom/Element;

    move-result-object v18

    .line 2306
    :cond_0
    :goto_0
    if-eqz v18, :cond_7

    .line 2309
    const/4 v11, 0x0

    .line 2310
    .local v11, "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    const/16 v17, 0x0

    .line 2311
    .local v17, "schemaId":Ljava/lang/String;
    const/4 v3, 0x3

    move/from16 v0, p4

    if-eq v0, v3, :cond_6

    .line 2312
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/util/DOMInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/util/DOMInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v17

    .line 2313
    const/16 v3, 0x9

    if-ne v14, v3, :cond_3

    const/4 v10, 0x1

    .line 2314
    .local v10, "isDocument":Z
    :goto_1
    if-nez v10, :cond_1

    .line 2315
    invoke-interface/range {v18 .. v18}, Lmf/org/w3c/dom/Element;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v15

    .line 2316
    .local v15, "parent":Lmf/org/w3c/dom/Node;
    if-eqz v15, :cond_1

    .line 2317
    invoke-interface {v15}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_4

    const/4 v10, 0x1

    .line 2320
    .end local v15    # "parent":Lmf/org/w3c/dom/Node;
    :cond_1
    :goto_2
    if-eqz v10, :cond_6

    .line 2321
    new-instance v12, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;

    move-object/from16 v0, v17

    move/from16 v1, p4

    move-object/from16 v2, p1

    invoke-direct {v12, v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;-><init>(Ljava/lang/String;SLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2322
    .end local v11    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .local v12, "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTraversed:Ljava/util/Hashtable;

    invoke-virtual {v3, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    .line 2323
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v3, v16

    .line 2339
    .end local v10    # "isDocument":Z
    .end local v12    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .end local v17    # "schemaId":Ljava/lang/String;
    :goto_3
    return-object v3

    .line 2300
    .restart local v13    # "node":Lmf/org/w3c/dom/Node;
    :cond_2
    const/4 v3, 0x1

    if-ne v14, v3, :cond_0

    move-object/from16 v18, v13

    .line 2301
    check-cast v18, Lmf/org/w3c/dom/Element;

    goto :goto_0

    .line 2313
    .end local v13    # "node":Lmf/org/w3c/dom/Node;
    .restart local v11    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .restart local v17    # "schemaId":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 2317
    .restart local v10    # "isDocument":Z
    .restart local v15    # "parent":Lmf/org/w3c/dom/Node;
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .end local v11    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .end local v15    # "parent":Lmf/org/w3c/dom/Node;
    .restart local v12    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    :cond_5
    move-object v11, v12

    .line 2329
    .end local v10    # "isDocument":Z
    .end local v12    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .restart local v11    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    :cond_6
    move-object/from16 v16, v18

    .line 2330
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v11, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument0(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;Ljava/lang/String;Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    goto :goto_3

    .line 2333
    .end local v11    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .end local v17    # "schemaId":Ljava/lang/String;
    :cond_7
    const/4 v5, 0x0

    :goto_4
    move-object/from16 v3, p0

    move/from16 v4, p3

    move-object/from16 v6, p2

    move-object/from16 v7, p5

    .line 2339
    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument1(ZZLmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/w3c/dom/Element;Ljava/io/IOException;)Lmf/org/w3c/dom/Element;

    move-result-object v3

    goto :goto_3

    .line 2336
    .restart local v11    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .restart local v17    # "schemaId":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 2337
    .local v9, "ioe":Ljava/io/IOException;
    :goto_5
    move-object v8, v9

    goto :goto_4

    .line 2336
    .end local v9    # "ioe":Ljava/io/IOException;
    .end local v11    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .restart local v10    # "isDocument":Z
    .restart local v12    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    :catch_1
    move-exception v9

    move-object v11, v12

    .end local v12    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .restart local v11    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    goto :goto_5
.end method

.method private getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/SAXInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;
    .locals 22
    .param p1, "schemaNamespace"    # Ljava/lang/String;
    .param p2, "schemaSource"    # Lmf/org/apache/xerces/util/SAXInputSource;
    .param p3, "mustResolve"    # Z
    .param p4, "referType"    # S
    .param p5, "referElement"    # Lmf/org/w3c/dom/Element;

    .prologue
    .line 2175
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/util/SAXInputSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v13

    .line 2176
    .local v13, "parser":Lorg/xml/sax/XMLReader;
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/util/SAXInputSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v9

    .line 2177
    .local v9, "inputSource":Lorg/xml/sax/InputSource;
    const/4 v5, 0x1

    .line 2178
    .local v5, "hasInput":Z
    const/4 v8, 0x0

    .line 2179
    .local v8, "exception":Ljava/io/IOException;
    const/16 v16, 0x0

    .line 2181
    .local v16, "schemaElement":Lmf/org/w3c/dom/Element;
    if-eqz v9, :cond_6

    .line 2182
    :try_start_0
    invoke-virtual {v9}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2183
    invoke-virtual {v9}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2184
    invoke-virtual {v9}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 2188
    :cond_0
    const/4 v11, 0x0

    .line 2189
    .local v11, "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    const/16 v17, 0x0

    .line 2190
    .local v17, "schemaId":Ljava/lang/String;
    const/4 v3, 0x3

    move/from16 v0, p4

    if-eq v0, v3, :cond_1

    .line 2191
    invoke-virtual {v9}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/util/SAXInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v17

    .line 2192
    new-instance v11, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;

    .end local v11    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    move-object/from16 v0, v17

    move/from16 v1, p4

    move-object/from16 v2, p1

    invoke-direct {v11, v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;-><init>(Ljava/lang/String;SLjava/lang/String;)V

    .line 2193
    .restart local v11    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTraversed:Ljava/util/Hashtable;

    invoke-virtual {v3, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 2194
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v3, v16

    .line 2274
    .end local v11    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .end local v17    # "schemaId":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 2199
    .restart local v11    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .restart local v17    # "schemaId":Ljava/lang/String;
    :cond_1
    const/4 v12, 0x0

    .line 2200
    .local v12, "namespacePrefixes":Z
    if-eqz v13, :cond_4

    .line 2202
    :try_start_1
    const-string v3, "http://xml.org/sax/features/namespace-prefixes"

    invoke-interface {v13, v3}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/xml/sax/SAXParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v12

    .line 2230
    :cond_2
    :goto_1
    const/16 v21, 0x0

    .line 2232
    .local v21, "stringsInternalized":Z
    :try_start_2
    const-string v3, "http://xml.org/sax/features/string-interning"

    invoke-interface {v13, v3}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/xml/sax/SAXParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v21

    .line 2238
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fXSContentHandler:Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;

    if-nez v3, :cond_3

    .line 2239
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fXSContentHandler:Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;

    .line 2241
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fXSContentHandler:Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move/from16 v0, v21

    invoke-virtual {v3, v4, v6, v12, v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->reset(Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;Lmf/org/apache/xerces/util/SymbolTable;ZZ)V

    .line 2243
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fXSContentHandler:Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;

    invoke-interface {v13, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 2244
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getSAXErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v3

    invoke-interface {v13, v3}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 2246
    invoke-interface {v13, v9}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_3
    .catch Lorg/xml/sax/SAXParseException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 2249
    const/4 v3, 0x0

    :try_start_4
    invoke-interface {v13, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 2250
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/xml/sax/SAXParseException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2257
    :goto_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fXSContentHandler:Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->getDocument()Lmf/org/w3c/dom/Document;

    move-result-object v15

    .line 2258
    .local v15, "schemaDocument":Lmf/org/w3c/dom/Document;
    if-eqz v15, :cond_5

    invoke-static {v15}, Lmf/org/apache/xerces/util/DOMUtil;->getRoot(Lmf/org/w3c/dom/Document;)Lmf/org/w3c/dom/Element;

    move-result-object v16

    .line 2259
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v11, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument0(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;Ljava/lang/String;Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;
    :try_end_5
    .catch Lorg/xml/sax/SAXParseException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v3

    goto :goto_0

    .line 2208
    .end local v15    # "schemaDocument":Lmf/org/w3c/dom/Document;
    .end local v21    # "stringsInternalized":Z
    :cond_4
    :try_start_6
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_6
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xml/sax/SAXParseException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v13

    .line 2216
    :goto_5
    :try_start_7
    const-string v3, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v4, 0x1

    invoke-interface {v13, v3, v4}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 2217
    const/4 v12, 0x1

    .line 2219
    instance-of v3, v13, Lmf/org/apache/xerces/parsers/SAXParser;

    if-eqz v3, :cond_2

    .line 2220
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string v4, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    .line 2221
    .local v19, "securityManager":Ljava/lang/Object;
    if-eqz v19, :cond_2

    .line 2222
    const-string v3, "http://apache.org/xml/properties/security-manager"

    move-object/from16 v0, v19

    invoke-interface {v13, v3, v0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 2226
    .end local v19    # "securityManager":Ljava/lang/Object;
    :catch_0
    move-exception v3

    goto/16 :goto_1

    .line 2212
    :catch_1
    move-exception v18

    .line 2213
    .local v18, "se":Lorg/xml/sax/SAXException;
    :try_start_8
    new-instance v14, Lmf/org/apache/xerces/parsers/SAXParser;

    invoke-direct {v14}, Lmf/org/apache/xerces/parsers/SAXParser;-><init>()V
    :try_end_8
    .catch Lorg/xml/sax/SAXParseException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .end local v13    # "parser":Lorg/xml/sax/XMLReader;
    .local v14, "parser":Lorg/xml/sax/XMLReader;
    move-object v13, v14

    .end local v14    # "parser":Lorg/xml/sax/XMLReader;
    .restart local v13    # "parser":Lorg/xml/sax/XMLReader;
    goto :goto_5

    .line 2258
    .end local v18    # "se":Lorg/xml/sax/SAXException;
    .restart local v15    # "schemaDocument":Lmf/org/w3c/dom/Document;
    .restart local v21    # "stringsInternalized":Z
    :cond_5
    const/16 v16, 0x0

    goto :goto_4

    .line 2262
    .end local v11    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .end local v12    # "namespacePrefixes":Z
    .end local v15    # "schemaDocument":Lmf/org/w3c/dom/Document;
    .end local v17    # "schemaId":Ljava/lang/String;
    .end local v21    # "stringsInternalized":Z
    :cond_6
    const/4 v5, 0x0

    :goto_6
    move-object/from16 v3, p0

    move/from16 v4, p3

    move-object/from16 v6, p2

    move-object/from16 v7, p5

    .line 2274
    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument1(ZZLmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/w3c/dom/Element;Ljava/io/IOException;)Lmf/org/w3c/dom/Element;

    move-result-object v3

    goto/16 :goto_0

    .line 2265
    :catch_2
    move-exception v20

    .line 2266
    .local v20, "spe":Lorg/xml/sax/SAXParseException;
    invoke-static/range {v20 .. v20}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$SAX2XNIUtil;->createXMLParseException0(Lorg/xml/sax/SAXParseException;)Lmf/org/apache/xerces/xni/parser/XMLParseException;

    move-result-object v3

    throw v3

    .line 2268
    .end local v20    # "spe":Lorg/xml/sax/SAXParseException;
    :catch_3
    move-exception v18

    .line 2269
    .restart local v18    # "se":Lorg/xml/sax/SAXException;
    invoke-static/range {v18 .. v18}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$SAX2XNIUtil;->createXNIException0(Lorg/xml/sax/SAXException;)Lmf/org/apache/xerces/xni/XNIException;

    move-result-object v3

    throw v3

    .line 2271
    .end local v18    # "se":Lorg/xml/sax/SAXException;
    :catch_4
    move-exception v10

    .line 2272
    .local v10, "ioe":Ljava/io/IOException;
    move-object v8, v10

    goto :goto_6

    .line 2255
    .end local v10    # "ioe":Ljava/io/IOException;
    .restart local v11    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .restart local v12    # "namespacePrefixes":Z
    .restart local v17    # "schemaId":Ljava/lang/String;
    .restart local v21    # "stringsInternalized":Z
    :catch_5
    move-exception v3

    goto :goto_3

    .line 2234
    :catch_6
    move-exception v3

    goto/16 :goto_2

    .line 2204
    .end local v21    # "stringsInternalized":Z
    :catch_7
    move-exception v3

    goto/16 :goto_1
.end method

.method private getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/StAXInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;
    .locals 19
    .param p1, "schemaNamespace"    # Ljava/lang/String;
    .param p2, "schemaSource"    # Lmf/org/apache/xerces/util/StAXInputSource;
    .param p3, "mustResolve"    # Z
    .param p4, "referType"    # S
    .param p5, "referElement"    # Lmf/org/w3c/dom/Element;

    .prologue
    .line 2353
    const/4 v7, 0x0

    .line 2354
    .local v7, "exception":Ljava/io/IOException;
    const/4 v14, 0x0

    .line 2356
    .local v14, "schemaElement":Lmf/org/w3c/dom/Element;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/util/StAXInputSource;->shouldConsumeRemainingContent()Z

    move-result v8

    .line 2357
    .local v8, "consumeRemainingContent":Z
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/util/StAXInputSource;->getXMLStreamReader()Lmf/javax/xml/stream/XMLStreamReader;

    move-result-object v17

    .line 2358
    .local v17, "streamReader":Lmf/javax/xml/stream/XMLStreamReader;
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/util/StAXInputSource;->getXMLEventReader()Lmf/javax/xml/stream/XMLEventReader;

    move-result-object v10

    .line 2362
    .local v10, "eventReader":Lmf/javax/xml/stream/XMLEventReader;
    const/4 v12, 0x0

    .line 2363
    .local v12, "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    const/4 v15, 0x0

    .line 2364
    .local v15, "schemaId":Ljava/lang/String;
    const/4 v2, 0x3

    move/from16 v0, p4

    if-eq v0, v2, :cond_3

    .line 2365
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/util/StAXInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/util/StAXInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v15

    .line 2366
    move v11, v8

    .line 2367
    .local v11, "isDocument":Z
    if-nez v11, :cond_0

    .line 2368
    if-eqz v17, :cond_2

    .line 2369
    invoke-interface/range {v17 .. v17}, Lmf/javax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    const/4 v11, 0x1

    .line 2375
    :cond_0
    :goto_0
    if-eqz v11, :cond_3

    .line 2376
    new-instance v12, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;

    .end local v12    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    move/from16 v0, p4

    move-object/from16 v1, p1

    invoke-direct {v12, v15, v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;-><init>(Ljava/lang/String;SLjava/lang/String;)V

    .line 2377
    .restart local v12    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTraversed:Ljava/util/Hashtable;

    invoke-virtual {v2, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object v14, v0

    if-eqz v14, :cond_3

    .line 2378
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z

    move-object v2, v14

    .line 2423
    .end local v8    # "consumeRemainingContent":Z
    .end local v10    # "eventReader":Lmf/javax/xml/stream/XMLEventReader;
    .end local v11    # "isDocument":Z
    .end local v12    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .end local v15    # "schemaId":Ljava/lang/String;
    .end local v17    # "streamReader":Lmf/javax/xml/stream/XMLStreamReader;
    :goto_1
    return-object v2

    .line 2369
    .restart local v8    # "consumeRemainingContent":Z
    .restart local v10    # "eventReader":Lmf/javax/xml/stream/XMLEventReader;
    .restart local v11    # "isDocument":Z
    .restart local v12    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .restart local v15    # "schemaId":Ljava/lang/String;
    .restart local v17    # "streamReader":Lmf/javax/xml/stream/XMLStreamReader;
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 2372
    :cond_2
    invoke-interface {v10}, Lmf/javax/xml/stream/XMLEventReader;->peek()Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v2

    invoke-interface {v2}, Lmf/javax/xml/stream/events/XMLEvent;->isStartDocument()Z

    move-result v11

    goto :goto_0

    .line 2384
    .end local v11    # "isDocument":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fStAXSchemaParser:Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;

    if-nez v2, :cond_4

    .line 2385
    new-instance v2, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fStAXSchemaParser:Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;

    .line 2387
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fStAXSchemaParser:Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->reset(Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;Lmf/org/apache/xerces/util/SymbolTable;)V

    .line 2389
    if-eqz v17, :cond_7

    .line 2390
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fStAXSchemaParser:Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->parse(Lmf/javax/xml/stream/XMLStreamReader;)V

    .line 2391
    if-eqz v8, :cond_5

    .line 2392
    :goto_2
    invoke-interface/range {v17 .. v17}, Lmf/javax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2405
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fStAXSchemaParser:Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->getDocument()Lmf/org/w3c/dom/Document;

    move-result-object v13

    .line 2406
    .local v13, "schemaDocument":Lmf/org/w3c/dom/Document;
    if-eqz v13, :cond_8

    invoke-static {v13}, Lmf/org/apache/xerces/util/DOMUtil;->getRoot(Lmf/org/w3c/dom/Document;)Lmf/org/w3c/dom/Element;

    move-result-object v14

    .line 2407
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15, v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument0(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;Ljava/lang/String;Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    goto :goto_1

    .line 2393
    .end local v13    # "schemaDocument":Lmf/org/w3c/dom/Document;
    :cond_6
    invoke-interface/range {v17 .. v17}, Lmf/javax/xml/stream/XMLStreamReader;->next()I
    :try_end_0
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 2409
    .end local v8    # "consumeRemainingContent":Z
    .end local v10    # "eventReader":Lmf/javax/xml/stream/XMLEventReader;
    .end local v12    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .end local v15    # "schemaId":Ljava/lang/String;
    .end local v17    # "streamReader":Lmf/javax/xml/stream/XMLStreamReader;
    :catch_0
    move-exception v9

    .line 2410
    .local v9, "e":Lmf/javax/xml/stream/XMLStreamException;
    invoke-virtual {v9}, Lmf/javax/xml/stream/XMLStreamException;->getNestedException()Ljava/lang/Throwable;

    move-result-object v18

    .line 2411
    .local v18, "t":Ljava/lang/Throwable;
    move-object/from16 v0, v18

    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_9

    move-object/from16 v7, v18

    .line 2412
    check-cast v7, Ljava/io/IOException;

    .line 2423
    .end local v9    # "e":Lmf/javax/xml/stream/XMLStreamException;
    .end local v18    # "t":Ljava/lang/Throwable;
    :goto_4
    const/4 v4, 0x1

    move-object/from16 v2, p0

    move/from16 v3, p3

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument1(ZZLmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/w3c/dom/Element;Ljava/io/IOException;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    goto :goto_1

    .line 2398
    .restart local v8    # "consumeRemainingContent":Z
    .restart local v10    # "eventReader":Lmf/javax/xml/stream/XMLEventReader;
    .restart local v12    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .restart local v15    # "schemaId":Ljava/lang/String;
    .restart local v17    # "streamReader":Lmf/javax/xml/stream/XMLStreamReader;
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fStAXSchemaParser:Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;

    invoke-virtual {v2, v10}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->parse(Lmf/javax/xml/stream/XMLEventReader;)V

    .line 2399
    if-eqz v8, :cond_5

    .line 2400
    :goto_5
    invoke-interface {v10}, Lmf/javax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2401
    invoke-interface {v10}, Lmf/javax/xml/stream/XMLEventReader;->nextEvent()Lmf/javax/xml/stream/events/XMLEvent;
    :try_end_1
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 2420
    .end local v8    # "consumeRemainingContent":Z
    .end local v10    # "eventReader":Lmf/javax/xml/stream/XMLEventReader;
    .end local v12    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .end local v15    # "schemaId":Ljava/lang/String;
    .end local v17    # "streamReader":Lmf/javax/xml/stream/XMLStreamReader;
    :catch_1
    move-exception v9

    .line 2421
    .local v9, "e":Ljava/io/IOException;
    move-object v7, v9

    goto :goto_4

    .line 2406
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v8    # "consumeRemainingContent":Z
    .restart local v10    # "eventReader":Lmf/javax/xml/stream/XMLEventReader;
    .restart local v12    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .restart local v13    # "schemaDocument":Lmf/org/w3c/dom/Document;
    .restart local v15    # "schemaId":Ljava/lang/String;
    .restart local v17    # "streamReader":Lmf/javax/xml/stream/XMLStreamReader;
    :cond_8
    const/4 v14, 0x0

    goto :goto_3

    .line 2415
    .end local v8    # "consumeRemainingContent":Z
    .end local v10    # "eventReader":Lmf/javax/xml/stream/XMLEventReader;
    .end local v12    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .end local v13    # "schemaDocument":Lmf/org/w3c/dom/Document;
    .end local v15    # "schemaId":Ljava/lang/String;
    .end local v17    # "streamReader":Lmf/javax/xml/stream/XMLStreamReader;
    .local v9, "e":Lmf/javax/xml/stream/XMLStreamException;
    .restart local v18    # "t":Ljava/lang/Throwable;
    :cond_9
    new-instance v16, Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-direct/range {v16 .. v16}, Lmf/org/apache/xerces/util/StAXLocationWrapper;-><init>()V

    .line 2416
    .local v16, "slw":Lmf/org/apache/xerces/util/StAXLocationWrapper;
    invoke-virtual {v9}, Lmf/javax/xml/stream/XMLStreamException;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    .line 2417
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLParseException;

    invoke-virtual {v9}, Lmf/javax/xml/stream/XMLStreamException;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v2, v0, v3, v9}, Lmf/org/apache/xerces/xni/parser/XMLParseException;-><init>(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method private getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;
    .locals 12
    .param p1, "schemaNamespace"    # Ljava/lang/String;
    .param p2, "schemaSource"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .param p3, "mustResolve"    # Z
    .param p4, "referType"    # S
    .param p5, "referElement"    # Lmf/org/w3c/dom/Element;

    .prologue
    .line 2118
    const/4 v3, 0x1

    .line 2119
    .local v3, "hasInput":Z
    const/4 v6, 0x0

    .line 2121
    .local v6, "exception":Ljava/io/IOException;
    const/4 v10, 0x0

    .line 2129
    .local v10, "schemaElement":Lmf/org/w3c/dom/Element;
    if-eqz p2, :cond_3

    .line 2130
    :try_start_0
    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2131
    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2132
    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2138
    :cond_0
    const/4 v8, 0x0

    .line 2139
    .local v8, "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    const/4 v11, 0x0

    .line 2140
    .local v11, "schemaId":Ljava/lang/String;
    const/4 v1, 0x3

    move/from16 v0, p4

    if-eq v0, v1, :cond_1

    .line 2141
    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 2142
    new-instance v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;

    .end local v8    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    move/from16 v0, p4

    invoke-direct {v8, v11, v0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;-><init>(Ljava/lang/String;SLjava/lang/String;)V

    .line 2143
    .restart local v8    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTraversed:Ljava/util/Hashtable;

    invoke-virtual {v1, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object v10, v0

    if-eqz v10, :cond_1

    .line 2144
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z

    move-object v1, v10

    .line 2161
    .end local v8    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .end local v11    # "schemaId":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 2149
    .restart local v8    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .restart local v11    # "schemaId":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v1, p2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    .line 2150
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->getDocument()Lmf/org/w3c/dom/Document;

    move-result-object v9

    .line 2151
    .local v9, "schemaDocument":Lmf/org/w3c/dom/Document;
    if-eqz v9, :cond_2

    invoke-static {v9}, Lmf/org/apache/xerces/util/DOMUtil;->getRoot(Lmf/org/w3c/dom/Document;)Lmf/org/w3c/dom/Element;

    move-result-object v10

    .line 2152
    :goto_1
    invoke-direct {p0, v8, v11, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument0(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;Ljava/lang/String;Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 2151
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 2155
    .end local v8    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .end local v9    # "schemaDocument":Lmf/org/w3c/dom/Document;
    .end local v11    # "schemaId":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    :goto_2
    move-object v1, p0

    move v2, p3

    move-object v4, p2

    move-object/from16 v5, p5

    .line 2161
    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument1(ZZLmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/w3c/dom/Element;Ljava/io/IOException;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    goto :goto_0

    .line 2158
    :catch_0
    move-exception v7

    .line 2159
    .local v7, "ex":Ljava/io/IOException;
    move-object v6, v7

    goto :goto_2
.end method

.method private getSchemaDocument(Lmf/org/apache/xerces/impl/xs/util/XSInputSource;Lmf/org/apache/xerces/impl/xs/XSDDescription;)Lmf/org/w3c/dom/Element;
    .locals 9
    .param p1, "schemaSource"    # Lmf/org/apache/xerces/impl/xs/util/XSInputSource;
    .param p2, "desc"    # Lmf/org/apache/xerces/impl/xs/XSDDescription;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 2483
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;->getGrammars()[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v3

    .line 2484
    .local v3, "grammars":[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v5

    .line 2486
    .local v5, "referType":S
    if-eqz v3, :cond_2

    array-length v6, v3

    if-lez v6, :cond_2

    .line 2487
    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandGrammars([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Ljava/util/Vector;

    move-result-object v2

    .line 2491
    .local v2, "expandedGrammars":Ljava/util/Vector;
    iget-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    if-nez v6, :cond_0

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->existingGrammars(Ljava/util/Vector;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2492
    :cond_0
    invoke-direct {p0, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGrammars(Ljava/util/Vector;)V

    .line 2493
    if-ne v5, v8, :cond_1

    .line 2494
    aget-object v6, v3, v7

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setTargetNamespace(Ljava/lang/String;)V

    .line 2511
    .end local v2    # "expandedGrammars":Ljava/util/Vector;
    :cond_1
    :goto_0
    const/4 v6, 0x0

    return-object v6

    .line 2499
    :cond_2
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;->getComponents()[Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    .line 2500
    .local v0, "components":[Lmf/org/apache/xerces/xs/XSObject;
    if-eqz v0, :cond_1

    array-length v6, v0

    if-lez v6, :cond_1

    .line 2501
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 2502
    .local v4, "importDependencies":Ljava/util/Hashtable;
    invoke-direct {p0, v0, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandComponents([Lmf/org/apache/xerces/xs/XSObject;Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object v1

    .line 2503
    .local v1, "expandedComponents":Ljava/util/Vector;
    iget-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    if-nez v6, :cond_3

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->canAddComponents(Ljava/util/Vector;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2504
    :cond_3
    invoke-direct {p0, v1, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalComponents(Ljava/util/Vector;Ljava/util/Hashtable;)V

    .line 2505
    if-ne v5, v8, :cond_1

    .line 2506
    aget-object v6, v0, v7

    invoke-interface {v6}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setTargetNamespace(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSchemaDocument0(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;Ljava/lang/String;Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;
    .locals 1
    .param p1, "key"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .param p2, "schemaId"    # Ljava/lang/String;
    .param p3, "schemaElement"    # Lmf/org/w3c/dom/Element;

    .prologue
    .line 2433
    if-eqz p1, :cond_0

    .line 2434
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTraversed:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2436
    :cond_0
    if-eqz p2, :cond_1

    .line 2437
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    invoke-virtual {v0, p3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2439
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z

    .line 2440
    return-object p3
.end method

.method private getSchemaDocument1(ZZLmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/w3c/dom/Element;Ljava/io/IOException;)Lmf/org/w3c/dom/Element;
    .locals 4
    .param p1, "mustResolve"    # Z
    .param p2, "hasInput"    # Z
    .param p3, "schemaSource"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .param p4, "referElement"    # Lmf/org/w3c/dom/Element;
    .param p5, "ioe"    # Ljava/io/IOException;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2450
    if-eqz p1, :cond_3

    .line 2451
    if-eqz p2, :cond_1

    .line 2452
    const-string v0, "schema_reference.4"

    .line 2453
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 2452
    invoke-virtual {p0, v0, v1, p4, p5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;Ljava/lang/Exception;)V

    .line 2468
    :cond_0
    :goto_0
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z

    .line 2469
    const/4 v0, 0x0

    return-object v0

    .line 2457
    :cond_1
    const-string v1, "schema_reference.4"

    .line 2458
    new-array v2, v2, [Ljava/lang/Object;

    if-nez p3, :cond_2

    const-string v0, ""

    :goto_1
    aput-object v0, v2, v3

    .line 2457
    invoke-virtual {p0, v1, v2, p4, p5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;Ljava/lang/Exception;)V

    goto :goto_0

    .line 2458
    :cond_2
    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2462
    :cond_3
    if-eqz p2, :cond_0

    .line 2463
    const-string v0, "schema_reference.4"

    .line 2464
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 2463
    invoke-virtual {p0, v0, v1, p4, p5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaWarning(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private getSchemaGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 4
    .param p1, "desc"    # Lmf/org/apache/xerces/impl/xs/XSDDescription;

    .prologue
    .line 3315
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    .line 3317
    .local v0, "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-nez v0, :cond_1

    .line 3318
    new-instance v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .end local v0    # "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->makeClone()Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSDDescription;Lmf/org/apache/xerces/util/SymbolTable;)V

    .line 3319
    .restart local v0    # "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 3325
    :cond_0
    :goto_0
    return-object v0

    .line 3321
    :cond_1
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3322
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->createGrammarFrom(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    goto :goto_0
.end method

.method private isExistingGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Z
    .locals 7
    .param p1, "desc"    # Lmf/org/apache/xerces/impl/xs/XSDDescription;
    .param p2, "ignoreConflict"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1125
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    .line 1126
    .local v1, "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-nez v1, :cond_2

    .line 1127
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1137
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 1127
    goto :goto_0

    .line 1129
    :cond_2
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->isImmutable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1134
    :try_start_0
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lmf/org/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1136
    :catch_0
    move-exception v0

    .local v0, "e":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    move v2, v3

    .line 1137
    goto :goto_0
.end method

.method private final needReportTNSError(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 1471
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fReportedTNS:Ljava/util/Vector;

    if-nez v0, :cond_1

    .line 1472
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fReportedTNS:Ljava/util/Vector;

    .line 1475
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fReportedTNS:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1476
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1473
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fReportedTNS:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1474
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nonAnnotationContent(Lmf/org/w3c/dom/Element;)Z
    .locals 3
    .param p1, "elem"    # Lmf/org/w3c/dom/Element;

    .prologue
    .line 4033
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    .local v0, "child":Lmf/org/w3c/dom/Element;
    :goto_0
    if-nez v0, :cond_0

    .line 4036
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 4034
    :cond_0
    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    .line 4033
    :cond_1
    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_0
.end method

.method private null2EmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "ns"    # Ljava/lang/String;

    .prologue
    .line 312
    if-nez p1, :cond_0

    sget-object p1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .end local p1    # "ns":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private removeParticle(Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Z
    .locals 7
    .param p1, "group"    # Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    .param p2, "particle"    # Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .prologue
    const/4 v4, 0x1

    .line 3607
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lt v0, v3, :cond_0

    .line 3620
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 3608
    :cond_0
    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v2, v3, v0

    .line 3609
    .local v2, "member":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    if-ne v2, p2, :cond_2

    .line 3610
    move v1, v0

    .local v1, "j":I
    :goto_2
    iget v3, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    add-int/lit8 v3, v3, -0x1

    if-lt v1, v3, :cond_1

    .line 3612
    iget v3, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    move v3, v4

    .line 3613
    goto :goto_1

    .line 3611
    :cond_1
    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v5, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    add-int/lit8 v6, v1, 0x1

    aget-object v5, v5, v6

    aput-object v5, v3, v1

    .line 3610
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3615
    .end local v1    # "j":I
    :cond_2
    iget-short v3, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    .line 3616
    iget-object v3, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct {p0, v3, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->removeParticle(Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    .line 3617
    goto :goto_1

    .line 3607
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private renameRedefiningComponents(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "currSchema"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p2, "child"    # Lmf/org/w3c/dom/Element;
    .param p3, "componentType"    # Ljava/lang/String;
    .param p4, "oldName"    # Ljava/lang/String;
    .param p5, "newName"    # Ljava/lang/String;

    .prologue
    .line 3781
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3782
    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v10

    .line 3783
    .local v10, "grandKid":Lmf/org/w3c/dom/Element;
    if-nez v10, :cond_1

    .line 3784
    const-string v1, "src-redefine.5.a.a"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p0, v1, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 3923
    .end local v10    # "grandKid":Lmf/org/w3c/dom/Element;
    :cond_0
    :goto_0
    return-void

    .line 3787
    .restart local v10    # "grandKid":Lmf/org/w3c/dom/Element;
    :cond_1
    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    .line 3788
    .local v11, "grandKidName":Ljava/lang/String;
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3789
    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v10

    .line 3791
    :cond_2
    if-nez v10, :cond_3

    .line 3792
    const-string v1, "src-redefine.5.a.a"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p0, v1, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_0

    .line 3795
    :cond_3
    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    .line 3796
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3797
    const-string v1, "src-redefine.5.a.b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v11, v3, v4

    move-object/from16 v0, p2

    invoke-virtual {p0, v1, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_0

    .line 3800
    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v10, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v8

    .line 3801
    .local v8, "attrs":[Ljava/lang/Object;
    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    aget-object v9, v8, v1

    check-cast v9, Lmf/org/apache/xerces/xni/QName;

    .line 3802
    .local v9, "derivedBase":Lmf/org/apache/xerces/xni/QName;
    if-eqz v9, :cond_5

    .line 3803
    iget-object v1, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-ne v1, v3, :cond_5

    .line 3804
    iget-object v1, v9, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 3805
    :cond_5
    const-string v3, "src-redefine.5.a.c"

    .line 3806
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v11, v4, v1

    const/4 v5, 0x1

    .line 3807
    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, ""

    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3808
    const-string v1, ","

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3807
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    .line 3805
    move-object/from16 v0, p2

    invoke-virtual {p0, v3, v4, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 3820
    :goto_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v8, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_0

    .line 3807
    :cond_6
    move-object/from16 v0, p1

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    goto :goto_1

    .line 3813
    :cond_7
    iget-object v1, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 3814
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    .line 3815
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3814
    invoke-interface {v10, v1, v3}, Lmf/org/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3817
    :cond_8
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-interface {v10, v1, v0}, Lmf/org/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3825
    .end local v8    # "attrs":[Ljava/lang/Object;
    .end local v9    # "derivedBase":Lmf/org/apache/xerces/xni/QName;
    .end local v10    # "grandKid":Lmf/org/w3c/dom/Element;
    .end local v11    # "grandKidName":Ljava/lang/String;
    :cond_9
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3826
    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v10

    .line 3827
    .restart local v10    # "grandKid":Lmf/org/w3c/dom/Element;
    if-nez v10, :cond_a

    .line 3828
    const-string v1, "src-redefine.5.b.a"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p0, v1, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0

    .line 3831
    :cond_a
    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3832
    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v10

    .line 3834
    :cond_b
    if-nez v10, :cond_c

    .line 3835
    const-string v1, "src-redefine.5.b.a"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p0, v1, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0

    .line 3839
    :cond_c
    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v12

    .line 3840
    .local v12, "greatGrandKid":Lmf/org/w3c/dom/Element;
    if-nez v12, :cond_d

    .line 3841
    const-string v1, "src-redefine.5.b.b"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0

    .line 3844
    :cond_d
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    .line 3845
    .local v13, "greatGrandKidName":Ljava/lang/String;
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3846
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v12

    .line 3848
    :cond_e
    if-nez v12, :cond_f

    .line 3849
    const-string v1, "src-redefine.5.b.b"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0

    .line 3852
    :cond_f
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    .line 3853
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 3854
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_EXTENSION:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 3855
    const-string v1, "src-redefine.5.b.c"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v13, v3, v4

    invoke-virtual {p0, v1, v3, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0

    .line 3858
    :cond_10
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v12, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v8

    .line 3859
    .restart local v8    # "attrs":[Ljava/lang/Object;
    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    aget-object v9, v8, v1

    check-cast v9, Lmf/org/apache/xerces/xni/QName;

    .line 3860
    .restart local v9    # "derivedBase":Lmf/org/apache/xerces/xni/QName;
    if-eqz v9, :cond_11

    .line 3861
    iget-object v1, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-ne v1, v3, :cond_11

    .line 3862
    iget-object v1, v9, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 3863
    :cond_11
    const-string v3, "src-redefine.5.b.d"

    .line 3864
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v13, v4, v1

    const/4 v5, 0x1

    .line 3865
    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v1, :cond_12

    const-string v1, ""

    :goto_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3866
    const-string v1, ","

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3865
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    .line 3863
    invoke-virtual {p0, v3, v4, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0

    .line 3865
    :cond_12
    move-object/from16 v0, p1

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    goto :goto_3

    .line 3871
    :cond_13
    iget-object v1, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_14

    iget-object v1, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_14

    .line 3872
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    .line 3873
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3872
    invoke-interface {v12, v1, v3}, Lmf/org/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3875
    :cond_14
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-interface {v12, v1, v0}, Lmf/org/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3885
    .end local v8    # "attrs":[Ljava/lang/Object;
    .end local v9    # "derivedBase":Lmf/org/apache/xerces/xni/QName;
    .end local v10    # "grandKid":Lmf/org/w3c/dom/Element;
    .end local v12    # "greatGrandKid":Lmf/org/w3c/dom/Element;
    .end local v13    # "greatGrandKidName":Ljava/lang/String;
    :cond_15
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3886
    move-object/from16 v0, p1

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v1, :cond_16

    .line 3887
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "processedBaseName":Ljava/lang/String;
    :goto_4
    move-object v1, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    .line 3888
    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->changeRedefineGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)I

    move-result v7

    .line 3889
    .local v7, "attGroupRefsCount":I
    const/4 v1, 0x1

    if-le v7, v1, :cond_17

    .line 3890
    const-string v1, "src-redefine.7.1"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    move-object/from16 v0, p2

    invoke-virtual {p0, v1, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0

    .line 3887
    .end local v2    # "processedBaseName":Ljava/lang/String;
    .end local v7    # "attGroupRefsCount":I
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 3892
    .restart local v2    # "processedBaseName":Ljava/lang/String;
    .restart local v7    # "attGroupRefsCount":I
    :cond_17
    const/4 v1, 0x1

    if-eq v7, v1, :cond_0

    .line 3896
    move-object/from16 v0, p1

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v1, :cond_18

    .line 3897
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedAttributeGroupRegistry:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3899
    :cond_18
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedAttributeGroupRegistry:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3901
    .end local v2    # "processedBaseName":Ljava/lang/String;
    .end local v7    # "attGroupRefsCount":I
    :cond_19
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 3902
    move-object/from16 v0, p1

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v1, :cond_1a

    .line 3903
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "processedBaseName":Ljava/lang/String;
    :goto_5
    move-object v1, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    .line 3904
    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->changeRedefineGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)I

    move-result v14

    .line 3905
    .local v14, "groupRefsCount":I
    const/4 v1, 0x1

    if-le v14, v1, :cond_1b

    .line 3906
    const-string v1, "src-redefine.6.1.1"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    move-object/from16 v0, p2

    invoke-virtual {p0, v1, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0

    .line 3903
    .end local v2    # "processedBaseName":Ljava/lang/String;
    .end local v14    # "groupRefsCount":I
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 3908
    .restart local v2    # "processedBaseName":Ljava/lang/String;
    .restart local v14    # "groupRefsCount":I
    :cond_1b
    const/4 v1, 0x1

    if-eq v14, v1, :cond_0

    .line 3912
    move-object/from16 v0, p1

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v1, :cond_1c

    .line 3913
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedGroupRegistry:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3915
    :cond_1c
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedGroupRegistry:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3919
    .end local v2    # "processedBaseName":Ljava/lang/String;
    .end local v14    # "groupRefsCount":I
    :cond_1d
    const-string v1, "Internal-Error"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "could not handle this particular <redefine>; please submit your schemas and instance document in a bug report!"

    aput-object v5, v3, v4

    move-object/from16 v0, p2

    invoke-virtual {p0, v1, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0
.end method

.method private reportSharingError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 3351
    if-nez p1, :cond_0

    .line 3352
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3354
    .local v0, "qName":Ljava/lang/String;
    :goto_0
    const-string v1, "sch-props-correct.2"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 3355
    return-void

    .line 3352
    .end local v0    # "qName":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private resolveSchema(Lmf/org/apache/xerces/impl/xs/XSDDescription;ZLmf/org/w3c/dom/Element;Z)Lmf/org/w3c/dom/Element;
    .locals 8
    .param p1, "desc"    # Lmf/org/apache/xerces/impl/xs/XSDDescription;
    .param p2, "mustResolve"    # Z
    .param p3, "referElement"    # Lmf/org/w3c/dom/Element;
    .param p4, "usePairs"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2032
    const/4 v2, 0x0

    .line 2034
    .local v2, "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    if-eqz p4, :cond_0

    :try_start_0
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocationPairs:Ljava/util/Hashtable;

    .line 2035
    .local v7, "pairs":Ljava/util/Hashtable;
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    invoke-static {p1, v7, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->resolveDocument(Lmf/org/apache/xerces/impl/xs/XSDDescription;Ljava/util/Hashtable;Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2049
    .end local v7    # "pairs":Ljava/util/Hashtable;
    :goto_1
    instance-of v0, v2, Lmf/org/apache/xerces/util/DOMInputSource;

    if-eqz v0, :cond_2

    .line 2050
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Lmf/org/apache/xerces/util/DOMInputSource;

    .end local v2    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v4

    move-object v0, p0

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/DOMInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    .line 2061
    :goto_2
    return-object v0

    .line 2034
    .restart local v2    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :cond_0
    :try_start_1
    sget-object v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->EMPTY_TABLE:Ljava/util/Hashtable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2037
    :catch_0
    move-exception v6

    .line 2038
    .local v6, "ex":Ljava/io/IOException;
    if-eqz p2, :cond_1

    .line 2039
    const-string v0, "schema_reference.4"

    .line 2040
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getLocationHints()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v4

    aput-object v3, v1, v4

    .line 2039
    invoke-virtual {p0, v0, v1, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_1

    .line 2044
    :cond_1
    const-string v0, "schema_reference.4"

    .line 2045
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getLocationHints()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v4

    aput-object v3, v1, v4

    .line 2044
    invoke-virtual {p0, v0, v1, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaWarning(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_1

    .line 2052
    .end local v6    # "ex":Ljava/io/IOException;
    :cond_2
    instance-of v0, v2, Lmf/org/apache/xerces/util/SAXInputSource;

    if-eqz v0, :cond_3

    .line 2053
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Lmf/org/apache/xerces/util/SAXInputSource;

    .end local v2    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v4

    move-object v0, p0

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/SAXInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_2

    .line 2055
    .restart local v2    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :cond_3
    instance-of v0, v2, Lmf/org/apache/xerces/util/StAXInputSource;

    if-eqz v0, :cond_4

    .line 2056
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Lmf/org/apache/xerces/util/StAXInputSource;

    .end local v2    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v4

    move-object v0, p0

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/StAXInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_2

    .line 2058
    .restart local v2    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :cond_4
    instance-of v0, v2, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;

    if-eqz v0, :cond_5

    .line 2059
    check-cast v2, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;

    .end local v2    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-direct {p0, v2, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Lmf/org/apache/xerces/impl/xs/util/XSInputSource;Lmf/org/apache/xerces/impl/xs/XSDDescription;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_2

    .line 2061
    .restart local v2    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :cond_5
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v4

    move-object v0, p0

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_2
.end method

.method private resolveSchema(Lmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/apache/xerces/impl/xs/XSDDescription;ZLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;
    .locals 6
    .param p1, "schemaSource"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .param p2, "desc"    # Lmf/org/apache/xerces/impl/xs/XSDDescription;
    .param p3, "mustResolve"    # Z
    .param p4, "referElement"    # Lmf/org/w3c/dom/Element;

    .prologue
    .line 2067
    instance-of v0, p1, Lmf/org/apache/xerces/util/DOMInputSource;

    if-eqz v0, :cond_0

    .line 2068
    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/util/DOMInputSource;

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v4

    move-object v0, p0

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/DOMInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    .line 2079
    .end local p1    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :goto_0
    return-object v0

    .line 2070
    .restart local p1    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :cond_0
    instance-of v0, p1, Lmf/org/apache/xerces/util/SAXInputSource;

    if-eqz v0, :cond_1

    .line 2071
    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/util/SAXInputSource;

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v4

    move-object v0, p0

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/SAXInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_0

    .line 2073
    :cond_1
    instance-of v0, p1, Lmf/org/apache/xerces/util/StAXInputSource;

    if-eqz v0, :cond_2

    .line 2074
    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/util/StAXInputSource;

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v4

    move-object v0, p0

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/StAXInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_0

    .line 2076
    :cond_2
    instance-of v0, p1, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;

    if-eqz v0, :cond_3

    .line 2077
    check-cast p1, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;

    .end local p1    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Lmf/org/apache/xerces/impl/xs/util/XSInputSource;Lmf/org/apache/xerces/impl/xs/XSDDescription;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_0

    .line 2079
    .restart local p1    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :cond_3
    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v4

    move-object v0, p0

    move-object v2, p1

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_0
.end method

.method private resolveSchemaSource(Lmf/org/apache/xerces/impl/xs/XSDDescription;ZLmf/org/w3c/dom/Element;Z)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 7
    .param p1, "desc"    # Lmf/org/apache/xerces/impl/xs/XSDDescription;
    .param p2, "mustResolve"    # Z
    .param p3, "referElement"    # Lmf/org/w3c/dom/Element;
    .param p4, "usePairs"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 2085
    const/4 v2, 0x0

    .line 2087
    .local v2, "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    if-eqz p4, :cond_0

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocationPairs:Ljava/util/Hashtable;

    .line 2088
    .local v1, "pairs":Ljava/util/Hashtable;
    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    invoke-static {p1, v1, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->resolveDocument(Lmf/org/apache/xerces/impl/xs/XSDDescription;Ljava/util/Hashtable;Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v2

    .line 2103
    .end local v1    # "pairs":Ljava/util/Hashtable;
    :goto_1
    return-object v2

    .line 2087
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->EMPTY_TABLE:Ljava/util/Hashtable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2090
    :catch_0
    move-exception v0

    .line 2091
    .local v0, "ex":Ljava/io/IOException;
    if-eqz p2, :cond_1

    .line 2092
    const-string v3, "schema_reference.4"

    .line 2093
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getLocationHints()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v6

    aput-object v5, v4, v6

    .line 2092
    invoke-virtual {p0, v3, v4, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_1

    .line 2097
    :cond_1
    const-string v3, "schema_reference.4"

    .line 2098
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getLocationHints()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v6

    aput-object v5, v4, v6

    .line 2097
    invoke-virtual {p0, v3, v4, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaWarning(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_1
.end method

.method private setSchemasVisible(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V
    .locals 4
    .param p1, "startSchema"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .prologue
    .line 4040
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lmf/org/w3c/dom/Element;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v2, v3}, Lmf/org/apache/xerces/util/DOMUtil;->isHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4042
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lmf/org/w3c/dom/Element;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v2, v3}, Lmf/org/apache/xerces/util/DOMUtil;->setVisible(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    .line 4043
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDependencyMap:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 4044
    .local v0, "dependingSchemas":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 4049
    .end local v0    # "dependingSchemas":Ljava/util/Vector;
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 4045
    .restart local v0    # "dependingSchemas":Ljava/util/Vector;
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->setSchemasVisible(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 4044
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateImportDependencies(Ljava/util/Hashtable;)V
    .locals 4
    .param p1, "table"    # Ljava/util/Hashtable;

    .prologue
    .line 3239
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 3242
    .local v1, "keys":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3249
    return-void

    .line 3243
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3244
    .local v2, "namespace":Ljava/lang/String;
    invoke-direct {p0, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 3245
    .local v0, "importList":Ljava/util/Vector;
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 3246
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandImportList(Ljava/lang/String;Ljava/util/Vector;)V

    goto :goto_0
.end method

.method private updateImportList(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 4
    .param p1, "importedSrc"    # Ljava/util/Vector;
    .param p2, "importedDst"    # Ljava/util/Vector;

    .prologue
    .line 2706
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    .line 2708
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 2714
    return-void

    .line 2709
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 2710
    .local v1, "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-direct {p0, p2, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->containedImportedGrammar(Ljava/util/Vector;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2711
    invoke-virtual {p2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2708
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateImportList(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 5
    .param p1, "sg"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "importedGrammars"    # Ljava/util/Vector;
    .param p3, "namespaceList"    # Ljava/util/Vector;

    .prologue
    .line 3283
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 3286
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 3297
    return-void

    .line 3287
    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    .line 3288
    .local v1, "isg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v1, :cond_1

    .line 3289
    invoke-direct {p0, p2, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->containedImportedGrammar(Ljava/util/Vector;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3290
    invoke-virtual {p2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3286
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateImportListFor(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 6
    .param p1, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    .line 1151
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v1

    .line 1152
    .local v1, "importedGrammars":Ljava/util/Vector;
    if-eqz v1, :cond_0

    .line 1153
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 1161
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 1154
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 1155
    .local v2, "isg1":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v3

    .line 1156
    .local v3, "isg2":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v3, :cond_2

    if-eq v2, v3, :cond_2

    .line 1157
    invoke-virtual {v1, v0, v3}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1153
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateImportListWith(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 8
    .param p1, "newGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    .line 1173
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammars()[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v4

    .line 1174
    .local v4, "schemaGrammars":[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v4

    if-lt v0, v6, :cond_0

    .line 1191
    return-void

    .line 1175
    :cond_0
    aget-object v5, v4, v0

    .line 1176
    .local v5, "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eq v5, p1, :cond_1

    .line 1177
    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v1

    .line 1178
    .local v1, "importedGrammars":Ljava/util/Vector;
    if-eqz v1, :cond_1

    .line 1179
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v3, v6, :cond_2

    .line 1174
    .end local v1    # "importedGrammars":Ljava/util/Vector;
    .end local v3    # "j":I
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1180
    .restart local v1    # "importedGrammars":Ljava/util/Vector;
    .restart local v3    # "j":I
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 1181
    .local v2, "isg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1182
    if-eq v2, p1, :cond_1

    .line 1183
    invoke-virtual {v1, v3, p1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1179
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private validateAnnotations(Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "annotationInfo"    # Ljava/util/ArrayList;

    .prologue
    const/4 v5, 0x0

    .line 663
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    if-nez v4, :cond_0

    .line 664
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->createAnnotationValidator()V

    .line 666
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 667
    .local v2, "size":I
    new-instance v3, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-direct {v3, v5, v5, v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    .local v3, "src":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucketAdapter:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;->refreshGrammars(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;)V

    .line 669
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 681
    return-void

    .line 670
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setSystemId(Ljava/lang/String;)V

    .line 671
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;

    .line 672
    .local v0, "annotation":Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;
    :goto_1
    if-nez v0, :cond_2

    .line 669
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 673
    :cond_2
    new-instance v4, Ljava/io/StringReader;

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;->fAnnotation:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 675
    :try_start_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/parsers/XML11Configuration;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    :goto_2
    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;->next:Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;

    goto :goto_1

    .line 677
    :catch_0
    move-exception v4

    goto :goto_2
.end method


# virtual methods
.method addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V
    .locals 4
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .prologue
    .line 1503
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v1

    .line 1504
    .local v1, "namespace":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 1505
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1507
    .local v0, "declKey":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1508
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2, v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1510
    :cond_1
    return-void

    .line 1505
    .end local v0    # "declKey":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V
    .locals 4
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    .prologue
    .line 1514
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getNamespace()Ljava/lang/String;

    move-result-object v1

    .line 1515
    .local v1, "namespace":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 1516
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1518
    .local v0, "declKey":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1519
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2, v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1521
    :cond_1
    return-void

    .line 1516
    .end local v0    # "declKey":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 4
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .prologue
    .line 1525
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getNamespace()Ljava/lang/String;

    move-result-object v1

    .line 1526
    .local v1, "namespace":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 1527
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1529
    .local v0, "declKey":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1530
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2, v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1532
    :cond_1
    return-void

    .line 1527
    .end local v0    # "declKey":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;)V
    .locals 4
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    .prologue
    .line 1536
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->getNamespace()Ljava/lang/String;

    move-result-object v1

    .line 1537
    .local v1, "namespace":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 1538
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1540
    .local v0, "declKey":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1541
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2, v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1543
    :cond_1
    return-void

    .line 1538
    .end local v0    # "declKey":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;)V
    .locals 4
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    .prologue
    .line 1547
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->getNamespace()Ljava/lang/String;

    move-result-object v1

    .line 1548
    .local v1, "namespace":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 1549
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1551
    .local v0, "declKey":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1552
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2, v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1554
    :cond_1
    return-void

    .line 1549
    .end local v0    # "declKey":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V
    .locals 4
    .param p1, "decl"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .prologue
    .line 1558
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v1

    .line 1559
    .local v1, "namespace":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 1560
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1562
    .local v0, "declKey":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1563
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2, v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1565
    :cond_1
    return-void

    .line 1560
    .end local v0    # "declKey":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method addIDConstraintDecl(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 4
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    .prologue
    .line 1569
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getNamespace()Ljava/lang/String;

    move-result-object v1

    .line 1570
    .local v1, "namespace":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 1571
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1573
    .local v0, "declKey":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1574
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2, v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1576
    :cond_1
    return-void

    .line 1571
    .end local v0    # "declKey":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected buildGlobalNameRegistries()V
    .locals 29

    .prologue
    .line 1211
    new-instance v28, Ljava/util/Stack;

    invoke-direct/range {v28 .. v28}, Ljava/util/Stack;-><init>()V

    .line 1212
    .local v28, "schemasToProcess":Ljava/util/Stack;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRoot:Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    :cond_0
    invoke-virtual/range {v28 .. v28}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1333
    return-void

    .line 1216
    :cond_1
    invoke-virtual/range {v28 .. v28}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .line 1217
    .local v8, "currSchemaDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    iget-object v0, v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lmf/org/w3c/dom/Element;

    move-object/from16 v23, v0

    .line 1218
    .local v23, "currDoc":Lmf/org/w3c/dom/Element;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lmf/org/apache/xerces/util/DOMUtil;->isHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1223
    move-object/from16 v24, v23

    .line 1225
    .local v24, "currRoot":Lmf/org/w3c/dom/Element;
    const/16 v26, 0x1

    .line 1227
    .local v26, "dependenciesCanOccur":Z
    invoke-static/range {v24 .. v24}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v20

    .line 1228
    .local v20, "globalComp":Lmf/org/w3c/dom/Element;
    :goto_0
    if-nez v20, :cond_2

    .line 1325
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lmf/org/apache/xerces/util/DOMUtil;->setHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    .line 1327
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDependencyMap:Ljava/util/Hashtable;

    invoke-virtual {v2, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Vector;

    .line 1328
    .local v25, "currSchemaDepends":Ljava/util/Vector;
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_1
    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v2

    move/from16 v0, v27

    if-ge v0, v2, :cond_0

    .line 1329
    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 1232
    .end local v25    # "currSchemaDepends":Ljava/util/Vector;
    .end local v27    # "i":I
    :cond_2
    invoke-static/range {v20 .. v20}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1229
    :cond_3
    :goto_2
    invoke-static/range {v20 .. v20}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v20

    goto :goto_0

    .line 1236
    :cond_4
    invoke-static/range {v20 .. v20}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_INCLUDE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1237
    invoke-static/range {v20 .. v20}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_IMPORT:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1238
    :cond_5
    if-nez v26, :cond_6

    .line 1239
    const-string v2, "s4s-elt-invalid-content.3"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v20 .. v20}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 1241
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lmf/org/apache/xerces/util/DOMUtil;->setHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    goto :goto_2

    .line 1243
    :cond_7
    invoke-static/range {v20 .. v20}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1244
    if-nez v26, :cond_8

    .line 1245
    const-string v2, "s4s-elt-invalid-content.3"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v20 .. v20}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 1247
    :cond_8
    invoke-static/range {v20 .. v20}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v7

    .line 1248
    .local v7, "redefineComp":Lmf/org/w3c/dom/Element;
    :goto_3
    if-eqz v7, :cond_3

    .line 1250
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-static {v7, v2}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrValue(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1251
    .local v13, "lName":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 1249
    :cond_9
    :goto_4
    invoke-static {v7}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v7

    goto :goto_3

    .line 1253
    :cond_a
    iget-object v2, v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 1254
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1256
    .local v3, "qName":Ljava/lang/String;
    :goto_5
    invoke-static {v7}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v22

    .line 1257
    .local v22, "componentType":Ljava/lang/String;
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1258
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistry:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 1260
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-static {v7, v4}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrValue(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_fn3dktizrknc9pi"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1262
    .local v14, "targetLName":Ljava/lang/String;
    sget-object v12, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    move-object/from16 v9, p0

    move-object v10, v8

    move-object v11, v7

    invoke-direct/range {v9 .. v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->renameRedefiningComponents(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1255
    .end local v3    # "qName":Ljava/lang/String;
    .end local v14    # "targetLName":Ljava/lang/String;
    .end local v22    # "componentType":Ljava/lang/String;
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v4, v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 1265
    .restart local v3    # "qName":Ljava/lang/String;
    .restart local v22    # "componentType":Ljava/lang/String;
    :cond_c
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1266
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1267
    :cond_d
    const/4 v4, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistry:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 1269
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-static {v7, v4}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrValue(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_fn3dktizrknc9pi"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1271
    .restart local v14    # "targetLName":Ljava/lang/String;
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1272
    sget-object v12, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    move-object/from16 v9, p0

    move-object v10, v8

    move-object v11, v7

    invoke-direct/range {v9 .. v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->renameRedefiningComponents(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1276
    :cond_e
    sget-object v12, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    move-object/from16 v9, p0

    move-object v10, v8

    move-object v11, v7

    invoke-direct/range {v9 .. v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->renameRedefiningComponents(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1280
    .end local v14    # "targetLName":Ljava/lang/String;
    :cond_f
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1281
    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistry:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 1283
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-static {v7, v4}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrValue(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_fn3dktizrknc9pi"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1285
    .restart local v14    # "targetLName":Ljava/lang/String;
    sget-object v12, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    move-object/from16 v9, p0

    move-object v10, v8

    move-object v11, v7

    invoke-direct/range {v9 .. v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->renameRedefiningComponents(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1293
    .end local v3    # "qName":Ljava/lang/String;
    .end local v7    # "redefineComp":Lmf/org/w3c/dom/Element;
    .end local v13    # "lName":Ljava/lang/String;
    .end local v14    # "targetLName":Ljava/lang/String;
    .end local v22    # "componentType":Ljava/lang/String;
    :cond_10
    const/16 v26, 0x0

    .line 1294
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrValue(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1295
    .restart local v13    # "lName":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1297
    iget-object v2, v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v2, :cond_11

    .line 1298
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1300
    .restart local v3    # "qName":Ljava/lang/String;
    :goto_6
    invoke-static/range {v20 .. v20}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v22

    .line 1302
    .restart local v22    # "componentType":Ljava/lang/String;
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1303
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistry:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v19, v0

    move-object/from16 v15, p0

    move-object/from16 v16, v3

    move-object/from16 v21, v8

    invoke-virtual/range {v15 .. v21}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_2

    .line 1299
    .end local v3    # "qName":Ljava/lang/String;
    .end local v22    # "componentType":Ljava/lang/String;
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v4, v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 1305
    .restart local v3    # "qName":Ljava/lang/String;
    .restart local v22    # "componentType":Ljava/lang/String;
    :cond_12
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1306
    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistry:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v19, v0

    move-object/from16 v15, p0

    move-object/from16 v16, v3

    move-object/from16 v21, v8

    invoke-virtual/range {v15 .. v21}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_2

    .line 1308
    :cond_13
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 1309
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1310
    :cond_14
    const/16 v17, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistry:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v19, v0

    move-object/from16 v15, p0

    move-object/from16 v16, v3

    move-object/from16 v21, v8

    invoke-virtual/range {v15 .. v21}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_2

    .line 1312
    :cond_15
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1313
    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistry:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v19, v0

    move-object/from16 v15, p0

    move-object/from16 v16, v3

    move-object/from16 v21, v8

    invoke-virtual/range {v15 .. v21}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_2

    .line 1315
    :cond_16
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1316
    const/16 v17, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistry:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v19, v0

    move-object/from16 v15, p0

    move-object/from16 v16, v3

    move-object/from16 v21, v8

    invoke-virtual/range {v15 .. v21}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_2

    .line 1318
    :cond_17
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_NOTATION:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1319
    const/16 v17, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistry:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v19, v0

    move-object/from16 v15, p0

    move-object/from16 v16, v3

    move-object/from16 v21, v8

    invoke-virtual/range {v15 .. v21}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_2
.end method

.method checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V
    .locals 18
    .param p1, "qName"    # Ljava/lang/String;
    .param p2, "declType"    # I
    .param p3, "registry"    # Ljava/util/Hashtable;
    .param p4, "registry_sub"    # Ljava/util/Hashtable;
    .param p5, "currComp"    # Lmf/org/w3c/dom/Element;
    .param p6, "currSchema"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .prologue
    .line 3673
    const/16 v16, 0x0

    .line 3676
    .local v16, "objElem":Ljava/lang/Object;
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-nez v16, :cond_3

    .line 3679
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-nez v4, :cond_0

    .line 3680
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILmf/org/w3c/dom/Element;)V

    .line 3683
    :cond_0
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3684
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3753
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-eqz v4, :cond_2

    .line 3754
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedRegistriesExt:[Ljava/util/Hashtable;

    aget-object v4, v4, p2

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v4, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3757
    :cond_2
    :goto_1
    return-void

    :cond_3
    move-object/from16 v12, v16

    .line 3687
    check-cast v12, Lmf/org/w3c/dom/Element;

    .line 3688
    .local v12, "collidingElem":Lmf/org/w3c/dom/Element;
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .line 3689
    .local v13, "collidingElemSchema":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    move-object/from16 v0, p5

    if-eq v12, v0, :cond_2

    .line 3690
    const/4 v14, 0x0

    .line 3691
    .local v14, "elemParent":Lmf/org/w3c/dom/Element;
    const/16 v17, 0x0

    .line 3694
    .local v17, "redefinedSchema":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    const/4 v11, 0x1

    .line 3695
    .local v11, "collidedWithRedefine":Z
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getParent(Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v14

    invoke-static {v14}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3696
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefine2XSDMap:Ljava/util/Hashtable;

    invoke-virtual {v4, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "redefinedSchema":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    check-cast v17, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .line 3703
    .restart local v17    # "redefinedSchema":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    :cond_4
    :goto_2
    if-eqz v17, :cond_c

    .line 3706
    move-object/from16 v0, p6

    if-ne v13, v0, :cond_6

    .line 3707
    const-string v4, "sch-props-correct.2"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v4, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_1

    .line 3699
    :cond_5
    invoke-static/range {p5 .. p5}, Lmf/org/apache/xerces/util/DOMUtil;->getParent(Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v4

    invoke-static {v4}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3700
    move-object/from16 v17, v13

    .line 3701
    const/4 v11, 0x0

    goto :goto_2

    .line 3711
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_fn3dktizrknc9pi"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 3712
    .local v15, "newName":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p6

    if-ne v0, v1, :cond_9

    .line 3714
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v15}, Lmf/org/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3715
    move-object/from16 v0, p6

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v4, :cond_7

    .line 3716
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3717
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3724
    :goto_3
    move-object/from16 v0, p6

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v4, :cond_8

    .line 3725
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v4, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_0

    .line 3720
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p6

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3721
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p6

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 3727
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p6

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v4, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_0

    .line 3730
    :cond_9
    if-eqz v11, :cond_b

    .line 3731
    move-object/from16 v0, p6

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v4, :cond_a

    .line 3732
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v4, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_0

    .line 3734
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p6

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v4, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_0

    .line 3738
    :cond_b
    const-string v4, "sch-props-correct.2"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v4, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0

    .line 3746
    .end local v15    # "newName":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedRegistriesExt:[Ljava/util/Hashtable;

    aget-object v4, v4, p2

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p6

    if-ne v4, v0, :cond_1

    .line 3747
    :cond_d
    const-string v4, "sch-props-correct.2"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v4, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0
.end method

.method checkForDuplicateNames(Ljava/lang/String;ILmf/org/w3c/dom/Element;)V
    .locals 7
    .param p1, "qName"    # Ljava/lang/String;
    .param p2, "declType"    # I
    .param p3, "currComp"    # Lmf/org/w3c/dom/Element;

    .prologue
    const/4 v6, 0x0

    .line 3760
    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 3761
    .local v2, "namespaceEnd":I
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3762
    .local v1, "namespace":Ljava/lang/String;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->emptyString2Null(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    .line 3764
    .local v0, "grammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v0, :cond_0

    .line 3765
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, p2, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDeclFromGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 3766
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 3767
    const-string v4, "sch-props-correct.2"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {p0, v4, v5, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 3770
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method protected constructTrees(Lmf/org/w3c/dom/Element;Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .locals 44
    .param p1, "schemaRoot"    # Lmf/org/w3c/dom/Element;
    .param p2, "locationHint"    # Ljava/lang/String;
    .param p3, "desc"    # Lmf/org/apache/xerces/impl/xs/XSDDescription;
    .param p4, "nsCollision"    # Z

    .prologue
    .line 760
    if-nez p1, :cond_0

    const/4 v9, 0x0

    .line 1121
    :goto_0
    return-object v9

    .line 761
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v17

    .line 762
    .local v17, "callerTNS":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v33

    .line 764
    .local v33, "referType":S
    const/4 v9, 0x0

    .line 767
    .local v9, "currSchemaInfo":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    :try_start_0
    new-instance v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .end local v9    # "currSchemaInfo":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v4, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;-><init>(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;Lmf/org/apache/xerces/util/SymbolTable;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    .restart local v9    # "currSchemaInfo":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    iget-object v4, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 776
    iget-object v4, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 777
    const-string v4, "EmptyTargetNamespace"

    .line 778
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v8, v10

    .line 777
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v8, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaWarning(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 780
    const/4 v4, 0x0

    iput-object v4, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    .line 783
    :cond_1
    if-eqz v17, :cond_8

    .line 786
    const/16 v40, 0x0

    .line 788
    .local v40, "secondIdx":I
    if-eqz v33, :cond_2

    .line 789
    const/4 v4, 0x1

    move/from16 v0, v33

    if-ne v0, v4, :cond_7

    .line 792
    :cond_2
    iget-object v4, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 793
    move-object/from16 v0, v17

    iput-object v0, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    .line 794
    const/4 v4, 0x1

    iput-boolean v4, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fIsChameleonSchema:Z

    .line 835
    .end local v40    # "secondIdx":I
    :cond_3
    :goto_1
    iget-object v4, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v9, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->addAllowedNS(Ljava/lang/String;)V

    .line 837
    const/16 v41, 0x0

    .line 840
    .local v41, "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz p4, :cond_b

    .line 841
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v8, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v42

    .line 842
    .local v42, "sg2":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-virtual/range {v42 .. v42}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->isImmutable()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 843
    new-instance v41, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .end local v41    # "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-direct/range {v41 .. v42}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;-><init>(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 844
    .restart local v41    # "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 846
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->updateImportListWith(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 853
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->updateImportListFor(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 873
    .end local v42    # "sg2":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :cond_4
    :goto_3
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    iget-object v10, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lmf/org/w3c/dom/Element;

    invoke-virtual {v4, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v8, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addDocument(Ljava/lang/Object;Ljava/lang/String;)V

    .line 875
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2XSDocumentMap:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    new-instance v18, Ljava/util/Vector;

    invoke-direct/range {v18 .. v18}, Ljava/util/Vector;-><init>()V

    .line 877
    .local v18, "dependencies":Ljava/util/Vector;
    move-object/from16 v34, p1

    .line 879
    .local v34, "rootNode":Lmf/org/w3c/dom/Element;
    const/16 v29, 0x0

    .line 880
    .local v29, "newSchemaRoot":Lmf/org/w3c/dom/Element;
    invoke-static/range {v34 .. v34}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v5

    .line 881
    .local v5, "child":Lmf/org/w3c/dom/Element;
    :goto_4
    if-nez v5, :cond_f

    .line 1120
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDependencyMap:Ljava/util/Hashtable;

    move-object/from16 v0, v18

    invoke-virtual {v4, v9, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 768
    .end local v5    # "child":Lmf/org/w3c/dom/Element;
    .end local v9    # "currSchemaInfo":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .end local v18    # "dependencies":Ljava/util/Vector;
    .end local v29    # "newSchemaRoot":Lmf/org/w3c/dom/Element;
    .end local v34    # "rootNode":Lmf/org/w3c/dom/Element;
    .end local v41    # "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :catch_0
    move-exception v39

    .line 769
    .local v39, "se":Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->ELE_ERROR_CODES:[Ljava/lang/String;

    aget-object v4, v4, v33

    .line 770
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v8, v10

    .line 769
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v8, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 772
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 798
    .end local v39    # "se":Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
    .restart local v9    # "currSchemaInfo":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .restart local v40    # "secondIdx":I
    :cond_6
    iget-object v4, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v0, v17

    if-eq v0, v4, :cond_3

    .line 799
    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->NS_ERROR_CODES:[[Ljava/lang/String;

    aget-object v4, v4, v33

    aget-object v4, v4, v40

    .line 800
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v17, v8, v10

    const/4 v10, 0x1

    iget-object v11, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    aput-object v11, v8, v10

    .line 799
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v8, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 802
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 806
    :cond_7
    const/4 v4, 0x3

    move/from16 v0, v33

    if-eq v0, v4, :cond_3

    iget-object v4, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v0, v17

    if-eq v0, v4, :cond_3

    .line 807
    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->NS_ERROR_CODES:[[Ljava/lang/String;

    aget-object v4, v4, v33

    aget-object v4, v4, v40

    .line 808
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v17, v8, v10

    const/4 v10, 0x1

    iget-object v11, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    aput-object v11, v8, v10

    .line 807
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v8, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 810
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 815
    .end local v40    # "secondIdx":I
    :cond_8
    iget-object v4, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 817
    const/4 v4, 0x3

    move/from16 v0, v33

    if-ne v0, v4, :cond_9

    .line 818
    iget-object v4, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setTargetNamespace(Ljava/lang/String;)V

    .line 819
    iget-object v0, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 820
    goto/16 :goto_1

    .line 824
    :cond_9
    const/16 v40, 0x1

    .line 825
    .restart local v40    # "secondIdx":I
    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->NS_ERROR_CODES:[[Ljava/lang/String;

    aget-object v4, v4, v33

    aget-object v4, v4, v40

    .line 826
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v17, v8, v10

    const/4 v10, 0x1

    iget-object v11, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    aput-object v11, v8, v10

    .line 825
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v8, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 828
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 849
    .end local v40    # "secondIdx":I
    .restart local v41    # "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .restart local v42    # "sg2":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :cond_a
    move-object/from16 v41, v42

    goto/16 :goto_2

    .line 855
    .end local v42    # "sg2":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :cond_b
    if-eqz v33, :cond_c

    .line 856
    const/4 v4, 0x1

    move/from16 v0, v33

    if-ne v0, v4, :cond_d

    .line 857
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v8, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v41

    .line 858
    goto/16 :goto_3

    .line 859
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHonourAllSchemaLocations:Z

    if-eqz v4, :cond_e

    const/4 v4, 0x2

    move/from16 v0, v33

    if-ne v0, v4, :cond_e

    .line 860
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v41

    .line 861
    if-nez v41, :cond_4

    .line 862
    new-instance v41, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .end local v41    # "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    iget-object v4, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->makeClone()Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, v41

    invoke-direct {v0, v4, v8, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSDDescription;Lmf/org/apache/xerces/util/SymbolTable;)V

    .line 863
    .restart local v41    # "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto/16 :goto_3

    .line 867
    :cond_e
    new-instance v41, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .end local v41    # "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    iget-object v4, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->makeClone()Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, v41

    invoke-direct {v0, v4, v8, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSDDescription;Lmf/org/apache/xerces/util/SymbolTable;)V

    .line 868
    .restart local v41    # "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto/16 :goto_3

    .line 883
    .restart local v5    # "child":Lmf/org/w3c/dom/Element;
    .restart local v18    # "dependencies":Ljava/util/Vector;
    .restart local v29    # "newSchemaRoot":Lmf/org/w3c/dom/Element;
    .restart local v34    # "rootNode":Lmf/org/w3c/dom/Element;
    :cond_f
    const/16 v37, 0x0

    .line 884
    .local v37, "schemaNamespace":Ljava/lang/String;
    const/16 v35, 0x0

    .line 885
    .local v35, "schemaHint":Ljava/lang/String;
    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v26

    .line 887
    .local v26, "localName":Ljava/lang/String;
    const/16 v32, -0x1

    .line 888
    .local v32, "refType":S
    const/16 v20, 0x0

    .line 890
    .local v20, "importCollision":Z
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 882
    :cond_10
    :goto_5
    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v5

    goto/16 :goto_4

    .line 892
    :cond_11
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_IMPORT:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 893
    const/16 v32, 0x2

    .line 896
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v8, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v7

    .line 897
    .local v7, "importAttrs":[Ljava/lang/Object;
    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SCHEMALOCATION:I

    aget-object v35, v7, v4

    .end local v35    # "schemaHint":Ljava/lang/String;
    check-cast v35, Ljava/lang/String;

    .line 898
    .restart local v35    # "schemaHint":Ljava/lang/String;
    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE:I

    aget-object v37, v7, v4

    .end local v37    # "schemaNamespace":Ljava/lang/String;
    check-cast v37, Ljava/lang/String;

    .line 899
    .restart local v37    # "schemaNamespace":Ljava/lang/String;
    if-eqz v37, :cond_12

    .line 900
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 903
    :cond_12
    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v19

    .line 904
    .local v19, "importChild":Lmf/org/w3c/dom/Element;
    if-eqz v19, :cond_15

    .line 905
    invoke-static/range {v19 .. v19}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v21

    .line 906
    .local v21, "importComponentType":Ljava/lang/String;
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 909
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    const/4 v8, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v7, v8, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v4

    .line 908
    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    .line 913
    :goto_6
    invoke-static/range {v19 .. v19}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 914
    const-string v4, "s4s-elt-must-match.1"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v26, v8, v10

    const/4 v10, 0x1

    const-string v11, "annotation?"

    aput-object v11, v8, v10

    const/4 v10, 0x2

    invoke-static/range {v19 .. v19}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v11

    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 923
    .end local v21    # "importComponentType":Ljava/lang/String;
    :cond_13
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v4, v7, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 926
    iget-object v4, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v0, v37

    if-ne v0, v4, :cond_17

    .line 927
    if-eqz v37, :cond_16

    .line 928
    const-string v4, "src-import.1.1"

    :goto_8
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v37, v8, v10

    .line 927
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_5

    .line 911
    .restart local v21    # "importComponentType":Ljava/lang/String;
    :cond_14
    const-string v4, "s4s-elt-must-match.1"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v26, v8, v10

    const/4 v10, 0x1

    const-string v11, "annotation?"

    aput-object v11, v8, v10

    const/4 v10, 0x2

    aput-object v21, v8, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_6

    .line 918
    .end local v21    # "importComponentType":Ljava/lang/String;
    :cond_15
    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .line 919
    .local v6, "text":Ljava/lang/String;
    if-eqz v6, :cond_13

    .line 920
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    const/4 v8, 0x1

    invoke-virtual/range {v4 .. v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto :goto_7

    .line 928
    .end local v6    # "text":Ljava/lang/String;
    :cond_16
    const-string v4, "src-import.1.2"

    goto :goto_8

    .line 934
    :cond_17
    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->isAllowedNS(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 935
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHonourAllSchemaLocations:Z

    if-nez v4, :cond_18

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    if-eqz v4, :cond_10

    .line 943
    :cond_18
    :goto_9
    iget-object v4, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 945
    .local v43, "tns":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fImportMap:Ljava/util/Hashtable;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Vector;

    .line 947
    .local v24, "ins":Ljava/util/Vector;
    if-nez v24, :cond_1e

    .line 949
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAllTNSs:Ljava/util/Vector;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 950
    new-instance v24, Ljava/util/Vector;

    .end local v24    # "ins":Ljava/util/Vector;
    invoke-direct/range {v24 .. v24}, Ljava/util/Vector;-><init>()V

    .line 951
    .restart local v24    # "ins":Ljava/util/Vector;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fImportMap:Ljava/util/Hashtable;

    move-object/from16 v0, v43

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 958
    :cond_19
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->reset()V

    .line 959
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setContextType(S)V

    .line 960
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct/range {p0 .. p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->doc2SystemId(Lmf/org/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setBaseSystemId(Ljava/lang/String;)V

    .line 961
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setLiteralSystemId(Ljava/lang/String;)V

    .line 962
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v35, v8, v10

    invoke-virtual {v4, v8}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setLocationHints([Ljava/lang/String;)V

    .line 963
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setTargetNamespace(Ljava/lang/String;)V

    .line 967
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v25

    .line 968
    .local v25, "isg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v25, :cond_1a

    .line 969
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    if-eqz v4, :cond_1f

    .line 971
    :try_start_1
    invoke-virtual/range {v25 .. v25}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getBaseSystemId()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    move-object/from16 v0, v35

    invoke-static {v0, v8, v10}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Lmf/org/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z
    :try_end_1
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v4

    if-nez v4, :cond_10

    .line 975
    const/16 v20, 0x1

    .line 993
    :cond_1a
    :goto_b
    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    const/4 v10, 0x0

    if-nez v25, :cond_20

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v10, v5, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->resolveSchema(Lmf/org/apache/xerces/impl/xs/XSDDescription;ZLmf/org/w3c/dom/Element;Z)Lmf/org/w3c/dom/Element;

    move-result-object v29

    .line 1099
    .end local v7    # "importAttrs":[Ljava/lang/Object;
    .end local v19    # "importChild":Lmf/org/w3c/dom/Element;
    .end local v24    # "ins":Ljava/util/Vector;
    .end local v25    # "isg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .end local v43    # "tns":Ljava/lang/String;
    :goto_d
    const/16 v28, 0x0

    .line 1100
    .local v28, "newSchemaInfo":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z

    if-eqz v4, :cond_2f

    .line 1101
    if-nez v29, :cond_2e

    const/16 v28, 0x0

    .line 1107
    :goto_e
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1108
    if-eqz v28, :cond_1b

    .line 1111
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefine2XSDMap:Ljava/util/Hashtable;

    move-object/from16 v0, v28

    invoke-virtual {v4, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    :cond_1b
    if-eqz v29, :cond_10

    .line 1114
    if-eqz v28, :cond_1c

    .line 1115
    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1116
    :cond_1c
    const/16 v29, 0x0

    goto/16 :goto_5

    .line 939
    .end local v28    # "newSchemaInfo":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .restart local v7    # "importAttrs":[Ljava/lang/Object;
    .restart local v19    # "importChild":Lmf/org/w3c/dom/Element;
    :cond_1d
    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->addAllowedNS(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 954
    .restart local v24    # "ins":Ljava/util/Vector;
    .restart local v43    # "tns":Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 955
    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 981
    .restart local v25    # "isg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHonourAllSchemaLocations:Z

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->isExistingGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Z

    move-result v4

    if-eqz v4, :cond_1a

    goto/16 :goto_5

    .line 993
    :cond_20
    const/4 v4, 0x0

    goto :goto_c

    .line 995
    .end local v7    # "importAttrs":[Ljava/lang/Object;
    .end local v19    # "importChild":Lmf/org/w3c/dom/Element;
    .end local v24    # "ins":Ljava/util/Vector;
    .end local v25    # "isg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .end local v43    # "tns":Ljava/lang/String;
    :cond_21
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_INCLUDE:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 996
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1000
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v8, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v13

    .line 1001
    .local v13, "includeAttrs":[Ljava/lang/Object;
    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SCHEMALOCATION:I

    aget-object v35, v13, v4

    .end local v35    # "schemaHint":Ljava/lang/String;
    check-cast v35, Ljava/lang/String;

    .line 1003
    .restart local v35    # "schemaHint":Ljava/lang/String;
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1004
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefine2NSSupport:Ljava/util/Hashtable;

    new-instance v8, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    iget-object v10, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-direct {v8, v10}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;-><init>(Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;)V

    invoke-virtual {v4, v5, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    :cond_23
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_INCLUDE:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1010
    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v22

    .line 1011
    .local v22, "includeChild":Lmf/org/w3c/dom/Element;
    if-eqz v22, :cond_29

    .line 1012
    invoke-static/range {v22 .. v22}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v23

    .line 1013
    .local v23, "includeComponentType":Ljava/lang/String;
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1016
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    const/4 v8, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v13, v8, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v4

    .line 1015
    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    .line 1020
    :goto_f
    invoke-static/range {v22 .. v22}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v4

    if-eqz v4, :cond_24

    .line 1021
    const-string v4, "s4s-elt-must-match.1"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v26, v8, v10

    const/4 v10, 0x1

    const-string v11, "annotation?"

    aput-object v11, v8, v10

    const/4 v10, 0x2

    invoke-static/range {v22 .. v22}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v11

    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 1051
    .end local v22    # "includeChild":Lmf/org/w3c/dom/Element;
    .end local v23    # "includeComponentType":Ljava/lang/String;
    :cond_24
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v4, v13, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 1053
    if-nez v35, :cond_25

    .line 1054
    const-string v4, "s4s-att-must-appear"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 1055
    const-string v11, "<include> or <redefine>"

    aput-object v11, v8, v10

    const/4 v10, 0x1

    const-string v11, "schemaLocation"

    aput-object v11, v8, v10

    .line 1054
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 1059
    :cond_25
    const/16 v27, 0x0

    .line 1060
    .local v27, "mustResolve":Z
    const/16 v32, 0x0

    .line 1061
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1062
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->nonAnnotationContent(Lmf/org/w3c/dom/Element;)Z

    move-result v27

    .line 1063
    const/16 v32, 0x1

    .line 1065
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->reset()V

    .line 1066
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setContextType(S)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct/range {p0 .. p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->doc2SystemId(Lmf/org/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setBaseSystemId(Ljava/lang/String;)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v35, v8, v10

    invoke-virtual {v4, v8}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setLocationHints([Ljava/lang/String;)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setTargetNamespace(Ljava/lang/String;)V

    .line 1071
    const/16 v16, 0x0

    .line 1072
    .local v16, "alreadyTraversed":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v4, v1, v5, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->resolveSchemaSource(Lmf/org/apache/xerces/impl/xs/XSDDescription;ZLmf/org/w3c/dom/Element;Z)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v38

    .line 1073
    .local v38, "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    if-eqz v4, :cond_27

    if-nez v32, :cond_27

    .line 1075
    :try_start_2
    invoke-virtual/range {v38 .. v38}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v38 .. v38}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-static {v4, v8, v10}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v36

    .line 1076
    .local v36, "schemaId":Ljava/lang/String;
    invoke-virtual/range {v41 .. v41}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-interface {v4, v0}, Lmf/org/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z
    :try_end_2
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v16

    .line 1083
    .end local v36    # "schemaId":Ljava/lang/String;
    :cond_27
    :goto_11
    if-nez v16, :cond_2d

    .line 1084
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v27

    invoke-direct {v0, v1, v4, v2, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->resolveSchema(Lmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/apache/xerces/impl/xs/XSDDescription;ZLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v29

    .line 1085
    iget-object v0, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v37, v0

    .line 1086
    goto/16 :goto_d

    .line 1018
    .end local v16    # "alreadyTraversed":Z
    .end local v27    # "mustResolve":Z
    .end local v38    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .restart local v22    # "includeChild":Lmf/org/w3c/dom/Element;
    .restart local v23    # "includeComponentType":Ljava/lang/String;
    :cond_28
    const-string v4, "s4s-elt-must-match.1"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v26, v8, v10

    const/4 v10, 0x1

    const-string v11, "annotation?"

    aput-object v11, v8, v10

    const/4 v10, 0x2

    aput-object v23, v8, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_f

    .line 1025
    .end local v23    # "includeComponentType":Ljava/lang/String;
    :cond_29
    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .line 1026
    .restart local v6    # "text":Ljava/lang/String;
    if-eqz v6, :cond_24

    .line 1027
    move-object/from16 v0, p0

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    const/4 v14, 0x1

    move-object v11, v5

    move-object v12, v6

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto/16 :goto_10

    .line 1032
    .end local v6    # "text":Ljava/lang/String;
    .end local v22    # "includeChild":Lmf/org/w3c/dom/Element;
    :cond_2a
    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v30

    .line 1033
    .local v30, "redefinedChild":Lmf/org/w3c/dom/Element;
    :goto_12
    if-eqz v30, :cond_24

    .line 1035
    invoke-static/range {v30 .. v30}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v31

    .line 1036
    .local v31, "redefinedComponentType":Ljava/lang/String;
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1039
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    const/4 v8, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v4, v0, v13, v8, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v4

    .line 1038
    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    move-object/from16 v0, v30

    invoke-static {v0, v4}, Lmf/org/apache/xerces/util/DOMUtil;->setHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    .line 1034
    :cond_2b
    :goto_13
    invoke-static/range {v30 .. v30}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v30

    goto :goto_12

    .line 1043
    :cond_2c
    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .line 1044
    .restart local v6    # "text":Ljava/lang/String;
    if-eqz v6, :cond_2b

    .line 1045
    move-object/from16 v0, p0

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    const/4 v14, 0x1

    move-object v11, v5

    move-object v12, v6

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto :goto_13

    .line 1088
    .end local v6    # "text":Ljava/lang/String;
    .end local v30    # "redefinedChild":Lmf/org/w3c/dom/Element;
    .end local v31    # "redefinedComponentType":Ljava/lang/String;
    .restart local v16    # "alreadyTraversed":Z
    .restart local v27    # "mustResolve":Z
    .restart local v38    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :cond_2d
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z

    goto/16 :goto_d

    .line 1101
    .end local v13    # "includeAttrs":[Ljava/lang/Object;
    .end local v16    # "alreadyTraversed":Z
    .end local v27    # "mustResolve":Z
    .end local v38    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .restart local v28    # "newSchemaInfo":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2XSDocumentMap:Ljava/util/Hashtable;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    move-object/from16 v28, v4

    goto/16 :goto_e

    .line 1104
    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v35

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v4, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->constructTrees(Lmf/org/w3c/dom/Element;Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    move-result-object v28

    goto/16 :goto_e

    .line 1078
    .end local v28    # "newSchemaInfo":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .restart local v13    # "includeAttrs":[Ljava/lang/Object;
    .restart local v16    # "alreadyTraversed":Z
    .restart local v27    # "mustResolve":Z
    .restart local v38    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :catch_1
    move-exception v4

    goto/16 :goto_11

    .line 978
    .end local v13    # "includeAttrs":[Ljava/lang/Object;
    .end local v16    # "alreadyTraversed":Z
    .end local v27    # "mustResolve":Z
    .end local v38    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .restart local v7    # "importAttrs":[Ljava/lang/Object;
    .restart local v19    # "importChild":Lmf/org/w3c/dom/Element;
    .restart local v24    # "ins":Ljava/util/Vector;
    .restart local v25    # "isg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .restart local v43    # "tns":Ljava/lang/String;
    :catch_2
    move-exception v4

    goto/16 :goto_b
.end method

.method public element2Locator(Lmf/org/w3c/dom/Element;)Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;
    .locals 3
    .param p1, "e"    # Lmf/org/w3c/dom/Element;

    .prologue
    const/4 v1, 0x0

    .line 4059
    instance-of v2, p1, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    if-nez v2, :cond_0

    .line 4063
    :goto_0
    return-object v1

    .line 4062
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;-><init>()V

    .line 4063
    .local v0, "l":Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;
    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->element2Locator(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)Z

    move-result v2

    if-eqz v2, :cond_1

    .end local v0    # "l":Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;
    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0    # "l":Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public element2Locator(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)Z
    .locals 8
    .param p1, "e"    # Lmf/org/w3c/dom/Element;
    .param p2, "l"    # Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .prologue
    const/4 v0, 0x0

    .line 4072
    if-nez p2, :cond_1

    .line 4085
    :cond_0
    :goto_0
    return v0

    .line 4074
    :cond_1
    instance-of v2, p1, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    if-eqz v2, :cond_0

    move-object v7, p1

    .line 4075
    check-cast v7, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    .line 4077
    .local v7, "ele":Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;
    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v6

    .line 4078
    .local v6, "doc":Lmf/org/w3c/dom/Document;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    invoke-static {v6}, Lmf/org/apache/xerces/util/DOMUtil;->getRoot(Lmf/org/w3c/dom/Document;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4080
    .local v1, "sid":Ljava/lang/String;
    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->getLineNumber()I

    move-result v3

    .line 4081
    .local v3, "line":I
    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->getColumnNumber()I

    move-result v4

    .line 4082
    .local v4, "column":I
    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->getCharacterOffset()I

    move-result v5

    move-object v0, p2

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;->setValues(Ljava/lang/String;Ljava/lang/String;III)V

    .line 4083
    const/4 v0, 0x1

    goto :goto_0
.end method

.method fillInLocalElemInfo(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xs/XSObject;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)V
    .locals 9
    .param p1, "elmDecl"    # Lmf/org/w3c/dom/Element;
    .param p2, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p3, "allContextFlags"    # I
    .param p4, "parent"    # Lmf/org/apache/xerces/xs/XSObject;
    .param p5, "particle"    # Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .prologue
    const/4 v8, 0x0

    .line 3632
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParticle:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    array-length v6, v6

    iget v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    if-ne v6, v7, :cond_0

    .line 3634
    iget v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    add-int/lit8 v6, v6, 0xa

    new-array v5, v6, [Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 3635
    .local v5, "newStackP":[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParticle:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    invoke-static {v6, v8, v5, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3636
    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParticle:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 3637
    iget v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    add-int/lit8 v6, v6, 0xa

    new-array v1, v6, [Lmf/org/w3c/dom/Element;

    .line 3638
    .local v1, "newStackE":[Lmf/org/w3c/dom/Element;
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl:[Lmf/org/w3c/dom/Element;

    iget v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    invoke-static {v6, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3639
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl:[Lmf/org/w3c/dom/Element;

    .line 3640
    iget v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    add-int/lit8 v6, v6, 0xa

    new-array v2, v6, [Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .line 3641
    .local v2, "newStackE_schema":[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl_schema:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    iget v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    invoke-static {v6, v8, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3642
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl_schema:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .line 3643
    iget v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    add-int/lit8 v6, v6, 0xa

    new-array v3, v6, [I

    .line 3644
    .local v3, "newStackI":[I
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAllContext:[I

    iget v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    invoke-static {v6, v8, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3645
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAllContext:[I

    .line 3646
    iget v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    add-int/lit8 v6, v6, 0xa

    new-array v0, v6, [Lmf/org/apache/xerces/xs/XSObject;

    .line 3647
    .local v0, "newStackC":[Lmf/org/apache/xerces/xs/XSObject;
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParent:[Lmf/org/apache/xerces/xs/XSObject;

    iget v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    invoke-static {v6, v8, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3648
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParent:[Lmf/org/apache/xerces/xs/XSObject;

    .line 3649
    iget v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    add-int/lit8 v6, v6, 0xa

    new-array v4, v6, [[Ljava/lang/String;

    .line 3650
    .local v4, "newStackN":[[Ljava/lang/String;
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemNamespaceContext:[[Ljava/lang/String;

    iget v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    invoke-static {v6, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3651
    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemNamespaceContext:[[Ljava/lang/String;

    .line 3654
    .end local v0    # "newStackC":[Lmf/org/apache/xerces/xs/XSObject;
    .end local v1    # "newStackE":[Lmf/org/w3c/dom/Element;
    .end local v2    # "newStackE_schema":[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .end local v3    # "newStackI":[I
    .end local v4    # "newStackN":[[Ljava/lang/String;
    .end local v5    # "newStackP":[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    :cond_0
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParticle:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    aput-object p5, v6, v7

    .line 3655
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl:[Lmf/org/w3c/dom/Element;

    iget v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    aput-object p1, v6, v7

    .line 3656
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl_schema:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    iget v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    aput-object p2, v6, v7

    .line 3657
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAllContext:[I

    iget v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    aput p3, v6, v7

    .line 3658
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParent:[Lmf/org/apache/xerces/xs/XSObject;

    iget v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    aput-object p4, v6, v7

    .line 3659
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemNamespaceContext:[[Ljava/lang/String;

    iget v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    iget-object v8, p2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->getEffectiveLocalContext()[Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 3660
    return-void
.end method

.method protected findGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 4
    .param p1, "desc"    # Lmf/org/apache/xerces/impl/xs/XSDDescription;
    .param p2, "ignoreConflict"    # Z

    .prologue
    const/4 v3, 0x0

    .line 711
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    .line 712
    .local v0, "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-nez v0, :cond_0

    .line 713
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v1, :cond_0

    .line 714
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v1, p1}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    .end local v0    # "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 715
    .restart local v0    # "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v0, :cond_0

    .line 718
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, p2}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 721
    const-string v1, "GrammarConflict"

    invoke-virtual {p0, v1, v3, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaWarning(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 722
    const/4 v0, 0x0

    .line 727
    :cond_0
    return-object v0
.end method

.method protected getGlobalDecl(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .param p1, "declKey"    # Ljava/lang/String;
    .param p2, "declType"    # I

    .prologue
    .line 1765
    const/4 v0, 0x0

    .line 1767
    .local v0, "retObj":Ljava/lang/Object;
    packed-switch p2, :pswitch_data_0

    .line 1791
    .end local v0    # "retObj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 1769
    .restart local v0    # "retObj":Ljava/lang/Object;
    :pswitch_0
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    .line 1770
    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    goto :goto_0

    .line 1772
    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_1
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalAttributeGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v0

    .line 1773
    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    goto :goto_0

    .line 1775
    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_2
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    .line 1776
    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    goto :goto_0

    .line 1778
    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_3
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v0

    .line 1779
    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    goto :goto_0

    .line 1781
    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_4
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getIDConstraintDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v0

    .line 1782
    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    goto :goto_0

    .line 1784
    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_5
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v0

    .line 1785
    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    goto :goto_0

    .line 1787
    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_6
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    .local v0, "retObj":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    goto :goto_0

    .line 1767
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;
    .locals 14
    .param p1, "currSchema"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p2, "declType"    # I
    .param p3, "declToTraverse"    # Lmf/org/apache/xerces/xni/QName;
    .param p4, "elmNode"    # Lmf/org/w3c/dom/Element;

    .prologue
    .line 1637
    move-object/from16 v0, p3

    iget-object v9, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 1638
    move-object/from16 v0, p3

    iget-object v9, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v10, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne v9, v10, :cond_1

    .line 1639
    const/4 v9, 0x7

    move/from16 v0, p2

    if-ne v0, v9, :cond_1

    .line 1640
    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    move-object/from16 v0, p3

    iget-object v10, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v5

    .line 1641
    .local v5, "retObj":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    if-eqz v5, :cond_1

    .line 1759
    .end local v5    # "retObj":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_0
    :goto_0
    return-object v5

    .line 1647
    :cond_1
    move-object/from16 v0, p3

    iget-object v9, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {p1, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->isAllowedNS(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1649
    move-object/from16 v0, p3

    iget-object v9, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {p1, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->needReportTNSError(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1650
    move-object/from16 v0, p3

    iget-object v9, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v9, :cond_4

    const-string v1, "src-resolve.4.1"

    .line 1651
    .local v1, "code":Ljava/lang/String;
    :goto_1
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    iget-object v12, p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lmf/org/w3c/dom/Element;

    invoke-virtual {v11, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p3

    iget-object v11, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    move-object/from16 v0, p3

    iget-object v11, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v11, v9, v10

    move-object/from16 v0, p4

    invoke-virtual {p0, v1, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 1658
    .end local v1    # "code":Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    move-object/from16 v0, p3

    iget-object v10, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v7

    .line 1659
    .local v7, "sGrammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-nez v7, :cond_5

    .line 1660
    move-object/from16 v0, p3

    iget-object v9, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-direct {p0, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->needReportTNSError(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1661
    const-string v9, "src-resolve"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p3

    iget-object v12, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->COMP_TYPE:[Ljava/lang/String;

    aget-object v12, v12, p2

    aput-object v12, v10, v11

    move-object/from16 v0, p4

    invoke-virtual {p0, v9, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 1662
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 1650
    .end local v7    # "sGrammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :cond_4
    const-string v1, "src-resolve.4.2"

    goto :goto_1

    .line 1666
    .restart local v7    # "sGrammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :cond_5
    move-object/from16 v0, p3

    iget-object v9, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move/from16 v0, p2

    invoke-virtual {p0, v7, v0, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDeclFromGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1667
    .local v5, "retObj":Ljava/lang/Object;
    move-object/from16 v0, p3

    iget-object v9, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v9, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    iget-object v10, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1671
    .local v4, "declKey":Ljava/lang/String;
    :goto_2
    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-nez v9, :cond_8

    .line 1672
    if-nez v5, :cond_0

    .line 1683
    :cond_6
    const/4 v8, 0x0

    .line 1684
    .local v8, "schemaWithDecl":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    const/4 v2, 0x0

    .line 1685
    .local v2, "decl":Lmf/org/w3c/dom/Element;
    const/4 v3, 0x0

    .line 1688
    .local v3, "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    packed-switch p2, :pswitch_data_0

    .line 1718
    const-string v9, "Internal-Error"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "XSDHandler asked to locate component of type "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; it does not recognize this type!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    move-object/from16 v0, p4

    invoke-virtual {p0, v9, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 1722
    :goto_3
    if-nez v2, :cond_9

    .line 1723
    if-nez v5, :cond_0

    .line 1724
    const-string v9, "src-resolve"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p3

    iget-object v12, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->COMP_TYPE:[Ljava/lang/String;

    aget-object v12, v12, p2

    aput-object v12, v10, v11

    move-object/from16 v0, p4

    invoke-virtual {p0, v9, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0

    .line 1668
    .end local v2    # "decl":Lmf/org/w3c/dom/Element;
    .end local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .end local v4    # "declKey":Ljava/lang/String;
    .end local v8    # "schemaWithDecl":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    iget-object v10, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p3

    iget-object v10, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 1677
    .restart local v4    # "declKey":Ljava/lang/String;
    :cond_8
    move/from16 v0, p2

    invoke-virtual {p0, v4, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v6

    .line 1678
    .local v6, "retObj2":Ljava/lang/Object;
    if-eqz v6, :cond_6

    move-object v5, v6

    .line 1679
    goto/16 :goto_0

    .line 1690
    .end local v6    # "retObj2":Ljava/lang/Object;
    .restart local v2    # "decl":Lmf/org/w3c/dom/Element;
    .restart local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .restart local v8    # "schemaWithDecl":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    :pswitch_0
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistry:Ljava/util/Hashtable;

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "decl":Lmf/org/w3c/dom/Element;
    check-cast v2, Lmf/org/w3c/dom/Element;

    .line 1691
    .restart local v2    # "decl":Lmf/org/w3c/dom/Element;
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    check-cast v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .line 1692
    .restart local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    goto :goto_3

    .line 1694
    :pswitch_1
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "decl":Lmf/org/w3c/dom/Element;
    check-cast v2, Lmf/org/w3c/dom/Element;

    .line 1695
    .restart local v2    # "decl":Lmf/org/w3c/dom/Element;
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    check-cast v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .line 1696
    .restart local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    goto :goto_3

    .line 1698
    :pswitch_2
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistry:Ljava/util/Hashtable;

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "decl":Lmf/org/w3c/dom/Element;
    check-cast v2, Lmf/org/w3c/dom/Element;

    .line 1699
    .restart local v2    # "decl":Lmf/org/w3c/dom/Element;
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    check-cast v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .line 1700
    .restart local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    goto :goto_3

    .line 1702
    :pswitch_3
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "decl":Lmf/org/w3c/dom/Element;
    check-cast v2, Lmf/org/w3c/dom/Element;

    .line 1703
    .restart local v2    # "decl":Lmf/org/w3c/dom/Element;
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    check-cast v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .line 1704
    .restart local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    goto/16 :goto_3

    .line 1706
    :pswitch_4
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistry:Ljava/util/Hashtable;

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "decl":Lmf/org/w3c/dom/Element;
    check-cast v2, Lmf/org/w3c/dom/Element;

    .line 1707
    .restart local v2    # "decl":Lmf/org/w3c/dom/Element;
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    check-cast v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .line 1708
    .restart local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    goto/16 :goto_3

    .line 1710
    :pswitch_5
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistry:Ljava/util/Hashtable;

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "decl":Lmf/org/w3c/dom/Element;
    check-cast v2, Lmf/org/w3c/dom/Element;

    .line 1711
    .restart local v2    # "decl":Lmf/org/w3c/dom/Element;
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    check-cast v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .line 1712
    .restart local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    goto/16 :goto_3

    .line 1714
    :pswitch_6
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistry:Ljava/util/Hashtable;

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "decl":Lmf/org/w3c/dom/Element;
    check-cast v2, Lmf/org/w3c/dom/Element;

    .line 1715
    .restart local v2    # "decl":Lmf/org/w3c/dom/Element;
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    check-cast v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .line 1716
    .restart local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    goto/16 :goto_3

    .line 1732
    :cond_9
    invoke-direct {p0, p1, v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findXSDocumentForDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    move-result-object v8

    .line 1733
    if-nez v8, :cond_b

    .line 1735
    if-nez v5, :cond_0

    .line 1736
    move-object/from16 v0, p3

    iget-object v9, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v9, :cond_a

    const-string v1, "src-resolve.4.1"

    .line 1737
    .restart local v1    # "code":Ljava/lang/String;
    :goto_4
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    iget-object v12, p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lmf/org/w3c/dom/Element;

    invoke-virtual {v11, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p3

    iget-object v11, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    move-object/from16 v0, p3

    iget-object v11, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v11, v9, v10

    move-object/from16 v0, p4

    invoke-virtual {p0, v1, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0

    .line 1736
    .end local v1    # "code":Ljava/lang/String;
    :cond_a
    const-string v1, "src-resolve.4.2"

    goto :goto_4

    .line 1745
    :cond_b
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v2, v9}, Lmf/org/apache/xerces/util/DOMUtil;->isHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1746
    if-nez v5, :cond_0

    .line 1747
    sget-object v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->CIRCULAR_CODES:[Ljava/lang/String;

    aget-object v1, v9, p2

    .line 1748
    .restart local v1    # "code":Ljava/lang/String;
    const/4 v9, 0x7

    move/from16 v0, p2

    if-ne v0, v9, :cond_c

    .line 1749
    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1750
    const-string v1, "ct-props-correct.3"

    .line 1754
    :cond_c
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    iget-object v12, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    iget-object v12, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v0, p4

    invoke-virtual {p0, v1, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0

    .line 1759
    .end local v1    # "code":Ljava/lang/String;
    :cond_d
    move/from16 v0, p2

    invoke-virtual {p0, v0, v2, v8, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->traverseGlobalDecl(ILmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 1688
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected getGlobalDeclFromGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILjava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "sGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "declType"    # I
    .param p3, "localpart"    # Ljava/lang/String;

    .prologue
    .line 1795
    const/4 v0, 0x0

    .line 1797
    .local v0, "retObj":Ljava/lang/Object;
    packed-switch p2, :pswitch_data_0

    .line 1821
    .end local v0    # "retObj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 1799
    .restart local v0    # "retObj":Ljava/lang/Object;
    :pswitch_0
    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    .line 1800
    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    goto :goto_0

    .line 1802
    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_1
    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v0

    .line 1803
    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    goto :goto_0

    .line 1805
    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_2
    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    .line 1806
    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    goto :goto_0

    .line 1808
    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_3
    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v0

    .line 1809
    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    goto :goto_0

    .line 1811
    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_4
    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v0

    .line 1812
    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    goto :goto_0

    .line 1814
    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_5
    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v0

    .line 1815
    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    goto :goto_0

    .line 1817
    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_6
    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    .local v0, "retObj":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    goto :goto_0

    .line 1797
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected getGlobalDeclFromGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "sGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "declType"    # I
    .param p3, "localpart"    # Ljava/lang/String;
    .param p4, "schemaLoc"    # Ljava/lang/String;

    .prologue
    .line 1825
    const/4 v0, 0x0

    .line 1827
    .local v0, "retObj":Ljava/lang/Object;
    packed-switch p2, :pswitch_data_0

    .line 1851
    .end local v0    # "retObj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 1829
    .restart local v0    # "retObj":Ljava/lang/Object;
    :pswitch_0
    invoke-virtual {p1, p3, p4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    .line 1830
    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    goto :goto_0

    .line 1832
    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_1
    invoke-virtual {p1, p3, p4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v0

    .line 1833
    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    goto :goto_0

    .line 1835
    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_2
    invoke-virtual {p1, p3, p4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    .line 1836
    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    goto :goto_0

    .line 1838
    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_3
    invoke-virtual {p1, p3, p4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v0

    .line 1839
    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    goto :goto_0

    .line 1841
    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_4
    invoke-virtual {p1, p3, p4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v0

    .line 1842
    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    goto :goto_0

    .line 1844
    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_5
    invoke-virtual {p1, p3, p4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v0

    .line 1845
    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    goto :goto_0

    .line 1847
    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_6
    invoke-virtual {p1, p3, p4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    .local v0, "retObj":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    goto :goto_0

    .line 1827
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 1
    .param p1, "tns"    # Ljava/lang/String;

    .prologue
    .line 702
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    return-object v0
.end method

.method getGrpOrAttrGrpRedefinedByRestriction(ILmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;
    .locals 9
    .param p1, "type"    # I
    .param p2, "name"    # Lmf/org/apache/xerces/xni/QName;
    .param p3, "currSchema"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p4, "elmNode"    # Lmf/org/w3c/dom/Element;

    .prologue
    .line 1919
    iget-object v5, p2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1921
    .local v3, "realName":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 1922
    .local v1, "nameToFind":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1930
    :pswitch_0
    const/4 v4, 0x0

    .line 1948
    :cond_0
    :goto_1
    return-object v4

    .line 1920
    .end local v1    # "nameToFind":Ljava/lang/String;
    .end local v3    # "realName":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1924
    .restart local v1    # "nameToFind":Ljava/lang/String;
    .restart local v3    # "realName":Ljava/lang/String;
    :pswitch_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedAttributeGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "nameToFind":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1932
    .restart local v1    # "nameToFind":Ljava/lang/String;
    :goto_2
    if-nez v1, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    .line 1927
    :pswitch_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "nameToFind":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1928
    .restart local v1    # "nameToFind":Ljava/lang/String;
    goto :goto_2

    .line 1933
    :cond_2
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1934
    .local v0, "commaPos":I
    new-instance v2, Lmf/org/apache/xerces/xni/QName;

    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1935
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    if-nez v0, :cond_3

    const/4 v5, 0x0

    .line 1934
    :goto_3
    invoke-direct {v2, v6, v7, v8, v5}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    .local v2, "qNameToFind":Lmf/org/apache/xerces/xni/QName;
    invoke-virtual {p0, p3, p1, v2, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v4

    .line 1937
    .local v4, "retObj":Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 1938
    packed-switch p1, :pswitch_data_1

    .line 1946
    :goto_4
    :pswitch_3
    const/4 v4, 0x0

    goto :goto_1

    .line 1935
    .end local v2    # "qNameToFind":Lmf/org/apache/xerces/xni/QName;
    .end local v4    # "retObj":Ljava/lang/Object;
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 1940
    .restart local v2    # "qNameToFind":Lmf/org/apache/xerces/xni/QName;
    .restart local v4    # "retObj":Ljava/lang/Object;
    :pswitch_4
    const-string v5, "src-redefine.7.2.1"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_4

    .line 1943
    :pswitch_5
    const-string v5, "src-redefine.6.2.1"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_4

    .line 1922
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1938
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method protected getIDRegistry()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 1976
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistry:Ljava/util/Hashtable;

    return-object v0
.end method

.method protected getIDRegistry_sub()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 1980
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistrySub:Ljava/util/Hashtable;

    return-object v0
.end method

.method public parseSchema(Lmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/apache/xerces/impl/xs/XSDDescription;Ljava/util/Hashtable;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 23
    .param p1, "is"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .param p2, "desc"    # Lmf/org/apache/xerces/impl/xs/XSDDescription;
    .param p3, "locationPairs"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 490
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocationPairs:Ljava/util/Hashtable;

    .line 491
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->resetNodePool()V

    .line 492
    const/4 v12, 0x0

    .line 493
    .local v12, "grammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    const/4 v4, 0x0

    .line 494
    .local v4, "schemaNamespace":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v7

    .line 502
    .local v7, "referType":S
    const/4 v3, 0x3

    if-eq v7, v3, :cond_3

    .line 504
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHonourAllSchemaLocations:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    if-ne v7, v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->isExistingGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 505
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v12

    .line 510
    :goto_0
    if-eqz v12, :cond_2

    .line 511
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    if-nez v3, :cond_1

    move-object v3, v12

    .line 659
    :goto_1
    return-object v3

    .line 508
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v12

    goto :goto_0

    .line 516
    :cond_1
    :try_start_0
    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {v5, v6, v8}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lmf/org/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v12

    .line 517
    goto :goto_1

    .line 520
    :catch_0
    move-exception v3

    .line 526
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v4

    .line 528
    if-eqz v4, :cond_3

    .line 529
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 535
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->prepareForParse()V

    .line 537
    const/16 v20, 0x0

    .line 539
    .local v20, "schemaRoot":Lmf/org/w3c/dom/Element;
    move-object/from16 v0, p1

    instance-of v3, v0, Lmf/org/apache/xerces/util/DOMInputSource;

    if-eqz v3, :cond_5

    move-object/from16 v5, p1

    .line 540
    check-cast v5, Lmf/org/apache/xerces/util/DOMInputSource;

    .line 541
    const/4 v3, 0x3

    if-ne v7, v3, :cond_4

    const/4 v6, 0x1

    .line 542
    :goto_2
    const/4 v8, 0x0

    move-object/from16 v3, p0

    .line 540
    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/DOMInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v20

    .line 564
    :goto_3
    if-nez v20, :cond_d

    .line 566
    move-object/from16 v0, p1

    instance-of v3, v0, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;

    if-eqz v3, :cond_c

    .line 567
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v3

    goto :goto_1

    .line 541
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 544
    :cond_5
    move-object/from16 v0, p1

    instance-of v3, v0, Lmf/org/apache/xerces/util/SAXInputSource;

    if-eqz v3, :cond_7

    move-object/from16 v5, p1

    .line 545
    check-cast v5, Lmf/org/apache/xerces/util/SAXInputSource;

    .line 546
    const/4 v3, 0x3

    if-ne v7, v3, :cond_6

    const/4 v6, 0x1

    .line 547
    :goto_4
    const/4 v8, 0x0

    move-object/from16 v3, p0

    .line 545
    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/SAXInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v20

    .line 548
    goto :goto_3

    .line 546
    :cond_6
    const/4 v6, 0x0

    goto :goto_4

    .line 549
    :cond_7
    move-object/from16 v0, p1

    instance-of v3, v0, Lmf/org/apache/xerces/util/StAXInputSource;

    if-eqz v3, :cond_9

    move-object/from16 v5, p1

    .line 550
    check-cast v5, Lmf/org/apache/xerces/util/StAXInputSource;

    .line 551
    const/4 v3, 0x3

    if-ne v7, v3, :cond_8

    const/4 v6, 0x1

    .line 552
    :goto_5
    const/4 v8, 0x0

    move-object/from16 v3, p0

    .line 550
    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/StAXInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v20

    .line 553
    goto :goto_3

    .line 551
    :cond_8
    const/4 v6, 0x0

    goto :goto_5

    .line 554
    :cond_9
    move-object/from16 v0, p1

    instance-of v3, v0, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;

    if-eqz v3, :cond_a

    move-object/from16 v3, p1

    .line 555
    check-cast v3, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Lmf/org/apache/xerces/impl/xs/util/XSInputSource;Lmf/org/apache/xerces/impl/xs/XSDDescription;)Lmf/org/w3c/dom/Element;

    move-result-object v20

    .line 556
    goto :goto_3

    .line 559
    :cond_a
    const/4 v3, 0x3

    if-ne v7, v3, :cond_b

    const/4 v6, 0x1

    .line 560
    :goto_6
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    .line 558
    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v20

    goto :goto_3

    .line 559
    :cond_b
    const/4 v6, 0x0

    goto :goto_6

    :cond_c
    move-object v3, v12

    .line 569
    goto/16 :goto_1

    .line 572
    :cond_d
    const/4 v3, 0x3

    if-ne v7, v3, :cond_11

    .line 573
    move-object/from16 v18, v20

    .line 574
    .local v18, "schemaElem":Lmf/org/w3c/dom/Element;
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TARGETNAMESPACE:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrValue(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 575
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_f

    .line 578
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 579
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setTargetNamespace(Ljava/lang/String;)V

    .line 584
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v12

    .line 585
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v19

    .line 586
    .local v19, "schemaId":Ljava/lang/String;
    if-eqz v12, :cond_10

    .line 589
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    if-eqz v3, :cond_e

    if-eqz v19, :cond_10

    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Lmf/org/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_e
    move-object v3, v12

    .line 590
    goto/16 :goto_1

    .line 582
    .end local v19    # "schemaId":Ljava/lang/String;
    :cond_f
    const/4 v4, 0x0

    goto :goto_7

    .line 594
    .restart local v19    # "schemaId":Ljava/lang/String;
    :cond_10
    new-instance v17, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v7, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;-><init>(Ljava/lang/String;SLjava/lang/String;)V

    .line 595
    .local v17, "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTraversed:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    if-eqz v19, :cond_11

    .line 597
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    .end local v17    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .end local v18    # "schemaElem":Lmf/org/w3c/dom/Element;
    .end local v19    # "schemaId":Ljava/lang/String;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->prepareForTraverse()V

    .line 605
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v5

    if-eqz v12, :cond_12

    const/4 v3, 0x1

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v5, v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->constructTrees(Lmf/org/w3c/dom/Element;Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRoot:Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .line 606
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRoot:Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    if-nez v3, :cond_13

    .line 607
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 605
    :cond_12
    const/4 v3, 0x0

    goto :goto_8

    .line 611
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->buildGlobalNameRegistries()V

    .line 614
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    if-eqz v3, :cond_15

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 615
    .local v9, "annotationInfo":Ljava/util/ArrayList;
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->traverseSchemas(Ljava/util/ArrayList;)V

    .line 618
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->traverseLocalElements()V

    .line 621
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->resolveKeyRefs()V

    .line 629
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAllTNSs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v13, v3, -0x1

    .local v13, "i":I
    :goto_a
    if-gez v13, :cond_16

    .line 654
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    if-eqz v3, :cond_14

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_14

    .line 655
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->validateAnnotations(Ljava/util/ArrayList;)V

    .line 659
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRoot:Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v3

    goto/16 :goto_1

    .line 614
    .end local v9    # "annotationInfo":Ljava/util/ArrayList;
    .end local v13    # "i":I
    :cond_15
    const/4 v9, 0x0

    goto :goto_9

    .line 631
    .restart local v9    # "annotationInfo":Ljava/util/ArrayList;
    .restart local v13    # "i":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAllTNSs:Ljava/util/Vector;

    invoke-virtual {v3, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 633
    .local v22, "tns":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fImportMap:Ljava/util/Hashtable;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Vector;

    .line 635
    .local v14, "ins":Ljava/util/Vector;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->emptyString2Null(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v21

    .line 636
    .local v21, "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-nez v21, :cond_17

    .line 629
    :goto_b
    add-int/lit8 v13, v13, -0x1

    goto :goto_a

    .line 640
    :cond_17
    const/4 v10, 0x0

    .line 641
    .local v10, "count":I
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_c
    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v3

    move/from16 v0, v16

    if-lt v0, v3, :cond_18

    .line 648
    invoke-virtual {v14, v10}, Ljava/util/Vector;->setSize(I)V

    .line 650
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->setImportedGrammars(Ljava/util/Vector;)V

    goto :goto_b

    .line 643
    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v15

    .line 645
    .local v15, "isg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v15, :cond_19

    .line 646
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "count":I
    .local v11, "count":I
    invoke-virtual {v14, v15, v10}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move v10, v11

    .line 641
    .end local v11    # "count":I
    .restart local v10    # "count":I
    :cond_19
    add-int/lit8 v16, v16, 0x1

    goto :goto_c
.end method

.method prepareForParse()V
    .locals 1

    .prologue
    .line 3379
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTraversed:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 3380
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 3381
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 3382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z

    .line 3383
    return-void
.end method

.method prepareForTraverse()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3388
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistry:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 3389
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 3390
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistry:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 3391
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 3392
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistry:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 3393
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistry:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 3394
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistry:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 3396
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 3397
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 3398
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 3399
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 3400
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 3401
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 3402
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 3404
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x7

    if-le v0, v2, :cond_1

    .line 3408
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fXSDocumentInfoRegistry:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 3409
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDependencyMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 3410
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2XSDocumentMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 3411
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefine2XSDMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 3412
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefine2NSSupport:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 3413
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAllTNSs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    .line 3414
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fImportMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 3415
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRoot:Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .line 3418
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    if-lt v0, v2, :cond_2

    .line 3424
    iput v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    .line 3427
    const/4 v0, 0x0

    :goto_2
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    if-lt v0, v2, :cond_3

    .line 3433
    iput v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    .line 3436
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    if-nez v2, :cond_0

    .line 3437
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->createTraversers()V

    .line 3441
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 3442
    .local v1, "locale":Ljava/util/Locale;
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reset(Lmf/org/apache/xerces/util/SymbolTable;)V

    .line 3443
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v2, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    .line 3444
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v2, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    .line 3445
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fComplexTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v2, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    .line 3446
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v2, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    .line 3447
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v2, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    .line 3448
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v2, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    .line 3449
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNotationTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v2, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    .line 3450
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v2, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    .line 3451
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUniqueOrKeyTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v2, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    .line 3452
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fWildCardTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v2, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    .line 3454
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedAttributeGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 3455
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 3457
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->clear()V

    .line 3458
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->clear()V

    .line 3459
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->clear()V

    .line 3460
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->clear()V

    .line 3461
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->clear()V

    .line 3462
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->clear()V

    .line 3463
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->clear()V

    .line 3464
    return-void

    .line 3405
    .end local v1    # "locale":Ljava/util/Locale;
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedRegistriesExt:[Ljava/util/Hashtable;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 3404
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 3419
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParticle:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aput-object v3, v2, v0

    .line 3420
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl:[Lmf/org/w3c/dom/Element;

    aput-object v3, v2, v0

    .line 3421
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl_schema:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    aput-object v3, v2, v0

    .line 3422
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemNamespaceContext:[[Ljava/lang/String;

    aput-object v3, v2, v0

    .line 3418
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 3428
    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefs:[Lmf/org/w3c/dom/Element;

    aput-object v3, v2, v0

    .line 3429
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefElems:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aput-object v3, v2, v0

    .line 3430
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefNamespaceContext:[[Ljava/lang/String;

    aput-object v3, v2, v0

    .line 3431
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefsMapXSDocumentInfo:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    aput-object v3, v2, v0

    .line 3427
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method

.method reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "ele"    # Lmf/org/w3c/dom/Element;

    .prologue
    .line 4089
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;Ljava/lang/Exception;)V

    .line 4090
    return-void
.end method

.method reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;Ljava/lang/Exception;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "ele"    # Lmf/org/w3c/dom/Element;
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    const/4 v5, 0x1

    .line 4093
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->xl:Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    invoke-virtual {p0, p3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->element2Locator(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4094
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->xl:Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    .line 4101
    :goto_0
    return-void

    .line 4098
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    goto :goto_0
.end method

.method reportSchemaWarning(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "ele"    # Lmf/org/w3c/dom/Element;

    .prologue
    .line 4104
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaWarning(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;Ljava/lang/Exception;)V

    .line 4105
    return-void
.end method

.method reportSchemaWarning(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;Ljava/lang/Exception;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "ele"    # Lmf/org/w3c/dom/Element;
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    const/4 v5, 0x0

    .line 4108
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->xl:Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    invoke-virtual {p0, p3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->element2Locator(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4109
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->xl:Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    .line 4116
    :goto_0
    return-void

    .line 4113
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    goto :goto_0
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 9
    .param p1, "componentManager"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    .prologue
    const/4 v8, 0x0

    .line 3475
    const-string v5, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 3478
    const-string v5, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .line 3479
    const-string v5, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .line 3480
    .local v3, "er":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    if-eqz v3, :cond_0

    .line 3481
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v5, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V

    .line 3485
    :cond_0
    const-string v5, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 3484
    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 3487
    :try_start_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v0

    .line 3491
    .local v0, "currErrorHandler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string v6, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eq v0, v5, :cond_1

    .line 3492
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string v7, "http://apache.org/xml/properties/internal/error-handler"

    if-eqz v0, :cond_4

    move-object v5, v0

    :goto_0
    invoke-virtual {v6, v7, v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3493
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    if-eqz v5, :cond_1

    .line 3494
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    const-string v6, "http://apache.org/xml/properties/internal/error-handler"

    if-eqz v0, :cond_5

    .end local v0    # "currErrorHandler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    :goto_1
    invoke-virtual {v5, v6, v0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3497
    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 3498
    .local v1, "currentLocale":Ljava/util/Locale;
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string v6, "http://apache.org/xml/properties/locale"

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eq v1, v5, :cond_2

    .line 3499
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string v6, "http://apache.org/xml/properties/locale"

    invoke-virtual {v5, v6, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3500
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    if-eqz v5, :cond_2

    .line 3501
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    const-string v6, "http://apache.org/xml/properties/locale"

    invoke-virtual {v5, v6, v1}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3508
    .end local v1    # "currentLocale":Ljava/util/Locale;
    :cond_2
    :goto_2
    :try_start_1
    const-string v5, "http://apache.org/xml/features/validate-annotations"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3514
    :goto_3
    :try_start_2
    const-string v5, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHonourAllSchemaLocations:Z
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3520
    :goto_4
    :try_start_3
    const-string v5, "http://apache.org/xml/features/namespace-growth"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3526
    :goto_5
    :try_start_4
    const-string v5, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    .line 3532
    :goto_6
    :try_start_5
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    .line 3533
    const-string v6, "http://apache.org/xml/features/continue-after-fatal-error"

    .line 3534
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v8, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getFeature(Ljava/lang/String;)Z

    move-result v7

    .line 3532
    invoke-virtual {v5, v6, v7}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_a

    .line 3539
    :goto_7
    :try_start_6
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    .line 3540
    const-string v6, "http://apache.org/xml/features/allow-java-encodings"

    .line 3541
    const-string v7, "http://apache.org/xml/features/allow-java-encodings"

    invoke-interface {p1, v7}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v7

    .line 3539
    invoke-virtual {v5, v6, v7}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_6
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_9

    .line 3545
    :goto_8
    :try_start_7
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    .line 3546
    const-string v6, "http://apache.org/xml/features/standard-uri-conformant"

    .line 3547
    const-string v7, "http://apache.org/xml/features/standard-uri-conformant"

    invoke-interface {p1, v7}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v7

    .line 3545
    invoke-virtual {v5, v6, v7}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_7
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_8

    .line 3553
    :goto_9
    :try_start_8
    const-string v5, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .line 3552
    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    :try_end_8
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_5

    .line 3559
    :goto_a
    :try_start_9
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string v6, "http://apache.org/xml/features/disallow-doctype-decl"

    .line 3560
    const-string v7, "http://apache.org/xml/features/disallow-doctype-decl"

    invoke-interface {p1, v7}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v7

    .line 3559
    invoke-virtual {v5, v6, v7}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_9
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_9 .. :try_end_9} :catch_7

    .line 3564
    :goto_b
    :try_start_a
    const-string v5, "http://apache.org/xml/properties/security-manager"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 3565
    .local v4, "security":Ljava/lang/Object;
    if-eqz v4, :cond_3

    .line 3566
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string v6, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v5, v6, v4}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_a .. :try_end_a} :catch_6

    .line 3571
    .end local v4    # "security":Ljava/lang/Object;
    :cond_3
    :goto_c
    return-void

    .line 3492
    .restart local v0    # "currErrorHandler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    :cond_4
    :try_start_b
    new-instance v5, Lmf/org/apache/xerces/util/DefaultErrorHandler;

    invoke-direct {v5}, Lmf/org/apache/xerces/util/DefaultErrorHandler;-><init>()V

    goto/16 :goto_0

    .line 3505
    .end local v0    # "currErrorHandler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    :catch_0
    move-exception v5

    goto :goto_2

    .line 3494
    .restart local v0    # "currErrorHandler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    :cond_5
    new-instance v0, Lmf/org/apache/xerces/util/DefaultErrorHandler;

    .end local v0    # "currErrorHandler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    invoke-direct {v0}, Lmf/org/apache/xerces/util/DefaultErrorHandler;-><init>()V
    :try_end_b
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_1

    .line 3509
    :catch_1
    move-exception v2

    .line 3510
    .local v2, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    goto :goto_3

    .line 3515
    .end local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_2
    move-exception v2

    .line 3516
    .restart local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHonourAllSchemaLocations:Z

    goto :goto_4

    .line 3521
    .end local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_3
    move-exception v2

    .line 3522
    .restart local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    goto :goto_5

    .line 3527
    .end local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_4
    move-exception v2

    .line 3528
    .restart local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    goto :goto_6

    .line 3554
    .end local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_5
    move-exception v2

    .line 3555
    .restart local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    const/4 v5, 0x0

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    goto :goto_a

    .line 3568
    .end local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_6
    move-exception v5

    goto :goto_c

    .line 3561
    :catch_7
    move-exception v5

    goto :goto_b

    .line 3548
    :catch_8
    move-exception v5

    goto :goto_9

    .line 3542
    :catch_9
    move-exception v5

    goto :goto_8

    .line 3535
    :catch_a
    move-exception v5

    goto :goto_7
.end method

.method protected resolveKeyRefs()V
    .locals 6

    .prologue
    .line 1961
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    if-lt v0, v3, :cond_0

    .line 1971
    return-void

    .line 1962
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefsMapXSDocumentInfo:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    aget-object v2, v3, v0

    .line 1963
    .local v2, "keyrefSchemaDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    iget-object v3, v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->makeGlobal()V

    .line 1964
    iget-object v3, v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefNamespaceContext:[[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->setEffectiveContext([Ljava/lang/String;)V

    .line 1965
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v4, v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    .line 1968
    .local v1, "keyrefGrammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefs:[Lmf/org/w3c/dom/Element;

    aget-object v3, v3, v0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v3, v4}, Lmf/org/apache/xerces/util/DOMUtil;->setHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    .line 1969
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefs:[Lmf/org/w3c/dom/Element;

    aget-object v4, v4, v0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefElems:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v5, v2, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->traverse(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 1961
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public schemaDocument2SystemId(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .prologue
    .line 1906
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lmf/org/w3c/dom/Element;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setDVFactory(Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;)V
    .locals 0
    .param p1, "dvFactory"    # Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    .prologue
    .line 3469
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    .line 3470
    return-void
.end method

.method public setDeclPool(Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;)V
    .locals 0
    .param p1, "declPool"    # Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    .prologue
    .line 3466
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    .line 3467
    return-void
.end method

.method public setGenerateSyntheticAnnotations(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 4286
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string v1, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->setFeature(Ljava/lang/String;Z)V

    .line 4287
    return-void
.end method

.method protected storeKeyRef(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 12
    .param p1, "keyrefToStore"    # Lmf/org/w3c/dom/Element;
    .param p2, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p3, "currElemDecl"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .prologue
    .line 1989
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-static {p1, v0}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrValue(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1990
    .local v9, "keyrefName":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1991
    iget-object v0, p2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1992
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1993
    .local v1, "keyrefQName":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x5

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistry:Ljava/util/Hashtable;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistrySub:Ljava/util/Hashtable;

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 1998
    .end local v1    # "keyrefQName":Ljava/lang/String;
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefs:[Lmf/org/w3c/dom/Element;

    array-length v2, v2

    if-ne v0, v2, :cond_1

    .line 1999
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    add-int/lit8 v0, v0, 0x2

    new-array v8, v0, [Lmf/org/w3c/dom/Element;

    .line 2000
    .local v8, "elemArray":[Lmf/org/w3c/dom/Element;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefs:[Lmf/org/w3c/dom/Element;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    invoke-static {v0, v2, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2001
    iput-object v8, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefs:[Lmf/org/w3c/dom/Element;

    .line 2002
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    add-int/lit8 v0, v0, 0x2

    new-array v7, v0, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 2003
    .local v7, "declArray":[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefElems:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    invoke-static {v0, v2, v7, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2004
    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefElems:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 2005
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    add-int/lit8 v0, v0, 0x2

    new-array v10, v0, [[Ljava/lang/String;

    .line 2006
    .local v10, "stringArray":[[Ljava/lang/String;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefNamespaceContext:[[Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    invoke-static {v0, v2, v10, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2007
    iput-object v10, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefNamespaceContext:[[Ljava/lang/String;

    .line 2009
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    add-int/lit8 v0, v0, 0x2

    new-array v11, v0, [Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .line 2010
    .local v11, "xsDocumentInfo":[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefsMapXSDocumentInfo:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    invoke-static {v0, v2, v11, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2011
    iput-object v11, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefsMapXSDocumentInfo:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .line 2014
    .end local v7    # "declArray":[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .end local v8    # "elemArray":[Lmf/org/w3c/dom/Element;
    .end local v10    # "stringArray":[[Ljava/lang/String;
    .end local v11    # "xsDocumentInfo":[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefs:[Lmf/org/w3c/dom/Element;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    aput-object p1, v0, v2

    .line 2015
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefElems:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    aput-object p3, v0, v2

    .line 2016
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefNamespaceContext:[[Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    iget-object v3, p2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->getEffectiveLocalContext()[Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 2018
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefsMapXSDocumentInfo:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    aput-object p2, v0, v2

    .line 2019
    return-void

    .line 1992
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method protected traverseGlobalDecl(ILmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Ljava/lang/Object;
    .locals 5
    .param p1, "declType"    # I
    .param p2, "decl"    # Lmf/org/w3c/dom/Element;
    .param p3, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p4, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    .line 1855
    const/4 v2, 0x0

    .line 1857
    .local v2, "retObj":Ljava/lang/Object;
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {p2, v3}, Lmf/org/apache/xerces/util/DOMUtil;->setHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    .line 1858
    const/4 v0, 0x0

    .line 1860
    .local v0, "nsSupport":Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;
    invoke-static {p2}, Lmf/org/apache/xerces/util/DOMUtil;->getParent(Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    .line 1861
    .local v1, "parent":Lmf/org/w3c/dom/Element;
    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1862
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefine2NSSupport:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "nsSupport":Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;
    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    .line 1865
    .restart local v0    # "nsSupport":Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;
    :cond_0
    invoke-virtual {p3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->backupNSSupport(Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;)V

    .line 1868
    packed-switch p1, :pswitch_data_0

    .line 1900
    .end local v2    # "retObj":Ljava/lang/Object;
    :goto_0
    :pswitch_0
    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->restoreNSSupport()V

    .line 1902
    return-object v2

    .line 1870
    .restart local v2    # "retObj":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p2}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1871
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fComplexTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

    invoke-virtual {v3, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v2

    .line 1872
    .local v2, "retObj":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    goto :goto_0

    .line 1874
    .local v2, "retObj":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;

    invoke-virtual {v3, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v2

    .line 1876
    .local v2, "retObj":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    goto :goto_0

    .line 1878
    .local v2, "retObj":Ljava/lang/Object;
    :pswitch_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;

    invoke-virtual {v3, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v2

    .line 1879
    .local v2, "retObj":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    goto :goto_0

    .line 1881
    .local v2, "retObj":Ljava/lang/Object;
    :pswitch_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    invoke-virtual {v3, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v2

    .line 1882
    .local v2, "retObj":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    goto :goto_0

    .line 1884
    .local v2, "retObj":Ljava/lang/Object;
    :pswitch_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;

    invoke-virtual {v3, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v2

    .line 1885
    .local v2, "retObj":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    goto :goto_0

    .line 1887
    .local v2, "retObj":Ljava/lang/Object;
    :pswitch_5
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;

    invoke-virtual {v3, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v2

    .line 1888
    .local v2, "retObj":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    goto :goto_0

    .line 1890
    .local v2, "retObj":Ljava/lang/Object;
    :pswitch_6
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNotationTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;

    invoke-virtual {v3, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->traverse(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v2

    .line 1891
    .local v2, "retObj":Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    goto :goto_0

    .line 1868
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method

.method traverseLocalElements()V
    .locals 11

    .prologue
    .line 3579
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fDeferTraversingLocalElements:Z

    .line 3581
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    if-lt v9, v0, :cond_0

    .line 3603
    return-void

    .line 3582
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl:[Lmf/org/w3c/dom/Element;

    aget-object v2, v0, v9

    .line 3585
    .local v2, "currElem":Lmf/org/w3c/dom/Element;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl_schema:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    aget-object v3, v0, v9

    .line 3586
    .local v3, "currSchema":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v1, v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v4

    .line 3587
    .local v4, "currGrammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParticle:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v1, v1, v9

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAllContext:[I

    aget v5, v5, v9

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParent:[Lmf/org/apache/xerces/xs/XSObject;

    aget-object v6, v6, v9

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemNamespaceContext:[[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-virtual/range {v0 .. v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseLocal(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;[Ljava/lang/String;)V

    .line 3589
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParticle:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v0, v0, v9

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    if-nez v0, :cond_2

    .line 3590
    const/4 v8, 0x0

    .line 3591
    .local v8, "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParent:[Lmf/org/apache/xerces/xs/XSObject;

    aget-object v0, v0, v9

    instance-of v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz v0, :cond_3

    .line 3592
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParent:[Lmf/org/apache/xerces/xs/XSObject;

    aget-object v0, v0, v9

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v10

    .line 3593
    .local v10, "p":Lmf/org/apache/xerces/xs/XSParticle;
    if-eqz v10, :cond_1

    .line 3594
    invoke-interface {v10}, Lmf/org/apache/xerces/xs/XSParticle;->getTerm()Lmf/org/apache/xerces/xs/XSTerm;

    move-result-object v8

    .end local v8    # "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    check-cast v8, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    .line 3599
    .end local v10    # "p":Lmf/org/apache/xerces/xs/XSParticle;
    .restart local v8    # "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    :cond_1
    :goto_1
    if-eqz v8, :cond_2

    .line 3600
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParticle:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v0, v0, v9

    invoke-direct {p0, v8, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->removeParticle(Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Z

    .line 3581
    .end local v8    # "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 3597
    .restart local v8    # "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParent:[Lmf/org/apache/xerces/xs/XSObject;

    aget-object v0, v0, v9

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fModelGroup:Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    goto :goto_1
.end method

.method protected traverseSchemas(Ljava/util/ArrayList;)V
    .locals 19
    .param p1, "annotationInfo"    # Ljava/util/ArrayList;

    .prologue
    .line 1351
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRoot:Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->setSchemasVisible(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 1352
    new-instance v17, Ljava/util/Stack;

    invoke-direct/range {v17 .. v17}, Ljava/util/Stack;-><init>()V

    .line 1353
    .local v17, "schemasToProcess":Ljava/util/Stack;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRoot:Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    :cond_0
    invoke-virtual/range {v17 .. v17}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1462
    return-void

    .line 1356
    :cond_1
    invoke-virtual/range {v17 .. v17}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .line 1357
    .local v6, "currSchemaDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    iget-object v8, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lmf/org/w3c/dom/Element;

    .line 1359
    .local v8, "currDoc":Lmf/org/w3c/dom/Element;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v4, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v9

    .line 1361
    .local v9, "currSG":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v8, v1}, Lmf/org/apache/xerces/util/DOMUtil;->isHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1365
    move-object v2, v8

    .line 1366
    .local v2, "currRoot":Lmf/org/w3c/dom/Element;
    const/16 v16, 0x0

    .line 1369
    .local v16, "sawAnnotation":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v2, v1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstVisibleChildElement(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Lmf/org/w3c/dom/Element;

    move-result-object v11

    .line 1370
    .local v11, "globalComp":Lmf/org/w3c/dom/Element;
    :goto_0
    if-nez v11, :cond_4

    .line 1436
    if-nez v16, :cond_2

    .line 1437
    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 1438
    .local v3, "text":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1439
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->getSchemaAttrs()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-virtual {v9, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    .line 1444
    .end local v3    # "text":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_3

    .line 1445
    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->getAnnotations()Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;

    move-result-object v13

    .line 1447
    .local v13, "info":Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;
    if-eqz v13, :cond_3

    .line 1448
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->doc2SystemId(Lmf/org/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1449
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1453
    .end local v13    # "info":Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;
    :cond_3
    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->returnSchemaAttrs()V

    .line 1454
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v8, v1}, Lmf/org/apache/xerces/util/DOMUtil;->setHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    .line 1457
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDependencyMap:Ljava/util/Hashtable;

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Vector;

    .line 1458
    .local v10, "currSchemaDepends":Ljava/util/Vector;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v12, v1, :cond_0

    .line 1459
    invoke-virtual {v10, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1458
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1372
    .end local v10    # "currSchemaDepends":Ljava/util/Vector;
    .end local v12    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v11, v1}, Lmf/org/apache/xerces/util/DOMUtil;->setHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    .line 1373
    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    .line 1375
    .local v7, "componentType":Ljava/lang/String;
    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1377
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefine2NSSupport:Ljava/util/Hashtable;

    invoke-virtual {v1, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v6, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->backupNSSupport(Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;)V

    .line 1378
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v11, v1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstVisibleChildElement(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Lmf/org/w3c/dom/Element;

    move-result-object v14

    .line 1379
    .local v14, "redefinedComp":Lmf/org/w3c/dom/Element;
    :goto_2
    if-nez v14, :cond_5

    .line 1404
    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->restoreNSSupport()V

    .line 1371
    .end local v14    # "redefinedComp":Lmf/org/w3c/dom/Element;
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v11, v1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextVisibleSiblingElement(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Lmf/org/w3c/dom/Element;

    move-result-object v11

    goto/16 :goto_0

    .line 1381
    .restart local v14    # "redefinedComp":Lmf/org/w3c/dom/Element;
    :cond_5
    invoke-static {v14}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v15

    .line 1382
    .local v15, "redefinedComponentType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v14, v1}, Lmf/org/apache/xerces/util/DOMUtil;->setHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    .line 1383
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1384
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;

    invoke-virtual {v1, v14, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    .line 1380
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v14, v1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextVisibleSiblingElement(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Lmf/org/w3c/dom/Element;

    move-result-object v14

    goto :goto_2

    .line 1386
    :cond_6
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1387
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fComplexTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

    invoke-virtual {v1, v14, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    goto :goto_4

    .line 1389
    :cond_7
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1390
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;

    invoke-virtual {v1, v14, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    goto :goto_4

    .line 1392
    :cond_8
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1393
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;

    invoke-virtual {v1, v14, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_4

    .line 1401
    :cond_9
    const-string v1, "s4s-elt-must-match.1"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v4, v5

    const/4 v5, 0x1

    const-string v18, "(annotation | (simpleType | complexType | group | attributeGroup))*"

    aput-object v18, v4, v5

    const/4 v5, 0x2

    aput-object v15, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4, v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_4

    .line 1406
    .end local v14    # "redefinedComp":Lmf/org/w3c/dom/Element;
    .end local v15    # "redefinedComponentType":Ljava/lang/String;
    :cond_a
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1407
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;

    invoke-virtual {v1, v11, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    goto/16 :goto_3

    .line 1409
    :cond_b
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1410
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;

    invoke-virtual {v1, v11, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    goto/16 :goto_3

    .line 1412
    :cond_c
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1413
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fComplexTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

    invoke-virtual {v1, v11, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    goto/16 :goto_3

    .line 1415
    :cond_d
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1416
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    invoke-virtual {v1, v11, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto/16 :goto_3

    .line 1418
    :cond_e
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1419
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;

    invoke-virtual {v1, v11, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    goto/16 :goto_3

    .line 1421
    :cond_f
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_NOTATION:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1422
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNotationTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;

    invoke-virtual {v1, v11, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->traverse(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    goto/16 :goto_3

    .line 1424
    :cond_10
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1425
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;

    invoke-virtual {v1, v11, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto/16 :goto_3

    .line 1427
    :cond_11
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1428
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->getSchemaAttrs()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v1, v11, v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-virtual {v9, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    .line 1429
    const/16 v16, 0x1

    .line 1430
    goto/16 :goto_3

    .line 1432
    :cond_12
    const-string v1, "s4s-elt-invalid-content.1"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v18, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SCHEMA:Ljava/lang/String;

    aput-object v18, v4, v5

    const/4 v5, 0x1

    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4, v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_3
.end method
