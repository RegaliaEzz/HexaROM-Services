.class final Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;
.super Lmf/org/apache/xerces/impl/dtd/DTDGrammar;
.source "BalancedDTDGrammar.java"


# instance fields
.field private fDepth:I

.field private fGroupIndexStack:[[I

.field private fGroupIndexStackSizes:[I

.field private fMixed:Z

.field private fOpStack:[S


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "desc"    # Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    .line 62
    return-void
.end method

.method private addContentSpecNodes(II)I
    .locals 4
    .param p1, "begin"    # I
    .param p2, "end"    # I

    .prologue
    .line 231
    if-ne p1, p2, :cond_0

    .line 232
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget-object v1, v1, v2

    aget v1, v1, p1

    .line 235
    :goto_0
    return v1

    .line 234
    :cond_0
    add-int v1, p1, p2

    ushr-int/lit8 v0, v1, 0x1

    .line 235
    .local v0, "middle":I
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget-short v1, v1, v2

    .line 236
    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addContentSpecNodes(II)I

    move-result v2

    .line 237
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, v3, p2}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addContentSpecNodes(II)I

    move-result v3

    .line 235
    invoke-virtual {p0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addContentSpecNode(SII)I

    move-result v1

    goto :goto_0
.end method

.method private addToCurrentGroup(I)V
    .locals 7
    .param p1, "contentSpec"    # I

    .prologue
    const/4 v6, 0x0

    .line 270
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget-object v0, v3, v4

    .line 271
    .local v0, "currentGroup":[I
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget v1, v3, v4

    add-int/lit8 v5, v1, 0x1

    aput v5, v3, v4

    .line 272
    .local v1, "length":I
    if-nez v0, :cond_1

    .line 273
    const/16 v3, 0x8

    new-array v0, v3, [I

    .line 274
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aput-object v0, v3, v4

    .line 282
    :cond_0
    :goto_0
    aput p1, v0, v1

    .line 283
    return-void

    .line 276
    :cond_1
    array-length v3, v0

    if-ne v1, v3, :cond_0

    .line 277
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [I

    .line 278
    .local v2, "newGroup":[I
    array-length v3, v0

    invoke-static {v0, v6, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    move-object v0, v2

    .line 280
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aput-object v0, v3, v4

    goto :goto_0
.end method

.method private initializeContentModelStacks()V
    .locals 7

    .prologue
    const/16 v4, 0x8

    const/4 v6, 0x0

    .line 244
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    if-nez v3, :cond_1

    .line 245
    new-array v3, v4, [S

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    .line 246
    new-array v3, v4, [[I

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    .line 247
    new-array v3, v4, [I

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    .line 260
    :cond_0
    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    const/4 v5, -0x1

    aput-short v5, v3, v4

    .line 261
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aput v6, v3, v4

    .line 262
    return-void

    .line 249
    :cond_1
    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    array-length v4, v4

    if-ne v3, v4, :cond_0

    .line 250
    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [S

    .line 251
    .local v2, "newOpStack":[S
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    invoke-static {v3, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    .line 253
    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [[I

    .line 254
    .local v0, "newGroupIndexStack":[[I
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    invoke-static {v3, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    .line 256
    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [I

    .line 257
    .local v1, "newGroupIndexStackLengths":[I
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    invoke-static {v3, v6, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    goto :goto_0
.end method


# virtual methods
.method protected final addContentSpecToElement(Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;)V
    .locals 3
    .param p1, "elementDecl"    # Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    .prologue
    const/4 v2, 0x0

    .line 219
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    aget v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    aget-object v1, v1, v2

    aget v0, v1, v2

    .line 220
    .local v0, "contentSpec":I
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fCurrentElementIndex:I

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->setContentSpecIndex(II)V

    .line 221
    return-void

    .line 219
    .end local v0    # "contentSpec":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final element(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addUniqueLeafNode(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addToCurrentGroup(I)V

    .line 131
    return-void
.end method

.method public final endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 206
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    .line 207
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    .line 208
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    .line 209
    return-void
.end method

.method public final endGroup(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget v1, v2, v3

    .line 192
    .local v1, "length":I
    if-lez v1, :cond_0

    const/4 v2, 0x0

    add-int/lit8 v3, v1, -0x1

    invoke-direct {p0, v2, v3}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addContentSpecNodes(II)I

    move-result v0

    .line 193
    .local v0, "group":I
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    .line 194
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addToCurrentGroup(I)V

    .line 195
    return-void

    .line 192
    .end local v0    # "group":I
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addUniqueLeafNode(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .param p1, "occurrence"    # S
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v5, -0x1

    .line 169
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fMixed:Z

    if-nez v1, :cond_0

    .line 170
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget v1, v1, v2

    add-int/lit8 v0, v1, -0x1

    .line 171
    .local v0, "currentIndex":I
    if-ne p1, v4, :cond_1

    .line 172
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget-object v1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget-object v3, v3, v4

    aget v3, v3, v0

    invoke-virtual {p0, v2, v3, v5}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addContentSpecNode(SII)I

    move-result v2

    aput v2, v1, v0

    .line 181
    .end local v0    # "currentIndex":I
    :cond_0
    :goto_0
    return-void

    .line 174
    .restart local v0    # "currentIndex":I
    :cond_1
    if-ne p1, v6, :cond_2

    .line 175
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget-object v2, v2, v3

    aget v2, v2, v0

    invoke-virtual {p0, v4, v2, v5}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addContentSpecNode(SII)I

    move-result v2

    aput v2, v1, v0

    goto :goto_0

    .line 177
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 178
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget-object v2, v2, v3

    aget v2, v2, v0

    invoke-virtual {p0, v6, v2, v5}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addContentSpecNode(SII)I

    move-result v2

    aput v2, v1, v0

    goto :goto_0
.end method

.method public final pcdata(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fMixed:Z

    .line 118
    return-void
.end method

.method public final separator(SLmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .param p1, "separator"    # S
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 146
    if-nez p1, :cond_1

    .line 147
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    const/4 v2, 0x4

    aput-short v2, v0, v1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 150
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    const/4 v2, 0x5

    aput-short v2, v0, v1

    goto :goto_0
.end method

.method public final startContentModel(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    .line 81
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->initializeContentModelStacks()V

    .line 82
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->startContentModel(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 83
    return-void
.end method

.method public final startGroup(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 99
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    .line 100
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->initializeContentModelStacks()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fMixed:Z

    .line 102
    return-void
.end method
