.class public Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;
.super Ljava/lang/Object;
.source "XMLDTDProcessor.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;
.implements Lmf/org/apache/xerces/xni/parser/XMLDTDFilter;
.implements Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelFilter;


# static fields
.field protected static final DTD_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/dtd"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field protected static final GRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field protected static final NOTIFY_CHAR_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-char-refs"

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final TOP_LEVEL_SCOPE:I = -0x1

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final WARN_ON_DUPLICATE_ATTDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

.field protected static final WARN_ON_UNDECLARED_ELEMDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"


# instance fields
.field protected fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

.field protected fDTDContentModelSource:Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;

.field private fDTDElementDeclName:Ljava/lang/String;

.field private final fDTDElementDecls:Ljava/util/ArrayList;

.field protected fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

.field protected fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

.field protected fDTDSource:Lmf/org/apache/xerces/xni/parser/XMLDTDSource;

.field protected fDTDValidation:Z

.field private final fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

.field protected fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field protected fInDTDIgnore:Z

.field protected fLocale:Ljava/util/Locale;

.field private fMixed:Z

.field private final fMixedElementTypes:Ljava/util/ArrayList;

.field private final fNDataDeclNotations:Ljava/util/HashMap;

.field private fNotationEnumVals:Ljava/util/HashMap;

.field private fPerformValidation:Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private fTableOfIDAttributeNames:Ljava/util/HashMap;

.field private fTableOfNOTATIONAttributeNames:Ljava/util/HashMap;

.field protected fValidation:Z

.field protected fValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

.field protected fWarnDuplicateAttdef:Z

.field protected fWarnOnUndeclaredElemdef:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x4

    .line 127
    new-array v0, v2, [Ljava/lang/String;

    .line 128
    const-string v1, "http://xml.org/sax/features/validation"

    aput-object v1, v0, v5

    .line 129
    const-string v1, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    aput-object v1, v0, v3

    .line 130
    const-string v1, "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

    aput-object v1, v0, v4

    .line 131
    const-string v1, "http://apache.org/xml/features/scanner/notify-char-refs"

    aput-object v1, v0, v6

    .line 127
    sput-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    .line 135
    new-array v0, v2, [Ljava/lang/Boolean;

    .line 137
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v3

    .line 138
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v4

    .line 135
    sput-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    .line 143
    new-array v0, v2, [Ljava/lang/String;

    .line 144
    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v1, v0, v5

    .line 145
    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v1, v0, v3

    .line 146
    const-string v1, "http://apache.org/xml/properties/internal/grammar-pool"

    aput-object v1, v0, v4

    .line 147
    const-string v1, "http://apache.org/xml/properties/internal/validator/dtd"

    aput-object v1, v0, v6

    .line 143
    sput-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 151
    new-array v0, v2, [Ljava/lang/Object;

    sput-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    .line 156
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fNDataDeclNotations:Ljava/util/HashMap;

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDElementDeclName:Ljava/lang/String;

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fMixedElementTypes:Ljava/util/ArrayList;

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDElementDecls:Ljava/util/ArrayList;

    .line 272
    return-void
.end method

.method private checkDeclaredElements(Lmf/org/apache/xerces/impl/dtd/DTDGrammar;)V
    .locals 4
    .param p1, "grammar"    # Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    .prologue
    .line 1687
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getFirstElementDeclIndex()I

    move-result v1

    .line 1688
    .local v1, "elementIndex":I
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;-><init>()V

    .line 1689
    .local v0, "contentSpec":Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;
    :goto_0
    if-gez v1, :cond_0

    .line 1699
    return-void

    .line 1690
    :cond_0
    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpecType(I)S

    move-result v2

    .line 1691
    .local v2, "type":I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1694
    :cond_1
    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpecIndex(I)I

    move-result v3

    .line 1692
    invoke-direct {p0, p1, v1, v3, v0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->checkDeclaredElements(Lmf/org/apache/xerces/impl/dtd/DTDGrammar;IILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)V

    .line 1697
    :cond_2
    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getNextElementDeclIndex(I)I

    move-result v1

    goto :goto_0
.end method

.method private checkDeclaredElements(Lmf/org/apache/xerces/impl/dtd/DTDGrammar;IILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)V
    .locals 10
    .param p1, "grammar"    # Lmf/org/apache/xerces/impl/dtd/DTDGrammar;
    .param p2, "elementIndex"    # I
    .param p3, "contentSpecIndex"    # I
    .param p4, "contentSpec"    # Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1708
    invoke-virtual {p1, p3, p4}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    .line 1709
    iget-short v3, p4, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-nez v3, :cond_1

    .line 1710
    iget-object v2, p4, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1711
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDeclIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 1712
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1713
    const-string v5, "UndeclaredElementInContentSpec"

    .line 1714
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDeclName(I)Lmf/org/apache/xerces/xni/QName;

    move-result-object v7

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v8

    aput-object v2, v6, v9

    .line 1712
    invoke-virtual {v3, v4, v5, v6, v8}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 1734
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1720
    :cond_1
    iget-short v3, p4, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    .line 1721
    iget-short v3, p4, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 1722
    :cond_2
    iget-object v3, p4, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v3, [I

    aget v0, v3, v8

    .line 1723
    .local v0, "leftNode":I
    iget-object v3, p4, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v3, [I

    aget v1, v3, v8

    .line 1725
    .local v1, "rightNode":I
    invoke-direct {p0, p1, p2, v0, p4}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->checkDeclaredElements(Lmf/org/apache/xerces/impl/dtd/DTDGrammar;IILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)V

    .line 1726
    invoke-direct {p0, p1, p2, v1, p4}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->checkDeclaredElements(Lmf/org/apache/xerces/impl/dtd/DTDGrammar;IILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)V

    goto :goto_0

    .line 1728
    .end local v0    # "leftNode":I
    .end local v1    # "rightNode":I
    :cond_3
    iget-short v3, p4, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-eq v3, v6, :cond_4

    .line 1729
    iget-short v3, p4, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-eq v3, v9, :cond_4

    .line 1730
    iget-short v3, p4, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1731
    :cond_4
    iget-object v3, p4, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v3, [I

    aget v0, v3, v8

    .line 1732
    .restart local v0    # "leftNode":I
    invoke-direct {p0, p1, p2, v0, p4}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->checkDeclaredElements(Lmf/org/apache/xerces/impl/dtd/DTDGrammar;IILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)V

    goto :goto_0
.end method

.method protected static checkStandaloneEntityRef(Ljava/lang/String;Lmf/org/apache/xerces/impl/dtd/DTDGrammar;Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "grammar"    # Lmf/org/apache/xerces/impl/dtd/DTDGrammar;
    .param p2, "tempEntityDecl"    # Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;
    .param p3, "errorReporter"    # Lmf/org/apache/xerces/impl/XMLErrorReporter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 575
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result v0

    .line 576
    .local v0, "entIndex":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 577
    invoke-virtual {p1, v0, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getEntityDecl(ILmf/org/apache/xerces/impl/dtd/XMLEntityDecl;)Z

    .line 578
    iget-boolean v1, p2, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->inExternal:Z

    if-eqz v1, :cond_0

    .line 579
    const-string v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 580
    const-string v2, "MSG_REFERENCE_TO_EXTERNALLY_DECLARED_ENTITY_WHEN_STANDALONE"

    .line 581
    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 579
    invoke-virtual {p3, v1, v2, v3, v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 584
    :cond_0
    return-void
.end method

.method private normalizeDefaultAttrValue(Lmf/org/apache/xerces/xni/XMLString;)Z
    .locals 8
    .param p1, "value"    # Lmf/org/apache/xerces/xni/XMLString;

    .prologue
    const/16 v7, 0x20

    .line 1638
    const/4 v4, 0x1

    .line 1639
    .local v4, "skipSpace":Z
    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .line 1640
    .local v0, "current":I
    iget v5, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v6, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int v2, v5, v6

    .line 1641
    .local v2, "end":I
    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .local v3, "i":I
    move v1, v0

    .end local v0    # "current":I
    .local v1, "current":I
    :goto_0
    if-lt v3, v2, :cond_0

    .line 1661
    if-eq v1, v2, :cond_3

    .line 1662
    if-eqz v4, :cond_4

    .line 1664
    add-int/lit8 v0, v1, -0x1

    .line 1667
    .end local v1    # "current":I
    .restart local v0    # "current":I
    :goto_1
    iget v5, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    sub-int v5, v0, v5

    iput v5, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    .line 1668
    const/4 v5, 0x1

    .line 1670
    :goto_2
    return v5

    .line 1642
    .end local v0    # "current":I
    .restart local v1    # "current":I
    :cond_0
    iget-object v5, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v5, v5, v3

    if-ne v5, v7, :cond_1

    .line 1643
    if-nez v4, :cond_5

    .line 1645
    iget-object v5, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "current":I
    .restart local v0    # "current":I
    aput-char v7, v5, v1

    .line 1646
    const/4 v4, 0x1

    .line 1641
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    .end local v0    # "current":I
    .restart local v1    # "current":I
    goto :goto_0

    .line 1654
    :cond_1
    if-eq v1, v3, :cond_2

    .line 1655
    iget-object v5, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v6, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v6, v6, v3

    aput-char v6, v5, v1

    .line 1657
    :cond_2
    add-int/lit8 v0, v1, 0x1

    .line 1658
    .end local v1    # "current":I
    .restart local v0    # "current":I
    const/4 v4, 0x0

    goto :goto_3

    .line 1670
    .end local v0    # "current":I
    .restart local v1    # "current":I
    :cond_3
    const/4 v5, 0x0

    move v0, v1

    .end local v1    # "current":I
    .restart local v0    # "current":I
    goto :goto_2

    .end local v0    # "current":I
    .restart local v1    # "current":I
    :cond_4
    move v0, v1

    .end local v1    # "current":I
    .restart local v0    # "current":I
    goto :goto_1

    .end local v0    # "current":I
    .restart local v1    # "current":I
    :cond_5
    move v0, v1

    .end local v1    # "current":I
    .restart local v0    # "current":I
    goto :goto_3
.end method


# virtual methods
.method public any(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1429
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    .line 1430
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->any(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1431
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_1

    .line 1432
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->any(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1434
    :cond_1
    return-void
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 22
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "attributeName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "enumeration"    # [Ljava/lang/String;
    .param p5, "defaultType"    # Ljava/lang/String;
    .param p6, "defaultValue"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p7, "nonNormalizedDefaultValue"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p8, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 858
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    move-object/from16 v0, p3

    if-eq v0, v2, :cond_0

    if-eqz p6, :cond_0

    .line 859
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->normalizeDefaultAttrValue(Lmf/org/apache/xerces/xni/XMLString;)Z

    .line 862
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fValidation:Z

    if-eqz v2, :cond_c

    .line 864
    const/4 v11, 0x0

    .line 867
    .local v11, "duplicateAttributeDef":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    .line 868
    .local v13, "grammar":Lmf/org/apache/xerces/impl/dtd/DTDGrammar;
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDeclIndex(Ljava/lang/String;)I

    move-result v12

    .line 869
    .local v12, "elementIndex":I
    move-object/from16 v0, p2

    invoke-virtual {v13, v12, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDeclIndex(ILjava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 871
    const/4 v11, 0x1

    .line 874
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fWarnDuplicateAttdef:Z

    if-eqz v2, :cond_1

    .line 875
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 876
    const-string v4, "MSG_DUPLICATE_ATTRIBUTE_DEFINITION"

    .line 877
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    .line 878
    const/4 v6, 0x0

    .line 875
    invoke-virtual {v2, v3, v4, v5, v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 887
    :cond_1
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fIDSymbol:Ljava/lang/String;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_4

    .line 888
    if-eqz p6, :cond_3

    move-object/from16 v0, p6

    iget v2, v0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-eqz v2, :cond_3

    .line 889
    if-eqz p5, :cond_2

    .line 890
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fIMPLIEDSymbol:Ljava/lang/String;

    move-object/from16 v0, p5

    if-eq v0, v2, :cond_3

    .line 891
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fREQUIREDSymbol:Ljava/lang/String;

    move-object/from16 v0, p5

    if-eq v0, v2, :cond_3

    .line 892
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 893
    const-string v4, "IDDefaultTypeInvalid"

    .line 894
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    .line 895
    const/4 v6, 0x1

    .line 892
    invoke-virtual {v2, v3, v4, v5, v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 899
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fTableOfIDAttributeNames:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 900
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fTableOfIDAttributeNames:Ljava/util/HashMap;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    :cond_4
    :goto_1
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_5

    .line 932
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    move-object/from16 v0, p4

    array-length v2, v0

    if-lt v14, v2, :cond_11

    .line 936
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fTableOfNOTATIONAttributeNames:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fTableOfNOTATIONAttributeNames:Ljava/util/HashMap;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    .end local v14    # "i":I
    :cond_5
    :goto_3
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fENUMERATIONSymbol:Ljava/lang/String;

    move-object/from16 v0, p3

    if-eq v0, v2, :cond_6

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_7

    .line 962
    :cond_6
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_4
    move-object/from16 v0, p4

    array-length v2, v0

    if-lt v14, v2, :cond_13

    .line 981
    .end local v14    # "i":I
    :cond_7
    :goto_5
    const/16 v17, 0x1

    .line 982
    .local v17, "ok":Z
    if-eqz p6, :cond_c

    .line 983
    if-eqz p5, :cond_8

    .line 984
    if-eqz p5, :cond_c

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fFIXEDSymbol:Ljava/lang/String;

    move-object/from16 v0, p5

    if-ne v0, v2, :cond_c

    .line 986
    :cond_8
    invoke-virtual/range {p6 .. p6}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v21

    .line 987
    .local v21, "value":Ljava/lang/String;
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fNMTOKENSSymbol:Ljava/lang/String;

    move-object/from16 v0, p3

    if-eq v0, v2, :cond_9

    .line 988
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fENTITIESSymbol:Ljava/lang/String;

    move-object/from16 v0, p3

    if-eq v0, v2, :cond_9

    .line 989
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fIDREFSSymbol:Ljava/lang/String;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_1a

    .line 991
    :cond_9
    new-instance v20, Ljava/util/StringTokenizer;

    const-string v2, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    .local v20, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual/range {v20 .. v20}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 994
    :cond_a
    invoke-virtual/range {v20 .. v20}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    .line 995
    .local v16, "nmtoken":Ljava/lang/String;
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fNMTOKENSSymbol:Ljava/lang/String;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_17

    .line 996
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->isValidNmtoken(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 997
    const/16 v17, 0x0

    .line 1045
    .end local v16    # "nmtoken":Ljava/lang/String;
    .end local v20    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_b
    :goto_6
    if-nez v17, :cond_c

    .line 1046
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1047
    const-string v4, "MSG_ATT_DEFAULT_INVALID"

    .line 1048
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object v21, v5, v6

    .line 1049
    const/4 v6, 0x1

    .line 1046
    invoke-virtual {v2, v3, v4, v5, v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 1055
    .end local v11    # "duplicateAttributeDef":Z
    .end local v12    # "elementIndex":I
    .end local v13    # "grammar":Lmf/org/apache/xerces/impl/dtd/DTDGrammar;
    .end local v17    # "ok":Z
    .end local v21    # "value":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v2, :cond_d

    .line 1056
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1059
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_e

    .line 1060
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1065
    :cond_e
    return-void

    .line 867
    .restart local v11    # "duplicateAttributeDef":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getActiveGrammar()Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-result-object v13

    goto/16 :goto_0

    .line 915
    .restart local v12    # "elementIndex":I
    .restart local v13    # "grammar":Lmf/org/apache/xerces/impl/dtd/DTDGrammar;
    :cond_10
    if-nez v11, :cond_4

    .line 916
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fTableOfIDAttributeNames:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 917
    .local v18, "previousIDAttributeName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 918
    const-string v4, "MSG_MORE_THAN_ONE_ID_ATTRIBUTE"

    .line 919
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object v18, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    .line 920
    const/4 v6, 0x1

    .line 917
    invoke-virtual {v2, v3, v4, v5, v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_1

    .line 933
    .end local v18    # "previousIDAttributeName":Ljava/lang/String;
    .restart local v14    # "i":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fNotationEnumVals:Ljava/util/HashMap;

    aget-object v3, p4, v14

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 947
    :cond_12
    if-nez v11, :cond_5

    .line 949
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fTableOfNOTATIONAttributeNames:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 950
    .local v19, "previousNOTATIONAttributeName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 951
    const-string v4, "MSG_MORE_THAN_ONE_NOTATION_ATTRIBUTE"

    .line 952
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object v19, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    .line 953
    const/4 v6, 0x1

    .line 950
    invoke-virtual {v2, v3, v4, v5, v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_3

    .line 963
    .end local v19    # "previousNOTATIONAttributeName":Ljava/lang/String;
    :cond_13
    add-int/lit8 v15, v14, 0x1

    .local v15, "j":I
    :goto_7
    move-object/from16 v0, p4

    array-length v2, v0

    if-lt v15, v2, :cond_14

    .line 962
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 964
    :cond_14
    aget-object v2, p4, v14

    aget-object v3, p4, v15

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 968
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 969
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fENUMERATIONSymbol:Ljava/lang/String;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_15

    .line 970
    const-string v2, "MSG_DISTINCT_TOKENS_IN_ENUMERATION"

    .line 972
    :goto_8
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aget-object v7, p4, v14

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    .line 973
    const/4 v6, 0x1

    .line 968
    invoke-virtual {v3, v4, v2, v5, v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_5

    .line 971
    :cond_15
    const-string v2, "MSG_DISTINCT_NOTATION_IN_ENUMERATION"

    goto :goto_8

    .line 963
    :cond_16
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 1001
    .end local v14    # "i":I
    .end local v15    # "j":I
    .restart local v16    # "nmtoken":Ljava/lang/String;
    .restart local v17    # "ok":Z
    .restart local v20    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v21    # "value":Ljava/lang/String;
    :cond_17
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fENTITIESSymbol:Ljava/lang/String;

    move-object/from16 v0, p3

    if-eq v0, v2, :cond_18

    .line 1002
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fIDREFSSymbol:Ljava/lang/String;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_19

    .line 1003
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->isValidName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 1004
    const/16 v17, 0x0

    .line 1005
    goto/16 :goto_6

    .line 1008
    :cond_19
    invoke-virtual/range {v20 .. v20}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_6

    .line 1016
    .end local v16    # "nmtoken":Ljava/lang/String;
    .end local v20    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_1a
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fENTITYSymbol:Ljava/lang/String;

    move-object/from16 v0, p3

    if-eq v0, v2, :cond_1b

    .line 1017
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fIDSymbol:Ljava/lang/String;

    move-object/from16 v0, p3

    if-eq v0, v2, :cond_1b

    .line 1018
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fIDREFSymbol:Ljava/lang/String;

    move-object/from16 v0, p3

    if-eq v0, v2, :cond_1b

    .line 1019
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_1f

    .line 1021
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->isValidName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1022
    const/16 v17, 0x0

    .line 1034
    :cond_1c
    :goto_9
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    move-object/from16 v0, p3

    if-eq v0, v2, :cond_1d

    .line 1035
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fENUMERATIONSymbol:Ljava/lang/String;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_b

    .line 1036
    :cond_1d
    const/16 v17, 0x0

    .line 1037
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_a
    move-object/from16 v0, p4

    array-length v2, v0

    if-ge v14, v2, :cond_b

    .line 1038
    aget-object v2, p4, v14

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/xni/XMLString;->equals(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1039
    const/16 v17, 0x1

    .line 1037
    :cond_1e
    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    .line 1026
    .end local v14    # "i":I
    :cond_1f
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fNMTOKENSymbol:Ljava/lang/String;

    move-object/from16 v0, p3

    if-eq v0, v2, :cond_20

    .line 1027
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fENUMERATIONSymbol:Ljava/lang/String;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_1c

    .line 1029
    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->isValidNmtoken(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1030
    const/16 v17, 0x0

    goto :goto_9
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
    .line 597
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 599
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 603
    :cond_1
    return-void
.end method

.method public element(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1514
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fMixed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fValidation:Z

    if-eqz v0, :cond_0

    .line 1515
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fMixedElementTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1516
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1517
    const-string v2, "DuplicateTypeInMixedContent"

    .line 1518
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDElementDeclName:Ljava/lang/String;

    aput-object v5, v3, v4

    aput-object p1, v3, v6

    .line 1516
    invoke-virtual {v0, v1, v2, v3, v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 1527
    :cond_0
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_1

    .line 1528
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->element(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1529
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_2

    .line 1530
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->element(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1533
    :cond_2
    return-void

    .line 1522
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fMixedElementTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "contentModel"    # Ljava/lang/String;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 785
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fValidation:Z

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDElementDecls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 787
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 788
    const-string v2, "MSG_ELEMENT_ALREADY_DECLARED"

    .line 789
    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 787
    invoke-virtual {v0, v1, v2, v3, v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 798
    :cond_0
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_1

    .line 799
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->elementDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 800
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_2

    .line 801
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 804
    :cond_2
    return-void

    .line 793
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDElementDecls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public empty(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1448
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    .line 1449
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->empty(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1450
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_1

    .line 1451
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->empty(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1453
    :cond_1
    return-void
.end method

.method public endAttlist(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1078
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->endAttlist(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1080
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_1

    .line 1081
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endAttlist(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1084
    :cond_1
    return-void
.end method

.method public endConditional(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fInDTDIgnore:Z

    .line 1274
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    .line 1275
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->endConditional(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1276
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_1

    .line 1277
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endConditional(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1280
    :cond_1
    return-void
.end method

.method public endContentModel(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1617
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    .line 1618
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->endContentModel(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1619
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_1

    .line 1620
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->endContentModel(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1623
    :cond_1
    return-void
.end method

.method public endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 16
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1294
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v11, :cond_0

    .line 1295
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1296
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v11, :cond_0

    .line 1297
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    const-string v12, "http://www.w3.org/TR/REC-xml"

    const/4 v13, 0x1

    new-array v13, v13, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    aput-object v15, v13, v14

    invoke-interface {v11, v12, v13}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    .line 1299
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fValidation:Z

    if-eqz v11, :cond_4

    .line 1300
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    .line 1303
    .local v8, "grammar":Lmf/org/apache/xerces/impl/dtd/DTDGrammar;
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fNDataDeclNotations:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1304
    .local v5, "entities":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_7

    .line 1318
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fNotationEnumVals:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1319
    .local v10, "notationVals":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_8

    .line 1333
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fTableOfNOTATIONAttributeNames:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1334
    .local v4, "elementsWithNotations":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_9

    .line 1348
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fTableOfIDAttributeNames:Ljava/util/HashMap;

    .line 1349
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fTableOfNOTATIONAttributeNames:Ljava/util/HashMap;

    .line 1352
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fWarnOnUndeclaredElemdef:Z

    if-eqz v11, :cond_4

    .line 1353
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->checkDeclaredElements(Lmf/org/apache/xerces/impl/dtd/DTDGrammar;)V

    .line 1358
    .end local v4    # "elementsWithNotations":Ljava/util/Iterator;
    .end local v5    # "entities":Ljava/util/Iterator;
    .end local v8    # "grammar":Lmf/org/apache/xerces/impl/dtd/DTDGrammar;
    .end local v10    # "notationVals":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v11, :cond_5

    .line 1359
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1362
    :cond_5
    return-void

    .line 1300
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getActiveGrammar()Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-result-object v8

    goto :goto_0

    .line 1305
    .restart local v5    # "entities":Ljava/util/Iterator;
    .restart local v8    # "grammar":Lmf/org/apache/xerces/impl/dtd/DTDGrammar;
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1306
    .local v7, "entry":Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1307
    .local v9, "notation":Ljava/lang/String;
    invoke-virtual {v8, v9}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getNotationDeclIndex(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    .line 1308
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1309
    .local v6, "entity":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v12, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1310
    const-string v13, "MSG_NOTATION_NOT_DECLARED_FOR_UNPARSED_ENTITYDECL"

    .line 1311
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    const/4 v15, 0x1

    aput-object v9, v14, v15

    .line 1312
    const/4 v15, 0x1

    .line 1309
    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_1

    .line 1320
    .end local v6    # "entity":Ljava/lang/String;
    .end local v7    # "entry":Ljava/util/Map$Entry;
    .end local v9    # "notation":Ljava/lang/String;
    .restart local v10    # "notationVals":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1321
    .restart local v7    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1322
    .restart local v9    # "notation":Ljava/lang/String;
    invoke-virtual {v8, v9}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getNotationDeclIndex(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_2

    .line 1323
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1324
    .local v1, "attributeName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v12, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1325
    const-string v13, "MSG_NOTATION_NOT_DECLARED_FOR_NOTATIONTYPE_ATTRIBUTE"

    .line 1326
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v1, v14, v15

    const/4 v15, 0x1

    aput-object v9, v14, v15

    .line 1327
    const/4 v15, 0x1

    .line 1324
    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_2

    .line 1335
    .end local v1    # "attributeName":Ljava/lang/String;
    .end local v7    # "entry":Ljava/util/Map$Entry;
    .end local v9    # "notation":Ljava/lang/String;
    .restart local v4    # "elementsWithNotations":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1336
    .restart local v7    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1337
    .local v3, "elementName":Ljava/lang/String;
    invoke-virtual {v8, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDeclIndex(Ljava/lang/String;)I

    move-result v2

    .line 1338
    .local v2, "elementIndex":I
    invoke-virtual {v8, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpecType(I)S

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 1339
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1340
    .restart local v1    # "attributeName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v12, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1341
    const-string v13, "NoNotationOnEmptyElement"

    .line 1342
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    const/4 v15, 0x1

    aput-object v1, v14, v15

    .line 1343
    const/4 v15, 0x1

    .line 1340
    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_3
.end method

.method public endExternalSubset(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 554
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->endExternalSubset(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 556
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endExternalSubset(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 559
    :cond_1
    return-void
.end method

.method public endGroup(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1598
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    .line 1599
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->endGroup(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1600
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_1

    .line 1601
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->endGroup(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1604
    :cond_1
    return-void
.end method

.method public endParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 764
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->endParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 766
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_1

    .line 767
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 769
    :cond_1
    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1146
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    .line 1147
    .local v0, "grammar":Lmf/org/apache/xerces/impl/dtd/DTDGrammar;
    :goto_0
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result v1

    .line 1157
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1159
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v2, :cond_0

    .line 1160
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v2, p1, p2, p3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->externalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1162
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_1

    .line 1163
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v2, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->externalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1167
    :cond_1
    return-void

    .line 1146
    .end local v0    # "grammar":Lmf/org/apache/xerces/impl/dtd/DTDGrammar;
    .end local v1    # "index":I
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getActiveGrammar()Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-result-object v0

    goto :goto_0
.end method

.method public getDTDContentModelHandler()Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    return-object v0
.end method

.method public getDTDContentModelSource()Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;
    .locals 1

    .prologue
    .line 1385
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelSource:Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;

    return-object v0
.end method

.method public getDTDHandler()Lmf/org/apache/xerces/xni/XMLDTDHandler;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    return-object v0
.end method

.method public getDTDSource()Lmf/org/apache/xerces/xni/parser/XMLDTDSource;
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDSource:Lmf/org/apache/xerces/xni/parser/XMLDTDSource;

    return-object v0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "featureId"    # Ljava/lang/String;

    .prologue
    .line 454
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 459
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 455
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 456
    sget-object v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object v1, v1, v0

    goto :goto_1

    .line 454
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "propertyId"    # Ljava/lang/String;

    .prologue
    .line 472
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 477
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 473
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 474
    sget-object v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_1

    .line 472
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    sget-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    sget-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public ignoredCharacters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 688
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->ignoredCharacters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 690
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_1

    .line 691
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->ignoredCharacters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 693
    :cond_1
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p3, "nonNormalizedText"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1106
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    .line 1107
    .local v0, "grammar":Lmf/org/apache/xerces/impl/dtd/DTDGrammar;
    :goto_0
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result v1

    .line 1117
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1119
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v2, :cond_0

    .line 1120
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v2, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->internalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1122
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_1

    .line 1123
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v2, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->internalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1127
    :cond_1
    return-void

    .line 1106
    .end local v0    # "grammar":Lmf/org/apache/xerces/impl/dtd/DTDGrammar;
    .end local v1    # "index":I
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getActiveGrammar()Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-result-object v0

    goto :goto_0
.end method

.method protected isValidName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1678
    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isValidNmtoken(Ljava/lang/String;)Z
    .locals 1
    .param p1, "nmtoken"    # Ljava/lang/String;

    .prologue
    .line 1674
    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isValidNmtoken(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public notationDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1214
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fValidation:Z

    if-eqz v1, :cond_0

    .line 1215
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    .line 1216
    .local v0, "grammar":Lmf/org/apache/xerces/impl/dtd/DTDGrammar;
    :goto_0
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getNotationDeclIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1217
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1218
    const-string v3, "UniqueNotationName"

    .line 1219
    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 1217
    invoke-virtual {v1, v2, v3, v4, v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 1225
    .end local v0    # "grammar":Lmf/org/apache/xerces/impl/dtd/DTDGrammar;
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v1, :cond_1

    .line 1226
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v1, p1, p2, p3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->notationDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1227
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_2

    .line 1228
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v1, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->notationDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1231
    :cond_2
    return-void

    .line 1215
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getActiveGrammar()Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-result-object v0

    goto :goto_0
.end method

.method public occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "occurrence"    # S
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1579
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    .line 1580
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V

    .line 1581
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_1

    .line 1582
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V

    .line 1585
    :cond_1
    return-void
.end method

.method public pcdata(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;

    .prologue
    .line 1494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fMixed:Z

    .line 1495
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    .line 1496
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->pcdata(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1497
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_1

    .line 1498
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->pcdata(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1500
    :cond_1
    return-void
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
    .line 627
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 629
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_1

    .line 630
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 632
    :cond_1
    return-void
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fInDTDIgnore:Z

    .line 373
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fNDataDeclNotations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 376
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fValidation:Z

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fNotationEnumVals:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 379
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fNotationEnumVals:Ljava/util/HashMap;

    .line 381
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fNotationEnumVals:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 383
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fTableOfIDAttributeNames:Ljava/util/HashMap;

    .line 384
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fTableOfNOTATIONAttributeNames:Ljava/util/HashMap;

    .line 387
    :cond_1
    return-void
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 6
    .param p1, "componentManager"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 296
    :try_start_0
    const-string v2, "http://apache.org/xml/features/internal/parser-settings"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 301
    .local v1, "parser_settings":Z
    :goto_0
    if-nez v1, :cond_0

    .line 303
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->reset()V

    .line 365
    :goto_1
    return-void

    .line 297
    .end local v1    # "parser_settings":Z
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    const/4 v1, 0x1

    .restart local v1    # "parser_settings":Z
    goto :goto_0

    .line 309
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :cond_0
    :try_start_1
    const-string v2, "http://xml.org/sax/features/validation"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fValidation:Z
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 317
    :goto_2
    :try_start_2
    const-string v2, "http://apache.org/xml/features/validation/schema"

    .line 316
    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    .line 317
    if-eqz v2, :cond_1

    move v2, v3

    .line 314
    :goto_3
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDValidation:Z
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 326
    :goto_4
    :try_start_3
    const-string v2, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fWarnDuplicateAttdef:Z
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    .line 332
    :goto_5
    :try_start_4
    const-string v2, "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fWarnOnUndeclaredElemdef:Z
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    .line 341
    :goto_6
    const-string v2, "http://apache.org/xml/properties/internal/error-reporter"

    .line 340
    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 339
    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 344
    const-string v2, "http://apache.org/xml/properties/internal/symbol-table"

    .line 343
    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/util/SymbolTable;

    .line 342
    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 346
    :try_start_5
    const-string v2, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_5

    .line 351
    :goto_7
    :try_start_6
    const-string v2, "http://apache.org/xml/properties/internal/validator/dtd"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;
    :try_end_6
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_7

    .line 358
    :goto_8
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    if-eqz v2, :cond_2

    .line 359
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->getGrammarBucket()Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    .line 363
    :goto_9
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->reset()V

    goto :goto_1

    .line 310
    :catch_1
    move-exception v0

    .line 311
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fValidation:Z

    goto :goto_2

    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :cond_1
    move v2, v4

    .line 315
    goto :goto_3

    .line 318
    :catch_2
    move-exception v0

    .line 320
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDValidation:Z

    goto :goto_4

    .line 328
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_3
    move-exception v0

    .line 329
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fWarnDuplicateAttdef:Z

    goto :goto_5

    .line 334
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_4
    move-exception v0

    .line 335
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fWarnOnUndeclaredElemdef:Z

    goto :goto_6

    .line 347
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_5
    move-exception v0

    .line 348
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    goto :goto_7

    .line 352
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_6
    move-exception v0

    .line 353
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    goto :goto_8

    .line 354
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_7
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/ClassCastException;
    iput-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    goto :goto_8

    .line 361
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_2
    iput-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    goto :goto_9
.end method

.method public separator(SLmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "separator"    # S
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1552
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    .line 1553
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->separator(SLmf/org/apache/xerces/xni/Augmentations;)V

    .line 1554
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_1

    .line 1555
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->separator(SLmf/org/apache/xerces/xni/Augmentations;)V

    .line 1558
    :cond_1
    return-void
.end method

.method public setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V
    .locals 0
    .param p1, "dtdContentModelHandler"    # Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    .prologue
    .line 512
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    .line 513
    return-void
.end method

.method public setDTDContentModelSource(Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;)V
    .locals 0
    .param p1, "source"    # Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;

    .prologue
    .line 1380
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelSource:Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;

    .line 1381
    return-void
.end method

.method public setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V
    .locals 0
    .param p1, "dtdHandler"    # Lmf/org/apache/xerces/xni/XMLDTDHandler;

    .prologue
    .line 490
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    .line 491
    return-void
.end method

.method public setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V
    .locals 0
    .param p1, "source"    # Lmf/org/apache/xerces/xni/parser/XMLDTDSource;

    .prologue
    .line 1366
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDSource:Lmf/org/apache/xerces/xni/parser/XMLDTDSource;

    .line 1367
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
    .line 414
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
    .line 442
    return-void
.end method

.method public startAttlist(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 820
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->startAttlist(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 822
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_1

    .line 823
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startAttlist(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 826
    :cond_1
    return-void
.end method

.method public startConditional(SLmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "type"    # S
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1249
    if-ne p1, v0, :cond_2

    :goto_0
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fInDTDIgnore:Z

    .line 1252
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    .line 1253
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->startConditional(SLmf/org/apache/xerces/xni/Augmentations;)V

    .line 1254
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_1

    .line 1255
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startConditional(SLmf/org/apache/xerces/xni/Augmentations;)V

    .line 1258
    :cond_1
    return-void

    .line 1249
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startContentModel(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1403
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fValidation:Z

    if-eqz v0, :cond_0

    .line 1404
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDElementDeclName:Ljava/lang/String;

    .line 1405
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fMixedElementTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1409
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_1

    .line 1410
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->startContentModel(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1411
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_2

    .line 1412
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->startContentModel(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1415
    :cond_2
    return-void
.end method

.method public startDTD(Lmf/org/apache/xerces/xni/XMLLocator;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "locator"    # Lmf/org/apache/xerces/xni/XMLLocator;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 656
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fNDataDeclNotations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 657
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDElementDecls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 663
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getActiveGrammar()Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 664
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getActiveGrammar()Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    .line 668
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_1

    .line 669
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->startDTD(Lmf/org/apache/xerces/xni/XMLLocator;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 670
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_2

    .line 671
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startDTD(Lmf/org/apache/xerces/xni/XMLLocator;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 674
    :cond_2
    return-void
.end method

.method public startExternalSubset(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 538
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->startExternalSubset(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 540
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startExternalSubset(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 543
    :cond_1
    return-void
.end method

.method public startGroup(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1471
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fMixed:Z

    .line 1473
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    .line 1474
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->startGroup(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1475
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_1

    .line 1476
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->startGroup(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1479
    :cond_1
    return-void
.end method

.method public startParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
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
    .line 739
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fPerformValidation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getStandalone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {p1, v0, v1, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->checkStandaloneEntityRef(Ljava/lang/String;Lmf/org/apache/xerces/impl/dtd/DTDGrammar;Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    .line 744
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_1

    .line 745
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->startParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 746
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_2

    .line 747
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 749
    :cond_2
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
    .line 712
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 714
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_1

    .line 715
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 717
    :cond_1
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "notation"    # Ljava/lang/String;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1186
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fValidation:Z

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fNDataDeclNotations:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_1

    .line 1192
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->unparsedEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1193
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_2

    .line 1194
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->unparsedEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1197
    :cond_2
    return-void
.end method
