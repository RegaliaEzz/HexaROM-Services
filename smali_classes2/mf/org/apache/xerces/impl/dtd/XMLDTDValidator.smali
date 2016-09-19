.class public Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;
.super Ljava/lang/Object;
.source "XMLDTDValidator.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;
.implements Lmf/org/apache/xerces/xni/parser/XMLDocumentFilter;
.implements Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
.implements Lmf/org/apache/xerces/impl/RevalidationHandler;


# static fields
.field protected static final BALANCE_SYNTAX_TREES:Ljava/lang/String; = "http://apache.org/xml/features/validation/balance-syntax-trees"

.field protected static final DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/datatype-validator-factory"

.field private static final DEBUG_ATTRIBUTES:Z = false

.field private static final DEBUG_ELEMENT_CHILDREN:Z = false

.field protected static final DYNAMIC_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field protected static final GRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final TOP_LEVEL_SCOPE:I = -0x1

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WARN_ON_DUPLICATE_ATTDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"


# instance fields
.field protected fBalanceSyntaxTrees:Z

.field private final fBuffer:Ljava/lang/StringBuffer;

.field private fContentSpecTypeStack:[I

.field private fCurrentContentSpecType:I

.field private final fCurrentElement:Lmf/org/apache/xerces/xni/QName;

.field private fCurrentElementIndex:I

.field protected fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

.field protected fDTDValidation:Z

.field protected fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field protected fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

.field protected fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

.field protected fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

.field protected fDynamicValidation:Z

.field private fElementChildren:[Lmf/org/apache/xerces/xni/QName;

.field private fElementChildrenLength:I

.field private fElementChildrenOffsetStack:[I

.field private fElementDepth:I

.field private fElementIndexStack:[I

.field private fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

.field private final fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

.field protected fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field private fInCDATASection:Z

.field private fInElementContent:Z

.field protected fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

.field protected fNamespaces:Z

.field private fPerformValidation:Z

.field private final fRootElement:Lmf/org/apache/xerces/xni/QName;

.field private fSchemaType:Ljava/lang/String;

.field protected fSeenDoctypeDecl:Z

.field private fSeenRootElement:Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private final fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

.field private fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

.field private final fTempQName:Lmf/org/apache/xerces/xni/QName;

.field protected fValENTITIES:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValENTITY:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValID:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValIDRef:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValIDRefs:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValNMTOKEN:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValNMTOKENS:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValNOTATION:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValidation:Z

.field protected fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

.field protected final fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

.field protected fWarnDuplicateAttdef:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 150
    new-array v0, v4, [Ljava/lang/String;

    .line 151
    const-string v1, "http://xml.org/sax/features/namespaces"

    aput-object v1, v0, v5

    .line 152
    const-string v1, "http://xml.org/sax/features/validation"

    aput-object v1, v0, v6

    .line 153
    const-string v1, "http://apache.org/xml/features/validation/dynamic"

    aput-object v1, v0, v2

    .line 154
    const-string v1, "http://apache.org/xml/features/validation/balance-syntax-trees"

    aput-object v1, v0, v3

    .line 150
    sput-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    .line 158
    new-array v0, v4, [Ljava/lang/Boolean;

    .line 161
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    .line 162
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v3

    .line 158
    sput-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    .line 166
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 167
    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v1, v0, v5

    .line 168
    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v1, v0, v6

    .line 169
    const-string v1, "http://apache.org/xml/properties/internal/grammar-pool"

    aput-object v1, v0, v2

    .line 170
    const-string v1, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    aput-object v1, v0, v3

    .line 171
    const-string v1, "http://apache.org/xml/properties/internal/validation-manager"

    aput-object v1, v0, v4

    .line 166
    sput-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 175
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    .line 189
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x20

    const/16 v4, 0x8

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    .line 199
    new-instance v1, Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/validation/ValidationState;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    .line 242
    iput-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    .line 261
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    .line 272
    new-instance v1, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v1}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    .line 275
    iput v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    .line 278
    iput v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    .line 281
    new-instance v1, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v1}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fRootElement:Lmf/org/apache/xerces/xni/QName;

    .line 283
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInCDATASection:Z

    .line 287
    new-array v1, v4, [I

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementIndexStack:[I

    .line 290
    new-array v1, v4, [I

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fContentSpecTypeStack:[I

    .line 293
    new-array v1, v4, [Lmf/org/apache/xerces/xni/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    .line 310
    new-array v1, v5, [Lmf/org/apache/xerces/xni/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    .line 313
    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    .line 320
    new-array v1, v5, [I

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    .line 323
    iput v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    .line 328
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenRootElement:Z

    .line 331
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    .line 336
    new-instance v1, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    .line 339
    new-instance v1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    .line 342
    new-instance v1, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    .line 345
    new-instance v1, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v1}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    .line 348
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    .line 389
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 392
    new-instance v1, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    .line 394
    return-void

    .line 390
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    new-instance v2, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v2}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    aput-object v2, v1, v0

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private charDataInContent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1777
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    array-length v3, v3

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    if-gt v3, v4, :cond_0

    .line 1778
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [Lmf/org/apache/xerces/xni/QName;

    .line 1779
    .local v1, "newarray":[Lmf/org/apache/xerces/xni/QName;
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1780
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    .line 1782
    .end local v1    # "newarray":[Lmf/org/apache/xerces/xni/QName;
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    aget-object v2, v3, v4

    .line 1783
    .local v2, "qname":Lmf/org/apache/xerces/xni/QName;
    if-nez v2, :cond_1

    .line 1784
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    array-length v3, v3

    if-lt v0, v3, :cond_2

    .line 1787
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    aget-object v2, v3, v4

    .line 1789
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {v2}, Lmf/org/apache/xerces/xni/QName;->clear()V

    .line 1790
    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    .line 1792
    return-void

    .line 1785
    .restart local v0    # "i":I
    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    new-instance v4, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v4}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    aput-object v4, v3, v0

    .line 1784
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private checkContent(I[Lmf/org/apache/xerces/xni/QName;II)I
    .locals 6
    .param p1, "elementIndex"    # I
    .param p2, "children"    # [Lmf/org/apache/xerces/xni/QName;
    .param p3, "childOffset"    # I
    .param p4, "childCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 1691
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {v4, p1, v5}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)Z

    .line 1694
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v4, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 1697
    .local v2, "elementType":Ljava/lang/String;
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    .line 1705
    .local v1, "contentType":I
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 1710
    if-eqz p4, :cond_0

    .line 1711
    const/4 v3, 0x0

    .line 1755
    :cond_0
    :goto_0
    return v3

    .line 1714
    :cond_1
    if-eqz v1, :cond_0

    .line 1720
    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    .line 1721
    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    .line 1723
    :cond_2
    const/4 v0, 0x0

    .line 1724
    .local v0, "cmElem":Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    iget-object v0, v4, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->contentModelValidator:Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    .line 1725
    invoke-interface {v0, p2, p3, p4}, Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;->validate([Lmf/org/apache/xerces/xni/QName;II)I

    move-result v3

    .line 1726
    .local v3, "result":I
    goto :goto_0

    .line 1728
    .end local v0    # "cmElem":Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;
    .end local v3    # "result":I
    :cond_3
    if-eq v1, v3, :cond_0

    goto :goto_0
.end method

.method private ensureStackCapacity(I)V
    .locals 7
    .param p1, "newElementDepth"    # I

    .prologue
    const/4 v6, 0x0

    .line 1859
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    array-length v4, v4

    if-ne p1, v4, :cond_1

    .line 1861
    mul-int/lit8 v4, p1, 0x2

    new-array v2, v4, [Lmf/org/apache/xerces/xni/QName;

    .line 1862
    .local v2, "newStackOfQueue":[Lmf/org/apache/xerces/xni/QName;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    invoke-static {v4, v6, v2, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1863
    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    .line 1865
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    aget-object v3, v4, p1

    .line 1866
    .local v3, "qname":Lmf/org/apache/xerces/xni/QName;
    if-nez v3, :cond_0

    .line 1867
    move v0, p1

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    array-length v4, v4

    if-lt v0, v4, :cond_2

    .line 1872
    .end local v0    # "i":I
    :cond_0
    mul-int/lit8 v4, p1, 0x2

    new-array v1, v4, [I

    .line 1873
    .local v1, "newStack":[I
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementIndexStack:[I

    invoke-static {v4, v6, v1, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1874
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementIndexStack:[I

    .line 1876
    mul-int/lit8 v4, p1, 0x2

    new-array v1, v4, [I

    .line 1877
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fContentSpecTypeStack:[I

    invoke-static {v4, v6, v1, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1878
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fContentSpecTypeStack:[I

    .line 1881
    .end local v1    # "newStack":[I
    .end local v2    # "newStackOfQueue":[Lmf/org/apache/xerces/xni/QName;
    .end local v3    # "qname":Lmf/org/apache/xerces/xni/QName;
    :cond_1
    return-void

    .line 1868
    .restart local v0    # "i":I
    .restart local v2    # "newStackOfQueue":[Lmf/org/apache/xerces/xni/QName;
    .restart local v3    # "qname":Lmf/org/apache/xerces/xni/QName;
    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    new-instance v5, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v5}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    aput-object v5, v4, v0

    .line 1867
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getAttributeTypeName(Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)Ljava/lang/String;
    .locals 4
    .param p1, "attrDecl"    # Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    .prologue
    .line 1797
    iget-object v2, p1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v2, v2, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    packed-switch v2, :pswitch_data_0

    .line 1826
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    :goto_0
    return-object v2

    .line 1799
    :pswitch_0
    iget-object v2, p1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-boolean v2, v2, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    if-eqz v2, :cond_0

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fENTITIESSymbol:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fENTITYSymbol:Ljava/lang/String;

    goto :goto_0

    .line 1802
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1803
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1804
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 1810
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1811
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1805
    :cond_1
    if-lez v1, :cond_2

    .line 1806
    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1808
    :cond_2
    iget-object v2, p1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1804
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1814
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "i":I
    :pswitch_2
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fIDSymbol:Ljava/lang/String;

    goto :goto_0

    .line 1817
    :pswitch_3
    iget-object v2, p1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-boolean v2, v2, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    if-eqz v2, :cond_3

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fIDREFSSymbol:Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fIDREFSymbol:Ljava/lang/String;

    goto :goto_0

    .line 1820
    :pswitch_4
    iget-object v2, p1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-boolean v2, v2, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    if-eqz v2, :cond_4

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fNMTOKENSSymbol:Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fNMTOKENSymbol:Ljava/lang/String;

    goto :goto_0

    .line 1823
    :pswitch_5
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    goto :goto_0

    .line 1797
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getContentSpecType(I)I
    .locals 3
    .param p1, "elementIndex"    # I

    .prologue
    .line 1762
    const/4 v0, -0x1

    .line 1763
    .local v0, "contentSpecType":I
    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    .line 1764
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {v1, p1, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1765
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    iget-short v0, v1, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    .line 1768
    :cond_0
    return v0
.end method

.method private normalizeAttrValue(Lmf/org/apache/xerces/xni/XMLAttributes;I)Z
    .locals 13
    .param p1, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p2, "index"    # I

    .prologue
    const/16 v12, 0x20

    const/4 v9, 0x0

    .line 1553
    const/4 v5, 0x1

    .line 1554
    .local v5, "leadingSpace":Z
    const/4 v8, 0x0

    .line 1555
    .local v8, "spaceStart":Z
    const/4 v7, 0x0

    .line 1556
    .local v7, "readingNonSpace":Z
    const/4 v2, 0x0

    .line 1557
    .local v2, "count":I
    const/4 v3, 0x0

    .line 1558
    .local v3, "eaten":I
    invoke-interface {p1, p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    .line 1559
    .local v1, "attrValue":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    new-array v0, v10, [C

    .line 1561
    .local v0, "attValue":[C
    iget-object v10, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1562
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v1, v9, v10, v0, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 1563
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v10, v0

    if-lt v4, v10, :cond_1

    .line 1614
    if-lez v2, :cond_0

    iget-object v10, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    add-int/lit8 v11, v2, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v10

    if-ne v10, v12, :cond_0

    .line 1615
    iget-object v10, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    add-int/lit8 v11, v2, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1634
    :cond_0
    iget-object v10, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1635
    .local v6, "newValue":Ljava/lang/String;
    invoke-interface {p1, p2, v6}, Lmf/org/apache/xerces/xni/XMLAttributes;->setValue(ILjava/lang/String;)V

    .line 1636
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    :goto_1
    return v9

    .line 1565
    .end local v6    # "newValue":Ljava/lang/String;
    :cond_1
    aget-char v10, v0, v4

    if-ne v10, v12, :cond_6

    .line 1568
    if-eqz v7, :cond_2

    .line 1569
    const/4 v8, 0x1

    .line 1570
    const/4 v7, 0x0

    .line 1573
    :cond_2
    if-eqz v8, :cond_4

    if-nez v5, :cond_4

    .line 1574
    const/4 v8, 0x0

    .line 1575
    iget-object v10, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    aget-char v11, v0, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1576
    add-int/lit8 v2, v2, 0x1

    .line 1563
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1579
    :cond_4
    if-nez v5, :cond_5

    if-nez v8, :cond_3

    .line 1580
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 1603
    goto :goto_2

    .line 1605
    :cond_6
    const/4 v7, 0x1

    .line 1606
    const/4 v8, 0x0

    .line 1607
    const/4 v5, 0x0

    .line 1608
    iget-object v10, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    aget-char v11, v0, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1609
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1636
    .restart local v6    # "newValue":Ljava/lang/String;
    :cond_7
    const/4 v9, 0x1

    goto :goto_1
.end method

.method private final rootElementSpecified(Lmf/org/apache/xerces/xni/QName;)V
    .locals 8
    .param p1, "rootElement"    # Lmf/org/apache/xerces/xni/QName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 1641
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v2, :cond_1

    .line 1642
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fRootElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 1643
    .local v0, "root1":Ljava/lang/String;
    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 1644
    .local v1, "root2":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1645
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1646
    const-string v4, "RootElementTypeMustMatchDoctypedecl"

    .line 1647
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    aput-object v1, v5, v7

    .line 1645
    invoke-virtual {v2, v3, v4, v5, v7}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 1651
    .end local v0    # "root1":Ljava/lang/String;
    .end local v1    # "root2":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method protected addDTDDefaultAttrsAndValidate(Lmf/org/apache/xerces/xni/QName;ILmf/org/apache/xerces/xni/XMLAttributes;)V
    .locals 34
    .param p1, "elementName"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "elementIndex"    # I
    .param p3, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1159
    const/16 v29, -0x1

    move/from16 v0, p2

    move/from16 v1, v29

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-object/from16 v29, v0

    if-nez v29, :cond_1

    .line 1361
    :cond_0
    return-void

    .line 1168
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result v12

    .line 1170
    .local v12, "attlistIndex":I
    :goto_0
    const/16 v29, -0x1

    move/from16 v0, v29

    if-ne v12, v0, :cond_4

    .line 1257
    invoke-interface/range {p3 .. p3}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v13

    .line 1258
    .local v13, "attrCount":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    move/from16 v0, v21

    if-ge v0, v13, :cond_0

    .line 1259
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v14

    .line 1260
    .local v14, "attrRawName":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1261
    .local v18, "declared":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getStandalone()Z

    move-result v29

    if-eqz v29, :cond_2

    .line 1268
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getNonNormalizedValue(I)Ljava/lang/String;

    move-result-object v23

    .line 1269
    .local v23, "nonNormalizedValue":Ljava/lang/String;
    if-eqz v23, :cond_2

    .line 1270
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->getExternalEntityRefInAttrValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1271
    .local v20, "entityName":Ljava/lang/String;
    if-eqz v20, :cond_2

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v29, v0

    const-string v30, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1273
    const-string v31, "MSG_REFERENCE_TO_EXTERNALLY_DECLARED_ENTITY_WHEN_STANDALONE"

    .line 1274
    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v20, v32, v33

    .line 1275
    const/16 v33, 0x1

    .line 1272
    invoke-virtual/range {v29 .. v33}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 1280
    .end local v20    # "entityName":Ljava/lang/String;
    .end local v23    # "nonNormalizedValue":Ljava/lang/String;
    :cond_2
    const/4 v5, -0x1

    .line 1282
    .local v5, "attDefIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result v25

    .line 1283
    .local v25, "position":I
    :goto_2
    const/16 v29, -0x1

    move/from16 v0, v25

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    .line 1293
    :goto_3
    if-nez v18, :cond_12

    .line 1294
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    move/from16 v29, v0

    if-eqz v29, :cond_3

    .line 1297
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v4, v0, [Ljava/lang/Object;

    const/16 v29, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v4, v29

    const/16 v29, 0x1

    aput-object v14, v4, v29

    .line 1299
    .local v4, "args":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v29, v0

    const-string v30, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1300
    const-string v31, "MSG_ATTRIBUTE_NOT_DECLARED"

    .line 1301
    const/16 v32, 0x1

    .line 1299
    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v4, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 1258
    .end local v4    # "args":[Ljava/lang/Object;
    :cond_3
    :goto_4
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 1172
    .end local v5    # "attDefIndex":I
    .end local v13    # "attrCount":I
    .end local v14    # "attrRawName":Ljava/lang/String;
    .end local v18    # "declared":Z
    .end local v21    # "i":I
    .end local v25    # "position":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v12, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDecl(ILmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)Z

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v8, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 1189
    .local v8, "attPrefix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 1190
    .local v7, "attLocalpart":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v9, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 1191
    .local v9, "attRawName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->getAttributeTypeName(Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)Ljava/lang/String;

    move-result-object v10

    .line 1192
    .local v10, "attType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-short v6, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultType:S

    .line 1193
    .local v6, "attDefaultType":I
    const/4 v11, 0x0

    .line 1195
    .local v11, "attValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_5

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v11, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    .line 1199
    :cond_5
    const/16 v27, 0x0

    .line 1200
    .local v27, "specified":Z
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v6, v0, :cond_9

    const/16 v26, 0x1

    .line 1201
    .local v26, "required":Z
    :goto_5
    sget-object v29, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    move-object/from16 v0, v29

    if-ne v10, v0, :cond_a

    const/16 v16, 0x1

    .line 1203
    .local v16, "cdata":Z
    :goto_6
    if-eqz v16, :cond_6

    if-nez v26, :cond_6

    if-eqz v11, :cond_7

    .line 1204
    :cond_6
    invoke-interface/range {p3 .. p3}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v13

    .line 1205
    .restart local v13    # "attrCount":I
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_7
    move/from16 v0, v21

    if-lt v0, v13, :cond_b

    .line 1213
    .end local v13    # "attrCount":I
    .end local v21    # "i":I
    :cond_7
    :goto_8
    if-nez v27, :cond_8

    .line 1214
    if-eqz v26, :cond_d

    .line 1215
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    move/from16 v29, v0

    if-eqz v29, :cond_8

    .line 1216
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v4, v0, [Ljava/lang/Object;

    const/16 v29, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v4, v29

    const/16 v29, 0x1

    aput-object v9, v4, v29

    .line 1217
    .restart local v4    # "args":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v29, v0

    const-string v30, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1218
    const-string v31, "MSG_REQUIRED_ATTRIBUTE_NOT_SPECIFIED"

    .line 1219
    const/16 v32, 0x1

    .line 1217
    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v4, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 1250
    .end local v4    # "args":[Ljava/lang/Object;
    :cond_8
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result v12

    goto/16 :goto_0

    .line 1200
    .end local v16    # "cdata":Z
    .end local v26    # "required":Z
    :cond_9
    const/16 v26, 0x0

    goto :goto_5

    .line 1201
    .restart local v26    # "required":Z
    :cond_a
    const/16 v16, 0x0

    goto :goto_6

    .line 1206
    .restart local v13    # "attrCount":I
    .restart local v16    # "cdata":Z
    .restart local v21    # "i":I
    :cond_b
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    if-ne v0, v9, :cond_c

    .line 1207
    const/16 v27, 0x1

    .line 1208
    goto :goto_8

    .line 1205
    :cond_c
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 1222
    .end local v13    # "attrCount":I
    .end local v21    # "i":I
    :cond_d
    if-eqz v11, :cond_8

    .line 1223
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    move/from16 v29, v0

    if-eqz v29, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getStandalone()Z

    move-result v29

    if-eqz v29, :cond_e

    .line 1224
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDeclIsExternal(I)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 1226
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v4, v0, [Ljava/lang/Object;

    const/16 v29, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v4, v29

    const/16 v29, 0x1

    aput-object v9, v4, v29

    .line 1227
    .restart local v4    # "args":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v29, v0

    const-string v30, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1228
    const-string v31, "MSG_DEFAULTED_ATTRIBUTE_NOT_SPECIFIED"

    .line 1229
    const/16 v32, 0x1

    .line 1227
    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v4, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 1234
    .end local v4    # "args":[Ljava/lang/Object;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fNamespaces:Z

    move/from16 v29, v0

    if-eqz v29, :cond_f

    .line 1235
    const/16 v29, 0x3a

    move/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v22

    .line 1236
    .local v22, "index":I
    const/16 v29, -0x1

    move/from16 v0, v22

    move/from16 v1, v29

    if-eq v0, v1, :cond_f

    .line 1237
    const/16 v29, 0x0

    move/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1239
    add-int/lit8 v29, v22, 0x1

    move/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1240
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1245
    .end local v22    # "index":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v8, v7, v9, v1}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v29, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v10, v11}, Lmf/org/apache/xerces/xni/XMLAttributes;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1284
    .end local v6    # "attDefaultType":I
    .end local v7    # "attLocalpart":Ljava/lang/String;
    .end local v8    # "attPrefix":Ljava/lang/String;
    .end local v9    # "attRawName":Ljava/lang/String;
    .end local v10    # "attType":Ljava/lang/String;
    .end local v11    # "attValue":Ljava/lang/String;
    .end local v16    # "cdata":Z
    .end local v26    # "required":Z
    .end local v27    # "specified":Z
    .restart local v5    # "attDefIndex":I
    .restart local v13    # "attrCount":I
    .restart local v14    # "attrRawName":Ljava/lang/String;
    .restart local v18    # "declared":Z
    .restart local v21    # "i":I
    .restart local v25    # "position":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move/from16 v1, v25

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDecl(ILmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)Z

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    if-ne v0, v14, :cond_11

    .line 1287
    move/from16 v5, v25

    .line 1288
    const/16 v18, 0x1

    .line 1289
    goto/16 :goto_3

    .line 1291
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result v25

    goto/16 :goto_2

    .line 1311
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->getAttributeTypeName(Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)Ljava/lang/String;

    move-result-object v28

    .line 1312
    .local v28, "type":Ljava/lang/String;
    move-object/from16 v0, p3

    move/from16 v1, v21

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->setType(ILjava/lang/String;)V

    .line 1313
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v29

    const-string v30, "ATTRIBUTE_DECLARED"

    sget-object v31, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface/range {v29 .. v31}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    const/16 v17, 0x0

    .line 1316
    .local v17, "changedByNormalization":Z
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v24

    .line 1317
    .local v24, "oldValue":Ljava/lang/String;
    move-object/from16 v15, v24

    .line 1318
    .local v15, "attrValue":Ljava/lang/String;
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result v29

    if-eqz v29, :cond_13

    sget-object v29, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_13

    .line 1319
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->normalizeAttrValue(Lmf/org/apache/xerces/xni/XMLAttributes;I)Z

    move-result v17

    .line 1320
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v15

    .line 1321
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    move/from16 v29, v0

    if-eqz v29, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getStandalone()Z

    move-result v29

    if-eqz v29, :cond_13

    .line 1322
    if-eqz v17, :cond_13

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDeclIsExternal(I)Z

    move-result v29

    if-eqz v29, :cond_13

    .line 1326
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v29, v0

    const-string v30, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1327
    const-string v31, "MSG_ATTVALUE_CHANGED_DURING_NORMALIZATION_WHEN_STANDALONE"

    .line 1328
    const/16 v32, 0x3

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v14, v32, v33

    const/16 v33, 0x1

    aput-object v24, v32, v33

    const/16 v33, 0x2

    aput-object v15, v32, v33

    .line 1329
    const/16 v33, 0x1

    .line 1326
    invoke-virtual/range {v29 .. v33}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 1332
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    move/from16 v29, v0

    if-eqz v29, :cond_3

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultType:S

    move/from16 v29, v0

    .line 1336
    const/16 v30, 0x1

    .line 1335
    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_14

    .line 1337
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 1339
    .local v19, "defaultValue":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_14

    .line 1340
    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v4, v0, [Ljava/lang/Object;

    const/16 v29, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v4, v29

    const/16 v29, 0x1

    .line 1341
    aput-object v14, v4, v29

    const/16 v29, 0x2

    .line 1342
    aput-object v15, v4, v29

    const/16 v29, 0x3

    .line 1343
    aput-object v19, v4, v29

    .line 1344
    .restart local v4    # "args":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v29, v0

    const-string v30, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1345
    const-string v31, "MSG_FIXED_ATTVALUE_INVALID"

    .line 1346
    const/16 v32, 0x1

    .line 1344
    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v4, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 1350
    .end local v4    # "args":[Ljava/lang/Object;
    .end local v19    # "defaultValue":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_15

    .line 1351
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_15

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    move/from16 v29, v0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_15

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    move/from16 v29, v0

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_15

    .line 1354
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    move/from16 v29, v0

    const/16 v30, 0x5

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_15

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    move/from16 v29, v0

    const/16 v30, 0x6

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_3

    .line 1357
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v15, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->validateDTDattribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)V

    goto/16 :goto_4
.end method

.method public characterData(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)Z
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;

    .prologue
    .line 2111
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLString;-><init>([CII)V

    invoke-virtual {p0, v0, p2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 2112
    const/4 v0, 0x1

    return v0
.end method

.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 10
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 832
    const/4 v1, 0x1

    .line 837
    .local v1, "callNextCharacters":Z
    const/4 v0, 0x1

    .line 838
    .local v0, "allWhiteSpace":Z
    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .local v2, "i":I
    :goto_0
    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v3, v4

    if-lt v2, v3, :cond_6

    .line 846
    :goto_1
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInCDATASection:Z

    if-nez v3, :cond_0

    .line 847
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v3, :cond_0

    .line 848
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v3, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 849
    const/4 v1, 0x0

    .line 854
    :cond_0
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v3, :cond_4

    .line 855
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    if-eqz v3, :cond_3

    .line 856
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getStandalone()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 857
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDeclIsExternal(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 858
    if-eqz v0, :cond_1

    .line 859
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 860
    const-string v5, "MSG_WHITE_SPACE_IN_ELEMENT_CONTENT_WHEN_STANDALONE"

    .line 861
    const/4 v6, 0x0

    .line 859
    invoke-virtual {v3, v4, v5, v6, v9}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 864
    :cond_1
    if-nez v0, :cond_2

    .line 865
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->charDataInContent()V

    .line 869
    :cond_2
    if-eqz p2, :cond_3

    const-string v3, "CHAR_REF_PROBABLE_WS"

    invoke-interface {p2, v3}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_3

    .line 870
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 871
    const-string v5, "MSG_CONTENT_INVALID_SPECIFIED"

    .line 872
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v8, v6, v7

    .line 873
    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget v8, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpecAsString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x2

    .line 874
    const-string v8, "character reference"

    aput-object v8, v6, v7

    .line 870
    invoke-virtual {v3, v4, v5, v6, v9}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 879
    :cond_3
    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    if-ne v3, v9, :cond_4

    .line 880
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->charDataInContent()V

    .line 885
    :cond_4
    if-eqz v1, :cond_5

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v3, :cond_5

    .line 886
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v3, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 889
    :cond_5
    return-void

    .line 839
    :cond_6
    iget-object v3, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v3, v3, v2

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->isSpace(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 840
    const/4 v0, 0x0

    .line 841
    goto/16 :goto_1

    .line 838
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 989
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)Z

    .line 991
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    if-ne v0, v6, :cond_0

    .line 992
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 993
    const-string v2, "MSG_CONTENT_INVALID_SPECIFIED"

    .line 994
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 995
    const-string v4, "EMPTY"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    .line 996
    const-string v5, "comment"

    aput-object v5, v3, v4

    .line 992
    invoke-virtual {v0, v1, v2, v3, v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 1001
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    .line 1002
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1005
    :cond_1
    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
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
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 730
    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    .line 731
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fRootElement:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v1, v2, p1, p1, v2}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const/4 v4, 0x0

    .line 735
    .local v4, "eid":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p3, v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 738
    :goto_0
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    move-object v1, p2

    move-object v2, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    .local v0, "grammarDesc":Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    .line 740
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-nez v1, :cond_1

    .line 749
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v1, :cond_1

    if-nez p3, :cond_0

    if-eqz p2, :cond_1

    .line 750
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    .line 753
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-nez v1, :cond_4

    .line 755
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBalanceSyntaxTrees:Z

    if-nez v1, :cond_3

    .line 756
    new-instance v1, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v1, v2, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    .line 766
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->setActiveGrammar(Lmf/org/apache/xerces/impl/dtd/DTDGrammar;)V

    .line 769
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_2

    .line 770
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 773
    :cond_2
    return-void

    .line 759
    :cond_3
    new-instance v1, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v1, v2, v0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    goto :goto_1

    .line 764
    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->setCachedDTD(Z)V

    goto :goto_1

    .line 736
    .end local v0    # "grammarDesc":Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
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
    .line 809
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)Z

    move-result v0

    .line 811
    .local v0, "removed":Z
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_0

    .line 812
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 814
    :cond_0
    if-nez v0, :cond_1

    .line 815
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p3, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V

    .line 819
    :cond_1
    return-void
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
    .line 956
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInCDATASection:Z

    .line 958
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 962
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
    .line 973
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 977
    :cond_0
    return-void
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 925
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V

    .line 927
    return-void
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
    .line 1100
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1103
    :cond_0
    return-void
.end method

.method protected endNamespaceScope(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V
    .locals 2
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .param p3, "isEmpty"    # Z

    .prologue
    .line 2093
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 2100
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 2102
    :cond_0
    return-void
.end method

.method public getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-object v0
.end method

.method public getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    return-object v0
.end method

.method protected getExternalEntityRefInAttrValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "nonNormalizedValue"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x26

    const/4 v7, -0x1

    .line 1365
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1366
    .local v4, "valLength":I
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1367
    .local v0, "ampIndex":I
    :goto_0
    if-ne v0, v7, :cond_1

    .line 1384
    const/4 v2, 0x0

    :cond_0
    return-object v2

    .line 1368
    :cond_1
    add-int/lit8 v5, v0, 0x1

    if-ge v5, v4, :cond_2

    .line 1369
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-eq v5, v6, :cond_2

    .line 1370
    const/16 v5, 0x3b

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 1371
    .local v3, "semicolonIndex":I
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1372
    .local v2, "entityName":Ljava/lang/String;
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v5, v2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1373
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v5, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result v1

    .line 1374
    .local v1, "entIndex":I
    if-le v1, v7, :cond_2

    .line 1375
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    invoke-virtual {v5, v1, v6}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getEntityDecl(ILmf/org/apache/xerces/impl/dtd/XMLEntityDecl;)Z

    .line 1376
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    iget-boolean v5, v5, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->inExternal:Z

    if-nez v5, :cond_0

    .line 1377
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->value:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->getExternalEntityRefInAttrValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1382
    .end local v1    # "entIndex":I
    .end local v2    # "entityName":Ljava/lang/String;
    .end local v3    # "semicolonIndex":I
    :cond_2
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "featureId"    # Ljava/lang/String;

    .prologue
    .line 588
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 593
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 589
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 590
    sget-object v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object v1, v1, v0

    goto :goto_1

    .line 588
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getGrammarBucket()Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    return-object v0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "propertyId"    # Ljava/lang/String;

    .prologue
    .line 606
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 611
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 607
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 608
    sget-object v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_1

    .line 606
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    sget-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    sget-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V
    .locals 15
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .param p3, "isEmpty"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 2017
    iget v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    .line 2020
    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v9, :cond_1

    .line 2021
    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    .line 2022
    .local v5, "elementIndex":I
    const/4 v9, -0x1

    if-eq v5, v9, :cond_0

    iget v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 2023
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    .line 2024
    .local v2, "children":[Lmf/org/apache/xerces/xni/QName;
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    iget v10, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    add-int/lit8 v10, v10, 0x1

    aget v9, v9, v10

    add-int/lit8 v4, v9, 0x1

    .line 2025
    .local v4, "childrenOffset":I
    iget v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    sub-int v3, v9, v4

    .line 2026
    .local v3, "childrenLength":I
    invoke-direct {p0, v5, v2, v4, v3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->checkContent(I[Lmf/org/apache/xerces/xni/QName;II)I

    move-result v7

    .line 2029
    .local v7, "result":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_0

    .line 2030
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {v9, v5, v10}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)Z

    .line 2031
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    iget-short v9, v9, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 2032
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v10, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 2033
    const-string v11, "MSG_CONTENT_INVALID"

    .line 2034
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-object v14, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "EMPTY"

    aput-object v14, v12, v13

    .line 2035
    const/4 v13, 0x1

    .line 2032
    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 2048
    .end local v2    # "children":[Lmf/org/apache/xerces/xni/QName;
    .end local v3    # "childrenLength":I
    .end local v4    # "childrenOffset":I
    .end local v7    # "result":I
    :cond_0
    :goto_0
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    iget v10, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    add-int/lit8 v10, v10, 0x1

    aget v9, v9, v10

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    .line 2051
    .end local v5    # "elementIndex":I
    :cond_1
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v9, v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->endNamespaceScope(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V

    .line 2054
    iget v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    const/4 v10, -0x1

    if-ge v9, v10, :cond_4

    .line 2055
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "FWK008 Element stack underflow"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2038
    .restart local v2    # "children":[Lmf/org/apache/xerces/xni/QName;
    .restart local v3    # "childrenLength":I
    .restart local v4    # "childrenOffset":I
    .restart local v5    # "elementIndex":I
    .restart local v7    # "result":I
    :cond_2
    if-eq v7, v3, :cond_3

    .line 2039
    const-string v6, "MSG_CONTENT_INVALID"

    .line 2040
    .local v6, "messageKey":Ljava/lang/String;
    :goto_1
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v10, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 2042
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 2043
    iget-object v13, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v13, v5}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpecAsString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 2044
    const/4 v12, 0x1

    .line 2040
    invoke-virtual {v9, v10, v6, v11, v12}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    .line 2039
    .end local v6    # "messageKey":Ljava/lang/String;
    :cond_3
    const-string v6, "MSG_CONTENT_INCOMPLETE"

    goto :goto_1

    .line 2057
    .end local v2    # "children":[Lmf/org/apache/xerces/xni/QName;
    .end local v3    # "childrenLength":I
    .end local v4    # "childrenOffset":I
    .end local v5    # "elementIndex":I
    .end local v7    # "result":I
    :cond_4
    iget v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    if-gez v9, :cond_6

    .line 2058
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v9}, Lmf/org/apache/xerces/xni/QName;->clear()V

    .line 2059
    const/4 v9, -0x1

    iput v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    .line 2060
    const/4 v9, -0x1

    iput v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    .line 2061
    const/4 v9, 0x0

    iput-boolean v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    .line 2069
    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v9, :cond_5

    .line 2070
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/validation/ValidationState;->checkIDRefID()Ljava/lang/String;

    move-result-object v8

    .line 2071
    .local v8, "value":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 2072
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v10, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 2073
    const-string v11, "MSG_ELEMENT_WITH_ID_REQUIRED"

    .line 2074
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    .line 2075
    const/4 v13, 0x1

    .line 2072
    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 2088
    .end local v8    # "value":Ljava/lang/String;
    :cond_5
    :goto_2
    return-void

    .line 2082
    :cond_6
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    iget v11, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 2084
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementIndexStack:[I

    iget v10, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    aget v9, v9, v10

    iput v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    .line 2085
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fContentSpecTypeStack:[I

    iget v10, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    aget v9, v9, v10

    iput v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    .line 2086
    iget v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_7

    const/4 v9, 0x1

    :goto_3
    iput-boolean v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    goto :goto_2

    :cond_7
    const/4 v9, 0x0

    goto :goto_3
.end method

.method protected handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)Z
    .locals 10
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1897
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenRootElement:Z

    if-nez v5, :cond_0

    .line 1919
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->validate()Z

    move-result v5

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    .line 1920
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenRootElement:Z

    .line 1921
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->setEntityState(Lmf/org/apache/xerces/impl/validation/EntityState;)V

    .line 1922
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-boolean v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->setGrammarFound(Z)V

    .line 1923
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->rootElementSpecified(Lmf/org/apache/xerces/xni/QName;)V

    .line 1925
    :cond_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-nez v5, :cond_4

    .line 1927
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-nez v5, :cond_1

    .line 1928
    iput v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    .line 1929
    iput v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    .line 1930
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    .line 1932
    :cond_1
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v5, :cond_2

    .line 1933
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v6, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1934
    const-string v7, "MSG_GRAMMAR_NOT_FOUND"

    .line 1935
    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v9, v8, v4

    .line 1933
    invoke-virtual {v5, v6, v7, v8, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 1939
    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    if-eqz v5, :cond_6

    .line 1940
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v4, v5}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 1941
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v4, :cond_3

    .line 1942
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-interface {v4, v5}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 2005
    :cond_3
    :goto_0
    return v3

    .line 1948
    :cond_4
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v5, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDeclIndex(Lmf/org/apache/xerces/xni/QName;)I

    move-result v5

    iput v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    .line 1950
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpecType(I)S

    move-result v5

    iput v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    .line 1951
    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    if-ne v5, v7, :cond_5

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v5, :cond_5

    .line 1952
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v6, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1953
    const-string v7, "MSG_ELEMENT_NOT_DECLARED"

    .line 1954
    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v9, v8, v4

    .line 1952
    invoke-virtual {v5, v6, v7, v8, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 1963
    :cond_5
    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    invoke-virtual {p0, p1, v5, p2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->addDTDDefaultAttrsAndValidate(Lmf/org/apache/xerces/xni/QName;ILmf/org/apache/xerces/xni/XMLAttributes;)V

    .line 1967
    :cond_6
    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_b

    :goto_1
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    .line 1971
    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    .line 1972
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v3, :cond_a

    .line 1974
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    array-length v3, v3

    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    if-gt v3, v5, :cond_7

    .line 1975
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [I

    .line 1976
    .local v1, "newarray":[I
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    array-length v5, v5

    invoke-static {v3, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1977
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    .line 1979
    .end local v1    # "newarray":[I
    :cond_7
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    iget v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    aput v6, v3, v5

    .line 1982
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    array-length v3, v3

    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    if-gt v3, v5, :cond_8

    .line 1983
    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [Lmf/org/apache/xerces/xni/QName;

    .line 1984
    .local v1, "newarray":[Lmf/org/apache/xerces/xni/QName;
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    array-length v5, v5

    invoke-static {v3, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1985
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    .line 1987
    .end local v1    # "newarray":[Lmf/org/apache/xerces/xni/QName;
    :cond_8
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    aget-object v2, v3, v5

    .line 1988
    .local v2, "qname":Lmf/org/apache/xerces/xni/QName;
    if-nez v2, :cond_9

    .line 1989
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    .local v0, "i":I
    :goto_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    array-length v3, v3

    if-lt v0, v3, :cond_c

    .line 1992
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    aget-object v2, v3, v5

    .line 1994
    .end local v0    # "i":I
    :cond_9
    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 1995
    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    .line 1999
    .end local v2    # "qname":Lmf/org/apache/xerces/xni/QName;
    :cond_a
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v3, p1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 2000
    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->ensureStackCapacity(I)V

    .line 2001
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    aget-object v3, v3, v5

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 2002
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementIndexStack:[I

    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    iget v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    aput v6, v3, v5

    .line 2003
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fContentSpecTypeStack:[I

    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    iget v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    aput v6, v3, v5

    .line 2004
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->startNamespaceScope(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    move v3, v4

    .line 2005
    goto/16 :goto_0

    :cond_b
    move v3, v4

    .line 1967
    goto/16 :goto_1

    .line 1990
    .restart local v0    # "i":I
    .restart local v2    # "qname":Lmf/org/apache/xerces/xni/QName;
    :cond_c
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    new-instance v5, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v5}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    aput-object v5, v3, v0

    .line 1989
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public final hasGrammar()Z
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 909
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 913
    :cond_0
    return-void
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 1834
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidation:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDynamicValidation:Z

    if-eqz v1, :cond_1

    .line 1838
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fIDSymbol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValID:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    .line 1839
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fIDREFSymbol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValIDRef:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    .line 1840
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fIDREFSSymbol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValIDRefs:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    .line 1841
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fENTITYSymbol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValENTITY:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    .line 1842
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fENTITIESSymbol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValENTITIES:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    .line 1843
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fNMTOKENSymbol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValNMTOKEN:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    .line 1844
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fNMTOKENSSymbol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValNMTOKENS:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    .line 1845
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValNOTATION:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1855
    :cond_1
    :goto_0
    return-void

    .line 1848
    :catch_0
    move-exception v0

    .line 1850
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method protected invalidStandaloneAttDef(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;)Z
    .locals 1
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attribute"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    .line 1524
    const/4 v0, 0x1

    .line 1535
    .local v0, "state":Z
    return v0
.end method

.method protected isSpace(I)Z
    .locals 1
    .param p1, "c"    # I

    .prologue
    .line 2107
    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v0

    return v0
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1029
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)Z

    .line 1031
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    if-ne v0, v6, :cond_0

    .line 1032
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1033
    const-string v2, "MSG_CONTENT_INVALID_SPECIFIED"

    .line 1034
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 1035
    const-string v4, "EMPTY"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    .line 1036
    const-string v5, "processing instruction"

    aput-object v5, v3, v4

    .line 1032
    invoke-virtual {v0, v1, v2, v3, v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 1041
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    .line 1042
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1044
    :cond_1
    return-void
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 7
    .param p1, "componentManager"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 422
    iput-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    .line 423
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    .line 424
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInCDATASection:Z

    .line 426
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenRootElement:Z

    .line 427
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    .line 428
    iput v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    .line 429
    iput v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    .line 431
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fRootElement:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v2}, Lmf/org/apache/xerces/xni/QName;->clear()V

    .line 433
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/validation/ValidationState;->resetIDTables()V

    .line 435
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->clear()V

    .line 436
    iput v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    .line 437
    iput v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    .line 441
    :try_start_0
    const-string v2, "http://apache.org/xml/features/internal/parser-settings"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 447
    .local v1, "parser_settings":Z
    :goto_0
    if-nez v1, :cond_0

    .line 449
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->addValidationState(Lmf/org/apache/xerces/impl/validation/ValidationState;)V

    .line 520
    :goto_1
    return-void

    .line 443
    .end local v1    # "parser_settings":Z
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    const/4 v1, 0x1

    .restart local v1    # "parser_settings":Z
    goto :goto_0

    .line 455
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :cond_0
    :try_start_1
    const-string v2, "http://xml.org/sax/features/namespaces"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fNamespaces:Z
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 461
    :goto_2
    :try_start_2
    const-string v2, "http://xml.org/sax/features/validation"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidation:Z
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 467
    :goto_3
    :try_start_3
    const-string v2, "http://apache.org/xml/features/validation/schema"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDValidation:Z
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    .line 476
    :goto_5
    :try_start_4
    const-string v2, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDynamicValidation:Z
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    .line 483
    :goto_6
    :try_start_5
    const-string v2, "http://apache.org/xml/features/validation/balance-syntax-trees"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBalanceSyntaxTrees:Z
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_5

    .line 490
    :goto_7
    :try_start_6
    const-string v2, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fWarnDuplicateAttdef:Z
    :try_end_6
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_6

    .line 497
    :goto_8
    :try_start_7
    const-string v2, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSchemaType:Ljava/lang/String;
    :try_end_7
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_7

    .line 504
    :goto_9
    const-string v2, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    .line 505
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->addValidationState(Lmf/org/apache/xerces/impl/validation/ValidationState;)V

    .line 506
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fNamespaces:Z

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setUsingNamespaces(Z)V

    .line 509
    const-string v2, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 510
    const-string v2, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 512
    :try_start_8
    const-string v2, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    :try_end_8
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_8

    .line 517
    :goto_a
    const-string v2, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 518
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->init()V

    goto/16 :goto_1

    .line 457
    :catch_1
    move-exception v0

    .line 458
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fNamespaces:Z

    goto :goto_2

    .line 463
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_2
    move-exception v0

    .line 464
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidation:Z

    goto :goto_3

    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :cond_1
    move v2, v4

    .line 467
    goto :goto_4

    .line 469
    :catch_3
    move-exception v0

    .line 471
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDValidation:Z

    goto :goto_5

    .line 478
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_4
    move-exception v0

    .line 479
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDynamicValidation:Z

    goto :goto_6

    .line 485
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_5
    move-exception v0

    .line 486
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBalanceSyntaxTrees:Z

    goto :goto_7

    .line 492
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_6
    move-exception v0

    .line 493
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fWarnDuplicateAttdef:Z

    goto :goto_8

    .line 500
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_7
    move-exception v0

    .line 501
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSchemaType:Ljava/lang/String;

    goto :goto_9

    .line 513
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_8
    move-exception v0

    .line 514
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    goto :goto_a
.end method

.method public setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 0
    .param p1, "documentHandler"    # Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    .prologue
    .line 620
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    .line 621
    return-void
.end method

.method public setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0
    .param p1, "source"    # Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .prologue
    .line 635
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .line 636
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
    .line 548
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "propertyId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 576
    return-void
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
    .line 937
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    if-eqz v0, :cond_0

    .line 938
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->charDataInContent()V

    .line 940
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInCDATASection:Z

    .line 942
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    .line 943
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 946
    :cond_1
    return-void
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 5
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
    .line 671
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v3, :cond_0

    .line 672
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    const-string v4, "http://www.w3.org/TR/REC-xml"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    .line 673
    .local v0, "grammars":[Lmf/org/apache/xerces/xni/grammars/Grammar;
    if-eqz v0, :cond_2

    array-length v2, v0

    .line 674
    .local v2, "length":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v2, :cond_3

    .line 678
    .end local v0    # "grammars":[Lmf/org/apache/xerces/xni/grammars/Grammar;
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    .line 679
    iput-object p3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    .line 681
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v3, :cond_1

    .line 682
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v3, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 685
    :cond_1
    return-void

    .line 673
    .restart local v0    # "grammars":[Lmf/org/apache/xerces/xni/grammars/Grammar;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 675
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_3
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    aget-object v3, v0, v1

    check-cast v3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/dtd/DTDGrammar;)V

    .line 674
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 788
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)Z

    .line 790
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 795
    :cond_0
    return-void
.end method

.method public startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
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
    const/4 v6, 0x1

    .line 1067
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_1

    .line 1068
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)Z

    .line 1070
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    if-ne v0, v6, :cond_0

    .line 1071
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1072
    const-string v2, "MSG_CONTENT_INVALID_SPECIFIED"

    .line 1073
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 1074
    const-string v4, "EMPTY"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "ENTITY"

    aput-object v5, v3, v4

    .line 1071
    invoke-virtual {v0, v1, v2, v3, v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 1077
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getStandalone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1078
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {p1, v0, v1, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->checkStandaloneEntityRef(Ljava/lang/String;Lmf/org/apache/xerces/impl/dtd/DTDGrammar;Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    .line 1081
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_2

    .line 1082
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1084
    :cond_2
    return-void
.end method

.method protected startNamespaceScope(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;

    .prologue
    .line 2010
    return-void
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
    .line 1122
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1125
    :cond_0
    return-void
.end method

.method public final validate()Z
    .locals 2

    .prologue
    .line 1145
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSchemaType:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    if-eq v0, v1, :cond_3

    .line 1146
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDynamicValidation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidation:Z

    if-nez v0, :cond_1

    .line 1147
    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDynamicValidation:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    if-eqz v0, :cond_3

    .line 1148
    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDValidation:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    if-eqz v0, :cond_3

    .line 1145
    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected validateDTDattribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)V
    .locals 12
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attValue"    # Ljava/lang/String;
    .param p3, "attributeDecl"    # Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1394
    iget-object v6, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v6, v6, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    packed-switch v6, :pswitch_data_0

    .line 1518
    :cond_0
    :goto_0
    return-void

    .line 1397
    :pswitch_0
    iget-object v6, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-boolean v5, v6, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    .line 1400
    .local v5, "isAlistAttribute":Z
    if-eqz v5, :cond_1

    .line 1401
    :try_start_0
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValENTITIES:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {v6, p2, v7}, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1407
    :catch_0
    move-exception v2

    .line 1408
    .local v2, "ex":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1409
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 1410
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v9

    .line 1411
    const/4 v10, 0x1

    .line 1408
    invoke-virtual {v6, v7, v8, v9, v10}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    .line 1404
    .end local v2    # "ex":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    :cond_1
    :try_start_1
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValENTITY:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {v6, p2, v7}, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1419
    .end local v5    # "isAlistAttribute":Z
    :pswitch_1
    const/4 v3, 0x0

    .line 1420
    .local v3, "found":Z
    iget-object v6, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v0, v6, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    .line 1421
    .local v0, "enumVals":[Ljava/lang/String;
    if-nez v0, :cond_4

    .line 1422
    const/4 v3, 0x0

    .line 1432
    :cond_2
    :goto_1
    if-nez v3, :cond_0

    .line 1433
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1434
    .local v1, "enumValueString":Ljava/lang/StringBuffer;
    if-eqz v0, :cond_3

    .line 1435
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v6, v0

    if-lt v4, v6, :cond_7

    .line 1438
    .end local v4    # "i":I
    :cond_3
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1439
    const-string v8, "MSG_ATTRIBUTE_VALUE_NOT_IN_LIST"

    .line 1440
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    const/4 v10, 0x2

    aput-object v1, v9, v10

    .line 1441
    const/4 v10, 0x1

    .line 1438
    invoke-virtual {v6, v7, v8, v9, v10}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    .line 1425
    .end local v1    # "enumValueString":Ljava/lang/StringBuffer;
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    array-length v6, v0

    if-ge v4, v6, :cond_2

    .line 1426
    aget-object v6, v0, v4

    if-eq p2, v6, :cond_5

    aget-object v6, v0, v4

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1427
    :cond_5
    const/4 v3, 0x1

    .line 1428
    goto :goto_1

    .line 1425
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1436
    .restart local v1    # "enumValueString":Ljava/lang/StringBuffer;
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    aget-object v7, v0, v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1435
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1448
    .end local v0    # "enumVals":[Ljava/lang/String;
    .end local v1    # "enumValueString":Ljava/lang/StringBuffer;
    .end local v3    # "found":Z
    .end local v4    # "i":I
    :pswitch_2
    :try_start_2
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValID:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {v6, p2, v7}, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1450
    :catch_1
    move-exception v2

    .line 1451
    .restart local v2    # "ex":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1452
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 1453
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v9

    .line 1454
    const/4 v10, 0x1

    .line 1451
    invoke-virtual {v6, v7, v8, v9, v10}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_0

    .line 1460
    .end local v2    # "ex":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    :pswitch_3
    iget-object v6, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-boolean v5, v6, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    .line 1463
    .restart local v5    # "isAlistAttribute":Z
    if-eqz v5, :cond_8

    .line 1464
    :try_start_3
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValIDRefs:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {v6, p2, v7}, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_3
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 1470
    :catch_2
    move-exception v2

    .line 1471
    .restart local v2    # "ex":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    if-eqz v5, :cond_9

    .line 1472
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1473
    const-string v8, "IDREFSInvalid"

    .line 1474
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    .line 1475
    const/4 v10, 0x1

    .line 1472
    invoke-virtual {v6, v7, v8, v9, v10}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_0

    .line 1467
    .end local v2    # "ex":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    :cond_8
    :try_start_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValIDRef:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {v6, p2, v7}, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_4
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1478
    .restart local v2    # "ex":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    :cond_9
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1479
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 1480
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v9

    .line 1481
    const/4 v10, 0x1

    .line 1478
    invoke-virtual {v6, v7, v8, v9, v10}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_0

    .line 1489
    .end local v2    # "ex":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    .end local v5    # "isAlistAttribute":Z
    :pswitch_4
    iget-object v6, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-boolean v5, v6, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    .line 1492
    .restart local v5    # "isAlistAttribute":Z
    if-eqz v5, :cond_a

    .line 1493
    :try_start_5
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValNMTOKENS:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {v6, p2, v7}, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_5
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 1499
    :catch_3
    move-exception v2

    .line 1500
    .restart local v2    # "ex":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    if-eqz v5, :cond_b

    .line 1501
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1502
    const-string v8, "NMTOKENSInvalid"

    .line 1503
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    .line 1504
    const/4 v10, 0x1

    .line 1501
    invoke-virtual {v6, v7, v8, v9, v10}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_0

    .line 1496
    .end local v2    # "ex":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    :cond_a
    :try_start_6
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValNMTOKEN:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {v6, p2, v7}, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_6
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 1507
    .restart local v2    # "ex":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    :cond_b
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1508
    const-string v8, "NMTOKENInvalid"

    .line 1509
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    .line 1510
    const/4 v10, 0x1

    .line 1507
    invoke-virtual {v6, v7, v8, v9, v10}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_0

    .line 1394
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
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
    .line 704
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    if-eqz p3, :cond_1

    const-string v0, "yes"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->setStandalone(Z)V

    .line 707
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 711
    :cond_0
    return-void

    .line 704
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
