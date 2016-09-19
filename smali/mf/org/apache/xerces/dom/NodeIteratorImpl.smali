.class public Lmf/org/apache/xerces/dom/NodeIteratorImpl;
.super Ljava/lang/Object;
.source "NodeIteratorImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/traversal/NodeIterator;


# instance fields
.field private fCurrentNode:Lmf/org/w3c/dom/Node;

.field private fDetach:Z

.field private fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

.field private fEntityReferenceExpansion:Z

.field private fForward:Z

.field private fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

.field private fRoot:Lmf/org/w3c/dom/Node;

.field private fWhatToShow:I


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/DocumentImpl;Lmf/org/w3c/dom/Node;ILmf/org/w3c/dom/traversal/NodeFilter;Z)V
    .locals 1
    .param p1, "document"    # Lmf/org/apache/xerces/dom/DocumentImpl;
    .param p2, "root"    # Lmf/org/w3c/dom/Node;
    .param p3, "whatToShow"    # I
    .param p4, "nodeFilter"    # Lmf/org/w3c/dom/traversal/NodeFilter;
    .param p5, "entityReferenceExpansion"    # Z

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fWhatToShow:I

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fDetach:Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    .line 94
    iput-object p1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    .line 95
    iput-object p2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 97
    iput p3, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fWhatToShow:I

    .line 98
    iput-object p4, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    .line 99
    iput-boolean p5, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fEntityReferenceExpansion:Z

    .line 100
    return-void
.end method


# virtual methods
.method acceptNode(Lmf/org/w3c/dom/Node;)Z
    .locals 4
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 233
    iget-object v2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    if-nez v2, :cond_2

    .line 234
    iget v2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fWhatToShow:I

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    add-int/lit8 v3, v3, -0x1

    shl-int v3, v0, v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 234
    goto :goto_0

    .line 236
    :cond_2
    iget v2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fWhatToShow:I

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    add-int/lit8 v3, v3, -0x1

    shl-int v3, v0, v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 237
    iget-object v2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    invoke-interface {v2, p1}, Lmf/org/w3c/dom/traversal/NodeFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v2

    if-eq v2, v0, :cond_0

    :cond_3
    move v0, v1

    .line 236
    goto :goto_0
.end method

.method public detach()V
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fDetach:Z

    .line 369
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/DocumentImpl;->removeNodeIterator(Lmf/org/w3c/dom/traversal/NodeIterator;)V

    .line 370
    return-void
.end method

.method public getExpandEntityReferences()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fEntityReferenceExpansion:Z

    return v0
.end method

.method public getFilter()Lmf/org/w3c/dom/traversal/NodeFilter;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    return-object v0
.end method

.method public getRoot()Lmf/org/w3c/dom/Node;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public getWhatToShow()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fWhatToShow:I

    return v0
.end method

.method matchNodeOrParent(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 3
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    .line 245
    iget-object v2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 252
    :cond_0
    :goto_0
    return-object v0

    .line 249
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .local v0, "n":Lmf/org/w3c/dom/Node;
    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    if-ne v0, v2, :cond_2

    move-object v0, v1

    .line 252
    goto :goto_0

    .line 250
    :cond_2
    if-eq p1, v0, :cond_0

    .line 249
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_1
.end method

.method public nextNode()Lmf/org/w3c/dom/Node;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 131
    iget-boolean v3, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fDetach:Z

    if-eqz v3, :cond_0

    .line 132
    new-instance v3, Lmf/org/w3c/dom/DOMException;

    .line 133
    const/16 v4, 0xb

    .line 134
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "INVALID_STATE_ERR"

    invoke-static {v5, v6, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-direct {v3, v4, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 138
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    if-nez v3, :cond_2

    .line 178
    :cond_1
    :goto_0
    return-object v2

    .line 140
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 141
    .local v1, "nextNode":Lmf/org/w3c/dom/Node;
    const/4 v0, 0x0

    .line 144
    .local v0, "accepted":Z
    :cond_3
    if-nez v0, :cond_1

    .line 147
    iget-boolean v3, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    if-nez v3, :cond_4

    if-eqz v1, :cond_4

    .line 149
    iget-object v1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 161
    :goto_1
    iput-boolean v5, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    .line 164
    if-eqz v1, :cond_1

    .line 167
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->acceptNode(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    .line 168
    if-eqz v0, :cond_3

    .line 170
    iput-object v1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 171
    iget-object v2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    .line 152
    :cond_4
    iget-boolean v3, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fEntityReferenceExpansion:Z

    if-nez v3, :cond_5

    .line 153
    if-eqz v1, :cond_5

    .line 154
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    .line 155
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 156
    goto :goto_1

    .line 157
    :cond_5
    invoke-virtual {p0, v1, v5}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_1
.end method

.method nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    .locals 4
    .param p1, "node"    # Lmf/org/w3c/dom/Node;
    .param p2, "visitChildren"    # Z

    .prologue
    const/4 v2, 0x0

    .line 263
    if-nez p1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    .line 297
    :cond_0
    :goto_0
    return-object v1

    .line 267
    :cond_1
    if-eqz p2, :cond_2

    .line 269
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 270
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 271
    .local v1, "result":Lmf/org/w3c/dom/Node;
    goto :goto_0

    .line 275
    .end local v1    # "result":Lmf/org/w3c/dom/Node;
    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    if-ne p1, v3, :cond_3

    move-object v1, v2

    .line 276
    goto :goto_0

    .line 280
    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 281
    .restart local v1    # "result":Lmf/org/w3c/dom/Node;
    if-nez v1, :cond_0

    .line 285
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 286
    .local v0, "parent":Lmf/org/w3c/dom/Node;
    :goto_1
    if-eqz v0, :cond_4

    iget-object v3, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    if-ne v0, v3, :cond_5

    :cond_4
    move-object v1, v2

    .line 297
    goto :goto_0

    .line 287
    :cond_5
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 288
    if-nez v1, :cond_0

    .line 291
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_1
.end method

.method public previousNode()Lmf/org/w3c/dom/Node;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-boolean v3, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fDetach:Z

    if-eqz v3, :cond_0

    .line 188
    new-instance v3, Lmf/org/w3c/dom/DOMException;

    .line 189
    const/16 v4, 0xb

    .line 190
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "INVALID_STATE_ERR"

    invoke-static {v5, v6, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-direct {v3, v4, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 194
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-nez v3, :cond_2

    .line 227
    :cond_1
    :goto_0
    return-object v2

    .line 196
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 197
    .local v1, "previousNode":Lmf/org/w3c/dom/Node;
    const/4 v0, 0x0

    .line 200
    .local v0, "accepted":Z
    :cond_3
    if-nez v0, :cond_1

    .line 202
    iget-boolean v3, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    .line 204
    iget-object v1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 211
    :goto_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    .line 215
    if-eqz v1, :cond_1

    .line 218
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->acceptNode(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    .line 219
    if-eqz v0, :cond_3

    .line 221
    iput-object v1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 222
    iget-object v2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    .line 207
    :cond_4
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->previousNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_1
.end method

.method previousNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 3
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 308
    iget-object v1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    .line 330
    :cond_0
    :goto_0
    return-object v0

    .line 311
    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 312
    .local v0, "result":Lmf/org/w3c/dom/Node;
    if-nez v0, :cond_2

    .line 314
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 315
    goto :goto_0

    .line 319
    :cond_2
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fEntityReferenceExpansion:Z

    if-nez v1, :cond_3

    .line 321
    if-eqz v0, :cond_3

    .line 322
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 325
    :cond_3
    :goto_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_1
.end method

.method public removeNode(Lmf/org/w3c/dom/Node;)V
    .locals 3
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 341
    if-nez p1, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->matchNodeOrParent(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 345
    .local v0, "deleted":Lmf/org/w3c/dom/Node;
    if-eqz v0, :cond_0

    .line 347
    iget-boolean v2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    if-eqz v2, :cond_2

    .line 348
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->previousNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    .line 352
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 353
    .local v1, "next":Lmf/org/w3c/dom/Node;
    if-eqz v1, :cond_3

    .line 355
    iput-object v1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    .line 359
    :cond_3
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->previousNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 360
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    goto :goto_0
.end method
