.class public Lmf/org/apache/xerces/dom/TextImpl;
.super Lmf/org/apache/xerces/dom/CharacterDataImpl;
.source "TextImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/CharacterData;
.implements Lmf/org/w3c/dom/Text;


# static fields
.field static final serialVersionUID:J = -0x497b8d082105594dL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "ownerDoc"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/CharacterDataImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method private canModifyNext(Lmf/org/w3c/dom/Node;)Z
    .locals 11
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 477
    const/4 v3, 0x0

    .line 479
    .local v3, "textFirstChild":Z
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 480
    .local v2, "next":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v2, :cond_1

    move v5, v6

    .line 537
    :cond_0
    :goto_1
    return v5

    .line 482
    :cond_1
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v4

    .line 484
    .local v4, "type":S
    if-ne v4, v10, :cond_7

    .line 487
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 491
    .local v0, "firstChild":Lmf/org/w3c/dom/Node;
    if-eqz v0, :cond_0

    .line 498
    :goto_2
    if-nez v0, :cond_3

    .line 534
    .end local v0    # "firstChild":Lmf/org/w3c/dom/Node;
    :cond_2
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    .line 499
    .restart local v0    # "firstChild":Lmf/org/w3c/dom/Node;
    :cond_3
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    .line 501
    .local v1, "lType":S
    if-eq v1, v8, :cond_4

    .line 502
    if-ne v1, v9, :cond_5

    .line 503
    :cond_4
    const/4 v3, 0x1

    .line 522
    :goto_3
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_2

    .line 504
    :cond_5
    if-ne v1, v10, :cond_6

    .line 505
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/dom/TextImpl;->canModifyNext(Lmf/org/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 511
    const/4 v3, 0x1

    .line 513
    goto :goto_3

    .line 516
    :cond_6
    if-nez v3, :cond_0

    move v5, v6

    .line 519
    goto :goto_1

    .line 524
    .end local v0    # "firstChild":Lmf/org/w3c/dom/Node;
    .end local v1    # "lType":S
    :cond_7
    if-eq v4, v8, :cond_2

    .line 525
    if-eq v4, v9, :cond_2

    move v5, v6

    .line 531
    goto :goto_1
.end method

.method private canModifyPrev(Lmf/org/w3c/dom/Node;)Z
    .locals 11
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 392
    const/4 v3, 0x0

    .line 394
    .local v3, "textLastChild":Z
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 396
    .local v2, "prev":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v2, :cond_1

    move v5, v6

    .line 454
    :cond_0
    :goto_1
    return v5

    .line 398
    :cond_1
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v4

    .line 400
    .local v4, "type":S
    if-ne v4, v10, :cond_7

    .line 403
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 407
    .local v1, "lastChild":Lmf/org/w3c/dom/Node;
    if-eqz v1, :cond_0

    .line 414
    :goto_2
    if-nez v1, :cond_3

    .line 451
    .end local v1    # "lastChild":Lmf/org/w3c/dom/Node;
    :cond_2
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    .line 415
    .restart local v1    # "lastChild":Lmf/org/w3c/dom/Node;
    :cond_3
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    .line 417
    .local v0, "lType":S
    if-eq v0, v8, :cond_4

    .line 418
    if-ne v0, v9, :cond_5

    .line 419
    :cond_4
    const/4 v3, 0x1

    .line 439
    :goto_3
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_2

    .line 420
    :cond_5
    if-ne v0, v10, :cond_6

    .line 421
    invoke-direct {p0, v1}, Lmf/org/apache/xerces/dom/TextImpl;->canModifyPrev(Lmf/org/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 427
    const/4 v3, 0x1

    .line 429
    goto :goto_3

    .line 433
    :cond_6
    if-nez v3, :cond_0

    move v5, v6

    .line 436
    goto :goto_1

    .line 441
    .end local v0    # "lType":S
    .end local v1    # "lastChild":Lmf/org/w3c/dom/Node;
    :cond_7
    if-eq v4, v8, :cond_2

    .line 442
    if-eq v4, v9, :cond_2

    move v5, v6

    .line 448
    goto :goto_1
.end method

.method private getWholeTextBackward(Lmf/org/w3c/dom/Node;Ljava/lang/StringBuffer;Lmf/org/w3c/dom/Node;)Z
    .locals 6
    .param p1, "node"    # Lmf/org/w3c/dom/Node;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;
    .param p3, "parent"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "inEntRef":Z
    if-eqz p3, :cond_0

    .line 240
    invoke-interface {p3}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v2, v5, :cond_2

    move v0, v3

    .line 243
    :cond_0
    :goto_0
    if-nez p1, :cond_3

    .line 264
    if-eqz v0, :cond_6

    .line 265
    invoke-interface {p3}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-interface {p3}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    invoke-direct {p0, v2, p2, v4}, Lmf/org/apache/xerces/dom/TextImpl;->getWholeTextBackward(Lmf/org/w3c/dom/Node;Ljava/lang/StringBuffer;Lmf/org/w3c/dom/Node;)Z

    .line 269
    :cond_1
    :goto_1
    return v3

    :cond_2
    move v0, v4

    .line 240
    goto :goto_0

    .line 244
    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    .line 245
    .local v1, "type":S
    if-ne v1, v5, :cond_4

    .line 246
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2, p2, p1}, Lmf/org/apache/xerces/dom/TextImpl;->getWholeTextBackward(Lmf/org/w3c/dom/Node;Ljava/lang/StringBuffer;Lmf/org/w3c/dom/Node;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 258
    :goto_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    .line 250
    :cond_4
    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    .line 251
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_5
    move-object v2, p1

    .line 252
    check-cast v2, Lmf/org/apache/xerces/dom/TextImpl;

    invoke-virtual {v2, p2}, Lmf/org/apache/xerces/dom/TextImpl;->insertTextContent(Ljava/lang/StringBuffer;)V

    goto :goto_2

    .end local v1    # "type":S
    :cond_6
    move v3, v4

    .line 269
    goto :goto_1
.end method

.method private getWholeTextForward(Lmf/org/w3c/dom/Node;Ljava/lang/StringBuffer;Lmf/org/w3c/dom/Node;)Z
    .locals 6
    .param p1, "node"    # Lmf/org/w3c/dom/Node;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;
    .param p3, "parent"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 190
    const/4 v0, 0x0

    .line 192
    .local v0, "inEntRef":Z
    if-eqz p3, :cond_0

    .line 193
    invoke-interface {p3}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v2, v5, :cond_2

    move v0, v3

    .line 196
    :cond_0
    :goto_0
    if-nez p1, :cond_3

    .line 217
    if-eqz v0, :cond_6

    .line 218
    invoke-interface {p3}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-interface {p3}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    invoke-direct {p0, v2, p2, v4}, Lmf/org/apache/xerces/dom/TextImpl;->getWholeTextForward(Lmf/org/w3c/dom/Node;Ljava/lang/StringBuffer;Lmf/org/w3c/dom/Node;)Z

    .line 222
    :cond_1
    :goto_1
    return v3

    :cond_2
    move v0, v4

    .line 193
    goto :goto_0

    .line 197
    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    .line 198
    .local v1, "type":S
    if-ne v1, v5, :cond_4

    .line 199
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2, p2, p1}, Lmf/org/apache/xerces/dom/TextImpl;->getWholeTextForward(Lmf/org/w3c/dom/Node;Ljava/lang/StringBuffer;Lmf/org/w3c/dom/Node;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 211
    :goto_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    .line 203
    :cond_4
    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    .line 204
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_5
    move-object v2, p1

    .line 205
    check-cast v2, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2, p2}, Lmf/org/apache/xerces/dom/NodeImpl;->getTextContent(Ljava/lang/StringBuffer;)V

    goto :goto_2

    .end local v1    # "type":S
    :cond_6
    move v3, v4

    .line 222
    goto :goto_1
.end method

.method private hasTextOnlyChildren(Lmf/org/w3c/dom/Node;)Z
    .locals 5
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v4, 0x5

    const/4 v2, 0x0

    .line 548
    move-object v0, p1

    .line 550
    .local v0, "child":Lmf/org/w3c/dom/Node;
    if-nez v0, :cond_1

    .line 568
    :cond_0
    :goto_0
    return v2

    .line 554
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 555
    :goto_1
    if-nez v0, :cond_2

    .line 568
    const/4 v2, 0x1

    goto :goto_0

    .line 556
    :cond_2
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    .line 558
    .local v1, "type":I
    if-ne v1, v4, :cond_3

    .line 559
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/dom/TextImpl;->hasTextOnlyChildren(Lmf/org/w3c/dom/Node;)Z

    move-result v2

    goto :goto_0

    .line 561
    :cond_3
    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    .line 562
    const/4 v3, 0x4

    if-eq v1, v3, :cond_4

    .line 563
    if-ne v1, v4, :cond_0

    .line 566
    :cond_4
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string v0, "#text"

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x3

    return v0
.end method

.method public getWholeText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 142
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->needsSyncData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->synchronizeData()V

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 147
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lmf/org/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    iget-object v2, p0, Lmf/org/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lmf/org/apache/xerces/dom/TextImpl;->getWholeTextBackward(Lmf/org/w3c/dom/Node;Ljava/lang/StringBuffer;Lmf/org/w3c/dom/Node;)Z

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "temp":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 159
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lmf/org/apache/xerces/dom/TextImpl;->getWholeTextForward(Lmf/org/w3c/dom/Node;Ljava/lang/StringBuffer;Lmf/org/w3c/dom/Node;)Z

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected insertTextContent(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 174
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    :cond_0
    return-void
.end method

.method public isElementContentWhitespace()Z
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->synchronizeData()V

    .line 130
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->internalIsIgnorableWhitespace()Z

    move-result v0

    return v0
.end method

.method public isIgnorableWhitespace()Z
    .locals 1

    .prologue
    .line 577
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->synchronizeData()V

    .line 580
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->internalIsIgnorableWhitespace()Z

    move-result v0

    return v0
.end method

.method public removeData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    .line 654
    .local v0, "olddata":Ljava/lang/String;
    const-string v1, ""

    iput-object v1, p0, Lmf/org/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    .line 655
    return-object v0
.end method

.method public replaceData(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 644
    iput-object p1, p0, Lmf/org/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    .line 645
    return-void
.end method

.method public replaceWholeText(Ljava/lang/String;)Lmf/org/w3c/dom/Text;
    .locals 10
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v1, 0x0

    .line 285
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->needsSyncData()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 286
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->synchronizeData()V

    .line 290
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 291
    .local v3, "parent":Lmf/org/w3c/dom/Node;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 293
    :cond_1
    if-eqz v3, :cond_2

    .line 294
    invoke-interface {v3, p0}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 369
    :cond_2
    :goto_0
    return-object v1

    .line 300
    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v5

    iget-boolean v5, v5, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v5, :cond_5

    .line 301
    invoke-direct {p0, p0}, Lmf/org/apache/xerces/dom/TextImpl;->canModifyPrev(Lmf/org/w3c/dom/Node;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 302
    new-instance v5, Lmf/org/w3c/dom/DOMException;

    .line 304
    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    .line 305
    const-string v7, "NO_MODIFICATION_ALLOWED_ERR"

    .line 303
    invoke-static {v6, v7, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 302
    invoke-direct {v5, v9, v6}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    .line 309
    :cond_4
    invoke-direct {p0, p0}, Lmf/org/apache/xerces/dom/TextImpl;->canModifyNext(Lmf/org/w3c/dom/Node;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 310
    new-instance v5, Lmf/org/w3c/dom/DOMException;

    .line 312
    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    .line 313
    const-string v7, "NO_MODIFICATION_ALLOWED_ERR"

    .line 311
    invoke-static {v6, v7, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 310
    invoke-direct {v5, v9, v6}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    .line 318
    :cond_5
    const/4 v0, 0x0

    .line 319
    .local v0, "currentNode":Lmf/org/w3c/dom/Text;
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 320
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v5

    invoke-virtual {v5, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v1

    .line 321
    .local v1, "newNode":Lmf/org/w3c/dom/Text;
    if-eqz v3, :cond_2

    .line 322
    invoke-interface {v3, v1, p0}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 323
    invoke-interface {v3, p0}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 324
    move-object v0, v1

    .line 334
    .end local v1    # "newNode":Lmf/org/w3c/dom/Text;
    :goto_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Text;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v4

    .line 335
    .local v4, "prev":Lmf/org/w3c/dom/Node;
    :goto_2
    if-nez v4, :cond_9

    .line 352
    :cond_6
    invoke-interface {v0}, Lmf/org/w3c/dom/Text;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 353
    .local v2, "next":Lmf/org/w3c/dom/Node;
    :goto_3
    if-nez v2, :cond_b

    :cond_7
    move-object v1, v0

    .line 369
    goto :goto_0

    .line 329
    .end local v2    # "next":Lmf/org/w3c/dom/Node;
    .end local v4    # "prev":Lmf/org/w3c/dom/Node;
    :cond_8
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/TextImpl;->setData(Ljava/lang/String;)V

    .line 330
    move-object v0, p0

    goto :goto_1

    .line 340
    .restart local v4    # "prev":Lmf/org/w3c/dom/Node;
    :cond_9
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v5, v6, :cond_a

    .line 341
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v5, v7, :cond_a

    .line 342
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v8, :cond_6

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/dom/TextImpl;->hasTextOnlyChildren(Lmf/org/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 343
    :cond_a
    invoke-interface {v3, v4}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 344
    move-object v4, v0

    .line 348
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v4

    goto :goto_2

    .line 358
    .restart local v2    # "next":Lmf/org/w3c/dom/Node;
    :cond_b
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v5, v6, :cond_c

    .line 359
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v5, v7, :cond_c

    .line 360
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v8, :cond_7

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/dom/TextImpl;->hasTextOnlyChildren(Lmf/org/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 361
    :cond_c
    invoke-interface {v3, v2}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 362
    move-object v2, v0

    .line 366
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_3
.end method

.method public setIgnorableWhitespace(Z)V
    .locals 1
    .param p1, "ignore"    # Z

    .prologue
    .line 107
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->synchronizeData()V

    .line 110
    :cond_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/TextImpl;->isIgnorableWhitespace(Z)V

    .line 112
    return-void
.end method

.method public setValues(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 2
    .param p1, "ownerDoc"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 79
    const/4 v0, 0x0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/TextImpl;->flags:S

    .line 80
    iput-object v1, p0, Lmf/org/apache/xerces/dom/TextImpl;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 81
    iput-object v1, p0, Lmf/org/apache/xerces/dom/TextImpl;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 82
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/TextImpl;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 83
    iput-object p2, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public splitText(I)Lmf/org/w3c/dom/Text;
    .locals 7
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 610
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 611
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    .line 612
    const/4 v3, 0x7

    .line 613
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 611
    invoke-direct {v2, v3, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 616
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->needsSyncData()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 617
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->synchronizeData()V

    .line 619
    :cond_1
    if-ltz p1, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le p1, v2, :cond_3

    .line 620
    :cond_2
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    const/4 v3, 0x1

    .line 621
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "INDEX_SIZE_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 620
    invoke-direct {v2, v3, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 626
    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lmf/org/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v0

    .line 627
    .local v0, "newText":Lmf/org/w3c/dom/Text;
    iget-object v2, p0, Lmf/org/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/TextImpl;->setNodeValue(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 631
    .local v1, "parentNode":Lmf/org/w3c/dom/Node;
    if-eqz v1, :cond_4

    .line 632
    iget-object v2, p0, Lmf/org/apache/xerces/dom/TextImpl;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-interface {v1, v0, v2}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 635
    :cond_4
    return-object v0
.end method
