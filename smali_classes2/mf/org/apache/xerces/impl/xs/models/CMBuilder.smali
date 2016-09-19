.class public Lmf/org/apache/xerces/impl/xs/models/CMBuilder;
.super Ljava/lang/Object;
.source "CMBuilder.java"


# static fields
.field private static final fEmptyCM:Lmf/org/apache/xerces/impl/xs/models/XSEmptyCM;


# instance fields
.field private fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

.field private fLeafCount:I

.field private final fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

.field private fParticleCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lmf/org/apache/xerces/impl/xs/models/XSEmptyCM;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/models/XSEmptyCM;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fEmptyCM:Lmf/org/apache/xerces/impl/xs/models/XSEmptyCM;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;)V
    .locals 1
    .param p1, "nodeFactory"    # Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    .line 54
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    .line 55
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    .line 56
    return-void
.end method

.method private buildCompactSyntaxTree(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 10
    .param p1, "particle"    # Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .prologue
    const/4 v9, 0x1

    .line 333
    iget v3, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    .line 334
    .local v3, "maxOccurs":I
    iget v4, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    .line 335
    .local v4, "minOccurs":I
    iget-short v7, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 336
    .local v7, "type":S
    const/4 v5, 0x0

    .line 338
    .local v5, "nodeRet":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    .line 339
    if-ne v7, v9, :cond_1

    .line 340
    :cond_0
    invoke-direct {p0, p1, v4, v3}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->buildCompactSyntaxTree2(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v8

    .line 383
    :goto_0
    return-object v8

    .line 342
    :cond_1
    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    .line 343
    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    .line 344
    .local v1, "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    iget v8, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ne v8, v9, :cond_3

    if-ne v4, v9, :cond_2

    if-eq v3, v9, :cond_3

    .line 345
    :cond_2
    iget-object v8, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-direct {p0, v8, v4, v3}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->buildCompactSyntaxTree2(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v8

    goto :goto_0

    .line 348
    :cond_3
    const/4 v6, 0x0

    .line 359
    .local v6, "temp":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    const/4 v0, 0x0

    .line 360
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v8, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lt v2, v8, :cond_5

    .line 374
    if-eqz v5, :cond_4

    .line 377
    iget-short v8, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v9, 0x65

    if-ne v8, v9, :cond_4

    iget v8, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v0, v8, :cond_4

    .line 378
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    const/4 v9, 0x5

    invoke-virtual {v8, v9, v5}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v5

    .end local v0    # "count":I
    .end local v1    # "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    .end local v2    # "i":I
    .end local v6    # "temp":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    :cond_4
    move-object v8, v5

    .line 383
    goto :goto_0

    .line 362
    .restart local v0    # "count":I
    .restart local v1    # "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    .restart local v2    # "i":I
    .restart local v6    # "temp":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    :cond_5
    iget-object v8, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v8, v8, v2

    invoke-direct {p0, v8}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->buildCompactSyntaxTree(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v6

    .line 364
    if-eqz v6, :cond_6

    .line 365
    add-int/lit8 v0, v0, 0x1

    .line 366
    if-nez v5, :cond_7

    .line 367
    move-object v5, v6

    .line 360
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 370
    :cond_7
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    iget-short v9, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    invoke-virtual {v8, v9, v5, v6}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMBinOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v5

    goto :goto_2
.end method

.method private buildCompactSyntaxTree2(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 10
    .param p1, "particle"    # Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .param p2, "minOccurs"    # I
    .param p3, "maxOccurs"    # I

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x4

    const/4 v1, -0x1

    const/4 v0, 0x1

    .line 388
    const/4 v7, 0x0

    .line 389
    .local v7, "nodeRet":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    if-ne p2, v0, :cond_0

    if-ne p3, v0, :cond_0

    .line 390
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    iget-short v1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMLeafNode(ILjava/lang/Object;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v7

    .line 418
    :goto_0
    return-object v7

    .line 392
    :cond_0
    if-nez p2, :cond_1

    if-ne p3, v0, :cond_1

    .line 394
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    iget-short v1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMLeafNode(ILjava/lang/Object;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v7

    .line 395
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v7}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v7

    .line 396
    goto :goto_0

    .line 397
    :cond_1
    if-nez p2, :cond_2

    if-ne p3, v1, :cond_2

    .line 399
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    iget-short v1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMLeafNode(ILjava/lang/Object;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v7

    .line 400
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v0, v8, v7}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v7

    .line 401
    goto :goto_0

    .line 402
    :cond_2
    if-ne p2, v0, :cond_3

    if-ne p3, v1, :cond_3

    .line 404
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    iget-short v1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMLeafNode(ILjava/lang/Object;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v7

    .line 405
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v0, v9, v7}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v7

    .line 406
    goto :goto_0

    .line 410
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    iget-short v1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iget v5, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    add-int/lit8 v3, v5, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    iget v6, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    add-int/lit8 v3, v6, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMRepeatingLeafNode(ILjava/lang/Object;IIII)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v7

    .line 411
    if-nez p2, :cond_4

    .line 412
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v0, v8, v7}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v7

    .line 413
    goto/16 :goto_0

    .line 415
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v0, v9, v7}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v7

    goto/16 :goto_0
.end method

.method private buildSyntaxTree(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Z)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 17
    .param p1, "particle"    # Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .param p2, "forUPA"    # Z

    .prologue
    .line 144
    move-object/from16 v0, p1

    iget v6, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    .line 145
    .local v6, "maxOccurs":I
    move-object/from16 v0, p1

    iget v7, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    .line 147
    .local v7, "minOccurs":I
    const/4 v2, 0x0

    .line 148
    .local v2, "compactedForUPA":Z
    if-eqz p2, :cond_2

    .line 151
    const/4 v11, 0x1

    if-le v7, v11, :cond_1

    .line 152
    if-gt v6, v7, :cond_0

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->getMaxOccursUnbounded()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 153
    :cond_0
    const/4 v7, 0x1

    .line 154
    const/4 v2, 0x1

    .line 161
    :cond_1
    :goto_0
    const/4 v11, 0x1

    if-le v6, v11, :cond_2

    .line 162
    const/4 v6, 0x2

    .line 163
    const/4 v2, 0x1

    .line 167
    :cond_2
    move-object/from16 v0, p1

    iget-short v10, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 168
    .local v10, "type":S
    const/4 v8, 0x0

    .line 170
    .local v8, "nodeRet":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    const/4 v11, 0x2

    if-eq v10, v11, :cond_3

    .line 171
    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 178
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    move-object/from16 v0, p1

    iget-short v12, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    move-object/from16 v0, p1

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    move-object/from16 v0, p0

    iget v14, v0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    move-object/from16 v0, p0

    iget v15, v0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMLeafNode(ILjava/lang/Object;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v8

    .line 180
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7, v6}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->expandContentModel(Lmf/org/apache/xerces/impl/dtd/models/CMNode;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v8

    .line 181
    if-eqz v8, :cond_4

    .line 182
    invoke-virtual {v8, v2}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->setIsCompactUPAModel(Z)V

    .line 226
    :cond_4
    :goto_1
    return-object v8

    .line 157
    .end local v8    # "nodeRet":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .end local v10    # "type":S
    :cond_5
    const/4 v7, 0x2

    .line 158
    const/4 v2, 0x1

    goto :goto_0

    .line 185
    .restart local v8    # "nodeRet":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .restart local v10    # "type":S
    :cond_6
    const/4 v11, 0x3

    if-ne v10, v11, :cond_4

    .line 187
    move-object/from16 v0, p1

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    .line 188
    .local v4, "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    const/4 v9, 0x0

    .line 198
    .local v9, "temp":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    const/4 v3, 0x0

    .line 199
    .local v3, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget v11, v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lt v5, v11, :cond_8

    .line 215
    if-eqz v8, :cond_4

    .line 218
    iget-short v11, v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v12, 0x65

    if-ne v11, v12, :cond_7

    iget v11, v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v3, v11, :cond_7

    .line 219
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    const/4 v12, 0x5

    invoke-virtual {v11, v12, v8}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v8

    .line 221
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7, v6}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->expandContentModel(Lmf/org/apache/xerces/impl/dtd/models/CMNode;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v8

    .line 222
    invoke-virtual {v8, v2}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->setIsCompactUPAModel(Z)V

    goto :goto_1

    .line 201
    :cond_8
    iget-object v11, v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v11, v11, v5

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v11, v1}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->buildSyntaxTree(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Z)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v9

    .line 203
    if-eqz v9, :cond_9

    .line 204
    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isCompactedForUPA()Z

    move-result v11

    or-int/2addr v2, v11

    .line 205
    add-int/lit8 v3, v3, 0x1

    .line 206
    if-nez v8, :cond_a

    .line 207
    move-object v8, v9

    .line 199
    :cond_9
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 210
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    iget-short v12, v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    invoke-virtual {v11, v12, v8, v9}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMBinOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v8

    goto :goto_3
.end method

.method private copyNode(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 10
    .param p1, "node"    # Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    .prologue
    .line 302
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    .line 304
    .local v2, "type":I
    const/16 v4, 0x65

    if-eq v2, v4, :cond_0

    .line 305
    const/16 v4, 0x66

    if-ne v2, v4, :cond_2

    :cond_0
    move-object v0, p1

    .line 306
    check-cast v0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    .line 307
    .local v0, "bin":Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v5

    invoke-direct {p0, v5}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->copyNode(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v5

    .line 308
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v6

    invoke-direct {p0, v6}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->copyNode(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v6

    .line 307
    invoke-virtual {v4, v2, v5, v6}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMBinOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    .line 325
    .end local v0    # "bin":Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;
    :cond_1
    :goto_0
    return-object p1

    .line 311
    :cond_2
    const/4 v4, 0x4

    if-eq v2, v4, :cond_3

    .line 312
    const/4 v4, 0x6

    if-eq v2, v4, :cond_3

    .line 313
    const/4 v4, 0x5

    if-ne v2, v4, :cond_4

    :cond_3
    move-object v3, p1

    .line 314
    check-cast v3, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;

    .line 315
    .local v3, "uni":Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v5

    invoke-direct {p0, v5}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->copyNode(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    .line 316
    goto :goto_0

    .line 319
    .end local v3    # "uni":Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;
    :cond_4
    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    .line 320
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    :cond_5
    move-object v1, p1

    .line 321
    check-cast v1, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    .line 322
    .local v1, "leaf":Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->type()I

    move-result v5

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getLeaf()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getParticleId()I

    move-result v7

    iget v8, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-virtual {v4, v5, v6, v7, v8}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMLeafNode(ILjava/lang/Object;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_0
.end method

.method private expandContentModel(Lmf/org/apache/xerces/impl/dtd/models/CMNode;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 6
    .param p1, "node"    # Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .param p2, "minOccurs"    # I
    .param p3, "maxOccurs"    # I

    .prologue
    const/4 v5, 0x6

    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v4, 0x1

    .line 235
    const/4 v0, 0x0

    .line 237
    .local v0, "nodeRet":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    if-ne p2, v4, :cond_1

    if-ne p3, v4, :cond_1

    .line 238
    move-object v0, p1

    .line 284
    :cond_0
    :goto_0
    return-object v0

    .line 240
    :cond_1
    if-nez p2, :cond_2

    if-ne p3, v4, :cond_2

    .line 242
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v1, v3, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    .line 243
    goto :goto_0

    .line 244
    :cond_2
    if-nez p2, :cond_3

    if-ne p3, v1, :cond_3

    .line 246
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    .line 247
    goto :goto_0

    .line 248
    :cond_3
    if-ne p2, v4, :cond_4

    if-ne p3, v1, :cond_4

    .line 250
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v1, v5, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    .line 251
    goto :goto_0

    .line 252
    :cond_4
    if-ne p3, v1, :cond_5

    .line 257
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v1, v5, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    const/16 v2, 0x66

    .line 263
    add-int/lit8 v3, p2, -0x1

    invoke-direct {p0, p1, v3, v4}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->multiNodes(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    .line 262
    invoke-virtual {v1, v2, v3, v0}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMBinOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    .line 264
    goto :goto_0

    .line 269
    :cond_5
    if-lez p2, :cond_6

    .line 270
    invoke-direct {p0, p1, p2, v2}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->multiNodes(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    .line 272
    :cond_6
    if-le p3, p2, :cond_0

    .line 273
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v1, v3, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    .line 274
    if-nez v0, :cond_7

    .line 275
    sub-int v1, p3, p2

    invoke-direct {p0, p1, v1, v2}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->multiNodes(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    .line 276
    goto :goto_0

    .line 278
    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    const/16 v2, 0x66

    .line 279
    sub-int v3, p3, p2

    invoke-direct {p0, p1, v3, v4}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->multiNodes(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    .line 278
    invoke-virtual {v1, v2, v0, v3}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMBinOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    goto :goto_0
.end method

.method private multiNodes(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 6
    .param p1, "node"    # Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .param p2, "num"    # I
    .param p3, "copyFirst"    # Z

    .prologue
    const/4 v5, 0x1

    .line 288
    if-nez p2, :cond_1

    .line 289
    const/4 p1, 0x0

    .line 295
    .end local p1    # "node":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    :cond_0
    :goto_0
    return-object p1

    .line 291
    .restart local p1    # "node":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    :cond_1
    if-ne p2, v5, :cond_2

    .line 292
    if-eqz p3, :cond_0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->copyNode(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_0

    .line 294
    :cond_2
    div-int/lit8 v0, p2, 0x2

    .line 295
    .local v0, "num1":I
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    const/16 v2, 0x66

    .line 296
    invoke-direct {p0, p1, v0, p3}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->multiNodes(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    .line 297
    sub-int v4, p2, v0

    invoke-direct {p0, p1, v4, v5}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->multiNodes(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v4

    .line 295
    invoke-virtual {v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMBinOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_0
.end method

.method private useRepeatingLeafNodes(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Z
    .locals 10
    .param p1, "particle"    # Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 426
    iget v2, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    .line 427
    .local v2, "maxOccurs":I
    iget v3, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    .line 428
    .local v3, "minOccurs":I
    iget-short v5, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 430
    .local v5, "type":S
    const/4 v9, 0x3

    if-ne v5, v9, :cond_5

    .line 431
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    .line 432
    .local v0, "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    if-ne v3, v8, :cond_0

    if-eq v2, v8, :cond_4

    .line 433
    :cond_0
    iget v9, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ne v9, v8, :cond_3

    .line 434
    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v4, v9, v7

    .line 435
    .local v4, "particle2":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    iget-short v6, v4, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 436
    .local v6, "type2":S
    if-eq v6, v8, :cond_1

    .line 437
    const/4 v9, 0x2

    if-ne v6, v9, :cond_2

    .line 438
    :cond_1
    iget v9, v4, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    if-ne v9, v8, :cond_2

    .line 439
    iget v9, v4, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    if-ne v9, v8, :cond_2

    move v7, v8

    .line 449
    .end local v0    # "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    .end local v4    # "particle2":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .end local v6    # "type2":S
    :cond_2
    :goto_0
    return v7

    .line 441
    .restart local v0    # "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    :cond_3
    iget v9, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-nez v9, :cond_2

    move v7, v8

    goto :goto_0

    .line 443
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v9, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lt v1, v9, :cond_6

    .end local v0    # "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    .end local v1    # "i":I
    :cond_5
    move v7, v8

    .line 449
    goto :goto_0

    .line 444
    .restart local v0    # "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    .restart local v1    # "i":I
    :cond_6
    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v9, v9, v1

    invoke-direct {p0, v9}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->useRepeatingLeafNodes(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 443
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method createAllCM(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    .locals 7
    .param p1, "particle"    # Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 109
    iget v3, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    if-nez v3, :cond_1

    .line 110
    const/4 v0, 0x0

    .line 122
    :cond_0
    return-object v0

    .line 113
    :cond_1
    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    .line 116
    .local v1, "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    new-instance v0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;

    iget v3, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    if-nez v3, :cond_2

    move v3, v4

    :goto_0
    iget v6, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    invoke-direct {v0, v3, v6}, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;-><init>(ZI)V

    .line 117
    .local v0, "allContent":Lmf/org/apache/xerces/impl/xs/models/XSAllCM;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v3, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v2, v3, :cond_0

    .line 119
    iget-object v3, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v3, v3, v2

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 120
    iget-object v6, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v6, v6, v2

    iget v6, v6, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    if-nez v6, :cond_3

    move v6, v4

    .line 119
    :goto_2
    invoke-virtual {v0, v3, v6}, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->addElement(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Z)V

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "allContent":Lmf/org/apache/xerces/impl/xs/models/XSAllCM;
    .end local v2    # "i":I
    :cond_2
    move v3, v5

    .line 116
    goto :goto_0

    .restart local v0    # "allContent":Lmf/org/apache/xerces/impl/xs/models/XSAllCM;
    .restart local v2    # "i":I
    :cond_3
    move v6, v5

    .line 120
    goto :goto_2
.end method

.method createDFACM(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Z)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    .locals 3
    .param p1, "particle"    # Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .param p2, "forUPA"    # Z

    .prologue
    const/4 v1, 0x0

    .line 126
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    .line 127
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    .line 129
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->useRepeatingLeafNodes(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->buildCompactSyntaxTree(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    .line 130
    .local v0, "node":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    :goto_0
    if-nez v0, :cond_1

    .line 131
    const/4 v1, 0x0

    .line 133
    :goto_1
    return-object v1

    .line 129
    .end local v0    # "node":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    :cond_0
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->buildSyntaxTree(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Z)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    goto :goto_0

    .line 133
    .restart local v0    # "node":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    :cond_1
    new-instance v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-direct {v1, v0, v2}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;-><init>(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V

    goto :goto_1
.end method

.method public getContentModel(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Z)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    .locals 5
    .param p1, "typeDecl"    # Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .param p2, "forUPA"    # Z

    .prologue
    .line 72
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v1

    .line 73
    .local v1, "contentType":S
    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    .line 74
    if-nez v1, :cond_2

    .line 75
    :cond_0
    const/4 v0, 0x0

    .line 105
    :cond_1
    :goto_0
    return-object v0

    .line 78
    :cond_2
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 82
    .local v2, "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    if-nez v2, :cond_3

    .line 83
    sget-object v0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fEmptyCM:Lmf/org/apache/xerces/impl/xs/models/XSEmptyCM;

    goto :goto_0

    .line 87
    :cond_3
    const/4 v0, 0x0

    .line 88
    .local v0, "cmValidator":Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    iget-short v3, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 89
    iget-object v3, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v4, 0x67

    if-ne v3, v4, :cond_4

    .line 90
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->createAllCM(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-result-object v0

    .line 98
    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->resetNodeCount()V

    .line 102
    if-nez v0, :cond_1

    .line 103
    sget-object v0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fEmptyCM:Lmf/org/apache/xerces/impl/xs/models/XSEmptyCM;

    goto :goto_0

    .line 93
    :cond_4
    invoke-virtual {p0, v2, p2}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->createDFACM(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Z)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-result-object v0

    goto :goto_1
.end method

.method public setDeclPool(Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;)V
    .locals 0
    .param p1, "declPool"    # Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    .prologue
    .line 59
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    .line 60
    return-void
.end method
