.class public Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;
.super Lmf/org/apache/xerces/impl/dtd/models/CMNode;
.source "CMBinOp.java"


# instance fields
.field private final fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

.field private final fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;


# direct methods
.method public constructor <init>(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "leftNode"    # Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .param p3, "rightNode"    # Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;-><init>(I)V

    .line 39
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->type()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->type()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ImplementationMessages.VAL_BST"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iput-object p2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    .line 47
    iput-object p3, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    .line 48
    return-void
.end method


# virtual methods
.method protected calcFirstPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 2
    .param p1, "toSet"    # Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    .prologue
    .line 89
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->type()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 92
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setTo(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    .line 93
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->type()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 102
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setTo(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    .line 103
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    goto :goto_0

    .line 108
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ImplementationMessages.VAL_BST"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected calcLastPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 2
    .param p1, "toSet"    # Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    .prologue
    .line 114
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->type()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 117
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setTo(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    .line 118
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->type()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 127
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setTo(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    .line 128
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    goto :goto_0

    .line 133
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ImplementationMessages.VAL_BST"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    return-object v0
.end method

.method final getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    return-object v0
.end method

.method public isNullable()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->type()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 76
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->type()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 78
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 80
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ImplementationMessages.VAL_BST"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
