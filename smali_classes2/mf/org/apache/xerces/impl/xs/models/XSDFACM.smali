.class public Lmf/org/apache/xerces/impl/xs/models/XSDFACM;
.super Ljava/lang/Object;
.source "XSDFACM.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_VALIDATE_CONTENT:Z

.field private static time:J


# instance fields
.field private fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

.field private fElemMap:[Ljava/lang/Object;

.field private fElemMapId:[I

.field private fElemMapSize:I

.field private fElemMapType:[I

.field private fFinalStateFlags:[Z

.field private fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

.field private fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

.field private fIsCompactedForUPA:Z

.field private fLeafCount:I

.field private fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

.field private fLeafListType:[I

.field private fTransTable:[[I

.field private fTransTableSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 219
    const-wide/16 v0, 0x0

    sput-wide v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->time:J

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V
    .locals 2
    .param p1, "syntaxTree"    # Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .param p2, "leafCount"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    .line 79
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    .line 84
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapId:[I

    .line 87
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    .line 94
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    .line 101
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    .line 109
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    .line 115
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    .line 121
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    .line 124
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafListType:[I

    .line 138
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    .line 144
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    .line 166
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTableSize:I

    .line 188
    iput p2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    .line 189
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isCompactedForUPA()Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fIsCompactedForUPA:Z

    .line 211
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->buildDFA(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    .line 217
    return-void
.end method

.method private buildDFA(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 43
    .param p1, "syntaxTree"    # Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    .prologue
    .line 508
    move-object/from16 v0, p0

    iget v6, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    .line 509
    .local v6, "EOCPos":I
    new-instance v26, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    const/16 v38, 0x1

    const/16 v39, 0x0

    const/16 v40, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move/from16 v41, v0

    add-int/lit8 v42, v41, 0x1

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move-object/from16 v0, v26

    move/from16 v1, v38

    move-object/from16 v2, v39

    move/from16 v3, v40

    move/from16 v4, v41

    invoke-direct {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;-><init>(ILjava/lang/Object;II)V

    .line 510
    .local v26, "nodeEOC":Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;
    new-instance v38, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    .line 511
    const/16 v39, 0x66

    .line 513
    move-object/from16 v0, v38

    move/from16 v1, v39

    move-object/from16 v2, p1

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;-><init>(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    .line 510
    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    .line 530
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move/from16 v38, v0

    move/from16 v0, v38

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    .line 531
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move/from16 v38, v0

    move/from16 v0, v38

    new-array v0, v0, [I

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafListType:[I

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    .line 539
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move/from16 v38, v0

    move/from16 v0, v38

    new-array v0, v0, [Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    .line 540
    const/16 v17, 0x0

    .local v17, "index":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move/from16 v38, v0

    move/from16 v0, v17

    move/from16 v1, v38

    if-lt v0, v1, :cond_2

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    .line 554
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move/from16 v38, v0

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    .line 555
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move/from16 v38, v0

    move/from16 v0, v38

    new-array v0, v0, [I

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    .line 556
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move/from16 v38, v0

    move/from16 v0, v38

    new-array v0, v0, [I

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapId:[I

    .line 557
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    .line 558
    const/4 v10, 0x0

    .line 559
    .local v10, "elemOccurenceMap":[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;
    const/16 v27, 0x0

    .local v27, "outIndex":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move/from16 v38, v0

    move/from16 v0, v27

    move/from16 v1, v38

    if-lt v0, v1, :cond_3

    .line 593
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, -0x1

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    .line 601
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move/from16 v0, v38

    new-array v11, v0, [I

    .line 602
    .local v11, "fLeafSorter":[I
    const/4 v12, 0x0

    .line 604
    .local v12, "fSortCount":I
    const/4 v9, 0x0

    .local v9, "elemIndex":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-lt v9, v0, :cond_9

    .line 628
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move/from16 v38, v0

    mul-int/lit8 v7, v38, 0x4

    .line 629
    .local v7, "curArraySize":I
    new-array v0, v7, [Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v34, v0

    .line 630
    .local v34, "statesToDo":[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    new-array v0, v7, [Z

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    .line 631
    new-array v0, v7, [[I

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v28

    .line 648
    .local v28, "setT":Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    const/16 v37, 0x0

    .line 649
    .local v37, "unmarkedState":I
    const/4 v8, 0x0

    .line 655
    .local v8, "curState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    move-object/from16 v38, v0

    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->makeDefStateList()[I

    move-result-object v39

    aput-object v39, v38, v8

    .line 656
    aput-object v28, v34, v8

    .line 657
    add-int/lit8 v8, v8, 0x1

    .line 663
    new-instance v33, Ljava/util/HashMap;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashMap;-><init>()V

    .line 672
    .local v33, "stateTable":Ljava/util/HashMap;
    :cond_0
    move/from16 v0, v37

    if-lt v0, v8, :cond_c

    .line 800
    if-eqz v10, :cond_1

    .line 801
    new-array v0, v8, [Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    .line 802
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    if-lt v14, v8, :cond_13

    .line 819
    .end local v14    # "i":I
    :cond_1
    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    .line 820
    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    .line 821
    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    .line 822
    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafListType:[I

    .line 823
    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapId:[I

    .line 824
    return-void

    .line 541
    .end local v7    # "curArraySize":I
    .end local v8    # "curState":I
    .end local v9    # "elemIndex":I
    .end local v10    # "elemOccurenceMap":[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;
    .end local v11    # "fLeafSorter":[I
    .end local v12    # "fSortCount":I
    .end local v27    # "outIndex":I
    .end local v28    # "setT":Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    .end local v33    # "stateTable":Ljava/util/HashMap;
    .end local v34    # "statesToDo":[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    .end local v37    # "unmarkedState":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v38, v0

    new-instance v39, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move/from16 v40, v0

    invoke-direct/range {v39 .. v40}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;-><init>(I)V

    aput-object v39, v38, v17

    .line 540
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 562
    .restart local v10    # "elemOccurenceMap":[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;
    .restart local v27    # "outIndex":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aput-object v39, v38, v27

    .line 564
    const/16 v16, 0x0

    .line 565
    .local v16, "inIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    move-object/from16 v38, v0

    aget-object v38, v38, v27

    invoke-virtual/range {v38 .. v38}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getParticleId()I

    move-result v15

    .line 566
    .local v15, "id":I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    move/from16 v38, v0

    move/from16 v0, v16

    move/from16 v1, v38

    if-lt v0, v1, :cond_8

    .line 572
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    move/from16 v38, v0

    move/from16 v0, v16

    move/from16 v1, v38

    if-ne v0, v1, :cond_7

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    move-object/from16 v38, v0

    aget-object v19, v38, v27

    .line 574
    .local v19, "leaf":Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    move/from16 v39, v0

    invoke-virtual/range {v19 .. v19}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getLeaf()Ljava/lang/Object;

    move-result-object v40

    aput-object v40, v38, v39

    .line 575
    move-object/from16 v0, v19

    instance-of v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;

    move/from16 v38, v0

    if-eqz v38, :cond_6

    .line 576
    if-nez v10, :cond_5

    .line 577
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move/from16 v38, v0

    move/from16 v0, v38

    new-array v10, v0, [Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    .line 579
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    move/from16 v38, v0

    new-instance v39, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    check-cast v19, Lmf/org/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;

    .end local v19    # "leaf":Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    move/from16 v40, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v19

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;-><init>(Lmf/org/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;I)V

    aput-object v39, v10, v38

    .line 581
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafListType:[I

    move-object/from16 v40, v0

    aget v40, v40, v27

    aput v40, v38, v39

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapId:[I

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    move/from16 v39, v0

    aput v15, v38, v39

    .line 583
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    .line 559
    :cond_7
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_1

    .line 567
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapId:[I

    move-object/from16 v38, v0

    aget v38, v38, v16

    move/from16 v0, v38

    if-eq v15, v0, :cond_4

    .line 566
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    .line 605
    .end local v15    # "id":I
    .end local v16    # "inIndex":I
    .restart local v9    # "elemIndex":I
    .restart local v11    # "fLeafSorter":[I
    .restart local v12    # "fSortCount":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapId:[I

    move-object/from16 v38, v0

    aget v15, v38, v9

    .line 606
    .restart local v15    # "id":I
    const/16 v20, 0x0

    .local v20, "leafIndex":I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move/from16 v38, v0

    move/from16 v0, v20

    move/from16 v1, v38

    if-lt v0, v1, :cond_a

    .line 610
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "fSortCount":I
    .local v13, "fSortCount":I
    const/16 v38, -0x1

    aput v38, v11, v12

    .line 604
    add-int/lit8 v9, v9, 0x1

    move v12, v13

    .end local v13    # "fSortCount":I
    .restart local v12    # "fSortCount":I
    goto/16 :goto_2

    .line 607
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    move-object/from16 v38, v0

    aget-object v38, v38, v20

    invoke-virtual/range {v38 .. v38}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getParticleId()I

    move-result v38

    move/from16 v0, v38

    if-ne v15, v0, :cond_b

    .line 608
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "fSortCount":I
    .restart local v13    # "fSortCount":I
    aput v20, v11, v12

    move v12, v13

    .line 606
    .end local v13    # "fSortCount":I
    .restart local v12    # "fSortCount":I
    :cond_b
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 677
    .end local v15    # "id":I
    .end local v20    # "leafIndex":I
    .restart local v7    # "curArraySize":I
    .restart local v8    # "curState":I
    .restart local v28    # "setT":Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    .restart local v33    # "stateTable":Ljava/util/HashMap;
    .restart local v34    # "statesToDo":[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    .restart local v37    # "unmarkedState":I
    :cond_c
    aget-object v28, v34, v37

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    move-object/from16 v38, v0

    aget-object v35, v38, v37

    .line 681
    .local v35, "transEntry":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    move-object/from16 v38, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v39

    aput-boolean v39, v38, v37

    .line 684
    add-int/lit8 v37, v37, 0x1

    .line 687
    const/16 v22, 0x0

    .line 689
    .local v22, "newSet":Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    const/16 v29, 0x0

    .line 691
    .local v29, "sorterIndex":I
    const/4 v9, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-ge v9, v0, :cond_0

    .line 698
    if-nez v22, :cond_f

    .line 699
    new-instance v22, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    .end local v22    # "newSet":Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move/from16 v38, v0

    move-object/from16 v0, v22

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;-><init>(I)V

    .line 704
    .restart local v22    # "newSet":Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    :goto_7
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "sorterIndex":I
    .local v30, "sorterIndex":I
    aget v20, v11, v29

    .line 706
    .restart local v20    # "leafIndex":I
    :goto_8
    const/16 v38, -0x1

    move/from16 v0, v20

    move/from16 v1, v38

    if-ne v0, v1, :cond_10

    .line 725
    invoke-virtual/range {v22 .. v22}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_e

    .line 732
    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    .line 733
    .local v32, "stateObj":Ljava/lang/Integer;
    if-nez v32, :cond_12

    move/from16 v31, v8

    .line 737
    .local v31, "stateIndex":I
    :goto_9
    move/from16 v0, v31

    if-ne v0, v8, :cond_d

    .line 743
    aput-object v22, v34, v8

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    move-object/from16 v38, v0

    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->makeDefStateList()[I

    move-result-object v39

    aput-object v39, v38, v8

    .line 747
    new-instance v38, Ljava/lang/Integer;

    move-object/from16 v0, v38

    invoke-direct {v0, v8}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    add-int/lit8 v8, v8, 0x1

    .line 758
    const/16 v22, 0x0

    .line 767
    :cond_d
    aput v31, v35, v9

    .line 770
    if-ne v8, v7, :cond_e

    .line 776
    int-to-double v0, v7

    move-wide/from16 v38, v0

    const-wide/high16 v40, 0x3ff8000000000000L    # 1.5

    mul-double v38, v38, v40

    move-wide/from16 v0, v38

    double-to-int v0, v0

    move/from16 v23, v0

    .line 777
    .local v23, "newSize":I
    move/from16 v0, v23

    new-array v0, v0, [Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v24, v0

    .line 778
    .local v24, "newToDo":[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    move/from16 v0, v23

    new-array v0, v0, [Z

    move-object/from16 v21, v0

    .line 779
    .local v21, "newFinalFlags":[Z
    move/from16 v0, v23

    new-array v0, v0, [[I

    move-object/from16 v25, v0

    .line 782
    .local v25, "newTransTable":[[I
    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v38

    move-object/from16 v2, v24

    move/from16 v3, v39

    invoke-static {v0, v1, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v39

    move-object/from16 v2, v21

    move/from16 v3, v40

    invoke-static {v0, v1, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v39

    move-object/from16 v2, v25

    move/from16 v3, v40

    invoke-static {v0, v1, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 787
    move/from16 v7, v23

    .line 788
    move-object/from16 v34, v24

    .line 789
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    .line 790
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    .line 691
    .end local v21    # "newFinalFlags":[Z
    .end local v23    # "newSize":I
    .end local v24    # "newToDo":[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    .end local v25    # "newTransTable":[[I
    .end local v31    # "stateIndex":I
    .end local v32    # "stateObj":Ljava/lang/Integer;
    :cond_e
    add-int/lit8 v9, v9, 0x1

    move/from16 v29, v30

    .end local v30    # "sorterIndex":I
    .restart local v29    # "sorterIndex":I
    goto/16 :goto_6

    .line 701
    .end local v20    # "leafIndex":I
    :cond_f
    invoke-virtual/range {v22 .. v22}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->zeroBits()V

    goto/16 :goto_7

    .line 708
    .end local v29    # "sorterIndex":I
    .restart local v20    # "leafIndex":I
    .restart local v30    # "sorterIndex":I
    :cond_10
    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v38

    if-eqz v38, :cond_11

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v38, v0

    aget-object v38, v38, v20

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    .line 717
    :cond_11
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "sorterIndex":I
    .restart local v29    # "sorterIndex":I
    aget v20, v11, v30

    move/from16 v30, v29

    .end local v29    # "sorterIndex":I
    .restart local v30    # "sorterIndex":I
    goto/16 :goto_8

    .line 733
    .restart local v32    # "stateObj":Ljava/lang/Integer;
    :cond_12
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v31

    goto/16 :goto_9

    .line 803
    .end local v20    # "leafIndex":I
    .end local v22    # "newSet":Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    .end local v30    # "sorterIndex":I
    .end local v32    # "stateObj":Ljava/lang/Integer;
    .end local v35    # "transEntry":[I
    .restart local v14    # "i":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    move-object/from16 v38, v0

    aget-object v36, v38, v14

    .line 804
    .local v36, "transitions":[I
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_a
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v38, v0

    move/from16 v0, v18

    move/from16 v1, v38

    if-lt v0, v1, :cond_14

    .line 802
    :goto_b
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 805
    :cond_14
    aget v38, v36, v18

    move/from16 v0, v38

    if-ne v14, v0, :cond_15

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    move-object/from16 v38, v0

    aget-object v39, v10, v18

    aput-object v39, v38, v14

    goto :goto_b

    .line 804
    :cond_15
    add-int/lit8 v18, v18, 0x1

    goto :goto_a
.end method

.method private calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 5
    .param p1, "nodeCur"    # Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    .prologue
    .line 835
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v3

    const/16 v4, 0x65

    if-ne v3, v4, :cond_1

    move-object v3, p1

    .line 837
    check-cast v3, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    .line 838
    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    .end local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 840
    .restart local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    :cond_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v3

    const/16 v4, 0x66

    if-ne v3, v4, :cond_3

    move-object v3, p1

    .line 842
    check-cast v3, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    move-object v3, p1

    .line 843
    check-cast v3, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    move-object v3, p1

    .line 850
    check-cast v3, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v2

    .line 851
    .local v2, "last":Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    .end local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    .line 858
    .local v0, "first":Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    if-ge v1, v3, :cond_0

    .line 859
    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 860
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    .line 858
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 863
    .end local v0    # "first":Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    .end local v1    # "index":I
    .end local v2    # "last":Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    .restart local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    :cond_3
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    .line 864
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_6

    :cond_4
    move-object v3, p1

    .line 866
    check-cast v3, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    .line 872
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    .line 873
    .restart local v0    # "first":Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v2

    .line 880
    .restart local v2    # "last":Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    const/4 v1, 0x0

    .restart local v1    # "index":I
    :goto_2
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    if-ge v1, v3, :cond_0

    .line 881
    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 882
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    .line 880
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 886
    .end local v0    # "first":Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    .end local v1    # "index":I
    .end local v2    # "last":Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    :cond_6
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 888
    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;

    .end local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    goto/16 :goto_0
.end method

.method private dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V
    .locals 5
    .param p1, "nodeCur"    # Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .param p2, "level"    # I

    .prologue
    .line 902
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 905
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v1

    .line 907
    .local v1, "type":I
    sparse-switch v1, :sswitch_data_0

    .line 973
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ImplementationMessages.VAL_NIICM"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 903
    .end local v1    # "type":I
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 902
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 911
    .restart local v1    # "type":I
    :sswitch_0
    const/16 v2, 0x65

    if-ne v1, v2, :cond_2

    .line 912
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Choice Node "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 916
    :goto_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 917
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Nullable "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 919
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "firstPos="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 920
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 921
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " lastPos="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 922
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v2, p1

    .line 924
    check-cast v2, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v2, v3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V

    .line 925
    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    .end local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v2, v3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V

    .line 977
    :goto_2
    return-void

    .line 914
    .restart local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Seq Node "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 931
    :sswitch_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Rep Node "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 933
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 934
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Nullable "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 936
    :cond_3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "firstPos="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 937
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 938
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " lastPos="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 939
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 941
    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;

    .end local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v2, v3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V

    goto :goto_2

    .line 945
    .restart local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    :sswitch_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 947
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "Leaf: (pos="

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, p1

    .line 948
    check-cast v2, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getPosition()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 949
    const-string v4, "), "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 950
    const-string v4, "(elemIndex="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v2, p1

    .line 951
    check-cast v2, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getLeaf()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 952
    const-string v4, ") "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 947
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 945
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 955
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 956
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " Nullable "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 958
    :cond_4
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "firstPos="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 959
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 960
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " lastPos="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 961
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 965
    :sswitch_3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Any Node: "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 967
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "firstPos="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 968
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 969
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " lastPos="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 970
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 907
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
    .end sparse-switch
.end method

.method private makeDefStateList()[I
    .locals 3

    .prologue
    .line 987
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    new-array v1, v2, [I

    .line 988
    .local v1, "retArray":[I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-lt v0, v2, :cond_0

    .line 990
    return-object v1

    .line 989
    :cond_0
    const/4 v2, -0x1

    aput v2, v1, v0

    .line 988
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 5
    .param p1, "nodeCur"    # Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 996
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->setMaxStates(I)V

    .line 998
    const/4 v0, 0x0

    .line 999
    .local v0, "leaf":Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;
    const/4 v1, 0x0

    .line 1001
    .local v1, "pos":I
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 1002
    check-cast v0, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    .line 1003
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getPosition()I

    move-result v1

    .line 1004
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    aput-object v0, v2, v1

    .line 1005
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafListType:[I

    aput v3, v2, v1

    .line 1028
    .end local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    :goto_0
    return-void

    .line 1007
    .restart local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    :cond_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    const/16 v3, 0x65

    if-eq v2, v3, :cond_1

    .line 1008
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    const/16 v3, 0x66

    if-ne v2, v3, :cond_2

    :cond_1
    move-object v2, p1

    .line 1009
    check-cast v2, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    .line 1010
    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    .end local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    goto :goto_0

    .line 1012
    .restart local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    :cond_2
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    .line 1013
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_3

    .line 1014
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 1015
    :cond_3
    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;

    .end local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    goto :goto_0

    .line 1017
    .restart local p1    # "nodeCur":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    :cond_4
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    if-ne v2, v4, :cond_5

    move-object v0, p1

    .line 1020
    check-cast v0, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    .line 1021
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getPosition()I

    move-result v1

    .line 1022
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    aput-object v0, v2, v1

    .line 1023
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafListType:[I

    aput v4, v2, v1

    goto :goto_0

    .line 1026
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ImplementationMessages.VAL_NIICM"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public checkUniqueParticleAttribution(Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    .locals 12
    .param p1, "subGroupHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v7, 0x1

    .line 1041
    iget v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    iget v9, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    filled-new-array {v6, v9}, [I

    move-result-object v6

    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    .line 1044
    .local v0, "conflictTable":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    array-length v6, v6

    if-ge v1, v6, :cond_0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v6, v6, v1

    if-nez v6, :cond_2

    .line 1077
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-lt v1, v6, :cond_a

    .line 1091
    const/4 v1, 0x0

    :goto_2
    iget v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-lt v1, v6, :cond_d

    move v7, v8

    .line 1101
    :cond_1
    return v7

    .line 1045
    :cond_2
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    iget v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-lt v2, v6, :cond_3

    .line 1044
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1046
    :cond_3
    add-int/lit8 v3, v2, 0x1

    .local v3, "k":I
    :goto_4
    iget v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-lt v3, v6, :cond_4

    .line 1045
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1047
    :cond_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v6, v6, v1

    aget v6, v6, v2

    if-eq v6, v10, :cond_5

    .line 1048
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v6, v6, v1

    aget v6, v6, v3

    if-eq v6, v10, :cond_5

    .line 1049
    aget-object v6, v0, v2

    aget-byte v6, v6, v3

    if-nez v6, :cond_5

    .line 1051
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v6, v6, v2

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v9, v9, v3

    .line 1050
    invoke-static {v6, v9, p1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->overlapUPA(Ljava/lang/Object;Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z

    move-result v6

    .line 1052
    if-eqz v6, :cond_9

    .line 1053
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    if-eqz v6, :cond_8

    .line 1054
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v4, v6, v1

    .line 1058
    .local v4, "o":Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;
    if-eqz v4, :cond_8

    .line 1059
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v6, v6, v1

    aget v6, v6, v2

    if-ne v6, v1, :cond_6

    move v6, v7

    :goto_5
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v9, v9, v1

    aget v9, v9, v3

    if-ne v9, v1, :cond_7

    move v9, v7

    :goto_6
    xor-int/2addr v6, v9

    if-eqz v6, :cond_8

    .line 1060
    iget v6, v4, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->minOccurs:I

    iget v9, v4, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->maxOccurs:I

    if-ne v6, v9, :cond_8

    .line 1061
    aget-object v6, v0, v2

    aput-byte v10, v6, v3

    .line 1046
    .end local v4    # "o":Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;
    :cond_5
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .restart local v4    # "o":Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;
    :cond_6
    move v6, v8

    .line 1059
    goto :goto_5

    :cond_7
    move v9, v8

    goto :goto_6

    .line 1065
    .end local v4    # "o":Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;
    :cond_8
    aget-object v6, v0, v2

    aput-byte v7, v6, v3

    goto :goto_7

    .line 1068
    :cond_9
    aget-object v6, v0, v2

    aput-byte v10, v6, v3

    goto :goto_7

    .line 1078
    .end local v2    # "j":I
    .end local v3    # "k":I
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_8
    iget v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-lt v2, v6, :cond_b

    .line 1077
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 1079
    :cond_b
    aget-object v6, v0, v1

    aget-byte v6, v6, v2

    if-ne v6, v7, :cond_c

    .line 1083
    new-instance v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v9, "cos-nonambig"

    new-array v10, v11, [Ljava/lang/Object;

    iget-object v11, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v11, v11, v1

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v8

    .line 1084
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v7

    .line 1083
    invoke-direct {v6, v9, v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6

    .line 1078
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1092
    .end local v2    # "j":I
    :cond_d
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    aget v6, v6, v1

    if-ne v6, v11, :cond_e

    .line 1093
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v5, v6, v1

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .line 1094
    .local v5, "wildcard":Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    iget-short v6, v5, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v9, 0x3

    if-eq v6, v9, :cond_1

    .line 1095
    iget-short v6, v5, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-eq v6, v11, :cond_1

    .line 1091
    .end local v5    # "wildcard":Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2
.end method

.method public endContentModel([I)Z
    .locals 5
    .param p1, "state"    # [I

    .prologue
    const/4 v2, 0x0

    .line 431
    aget v0, p1, v2

    .line 432
    .local v0, "curState":I
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    .line 433
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    if-eqz v3, :cond_1

    .line 434
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v1, v3, v0

    .line 435
    .local v1, "o":Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;
    if-eqz v1, :cond_1

    const/4 v3, 0x2

    aget v3, p1, v3

    iget v4, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->minOccurs:I

    if-ge v3, v4, :cond_1

    .line 442
    .end local v1    # "o":Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;
    :cond_0
    :goto_0
    return v2

    .line 440
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;
    .locals 5
    .param p1, "curElem"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "subGroupHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    .prologue
    .line 359
    const/4 v1, 0x0

    .line 361
    .local v1, "matchingDecl":Ljava/lang/Object;
    const/4 v0, 0x0

    .end local v1    # "matchingDecl":Ljava/lang/Object;
    .local v0, "elemIndex":I
    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-lt v0, v3, :cond_1

    .line 375
    const/4 v1, 0x0

    :cond_0
    :goto_1
    return-object v1

    .line 362
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    aget v2, v3, v0

    .line 363
    .local v2, "type":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 364
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {p2, p1, v3}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getMatchingElemDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v1

    .line 365
    .local v1, "matchingDecl":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    if-nez v1, :cond_0

    .line 361
    .end local v1    # "matchingDecl":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_3
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 370
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 371
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v1, v3, v0

    goto :goto_1
.end method

.method findMatchingDecl(Lmf/org/apache/xerces/xni/QName;[ILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;I)Ljava/lang/Object;
    .locals 11
    .param p1, "curElem"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "state"    # [I
    .param p3, "subGroupHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;
    .param p4, "elemIndex"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 380
    aget v0, p2, v7

    .line 381
    .local v0, "curState":I
    const/4 v2, 0x0

    .line 382
    .local v2, "nextState":I
    const/4 v1, 0x0

    .line 384
    :cond_0
    add-int/lit8 p4, p4, 0x1

    iget v5, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-lt p4, v5, :cond_2

    .line 404
    :goto_0
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ne p4, v5, :cond_4

    .line 405
    aget v5, p2, v7

    aput v5, p2, v6

    .line 406
    aput v9, p2, v7

    .line 407
    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 417
    :cond_1
    :goto_1
    return-object v1

    .line 385
    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v5, v5, v0

    aget v2, v5, p4

    .line 386
    if-eq v2, v9, :cond_0

    .line 388
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    aget v4, v5, p4

    .line 389
    .local v4, "type":I
    if-ne v4, v6, :cond_3

    .line 390
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v5, v5, p4

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {p3, p1, v5}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getMatchingElemDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v1

    .line 391
    .local v1, "matchingDecl":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    if-eqz v1, :cond_0

    goto :goto_0

    .line 395
    .end local v1    # "matchingDecl":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    :cond_3
    if-ne v4, v10, :cond_0

    .line 396
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v5, v5, p4

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v8, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 397
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v1, v5, p4

    .line 398
    .local v1, "matchingDecl":Ljava/lang/Object;
    goto :goto_0

    .line 412
    .end local v1    # "matchingDecl":Ljava/lang/Object;
    .end local v4    # "type":I
    :cond_4
    aput v2, p2, v7

    .line 413
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v3, v5, v2

    .line 414
    .local v3, "o":Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;
    if-eqz v3, :cond_1

    .line 415
    iget v5, v3, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->elemIndex:I

    if-ne p4, v5, :cond_5

    move v5, v6

    :goto_2
    aput v5, p2, v10

    goto :goto_1

    :cond_5
    move v5, v7

    goto :goto_2
.end method

.method public getTermName(I)Ljava/lang/String;
    .locals 2
    .param p1, "termId"    # I

    .prologue
    .line 1167
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 1168
    .local v0, "term":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCompactedForUPA()Z
    .locals 1

    .prologue
    .line 1172
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fIsCompactedForUPA:Z

    return v0
.end method

.method public isFinalState(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 233
    if-gez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 234
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    aget-boolean v0, v0, p1

    goto :goto_0
.end method

.method public occurenceInfo([I)[I
    .locals 7
    .param p1, "state"    # [I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1148
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    if-eqz v3, :cond_1

    .line 1149
    aget v0, p1, v4

    .line 1150
    .local v0, "curState":I
    if-gez v0, :cond_0

    .line 1151
    aget v0, p1, v5

    .line 1153
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v1, v3, v0

    .line 1154
    .local v1, "o":Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;
    if-eqz v1, :cond_1

    .line 1155
    const/4 v3, 0x4

    new-array v2, v3, [I

    .line 1156
    .local v2, "occurenceInfo":[I
    iget v3, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->minOccurs:I

    aput v3, v2, v4

    .line 1157
    iget v3, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->maxOccurs:I

    aput v3, v2, v5

    .line 1158
    aget v3, p1, v6

    aput v3, v2, v6

    .line 1159
    const/4 v3, 0x3

    iget v4, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->elemIndex:I

    aput v4, v2, v3

    .line 1163
    .end local v0    # "curState":I
    .end local v1    # "o":Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;
    .end local v2    # "occurenceInfo":[I
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public oneTransition(Lmf/org/apache/xerces/xni/QName;[ILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;
    .locals 12
    .param p1, "curElem"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "state"    # [I
    .param p3, "subGroupHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    .prologue
    const/4 v6, -0x2

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v10, -0x1

    const/4 v8, 0x0

    .line 252
    aget v0, p2, v8

    .line 254
    .local v0, "curState":I
    if-eq v0, v10, :cond_0

    if-ne v0, v6, :cond_2

    .line 257
    :cond_0
    if-ne v0, v10, :cond_1

    .line 258
    aput v6, p2, v8

    .line 260
    :cond_1
    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object v2

    .line 355
    :goto_0
    return-object v2

    .line 263
    :cond_2
    const/4 v3, 0x0

    .line 264
    .local v3, "nextState":I
    const/4 v1, 0x0

    .line 265
    .local v1, "elemIndex":I
    const/4 v2, 0x0

    .line 267
    :goto_1
    iget v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-lt v1, v6, :cond_3

    .line 288
    :goto_2
    iget v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ne v1, v6, :cond_7

    .line 289
    aget v6, p2, v8

    aput v6, p2, v7

    .line 290
    aput v10, p2, v8

    .line 291
    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 268
    :cond_3
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v6, v6, v0

    aget v3, v6, v1

    .line 269
    if-ne v3, v10, :cond_5

    .line 267
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 271
    :cond_5
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    aget v5, v6, v1

    .line 272
    .local v5, "type":I
    if-ne v5, v7, :cond_6

    .line 273
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v6, v6, v1

    check-cast v6, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {p3, p1, v6}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getMatchingElemDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v2

    .line 274
    .local v2, "matchingDecl":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    if-eqz v2, :cond_4

    goto :goto_2

    .line 278
    .end local v2    # "matchingDecl":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    :cond_6
    if-ne v5, v11, :cond_4

    .line 279
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v6, v6, v1

    check-cast v6, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v9, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 280
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v2, v6, v1

    .line 281
    .local v2, "matchingDecl":Ljava/lang/Object;
    goto :goto_2

    .line 294
    .end local v2    # "matchingDecl":Ljava/lang/Object;
    .end local v5    # "type":I
    :cond_7
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    if-eqz v6, :cond_a

    .line 295
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v4, v6, v0

    .line 296
    .local v4, "o":Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;
    if-eqz v4, :cond_c

    .line 297
    if-ne v0, v3, :cond_8

    .line 298
    aget v6, p2, v11

    add-int/lit8 v6, v6, 0x1

    aput v6, p2, v11

    iget v7, v4, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->maxOccurs:I

    if-le v6, v7, :cond_a

    .line 299
    iget v6, v4, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->maxOccurs:I

    if-eq v6, v10, :cond_a

    .line 324
    invoke-virtual {p0, p1, p2, p3, v1}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->findMatchingDecl(Lmf/org/apache/xerces/xni/QName;[ILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 327
    :cond_8
    aget v6, p2, v11

    iget v9, v4, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->minOccurs:I

    if-ge v6, v9, :cond_9

    .line 329
    aget v6, p2, v8

    aput v6, p2, v7

    .line 330
    aput v10, p2, v8

    .line 331
    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 336
    :cond_9
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v4, v6, v3

    .line 337
    if-eqz v4, :cond_a

    .line 338
    iget v6, v4, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->elemIndex:I

    if-ne v1, v6, :cond_b

    move v6, v7

    :goto_3
    aput v6, p2, v11

    .line 354
    .end local v4    # "o":Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;
    :cond_a
    :goto_4
    aput v3, p2, v8

    goto/16 :goto_0

    .restart local v4    # "o":Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;
    :cond_b
    move v6, v8

    .line 338
    goto :goto_3

    .line 343
    :cond_c
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v4, v6, v3

    .line 344
    if-eqz v4, :cond_a

    .line 349
    iget v6, v4, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->elemIndex:I

    if-ne v1, v6, :cond_d

    :goto_5
    aput v7, p2, v11

    goto :goto_4

    :cond_d
    move v7, v8

    goto :goto_5
.end method

.method public startContentModel()[I
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x3

    new-array v0, v0, [I

    return-object v0
.end method

.method public whatCanGoHere([I)Ljava/util/Vector;
    .locals 8
    .param p1, "state"    # [I

    .prologue
    const/4 v7, -0x1

    .line 1114
    const/4 v6, 0x0

    aget v1, p1, v6

    .line 1115
    .local v1, "curState":I
    if-gez v1, :cond_0

    .line 1116
    const/4 v6, 0x1

    aget v1, p1, v6

    .line 1117
    :cond_0
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    if-eqz v6, :cond_1

    .line 1118
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v4, v6, v1

    .line 1119
    .local v4, "o":Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;
    :goto_0
    const/4 v6, 0x2

    aget v0, p1, v6

    .line 1121
    .local v0, "count":I
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 1122
    .local v5, "ret":Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "elemIndex":I
    :goto_1
    iget v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-lt v2, v6, :cond_2

    .line 1144
    return-object v5

    .line 1118
    .end local v0    # "count":I
    .end local v2    # "elemIndex":I
    .end local v4    # "o":Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;
    .end local v5    # "ret":Ljava/util/Vector;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1123
    .restart local v0    # "count":I
    .restart local v2    # "elemIndex":I
    .restart local v4    # "o":Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;
    .restart local v5    # "ret":Ljava/util/Vector;
    :cond_2
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v6, v6, v1

    aget v3, v6, v2

    .line 1124
    .local v3, "nextState":I
    if-eq v3, v7, :cond_3

    .line 1125
    if-eqz v4, :cond_5

    .line 1126
    if-ne v1, v3, :cond_4

    .line 1130
    iget v6, v4, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->maxOccurs:I

    if-lt v0, v6, :cond_5

    .line 1131
    iget v6, v4, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->maxOccurs:I

    if-eq v6, v7, :cond_5

    .line 1122
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1137
    :cond_4
    iget v6, v4, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->minOccurs:I

    if-lt v0, v6, :cond_3

    .line 1141
    :cond_5
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2
.end method
