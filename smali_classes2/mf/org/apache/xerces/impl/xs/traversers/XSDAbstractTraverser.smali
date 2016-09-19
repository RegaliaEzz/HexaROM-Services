.class abstract Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;
.super Ljava/lang/Object;
.source "XSDAbstractTraverser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;
    }
.end annotation


# static fields
.field protected static final CHILD_OF_GROUP:I = 0x4

.field protected static final GROUP_REF_WITH_ALL:I = 0x2

.field protected static final NOT_ALL_CONTEXT:I = 0x0

.field protected static final NO_NAME:Ljava/lang/String; = "(no name)"

.field protected static final PROCESSING_ALL_EL:I = 0x1

.field protected static final PROCESSING_ALL_GP:I = 0x8

.field private static final fQNameDV:Lmf/org/apache/xerces/impl/dv/XSSimpleType;


# instance fields
.field protected fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

.field private fPattern:Ljava/lang/StringBuffer;

.field protected fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field protected fValidateAnnotations:Z

.field fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

.field private final xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 257
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const-string v1, "QName"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fQNameDV:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    return-void
.end method

.method constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 1
    .param p1, "handler"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;
    .param p2, "attrChecker"    # Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    .line 81
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 82
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fValidateAnnotations:Z

    .line 86
    new-instance v0, Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/validation/ValidationState;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    .line 259
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    .line 260
    new-instance v0, Lmf/org/apache/xerces/impl/dv/XSFacets;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/XSFacets;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    .line 90
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    .line 91
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    .line 92
    return-void
.end method

.method private containsQName(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)Z
    .locals 7
    .param p1, "type"    # Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 577
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v3

    if-ne v3, v5, :cond_1

    .line 578
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getPrimitiveKind()S

    move-result v2

    .line 579
    .local v2, "primitive":S
    const/16 v3, 0x12

    if-eq v2, v3, :cond_0

    .line 580
    const/16 v3, 0x14

    if-eq v2, v3, :cond_0

    move v3, v4

    .line 592
    .end local v2    # "primitive":S
    :goto_0
    return v3

    .restart local v2    # "primitive":S
    :cond_0
    move v3, v5

    .line 579
    goto :goto_0

    .line 582
    .end local v2    # "primitive":S
    :cond_1
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    .line 583
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getItemType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->containsQName(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)Z

    move-result v3

    goto :goto_0

    .line 585
    :cond_2
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_3

    .line 586
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v1

    .line 587
    .local v1, "members":Lmf/org/apache/xerces/xs/XSObjectList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v3

    if-lt v0, v3, :cond_4

    .end local v0    # "i":I
    .end local v1    # "members":Lmf/org/apache/xerces/xs/XSObjectList;
    :cond_3
    move v3, v4

    .line 592
    goto :goto_0

    .line 588
    .restart local v0    # "i":I
    .restart local v1    # "members":Lmf/org/apache/xerces/xs/XSObjectList;
    :cond_4
    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->containsQName(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v5

    .line 589
    goto :goto_0

    .line 587
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static escapeAttValue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "original"    # Ljava/lang/String;
    .param p1, "from"    # I

    .prologue
    .line 819
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 820
    .local v2, "length":I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 821
    .local v3, "newVal":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 822
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 849
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 823
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 824
    .local v0, "currChar":C
    const/16 v4, 0x22

    if-ne v0, v4, :cond_1

    .line 825
    const-string v4, "&quot;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 822
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 827
    :cond_1
    const/16 v4, 0x3c

    if-ne v0, v4, :cond_2

    .line 828
    const-string v4, "&lt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 830
    :cond_2
    const/16 v4, 0x26

    if-ne v0, v4, :cond_3

    .line 831
    const-string v4, "&amp;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 836
    :cond_3
    const/16 v4, 0x9

    if-ne v0, v4, :cond_4

    .line 837
    const-string v4, "&#x9;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 839
    :cond_4
    const/16 v4, 0xa

    if-ne v0, v4, :cond_5

    .line 840
    const-string v4, "&#xA;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 842
    :cond_5
    const/16 v4, 0xd

    if-ne v0, v4, :cond_6

    .line 843
    const-string v4, "&#xD;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 846
    :cond_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static processAttValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "original"    # Ljava/lang/String;

    .prologue
    .line 804
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 806
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 813
    .end local p0    # "original":Ljava/lang/String;
    :goto_1
    return-object p0

    .line 807
    .restart local p0    # "original":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 808
    .local v0, "currChar":C
    const/16 v3, 0x22

    if-eq v0, v3, :cond_1

    const/16 v3, 0x3c

    if-eq v0, v3, :cond_1

    const/16 v3, 0x26

    if-eq v0, v3, :cond_1

    .line 809
    const/16 v3, 0x9

    if-eq v0, v3, :cond_1

    const/16 v3, 0xa

    if-eq v0, v3, :cond_1

    const/16 v3, 0xd

    if-ne v0, v3, :cond_2

    .line 810
    :cond_1
    invoke-static {p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->escapeAttValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 806
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method checkNotationType(Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/w3c/dom/Element;)V
    .locals 5
    .param p1, "refName"    # Ljava/lang/String;
    .param p2, "typeDecl"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .param p3, "elem"    # Lmf/org/w3c/dom/Element;

    .prologue
    const/4 v4, 0x1

    .line 727
    invoke-interface {p2}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    move-object v0, p2

    .line 728
    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v0

    if-ne v0, v4, :cond_0

    move-object v0, p2

    .line 729
    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getPrimitiveKind()S

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    move-object v0, p2

    .line 730
    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getDefinedFacets()S

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_0

    .line 731
    const-string v0, "enumeration-required-notation"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p2}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object p1, v1, v4

    const/4 v2, 0x2

    invoke-static {p3}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 734
    :cond_0
    return-void
.end method

.method protected checkOccurrences(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Ljava/lang/String;Lmf/org/w3c/dom/Element;IJ)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 17
    .param p1, "particle"    # Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .param p2, "particleName"    # Ljava/lang/String;
    .param p3, "parent"    # Lmf/org/w3c/dom/Element;
    .param p4, "allContextFlags"    # I
    .param p5, "defaultVals"    # J

    .prologue
    .line 742
    move-object/from16 v0, p1

    iget v8, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    .line 743
    .local v8, "min":I
    move-object/from16 v0, p1

    iget v7, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    .line 744
    .local v7, "max":I
    const/4 v11, 0x1

    sget v12, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    shl-int/2addr v11, v12

    int-to-long v12, v11

    and-long v12, v12, p5

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_2

    const/4 v4, 0x1

    .line 745
    .local v4, "defaultMin":Z
    :goto_0
    const/4 v11, 0x1

    sget v12, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    shl-int/2addr v11, v12

    int-to-long v12, v11

    and-long v12, v12, p5

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_3

    const/4 v3, 0x1

    .line 747
    .local v3, "defaultMax":Z
    :goto_1
    and-int/lit8 v11, p4, 0x1

    if-eqz v11, :cond_4

    const/4 v9, 0x1

    .line 748
    .local v9, "processingAllEl":Z
    :goto_2
    and-int/lit8 v11, p4, 0x8

    if-eqz v11, :cond_5

    const/4 v10, 0x1

    .line 749
    .local v10, "processingAllGP":Z
    :goto_3
    and-int/lit8 v11, p4, 0x2

    if-eqz v11, :cond_6

    const/4 v5, 0x1

    .line 750
    .local v5, "groupRefWithAll":Z
    :goto_4
    and-int/lit8 v11, p4, 0x4

    if-eqz v11, :cond_7

    const/4 v6, 0x1

    .line 754
    .local v6, "isGroupChild":Z
    :goto_5
    if-eqz v6, :cond_1

    .line 755
    if-nez v4, :cond_0

    .line 756
    const/4 v11, 0x2

    new-array v2, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p2, v2, v11

    const/4 v11, 0x1

    const-string v12, "minOccurs"

    aput-object v12, v2, v11

    .line 757
    .local v2, "args":[Ljava/lang/Object;
    const-string v11, "s4s-att-not-allowed"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v11, v2, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 758
    const/4 v8, 0x1

    .line 760
    .end local v2    # "args":[Ljava/lang/Object;
    :cond_0
    if-nez v3, :cond_1

    .line 761
    const/4 v11, 0x2

    new-array v2, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p2, v2, v11

    const/4 v11, 0x1

    const-string v12, "maxOccurs"

    aput-object v12, v2, v11

    .line 762
    .restart local v2    # "args":[Ljava/lang/Object;
    const-string v11, "s4s-att-not-allowed"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v11, v2, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 763
    const/4 v7, 0x1

    .line 768
    .end local v2    # "args":[Ljava/lang/Object;
    :cond_1
    if-nez v8, :cond_8

    if-nez v7, :cond_8

    .line 769
    const/4 v11, 0x0

    move-object/from16 v0, p1

    iput-short v11, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 770
    const/16 p1, 0x0

    .line 800
    .end local p1    # "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    :goto_6
    return-object p1

    .line 744
    .end local v3    # "defaultMax":Z
    .end local v4    # "defaultMin":Z
    .end local v5    # "groupRefWithAll":Z
    .end local v6    # "isGroupChild":Z
    .end local v9    # "processingAllEl":Z
    .end local v10    # "processingAllGP":Z
    .restart local p1    # "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 745
    .restart local v4    # "defaultMin":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 747
    .restart local v3    # "defaultMax":Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 748
    .restart local v9    # "processingAllEl":Z
    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    .line 749
    .restart local v10    # "processingAllGP":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    .line 750
    .restart local v5    # "groupRefWithAll":Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_5

    .line 778
    .restart local v6    # "isGroupChild":Z
    :cond_8
    if-eqz v9, :cond_b

    .line 779
    const/4 v11, 0x1

    if-eq v7, v11, :cond_9

    .line 780
    const-string v12, "cos-all-limited.2"

    const/4 v11, 0x2

    new-array v13, v11, [Ljava/lang/Object;

    const/4 v14, 0x0

    .line 781
    const/4 v11, -0x1

    if-ne v7, v11, :cond_a

    const-string v11, "unbounded"

    :goto_7
    aput-object v11, v13, v14

    const/4 v14, 0x1

    .line 782
    move-object/from16 v0, p1

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v11, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v13, v14

    .line 780
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v12, v13, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 783
    const/4 v7, 0x1

    .line 784
    const/4 v11, 0x1

    if-le v8, v11, :cond_9

    .line 785
    const/4 v8, 0x1

    .line 797
    :cond_9
    :goto_8
    move-object/from16 v0, p1

    iput v8, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    .line 798
    move-object/from16 v0, p1

    iput v7, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    goto :goto_6

    .line 781
    :cond_a
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    .line 788
    :cond_b
    if-nez v10, :cond_c

    if-eqz v5, :cond_9

    .line 789
    :cond_c
    const/4 v11, 0x1

    if-eq v7, v11, :cond_9

    .line 790
    const-string v11, "cos-all-limited.1.2"

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v11, v12, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 791
    const/4 v11, 0x1

    if-le v8, v11, :cond_d

    .line 792
    const/4 v8, 0x1

    .line 793
    :cond_d
    const/4 v7, 0x1

    goto :goto_8
.end method

.method reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "ele"    # Lmf/org/w3c/dom/Element;

    .prologue
    .line 719
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 720
    return-void
.end method

.method reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V
    .locals 2
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "validateAnnotations"    # Z
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    .line 95
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 96
    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fValidateAnnotations:Z

    .line 97
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setExtraChecking(Z)V

    .line 98
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setSymbolTable(Lmf/org/apache/xerces/util/SymbolTable;)V

    .line 99
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v0, p3}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setLocale(Ljava/util/Locale;)V

    .line 100
    return-void
.end method

.method traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;
    .locals 25
    .param p1, "annotationDecl"    # Lmf/org/w3c/dom/Element;
    .param p2, "parentAttrs"    # [Ljava/lang/Object;
    .param p3, "isGlobal"    # Z
    .param p4, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .prologue
    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v7

    .line 110
    .local v7, "attrValues":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v7, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 112
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    .line 113
    .local v11, "contents":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v8

    .line 114
    .local v8, "child":Lmf/org/w3c/dom/Element;
    if-eqz v8, :cond_1

    .line 116
    :cond_0
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v17

    .line 120
    .local v17, "name":Ljava/lang/String;
    sget-object v22, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_APPINFO:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 121
    sget-object v22, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 122
    const-string v22, "src-annotation"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v17, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 132
    :goto_0
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v8

    .line 134
    if-nez v8, :cond_0

    .line 138
    .end local v17    # "name":Ljava/lang/String;
    :cond_1
    if-nez v11, :cond_3

    const/16 v22, 0x0

    .line 193
    :goto_1
    return-object v22

    .line 128
    .restart local v17    # "name":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, p4

    invoke-virtual {v0, v8, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v7

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v7, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto :goto_0

    .line 141
    .end local v17    # "name":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v12

    .line 143
    .local v12, "grammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    sget v22, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object v5, p2, v22

    check-cast v5, Ljava/util/Vector;

    .line 145
    .local v5, "annotationLocalAttrs":Ljava/util/Vector;
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/util/Vector;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_9

    .line 146
    new-instance v15, Ljava/lang/StringBuffer;

    const/16 v22, 0x40

    move/from16 v0, v22

    invoke-direct {v15, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 147
    .local v15, "localStrBuffer":Ljava/lang/StringBuffer;
    const-string v22, " "

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    const/4 v13, 0x0

    .line 150
    .local v13, "i":I
    :goto_2
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v22

    move/from16 v0, v22

    if-lt v13, v0, :cond_4

    .line 176
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v23

    add-int v22, v22, v23

    move/from16 v0, v22

    invoke-direct {v10, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 177
    .local v10, "contentBuffer":Ljava/lang/StringBuffer;
    sget-object v22, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 179
    .local v6, "annotationTokenEnd":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v6, v0, :cond_7

    const/16 v22, 0x0

    goto :goto_1

    .line 151
    .end local v6    # "annotationTokenEnd":I
    .end local v10    # "contentBuffer":Ljava/lang/StringBuffer;
    :cond_4
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "i":I
    .local v14, "i":I
    invoke-virtual {v5, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 152
    .local v19, "rawname":Ljava/lang/String;
    const/16 v22, 0x3a

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 154
    .local v9, "colonIndex":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v9, v0, :cond_5

    .line 155
    const-string v18, ""

    .line 156
    .local v18, "prefix":Ljava/lang/String;
    move-object/from16 v16, v19

    .line 162
    .local v16, "localpart":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p4

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 163
    .local v20, "uri":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lmf/org/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_6

    .line 164
    add-int/lit8 v13, v14, 0x1

    .line 165
    .end local v14    # "i":I
    .restart local v13    # "i":I
    goto :goto_2

    .line 159
    .end local v13    # "i":I
    .end local v16    # "localpart":Ljava/lang/String;
    .end local v18    # "prefix":Ljava/lang/String;
    .end local v20    # "uri":Ljava/lang/String;
    .restart local v14    # "i":I
    :cond_5
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 160
    .restart local v18    # "prefix":Ljava/lang/String;
    add-int/lit8 v22, v9, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "localpart":Ljava/lang/String;
    goto :goto_3

    .line 167
    .restart local v20    # "uri":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    .line 168
    const-string v23, "=\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "i":I
    .restart local v13    # "i":I
    invoke-virtual {v5, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 171
    .local v21, "value":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->processAttValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 172
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    .line 173
    const-string v23, "\" "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 180
    .end local v9    # "colonIndex":I
    .end local v16    # "localpart":Ljava/lang/String;
    .end local v18    # "prefix":Ljava/lang/String;
    .end local v19    # "rawname":Ljava/lang/String;
    .end local v20    # "uri":Ljava/lang/String;
    .end local v21    # "value":Ljava/lang/String;
    .restart local v6    # "annotationTokenEnd":I
    .restart local v10    # "contentBuffer":Ljava/lang/StringBuffer;
    :cond_7
    sget-object v22, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    add-int v6, v6, v22

    .line 181
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v11, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v11, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, "annotation":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fValidateAnnotations:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 186
    new-instance v22, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;-><init>(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->addAnnotation(Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;)V

    .line 188
    :cond_8
    new-instance v22, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v12}, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto/16 :goto_1

    .line 190
    .end local v4    # "annotation":Ljava/lang/String;
    .end local v6    # "annotationTokenEnd":I
    .end local v10    # "contentBuffer":Ljava/lang/StringBuffer;
    .end local v13    # "i":I
    .end local v15    # "localStrBuffer":Ljava/lang/StringBuffer;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fValidateAnnotations:Z

    move/from16 v22, v0

    if-eqz v22, :cond_a

    .line 191
    new-instance v22, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v11, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;-><init>(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->addAnnotation(Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;)V

    .line 193
    :cond_a
    new-instance v22, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-object/from16 v0, v22

    invoke-direct {v0, v11, v12}, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto/16 :goto_1
.end method

.method traverseAttrsAndAttrGrps(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/w3c/dom/Element;
    .locals 20
    .param p1, "firstAttr"    # Lmf/org/w3c/dom/Element;
    .param p2, "attrGrp"    # Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .param p3, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p4, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p5, "enclosingCT"    # Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .prologue
    .line 604
    const/4 v6, 0x0

    .line 605
    .local v6, "child":Lmf/org/w3c/dom/Element;
    const/4 v14, 0x0

    .line 606
    .local v14, "tempAttrGrp":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    const/4 v15, 0x0

    .line 607
    .local v15, "tempAttrUse":Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    const/4 v13, 0x0

    .line 610
    .local v13, "otherUse":Lmf/org/apache/xerces/xs/XSAttributeUse;
    move-object/from16 v6, p1

    :goto_0
    if-nez v6, :cond_3

    .line 691
    :cond_0
    if-eqz v6, :cond_2

    .line 692
    invoke-static {v6}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    .line 693
    .local v7, "childName":Ljava/lang/String;
    sget-object v17, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANYATTRIBUTE:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fWildCardTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;

    move-object/from16 v17, v0

    .line 695
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v6, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->traverseAnyAttribute(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object v16

    .line 696
    .local v16, "tempAttrWC":Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object/from16 v17, v0

    if-nez v17, :cond_18

    .line 697
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .line 709
    :cond_1
    :goto_1
    invoke-static {v6}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v6

    .line 714
    .end local v7    # "childName":Ljava/lang/String;
    .end local v16    # "tempAttrWC":Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    :cond_2
    return-object v6

    .line 611
    :cond_3
    invoke-static {v6}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    .line 612
    .restart local v7    # "childName":Ljava/lang/String;
    sget-object v17, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v0, v6, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    move-result-object v15

    .line 617
    if-nez v15, :cond_5

    .line 610
    :cond_4
    :goto_2
    invoke-static {v6}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v6

    goto :goto_0

    .line 618
    :cond_5
    iget-short v0, v15, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 619
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    goto :goto_2

    .line 623
    :cond_6
    iget-object v0, v15, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v17

    .line 624
    iget-object v0, v15, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v18

    .line 622
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUseNoProhibited(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeUse;

    move-result-object v13

    .line 625
    if-nez v13, :cond_9

    .line 626
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    move-result-object v10

    .line 627
    .local v10, "idName":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 628
    if-nez p5, :cond_7

    const-string v8, "ag-props-correct.3"

    .line 629
    .local v8, "code":Ljava/lang/String;
    :goto_3
    if-nez p5, :cond_8

    move-object/from16 v0, p2

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    .line 630
    .local v11, "name":Ljava/lang/String;
    :goto_4
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v11, v17, v18

    const/16 v18, 0x1

    iget-object v0, v15, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    aput-object v10, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v1, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_2

    .line 628
    .end local v8    # "code":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    :cond_7
    const-string v8, "ct-props-correct.5"

    goto :goto_3

    .line 629
    .restart local v8    # "code":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p5 .. p5}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 633
    .end local v8    # "code":Ljava/lang/String;
    .end local v10    # "idName":Ljava/lang/String;
    :cond_9
    if-eq v13, v15, :cond_4

    .line 634
    if-nez p5, :cond_a

    const-string v8, "ag-props-correct.2"

    .line 635
    .restart local v8    # "code":Ljava/lang/String;
    :goto_5
    if-nez p5, :cond_b

    move-object/from16 v0, p2

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    .line 636
    .restart local v11    # "name":Ljava/lang/String;
    :goto_6
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v11, v17, v18

    const/16 v18, 0x1

    iget-object v0, v15, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v1, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_2

    .line 634
    .end local v8    # "code":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    :cond_a
    const-string v8, "ct-props-correct.4"

    goto :goto_5

    .line 635
    .restart local v8    # "code":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p5 .. p5}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    .line 639
    .end local v8    # "code":Ljava/lang/String;
    :cond_c
    sget-object v17, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v6, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v14

    .line 643
    if-eqz v14, :cond_4

    .line 644
    invoke-virtual {v14}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v5

    .line 646
    .local v5, "attrUseS":Lmf/org/apache/xerces/xs/XSObjectList;
    invoke-interface {v5}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v4

    .line 647
    .local v4, "attrCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_7
    if-lt v9, v4, :cond_d

    .line 671
    iget-object v0, v14, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 672
    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object/from16 v17, v0

    if-nez v17, :cond_15

    .line 673
    iget-object v0, v14, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    goto/16 :goto_2

    .line 648
    :cond_d
    invoke-interface {v5, v9}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v12

    check-cast v12, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    .line 649
    .local v12, "oneAttrUse":Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    iget-short v0, v12, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 650
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    .line 647
    :cond_e
    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 654
    :cond_f
    iget-object v0, v12, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v17

    .line 655
    iget-object v0, v12, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v18

    .line 653
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUseNoProhibited(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeUse;

    move-result-object v13

    .line 656
    if-nez v13, :cond_12

    .line 657
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    move-result-object v10

    .line 658
    .restart local v10    # "idName":Ljava/lang/String;
    if-eqz v10, :cond_e

    .line 659
    if-nez p5, :cond_10

    const-string v8, "ag-props-correct.3"

    .line 660
    .restart local v8    # "code":Ljava/lang/String;
    :goto_9
    if-nez p5, :cond_11

    move-object/from16 v0, p2

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    .line 661
    .restart local v11    # "name":Ljava/lang/String;
    :goto_a
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v11, v17, v18

    const/16 v18, 0x1

    iget-object v0, v12, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    aput-object v10, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v1, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_8

    .line 659
    .end local v8    # "code":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    :cond_10
    const-string v8, "ct-props-correct.5"

    goto :goto_9

    .line 660
    .restart local v8    # "code":Ljava/lang/String;
    :cond_11
    invoke-virtual/range {p5 .. p5}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v11

    goto :goto_a

    .line 664
    .end local v8    # "code":Ljava/lang/String;
    .end local v10    # "idName":Ljava/lang/String;
    :cond_12
    if-eq v12, v13, :cond_e

    .line 665
    if-nez p5, :cond_13

    const-string v8, "ag-props-correct.2"

    .line 666
    .restart local v8    # "code":Ljava/lang/String;
    :goto_b
    if-nez p5, :cond_14

    move-object/from16 v0, p2

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    .line 667
    .restart local v11    # "name":Ljava/lang/String;
    :goto_c
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v11, v17, v18

    const/16 v18, 0x1

    iget-object v0, v12, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v1, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_8

    .line 665
    .end local v8    # "code":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    :cond_13
    const-string v8, "ct-props-correct.4"

    goto :goto_b

    .line 666
    .restart local v8    # "code":Ljava/lang/String;
    :cond_14
    invoke-virtual/range {p5 .. p5}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v11

    goto :goto_c

    .line 677
    .end local v8    # "code":Ljava/lang/String;
    .end local v12    # "oneAttrUse":Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    :cond_15
    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object/from16 v17, v0

    .line 678
    iget-object v0, v14, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->performIntersectionWith(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;S)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object v17

    .line 677
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .line 679
    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object/from16 v17, v0

    if-nez v17, :cond_4

    .line 680
    if-nez p5, :cond_16

    const-string v8, "src-attribute_group.2"

    .line 681
    .restart local v8    # "code":Ljava/lang/String;
    :goto_d
    if-nez p5, :cond_17

    move-object/from16 v0, p2

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    .line 682
    .restart local v11    # "name":Ljava/lang/String;
    :goto_e
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v11, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v1, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_2

    .line 680
    .end local v8    # "code":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    :cond_16
    const-string v8, "src-ct.4"

    goto :goto_d

    .line 681
    .restart local v8    # "code":Ljava/lang/String;
    :cond_17
    invoke-virtual/range {p5 .. p5}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v11

    goto :goto_e

    .line 702
    .end local v4    # "attrCount":I
    .end local v5    # "attrUseS":Lmf/org/apache/xerces/xs/XSObjectList;
    .end local v8    # "code":Ljava/lang/String;
    .end local v9    # "i":I
    .restart local v16    # "tempAttrWC":Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    :cond_18
    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->performIntersectionWith(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;S)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object v17

    .line 701
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .line 703
    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 704
    if-nez p5, :cond_19

    const-string v8, "src-attribute_group.2"

    .line 705
    .restart local v8    # "code":Ljava/lang/String;
    :goto_f
    if-nez p5, :cond_1a

    move-object/from16 v0, p2

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    .line 706
    .restart local v11    # "name":Ljava/lang/String;
    :goto_10
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v11, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v1, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_1

    .line 704
    .end local v8    # "code":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    :cond_19
    const-string v8, "src-ct.4"

    goto :goto_f

    .line 705
    .restart local v8    # "code":Ljava/lang/String;
    :cond_1a
    invoke-virtual/range {p5 .. p5}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v11

    goto :goto_10
.end method

.method traverseFacets(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;
    .locals 27
    .param p1, "content"    # Lmf/org/w3c/dom/Element;
    .param p2, "baseValidator"    # Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .param p3, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .prologue
    .line 281
    const/16 v19, 0x0

    .line 282
    .local v19, "facetsPresent":S
    const/16 v18, 0x0

    .line 284
    .local v18, "facetsFixed":S
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->containsQName(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)Z

    move-result v20

    .line 285
    .local v20, "hasQName":Z
    const/4 v13, 0x0

    .line 286
    .local v13, "enumData":Ljava/util/Vector;
    const/4 v12, 0x0

    .line 287
    .local v12, "enumAnnotations":Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;
    const/16 v23, 0x0

    .line 288
    .local v23, "patternAnnotations":Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;
    if-eqz v20, :cond_3

    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    .line 289
    .local v14, "enumNSDecls":Ljava/util/Vector;
    :goto_0
    const/4 v11, 0x0

    .line 290
    .local v11, "currentFacet":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dv/XSFacets;->reset()V

    .line 291
    :goto_1
    if-nez p1, :cond_4

    .line 557
    :cond_0
    if-eqz v13, :cond_1

    .line 558
    move/from16 v0, v19

    or-int/lit16 v3, v0, 0x800

    int-to-short v0, v3

    move/from16 v19, v0

    .line 559
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v13, v3, Lmf/org/apache/xerces/impl/dv/XSFacets;->enumeration:Ljava/util/Vector;

    .line 560
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v14, v3, Lmf/org/apache/xerces/impl/dv/XSFacets;->enumNSDecls:Ljava/util/Vector;

    .line 561
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v12, v3, Lmf/org/apache/xerces/impl/dv/XSFacets;->enumAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 563
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 564
    or-int/lit8 v3, v19, 0x8

    int-to-short v0, v3

    move/from16 v19, v0

    .line 565
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmf/org/apache/xerces/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    .line 566
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    move-object/from16 v0, v23

    iput-object v0, v3, Lmf/org/apache/xerces/impl/dv/XSFacets;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .line 569
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 571
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v3, v4, v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;-><init>(Lmf/org/apache/xerces/impl/dv/XSFacets;Lmf/org/w3c/dom/Element;SS)V

    return-object v3

    .line 288
    .end local v11    # "currentFacet":I
    .end local v14    # "enumNSDecls":Ljava/util/Vector;
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 293
    .restart local v11    # "currentFacet":I
    .restart local v14    # "enumNSDecls":Ljava/util/Vector;
    :cond_4
    const/4 v6, 0x0

    .line 294
    .local v6, "attrs":[Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v17

    .line 295
    .local v17, "facet":Ljava/lang/String;
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ENUMERATION:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v3, v0, v4, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Z)[Ljava/lang/Object;

    move-result-object v6

    .line 297
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v15, v6, v3

    check-cast v15, Ljava/lang/String;

    .line 300
    .local v15, "enumVal":Ljava/lang/String;
    if-nez v15, :cond_5

    .line 301
    const-string v3, "s4s-att-must-appear"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ENUMERATION:Ljava/lang/String;

    aput-object v8, v4, v7

    const/4 v7, 0x1

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    aput-object v8, v4, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 303
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    .line 304
    goto/16 :goto_1

    .line 307
    :cond_5
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ENUMNSDECLS:I

    aget-object v22, v6, v3

    check-cast v22, Lmf/org/apache/xerces/util/NamespaceSupport;

    .line 311
    .local v22, "nsDecls":Lmf/org/apache/xerces/util/NamespaceSupport;
    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 312
    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getPrimitiveKind()S

    move-result v3

    const/16 v4, 0x14

    if-ne v3, v4, :cond_7

    .line 314
    move-object/from16 v0, p3

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lmf/org/apache/xerces/impl/validation/ValidationState;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    .line 315
    const/16 v21, 0x0

    .line 317
    .local v21, "notation":Ljava/lang/Object;
    :try_start_0
    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fQNameDV:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v0, p3

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lmf/org/apache/xerces/impl/validation/ValidationState;

    const/4 v7, 0x0

    invoke-interface {v3, v15, v4, v7}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lmf/org/apache/xerces/xni/QName;

    .line 320
    .local v25, "temp":Lmf/org/apache/xerces/xni/QName;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v4, 0x6

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-virtual {v3, v0, v4, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 324
    .end local v21    # "notation":Ljava/lang/Object;
    .end local v25    # "temp":Lmf/org/apache/xerces/xni/QName;
    :goto_2
    if-nez v21, :cond_6

    .line 328
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 329
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    .line 330
    goto/16 :goto_1

    .line 321
    .restart local v21    # "notation":Ljava/lang/Object;
    :catch_0
    move-exception v16

    .line 322
    .local v16, "ex":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    invoke-virtual/range {v16 .. v16}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_2

    .line 333
    .end local v16    # "ex":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    .end local v21    # "notation":Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, p3

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lmf/org/apache/xerces/impl/validation/ValidationState;

    move-object/from16 v0, p3

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    .line 335
    :cond_7
    if-nez v13, :cond_8

    .line 336
    new-instance v13, Ljava/util/Vector;

    .end local v13    # "enumData":Ljava/util/Vector;
    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    .line 337
    .restart local v13    # "enumData":Ljava/util/Vector;
    new-instance v12, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .end local v12    # "enumAnnotations":Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;
    invoke-direct {v12}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    .line 339
    .restart local v12    # "enumAnnotations":Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;
    :cond_8
    invoke-virtual {v13, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 340
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    .line 341
    if-eqz v20, :cond_9

    .line 342
    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 343
    :cond_9
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v10

    .line 345
    .local v10, "child":Lmf/org/w3c/dom/Element;
    if-eqz v10, :cond_c

    .line 346
    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 348
    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->getLength()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v10, v6, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(ILmf/org/apache/xerces/xs/XSObject;)V

    .line 349
    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v10

    .line 357
    :cond_a
    :goto_3
    if-eqz v10, :cond_b

    .line 358
    const-string v3, "s4s-elt-must-match.1"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "enumeration"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "(annotation?)"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 554
    .end local v15    # "enumVal":Ljava/lang/String;
    .end local v22    # "nsDecls":Lmf/org/apache/xerces/util/NamespaceSupport;
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 555
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    goto/16 :goto_1

    .line 352
    .restart local v15    # "enumVal":Ljava/lang/String;
    .restart local v22    # "nsDecls":Lmf/org/apache/xerces/util/NamespaceSupport;
    :cond_c
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 353
    .local v5, "text":Ljava/lang/String;
    if-eqz v5, :cond_a

    .line 354
    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->getLength()I

    move-result v3

    add-int/lit8 v26, v3, -0x1

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v12, v0, v3}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(ILmf/org/apache/xerces/xs/XSObject;)V

    goto :goto_3

    .line 361
    .end local v5    # "text":Ljava/lang/String;
    .end local v10    # "child":Lmf/org/w3c/dom/Element;
    .end local v15    # "enumVal":Ljava/lang/String;
    .end local v22    # "nsDecls":Lmf/org/apache/xerces/util/NamespaceSupport;
    :cond_d
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_PATTERN:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 362
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v3, v0, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v6

    .line 363
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v24, v6, v3

    check-cast v24, Ljava/lang/String;

    .line 366
    .local v24, "patternVal":Ljava/lang/String;
    if-nez v24, :cond_e

    .line 367
    const-string v3, "s4s-att-must-appear"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_PATTERN:Ljava/lang/String;

    aput-object v8, v4, v7

    const/4 v7, 0x1

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    aput-object v8, v4, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 369
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    .line 370
    goto/16 :goto_1

    .line 373
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-nez v3, :cond_11

    .line 374
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    :goto_5
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v10

    .line 383
    .restart local v10    # "child":Lmf/org/w3c/dom/Element;
    if-eqz v10, :cond_12

    .line 384
    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 386
    if-nez v23, :cond_f

    .line 387
    new-instance v23, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .end local v23    # "patternAnnotations":Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;
    invoke-direct/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    .line 389
    .restart local v23    # "patternAnnotations":Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;
    :cond_f
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v10, v6, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    .line 390
    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v10

    .line 401
    :cond_10
    :goto_6
    if-eqz v10, :cond_b

    .line 402
    const-string v3, "s4s-elt-must-match.1"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "pattern"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "(annotation?)"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_4

    .line 379
    .end local v10    # "child":Lmf/org/w3c/dom/Element;
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 393
    .restart local v10    # "child":Lmf/org/w3c/dom/Element;
    :cond_12
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 394
    .restart local v5    # "text":Ljava/lang/String;
    if-eqz v5, :cond_10

    .line 395
    if-nez v23, :cond_13

    .line 396
    new-instance v23, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .end local v23    # "patternAnnotations":Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;
    invoke-direct/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    .line 398
    .restart local v23    # "patternAnnotations":Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;
    :cond_13
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    goto :goto_6

    .line 406
    .end local v5    # "text":Ljava/lang/String;
    .end local v10    # "child":Lmf/org/w3c/dom/Element;
    .end local v24    # "patternVal":Ljava/lang/String;
    :cond_14
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MINLENGTH:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 407
    const/4 v11, 0x2

    .line 440
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v3, v0, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v6

    .line 443
    and-int v3, v19, v11

    if-eqz v3, :cond_1e

    .line 445
    const-string v3, "src-single-facet-value"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v17, v4, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 447
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    .line 448
    goto/16 :goto_1

    .line 409
    :cond_15
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXLENGTH:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 410
    const/4 v11, 0x4

    .line 411
    goto :goto_7

    .line 412
    :cond_16
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXEXCLUSIVE:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 413
    const/16 v11, 0x40

    .line 414
    goto :goto_7

    .line 415
    :cond_17
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXINCLUSIVE:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 416
    const/16 v11, 0x20

    .line 417
    goto :goto_7

    .line 418
    :cond_18
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MINEXCLUSIVE:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 419
    const/16 v11, 0x80

    .line 420
    goto :goto_7

    .line 421
    :cond_19
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MININCLUSIVE:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 422
    const/16 v11, 0x100

    .line 423
    goto :goto_7

    .line 424
    :cond_1a
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_TOTALDIGITS:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 425
    const/16 v11, 0x200

    .line 426
    goto :goto_7

    .line 427
    :cond_1b
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_FRACTIONDIGITS:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 428
    const/16 v11, 0x400

    .line 429
    goto/16 :goto_7

    .line 430
    :cond_1c
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_WHITESPACE:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 431
    const/16 v11, 0x10

    .line 432
    goto/16 :goto_7

    .line 433
    :cond_1d
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_LENGTH:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 434
    const/4 v11, 0x1

    goto/16 :goto_7

    .line 453
    :cond_1e
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    if-nez v3, :cond_20

    .line 458
    const/4 v3, 0x0

    const-string v4, "value"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lmf/org/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v3

    if-nez v3, :cond_1f

    .line 459
    const-string v3, "s4s-att-must-appear"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x1

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    aput-object v8, v4, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 461
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 462
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    .line 463
    goto/16 :goto_1

    .line 466
    :cond_20
    or-int v3, v19, v11

    int-to-short v0, v3

    move/from16 v19, v0

    .line 468
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    aget-object v3, v6, v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 469
    or-int v3, v18, v11

    int-to-short v0, v3

    move/from16 v18, v0

    .line 471
    :cond_21
    sparse-switch v11, :sswitch_data_0

    .line 504
    :goto_8
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v10

    .line 505
    .restart local v10    # "child":Lmf/org/w3c/dom/Element;
    const/4 v9, 0x0

    .line 506
    .local v9, "annotation":Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;
    if-eqz v10, :cond_23

    .line 507
    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 509
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v10, v6, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v9

    .line 510
    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v10

    .line 518
    :cond_22
    :goto_9
    sparse-switch v11, :sswitch_data_1

    .line 550
    :goto_a
    if-eqz v10, :cond_b

    .line 551
    const-string v3, "s4s-elt-must-match.1"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v17, v4, v7

    const/4 v7, 0x1

    const-string v8, "(annotation?)"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_4

    .line 473
    .end local v9    # "annotation":Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;
    .end local v10    # "child":Lmf/org/w3c/dom/Element;
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v3

    iput v3, v4, Lmf/org/apache/xerces/impl/dv/XSFacets;->minLength:I

    goto :goto_8

    .line 476
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v3

    iput v3, v4, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxLength:I

    goto :goto_8

    .line 479
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    goto :goto_8

    .line 482
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    goto :goto_8

    .line 485
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    goto/16 :goto_8

    .line 488
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    goto/16 :goto_8

    .line 491
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v3

    iput v3, v4, Lmf/org/apache/xerces/impl/dv/XSFacets;->totalDigits:I

    goto/16 :goto_8

    .line 494
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v3

    iput v3, v4, Lmf/org/apache/xerces/impl/dv/XSFacets;->fractionDigits:I

    goto/16 :goto_8

    .line 497
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result v3

    iput-short v3, v4, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    goto/16 :goto_8

    .line 500
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v3

    iput v3, v4, Lmf/org/apache/xerces/impl/dv/XSFacets;->length:I

    goto/16 :goto_8

    .line 513
    .restart local v9    # "annotation":Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;
    .restart local v10    # "child":Lmf/org/w3c/dom/Element;
    :cond_23
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 514
    .restart local v5    # "text":Ljava/lang/String;
    if-eqz v5, :cond_22

    .line 515
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v9

    goto/16 :goto_9

    .line 520
    .end local v5    # "text":Ljava/lang/String;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v9, v3, Lmf/org/apache/xerces/impl/dv/XSFacets;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_a

    .line 523
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v9, v3, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_a

    .line 526
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v9, v3, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_a

    .line 529
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v9, v3, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_a

    .line 532
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v9, v3, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_a

    .line 535
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v9, v3, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_a

    .line 538
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v9, v3, Lmf/org/apache/xerces/impl/dv/XSFacets;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_a

    .line 541
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v9, v3, Lmf/org/apache/xerces/impl/dv/XSFacets;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_a

    .line 544
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v9, v3, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_a

    .line 547
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v9, v3, Lmf/org/apache/xerces/impl/dv/XSFacets;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_a

    .line 471
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x10 -> :sswitch_8
        0x20 -> :sswitch_3
        0x40 -> :sswitch_2
        0x80 -> :sswitch_4
        0x100 -> :sswitch_5
        0x200 -> :sswitch_6
        0x400 -> :sswitch_7
    .end sparse-switch

    .line 518
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_a
        0x4 -> :sswitch_b
        0x10 -> :sswitch_12
        0x20 -> :sswitch_d
        0x40 -> :sswitch_c
        0x80 -> :sswitch_e
        0x100 -> :sswitch_f
        0x200 -> :sswitch_10
        0x400 -> :sswitch_11
    .end sparse-switch
.end method

.method traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;
    .locals 19
    .param p1, "annotationParent"    # Lmf/org/w3c/dom/Element;
    .param p2, "initialContent"    # Ljava/lang/String;
    .param p3, "parentAttrs"    # [Ljava/lang/Object;
    .param p4, "isGlobal"    # Z
    .param p5, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .prologue
    .line 201
    move-object/from16 v7, p2

    .line 204
    .local v7, "contents":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, p5

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v8

    .line 206
    .local v8, "grammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    sget v17, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object v3, p3, v17

    check-cast v3, Ljava/util/Vector;

    .line 208
    .local v3, "annotationLocalAttrs":Ljava/util/Vector;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_4

    .line 209
    new-instance v11, Ljava/lang/StringBuffer;

    const/16 v17, 0x40

    move/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 210
    .local v11, "localStrBuffer":Ljava/lang/StringBuffer;
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    const/4 v9, 0x0

    .line 213
    .local v9, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v9, v0, :cond_0

    .line 235
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 236
    .local v6, "contentBuffer":Ljava/lang/StringBuffer;
    sget-object v17, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 238
    .local v4, "annotationTokenEnd":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_2

    const/16 v17, 0x0

    .line 252
    .end local v4    # "annotationTokenEnd":I
    .end local v6    # "contentBuffer":Ljava/lang/StringBuffer;
    .end local v9    # "i":I
    .end local v11    # "localStrBuffer":Ljava/lang/StringBuffer;
    :goto_1
    return-object v17

    .line 214
    .restart local v9    # "i":I
    .restart local v11    # "localStrBuffer":Ljava/lang/StringBuffer;
    :cond_0
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .local v10, "i":I
    invoke-virtual {v3, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 215
    .local v14, "rawname":Ljava/lang/String;
    const/16 v17, 0x3a

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 217
    .local v5, "colonIndex":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_1

    .line 218
    const-string v13, ""

    .line 219
    .local v13, "prefix":Ljava/lang/String;
    move-object v12, v14

    .line 225
    .local v12, "localpart":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p5

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 226
    .local v15, "uri":Ljava/lang/String;
    invoke-virtual {v11, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    .line 227
    const-string v18, "=\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v3, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 230
    .local v16, "value":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->processAttValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 231
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    .line 232
    const-string v18, "\" "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 222
    .end local v9    # "i":I
    .end local v12    # "localpart":Ljava/lang/String;
    .end local v13    # "prefix":Ljava/lang/String;
    .end local v15    # "uri":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    .restart local v10    # "i":I
    :cond_1
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 223
    .restart local v13    # "prefix":Ljava/lang/String;
    add-int/lit8 v17, v5, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "localpart":Ljava/lang/String;
    goto :goto_2

    .line 239
    .end local v5    # "colonIndex":I
    .end local v10    # "i":I
    .end local v12    # "localpart":Ljava/lang/String;
    .end local v13    # "prefix":Ljava/lang/String;
    .end local v14    # "rawname":Ljava/lang/String;
    .restart local v4    # "annotationTokenEnd":I
    .restart local v6    # "contentBuffer":Ljava/lang/StringBuffer;
    .restart local v9    # "i":I
    :cond_2
    sget-object v17, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v4, v4, v17

    .line 240
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v7, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "annotation":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fValidateAnnotations:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 245
    new-instance v17, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;-><init>(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->addAnnotation(Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;)V

    .line 247
    :cond_3
    new-instance v17, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v8}, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto/16 :goto_1

    .line 249
    .end local v2    # "annotation":Ljava/lang/String;
    .end local v4    # "annotationTokenEnd":I
    .end local v6    # "contentBuffer":Ljava/lang/StringBuffer;
    .end local v9    # "i":I
    .end local v11    # "localStrBuffer":Ljava/lang/StringBuffer;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fValidateAnnotations:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 250
    new-instance v17, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;-><init>(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->addAnnotation(Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;)V

    .line 252
    :cond_5
    new-instance v17, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-object/from16 v0, v17

    invoke-direct {v0, v7, v8}, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto/16 :goto_1
.end method
