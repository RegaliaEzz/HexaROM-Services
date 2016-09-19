.class public Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;
.super Ljava/lang/Object;
.source "DFAContentModel.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;


# static fields
.field private static final DEBUG_VALIDATE_CONTENT:Z

.field private static fEOCString:Ljava/lang/String;

.field private static fEpsilonString:Ljava/lang/String;


# instance fields
.field private fEOCPos:I

.field private fElemMap:[Lmf/org/apache/xerces/xni/QName;

.field private fElemMapSize:I

.field private fElemMapType:[I

.field private fEmptyContentIsValid:Z

.field private fFinalStateFlags:[Z

.field private fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

.field private fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

.field private fLeafCount:I

.field private fLeafList:[Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

.field private fLeafListType:[I

.field private fMixed:Z

.field private final fQName:Lmf/org/apache/xerces/xni/QName;

.field private fTransTable:[[I

.field private fTransTableSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "<<CMNODE_EPSILON>>"

    sput-object v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEpsilonString:Ljava/lang/String;

    .line 54
    const-string v0, "<<CMNODE_EOC>>"

    sput-object v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEOCString:Ljava/lang/String;

    .line 58
    sget-object v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEpsilonString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEpsilonString:Ljava/lang/String;

    .line 59
    sget-object v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEOCString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEOCString:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)V
    .locals 2
    .param p1, "syntaxTree"    # Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .param p2, "leafCount"    # I
    .param p3, "mixed"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMap:[Lmf/org/apache/xerces/xni/QName;

    .line 86
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapType:[I

    .line 89
    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    .line 98
    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEOCPos:I

    .line 106
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFinalStateFlags:[Z

    .line 113
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    .line 121
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    .line 127
    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    .line 133
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafList:[Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    .line 136
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafListType:[I

    .line 158
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    .line 164
    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fTransTableSize:I

    .line 174
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEmptyContentIsValid:Z

    .line 179
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fQName:Lmf/org/apache/xerces/xni/QName;

    .line 201
    iput p2, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    .line 205
    iput-boolean p3, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fMixed:Z

    .line 216
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->buildDFA(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    .line 217
    return-void
.end method

.method private buildDFA(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 36
    .param p1, "syntaxTree"    # Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    .prologue
    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    sget-object v33, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEOCString:Ljava/lang/String;

    sget-object v34, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEOCString:Ljava/lang/String;

    const/16 v35, 0x0

    invoke-virtual/range {v31 .. v35}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    new-instance v20, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v31, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;-><init>(Lmf/org/apache/xerces/xni/QName;)V

    .line 430
    .local v20, "nodeEOC":Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;
    new-instance v31, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    .line 432
    const/16 v32, 0x5

    .line 434
    move-object/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;-><init>(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    .line 430
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    .line 444
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEOCPos:I

    .line 445
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move/from16 v31, v0

    add-int/lit8 v32, v31, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->setPosition(I)V

    .line 461
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move/from16 v31, v0

    move/from16 v0, v31

    new-array v0, v0, [Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafList:[Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    .line 462
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move/from16 v31, v0

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafListType:[I

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)I

    .line 470
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move/from16 v31, v0

    move/from16 v0, v31

    new-array v0, v0, [Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    .line 471
    const/4 v12, 0x0

    .local v12, "index":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-lt v12, v0, :cond_1

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    .line 485
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move/from16 v31, v0

    move/from16 v0, v31

    new-array v0, v0, [Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMap:[Lmf/org/apache/xerces/xni/QName;

    .line 486
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move/from16 v31, v0

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapType:[I

    .line 487
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    .line 488
    const/16 v21, 0x0

    .local v21, "outIndex":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move/from16 v31, v0

    move/from16 v0, v21

    move/from16 v1, v31

    if-lt v0, v1, :cond_2

    .line 531
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move/from16 v0, v31

    new-array v8, v0, [I

    .line 532
    .local v8, "fLeafSorter":[I
    const/4 v9, 0x0

    .line 534
    .local v9, "fSortCount":I
    const/4 v6, 0x0

    .local v6, "elemIndex":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-lt v6, v0, :cond_6

    .line 560
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move/from16 v31, v0

    mul-int/lit8 v4, v31, 0x4

    .line 561
    .local v4, "curArraySize":I
    new-array v0, v4, [Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v28, v0

    .line 562
    .local v28, "statesToDo":[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    new-array v0, v4, [Z

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFinalStateFlags:[Z

    .line 563
    new-array v0, v4, [[I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v22

    .line 580
    .local v22, "setT":Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    const/16 v30, 0x0

    .line 581
    .local v30, "unmarkedState":I
    const/4 v5, 0x0

    .line 587
    .local v5, "curState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    move-object/from16 v31, v0

    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->makeDefStateList()[I

    move-result-object v32

    aput-object v32, v31, v5

    .line 588
    aput-object v22, v28, v5

    .line 589
    add-int/lit8 v5, v5, 0x1

    .line 595
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 604
    .local v27, "stateTable":Ljava/util/HashMap;
    :cond_0
    move/from16 v0, v30

    if-lt v0, v5, :cond_9

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-object/from16 v31, v0

    check-cast v31, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    invoke-virtual/range {v31 .. v31}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEmptyContentIsValid:Z

    .line 743
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    .line 744
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafList:[Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    .line 745
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    .line 747
    return-void

    .line 472
    .end local v4    # "curArraySize":I
    .end local v5    # "curState":I
    .end local v6    # "elemIndex":I
    .end local v8    # "fLeafSorter":[I
    .end local v9    # "fSortCount":I
    .end local v21    # "outIndex":I
    .end local v22    # "setT":Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    .end local v27    # "stateTable":Ljava/util/HashMap;
    .end local v28    # "statesToDo":[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    .end local v30    # "unmarkedState":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v31, v0

    new-instance v32, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move/from16 v33, v0

    invoke-direct/range {v32 .. v33}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;-><init>(I)V

    aput-object v32, v31, v12

    .line 471
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 490
    .restart local v21    # "outIndex":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMap:[Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v31, v0

    new-instance v32, Lmf/org/apache/xerces/xni/QName;

    invoke-direct/range {v32 .. v32}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    aput-object v32, v31, v21

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafList:[Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    move-object/from16 v31, v0

    aget-object v31, v31, v21

    invoke-virtual/range {v31 .. v31}, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->getElement()Lmf/org/apache/xerces/xni/QName;

    move-result-object v7

    .line 504
    .local v7, "element":Lmf/org/apache/xerces/xni/QName;
    const/4 v11, 0x0

    .line 505
    .local v11, "inIndex":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-lt v11, v0, :cond_5

    .line 513
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v11, v0, :cond_4

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMap:[Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    move/from16 v32, v0

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapType:[I

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafListType:[I

    move-object/from16 v33, v0

    aget v33, v33, v21

    aput v33, v31, v32

    .line 516
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    .line 488
    :cond_4
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 507
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMap:[Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v31, v0

    aget-object v31, v31, v11

    move-object/from16 v0, v31

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v31, v0

    iget-object v0, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_3

    .line 505
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 535
    .end local v7    # "element":Lmf/org/apache/xerces/xni/QName;
    .end local v11    # "inIndex":I
    .restart local v6    # "elemIndex":I
    .restart local v8    # "fLeafSorter":[I
    .restart local v9    # "fSortCount":I
    :cond_6
    const/4 v14, 0x0

    .local v14, "leafIndex":I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-lt v14, v0, :cond_7

    .line 542
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "fSortCount":I
    .local v10, "fSortCount":I
    const/16 v31, -0x1

    aput v31, v8, v9

    .line 534
    add-int/lit8 v6, v6, 0x1

    move v9, v10

    .end local v10    # "fSortCount":I
    .restart local v9    # "fSortCount":I
    goto/16 :goto_2

    .line 536
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafList:[Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    move-object/from16 v31, v0

    aget-object v31, v31, v14

    invoke-virtual/range {v31 .. v31}, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->getElement()Lmf/org/apache/xerces/xni/QName;

    move-result-object v13

    .line 537
    .local v13, "leaf":Lmf/org/apache/xerces/xni/QName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMap:[Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v31, v0

    aget-object v7, v31, v6

    .line 538
    .restart local v7    # "element":Lmf/org/apache/xerces/xni/QName;
    iget-object v0, v13, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v31, v0

    iget-object v0, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_8

    .line 539
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "fSortCount":I
    .restart local v10    # "fSortCount":I
    aput v14, v8, v9

    move v9, v10

    .line 535
    .end local v10    # "fSortCount":I
    .restart local v9    # "fSortCount":I
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 610
    .end local v7    # "element":Lmf/org/apache/xerces/xni/QName;
    .end local v13    # "leaf":Lmf/org/apache/xerces/xni/QName;
    .end local v14    # "leafIndex":I
    .restart local v4    # "curArraySize":I
    .restart local v5    # "curState":I
    .restart local v22    # "setT":Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    .restart local v27    # "stateTable":Ljava/util/HashMap;
    .restart local v28    # "statesToDo":[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    .restart local v30    # "unmarkedState":I
    :cond_9
    aget-object v22, v28, v30

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    move-object/from16 v31, v0

    aget-object v29, v31, v30

    .line 614
    .local v29, "transEntry":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFinalStateFlags:[Z

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEOCPos:I

    move/from16 v32, v0

    move-object/from16 v0, v22

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v32

    aput-boolean v32, v31, v30

    .line 617
    add-int/lit8 v30, v30, 0x1

    .line 620
    const/16 v16, 0x0

    .line 622
    .local v16, "newSet":Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    const/16 v23, 0x0

    .line 624
    .local v23, "sorterIndex":I
    const/4 v6, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v6, v0, :cond_0

    .line 632
    if-nez v16, :cond_c

    .line 633
    new-instance v16, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    .end local v16    # "newSet":Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move/from16 v31, v0

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;-><init>(I)V

    .line 638
    .restart local v16    # "newSet":Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    :goto_6
    add-int/lit8 v24, v23, 0x1

    .end local v23    # "sorterIndex":I
    .local v24, "sorterIndex":I
    aget v14, v8, v23

    .line 640
    .restart local v14    # "leafIndex":I
    :goto_7
    const/16 v31, -0x1

    move/from16 v0, v31

    if-ne v14, v0, :cond_d

    .line 660
    invoke-virtual/range {v16 .. v16}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_b

    .line 668
    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    .line 669
    .local v26, "stateObj":Ljava/lang/Integer;
    if-nez v26, :cond_f

    move/from16 v25, v5

    .line 673
    .local v25, "stateIndex":I
    :goto_8
    move/from16 v0, v25

    if-ne v0, v5, :cond_a

    .line 680
    aput-object v16, v28, v5

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    move-object/from16 v31, v0

    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->makeDefStateList()[I

    move-result-object v32

    aput-object v32, v31, v5

    .line 684
    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v0, v31

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    add-int/lit8 v5, v5, 0x1

    .line 695
    const/16 v16, 0x0

    .line 704
    :cond_a
    aput v25, v29, v6

    .line 707
    if-ne v5, v4, :cond_b

    .line 714
    int-to-double v0, v4

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x3ff8000000000000L    # 1.5

    mul-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v17, v0

    .line 715
    .local v17, "newSize":I
    move/from16 v0, v17

    new-array v0, v0, [Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v18, v0

    .line 716
    .local v18, "newToDo":[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    move/from16 v0, v17

    new-array v15, v0, [Z

    .line 717
    .local v15, "newFinalFlags":[Z
    move/from16 v0, v17

    new-array v0, v0, [[I

    move-object/from16 v19, v0

    .line 720
    .local v19, "newTransTable":[[I
    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move-object/from16 v2, v18

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFinalStateFlags:[Z

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v15, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, v19

    move/from16 v3, v33

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 725
    move/from16 v4, v17

    .line 726
    move-object/from16 v28, v18

    .line 727
    move-object/from16 v0, p0

    iput-object v15, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFinalStateFlags:[Z

    .line 728
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    .line 624
    .end local v15    # "newFinalFlags":[Z
    .end local v17    # "newSize":I
    .end local v18    # "newToDo":[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    .end local v19    # "newTransTable":[[I
    .end local v25    # "stateIndex":I
    .end local v26    # "stateObj":Ljava/lang/Integer;
    :cond_b
    add-int/lit8 v6, v6, 0x1

    move/from16 v23, v24

    .end local v24    # "sorterIndex":I
    .restart local v23    # "sorterIndex":I
    goto/16 :goto_5

    .line 635
    .end local v14    # "leafIndex":I
    :cond_c
    invoke-virtual/range {v16 .. v16}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->zeroBits()V

    goto/16 :goto_6

    .line 642
    .end local v23    # "sorterIndex":I
    .restart local v14    # "leafIndex":I
    .restart local v24    # "sorterIndex":I
    :cond_d
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v31

    if-eqz v31, :cond_e

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v31, v0

    aget-object v31, v31, v14

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    .line 652
    :cond_e
    add-int/lit8 v23, v24, 0x1

    .end local v24    # "sorterIndex":I
    .restart local v23    # "sorterIndex":I
    aget v14, v8, v24

    move/from16 v24, v23

    .end local v23    # "sorterIndex":I
    .restart local v24    # "sorterIndex":I
    goto/16 :goto_7

    .line 669
    .restart local v26    # "stateObj":Ljava/lang/Integer;
    :cond_f
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v25

    goto/16 :goto_8
.end method

.method private calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 5
    .param p1, "nodeCur"    # Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    .prologue
    .line 759
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    move-object v3, p1

    .line 762
    check-cast v3, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    .line 763
    check-cast p1, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    .end local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    .line 850
    :cond_0
    :goto_0
    return-void

    .line 765
    .restart local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    :cond_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    move-object v3, p1

    .line 768
    check-cast v3, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    move-object v3, p1

    .line 769
    check-cast v3, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    move-object v3, p1

    .line 776
    check-cast v3, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v2

    .line 777
    .local v2, "last":Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    check-cast p1, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    .end local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    .line 784
    .local v0, "first":Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    if-ge v1, v3, :cond_0

    .line 786
    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 787
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    .line 784
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 820
    .end local v0    # "first":Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    .end local v1    # "index":I
    .end local v2    # "last":Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    .restart local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    :cond_3
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    .line 821
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    :cond_4
    move-object v3, p1

    .line 824
    check-cast v3, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    .line 830
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    .line 831
    .restart local v0    # "first":Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v2

    .line 838
    .restart local v2    # "last":Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    const/4 v1, 0x0

    .restart local v1    # "index":I
    :goto_2
    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    if-ge v1, v3, :cond_0

    .line 840
    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 841
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    .line 838
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 845
    .end local v0    # "first":Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    .end local v1    # "index":I
    .end local v2    # "last":Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    :cond_6
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 847
    check-cast p1, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;

    .end local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    goto/16 :goto_0
.end method

.method private dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V
    .locals 5
    .param p1, "nodeCur"    # Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .param p2, "level"    # I

    .prologue
    const/4 v4, 0x4

    .line 862
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-lt v0, p2, :cond_2

    .line 865
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v1

    .line 866
    .local v1, "type":I
    if-eq v1, v4, :cond_0

    .line 867
    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 869
    :cond_0
    if-ne v1, v4, :cond_3

    .line 870
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Choice Node "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 874
    :goto_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 875
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Nullable "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 877
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "firstPos="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 878
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 879
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " lastPos="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 880
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v2, p1

    .line 882
    check-cast v2, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v2, v3}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V

    .line 883
    check-cast p1, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    .end local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v2, v3}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V

    .line 924
    :goto_2
    return-void

    .line 863
    .end local v1    # "type":I
    .restart local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 862
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 872
    .restart local v1    # "type":I
    :cond_3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Seq Node "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 885
    :cond_4
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 887
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Rep Node "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 889
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 890
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Nullable "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 892
    :cond_5
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "firstPos="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 893
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 894
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " lastPos="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 895
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 897
    check-cast p1, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;

    .end local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v2, v3}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V

    goto :goto_2

    .line 899
    .restart local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    :cond_6
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    if-nez v2, :cond_8

    .line 901
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 903
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "Leaf: (pos="

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, p1

    .line 904
    check-cast v2, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->getPosition()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 905
    const-string v4, "), "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v2, p1

    .line 906
    check-cast v2, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->getElement()Lmf/org/apache/xerces/xni/QName;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 907
    const-string v4, "(elemIndex="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v2, p1

    .line 908
    check-cast v2, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->getElement()Lmf/org/apache/xerces/xni/QName;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 909
    const-string v4, ") "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 903
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 901
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 912
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 913
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " Nullable "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 915
    :cond_7
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "firstPos="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 916
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 917
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " lastPos="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 918
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 922
    :cond_8
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ImplementationMessages.VAL_NIICM"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private makeDefStateList()[I
    .locals 3

    .prologue
    .line 934
    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    new-array v1, v2, [I

    .line 935
    .local v1, "retArray":[I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    if-lt v0, v2, :cond_0

    .line 937
    return-object v1

    .line 936
    :cond_0
    const/4 v2, -0x1

    aput v2, v1, v0

    .line 935
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)I
    .locals 5
    .param p1, "nodeCur"    # Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .param p2, "curIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 944
    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->setMaxStates(I)V

    .line 947
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    .line 948
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    and-int/lit8 v2, v2, 0xf

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 949
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    .line 951
    :cond_0
    new-instance v1, Lmf/org/apache/xerces/xni/QName;

    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/impl/dtd/models/CMAny;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v4, v4, v2}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    .local v1, "qname":Lmf/org/apache/xerces/xni/QName;
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafList:[Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    new-instance v4, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/impl/dtd/models/CMAny;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->getPosition()I

    move-result v2

    invoke-direct {v4, v1, v2}, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;-><init>(Lmf/org/apache/xerces/xni/QName;I)V

    aput-object v4, v3, p2

    .line 953
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafListType:[I

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v3

    aput v3, v2, p2

    .line 954
    add-int/lit8 p2, p2, 0x1

    .line 985
    .end local v1    # "qname":Lmf/org/apache/xerces/xni/QName;
    .end local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    :cond_1
    :goto_0
    return p2

    .line 956
    .restart local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    :cond_2
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    .line 957
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    :cond_3
    move-object v2, p1

    .line 959
    check-cast v2, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)I

    move-result p2

    .line 960
    check-cast p1, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    .end local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)I

    move-result p2

    .line 961
    goto :goto_0

    .line 962
    .restart local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    :cond_4
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    .line 963
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    .line 964
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 966
    :cond_5
    check-cast p1, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;

    .end local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)I

    move-result p2

    .line 967
    goto :goto_0

    .line 968
    .restart local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    :cond_6
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    if-nez v2, :cond_7

    move-object v2, p1

    .line 974
    check-cast v2, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->getElement()Lmf/org/apache/xerces/xni/QName;

    move-result-object v0

    .line 975
    .local v0, "node":Lmf/org/apache/xerces/xni/QName;
    iget-object v2, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v3, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEpsilonString:Ljava/lang/String;

    if-eq v2, v3, :cond_1

    .line 976
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafList:[Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    check-cast p1, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    .end local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    aput-object p1, v2, p2

    .line 977
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafListType:[I

    const/4 v3, 0x0

    aput v3, v2, p2

    .line 978
    add-int/lit8 p2, p2, 0x1

    .line 980
    goto :goto_0

    .line 983
    .end local v0    # "node":Lmf/org/apache/xerces/xni/QName;
    .restart local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    :cond_7
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ImplementationMessages.VAL_NIICM: type="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public validate([Lmf/org/apache/xerces/xni/QName;II)I
    .locals 9
    .param p1, "children"    # [Lmf/org/apache/xerces/xni/QName;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v6, -0x1

    .line 264
    if-nez p3, :cond_2

    .line 282
    iget-boolean v7, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEmptyContentIsValid:Z

    if-eqz v7, :cond_1

    .line 370
    :cond_0
    :goto_0
    return v6

    .line 282
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 291
    :cond_2
    const/4 v2, 0x0

    .line 292
    .local v2, "curState":I
    const/4 v0, 0x0

    .local v0, "childIndex":I
    :goto_1
    if-lt v0, p3, :cond_3

    .line 366
    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFinalStateFlags:[Z

    aget-boolean v7, v7, v2

    if-nez v7, :cond_0

    move v6, p3

    .line 367
    goto :goto_0

    .line 295
    :cond_3
    add-int v7, p2, v0

    aget-object v1, p1, v7

    .line 297
    .local v1, "curElem":Lmf/org/apache/xerces/xni/QName;
    iget-boolean v7, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fMixed:Z

    if-eqz v7, :cond_5

    iget-object v7, v1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-nez v7, :cond_5

    .line 292
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 302
    :cond_5
    const/4 v3, 0x0

    .line 303
    .local v3, "elemIndex":I
    :goto_2
    iget v7, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    if-lt v3, v7, :cond_7

    .line 331
    :cond_6
    :goto_3
    iget v7, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    if-ne v3, v7, :cond_c

    move v6, v0

    .line 342
    goto :goto_0

    .line 305
    :cond_7
    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapType:[I

    aget v7, v7, v3

    and-int/lit8 v4, v7, 0xf

    .line 306
    .local v4, "type":I
    if-nez v4, :cond_9

    .line 308
    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMap:[Lmf/org/apache/xerces/xni/QName;

    aget-object v7, v7, v3

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v8, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v7, v8, :cond_6

    .line 303
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 312
    :cond_9
    const/4 v7, 0x6

    if-ne v4, v7, :cond_a

    .line 313
    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMap:[Lmf/org/apache/xerces/xni/QName;

    aget-object v7, v7, v3

    iget-object v5, v7, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 314
    .local v5, "uri":Ljava/lang/String;
    if-eqz v5, :cond_6

    iget-object v7, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v5, v7, :cond_8

    goto :goto_3

    .line 318
    .end local v5    # "uri":Ljava/lang/String;
    :cond_a
    const/16 v7, 0x8

    if-ne v4, v7, :cond_b

    .line 319
    iget-object v7, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v7, :cond_8

    goto :goto_3

    .line 323
    :cond_b
    const/4 v7, 0x7

    if-ne v4, v7, :cond_8

    .line 324
    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMap:[Lmf/org/apache/xerces/xni/QName;

    aget-object v7, v7, v3

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v8, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq v7, v8, :cond_8

    goto :goto_3

    .line 349
    .end local v4    # "type":I
    :cond_c
    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    aget-object v7, v7, v2

    aget v2, v7, v3

    .line 352
    if-ne v2, v6, :cond_4

    move v6, v0

    .line 355
    goto :goto_0
.end method
