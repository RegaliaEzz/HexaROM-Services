.class Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;
.super Lmf/org/apache/xerces/impl/xpath/regex/Token;
.source "Token.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/regex/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnionToken"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x23a65df5641dc4c5L


# instance fields
.field children:Ljava/util/Vector;


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 1427
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;-><init>(I)V

    .line 1428
    return-void
.end method


# virtual methods
.method addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 10
    .param p1, "tok"    # Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .prologue
    const/high16 v9, 0x10000

    const/16 v8, 0xa

    const/4 v3, 0x2

    .line 1431
    if-nez p1, :cond_1

    .line 1484
    :cond_0
    :goto_0
    return-void

    .line 1432
    :cond_1
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    if-nez v6, :cond_2

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    .line 1433
    :cond_2
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->type:I

    if-ne v6, v3, :cond_3

    .line 1434
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v6, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 1438
    :cond_3
    iget v6, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 1439
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 1440
    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    .line 1439
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1443
    .end local v2    # "i":I
    :cond_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    .line 1444
    .local v5, "size":I
    if-nez v5, :cond_5

    .line 1445
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v6, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 1448
    :cond_5
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .line 1449
    .local v4, "previous":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    iget v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-eqz v6, :cond_6

    iget v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-ne v6, v8, :cond_7

    .line 1450
    :cond_6
    iget v6, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-eqz v6, :cond_8

    iget v6, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-eq v6, v8, :cond_8

    .line 1451
    :cond_7
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v6, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 1458
    :cond_8
    iget v6, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-nez v6, :cond_9

    .line 1459
    .local v3, "nextMaxLength":I
    :goto_2
    iget v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-nez v6, :cond_b

    .line 1460
    new-instance v0, Ljava/lang/StringBuffer;

    add-int/lit8 v6, v3, 0x2

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1461
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChar()I

    move-result v1

    .line 1462
    .local v1, "ch":I
    if-lt v1, v9, :cond_a

    .line 1463
    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->decomposeToSurrogates(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1466
    :goto_3
    const/4 v6, 0x0

    invoke-static {v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createString(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;

    move-result-object v4

    .line 1467
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v6, v4, v7}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1473
    .end local v1    # "ch":I
    :goto_4
    iget v6, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-nez v6, :cond_d

    .line 1474
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChar()I

    move-result v1

    .line 1475
    .restart local v1    # "ch":I
    if-lt v1, v9, :cond_c

    .line 1476
    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->decomposeToSurrogates(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1483
    .end local v1    # "ch":I
    :goto_5
    check-cast v4, Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;

    .end local v4    # "previous":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    iput-object v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;->string:Ljava/lang/String;

    goto/16 :goto_0

    .line 1458
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v3    # "nextMaxLength":I
    .restart local v4    # "previous":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :cond_9
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_2

    .line 1465
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    .restart local v1    # "ch":I
    .restart local v3    # "nextMaxLength":I
    :cond_a
    int-to-char v6, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1469
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "ch":I
    :cond_b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1470
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 1478
    .restart local v1    # "ch":I
    :cond_c
    int-to-char v6, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 1480
    .end local v1    # "ch":I
    :cond_d
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5
.end method

.method getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1490
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method size()I
    .locals 1

    .prologue
    .line 1487
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 11
    .param p1, "options"    # I

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1495
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->type:I

    if-ne v6, v7, :cond_4

    .line 1496
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ne v6, v9, :cond_2

    .line 1497
    invoke-virtual {p0, v8}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    .line 1498
    .local v0, "ch":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    .line 1499
    .local v1, "ch2":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    iget v6, v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    invoke-virtual {v1, v8}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    if-ne v6, v0, :cond_0

    .line 1500
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v0    # "ch":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .end local v1    # "ch2":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .local v3, "ret":Ljava/lang/String;
    :goto_0
    move-object v4, v3

    .line 1528
    .end local v3    # "ret":Ljava/lang/String;
    .local v4, "ret":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 1501
    .end local v4    # "ret":Ljava/lang/String;
    .restart local v0    # "ch":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .restart local v1    # "ch2":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :cond_0
    iget v6, v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/16 v7, 0x9

    if-ne v6, v7, :cond_1

    invoke-virtual {v1, v8}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    if-ne v6, v0, :cond_1

    .line 1502
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "+?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1503
    .restart local v3    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 1504
    .end local v3    # "ret":Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1505
    .restart local v3    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 1506
    .end local v0    # "ch":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .end local v1    # "ch2":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .end local v3    # "ret":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1507
    .local v5, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v2, v6, :cond_3

    .line 1510
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    .restart local v3    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 1508
    .end local v3    # "ret":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v6, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1507
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1514
    .end local v2    # "i":I
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ne v6, v9, :cond_5

    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    iget v6, v6, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-ne v6, v10, :cond_5

    .line 1515
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v7

    invoke-virtual {v7, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "ret":Ljava/lang/String;
    :goto_3
    move-object v4, v3

    .line 1528
    .end local v3    # "ret":Ljava/lang/String;
    .restart local v4    # "ret":Ljava/lang/String;
    goto/16 :goto_1

    .line 1516
    .end local v4    # "ret":Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ne v6, v9, :cond_6

    .line 1517
    invoke-virtual {p0, v8}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    iget v6, v6, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-ne v6, v10, :cond_6

    .line 1518
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v7

    invoke-virtual {v7, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "??"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1519
    .restart local v3    # "ret":Ljava/lang/String;
    goto :goto_3

    .line 1520
    .end local v3    # "ret":Ljava/lang/String;
    :cond_6
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1521
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v6, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v6, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1522
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v2, v6, :cond_7

    .line 1526
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    .restart local v3    # "ret":Ljava/lang/String;
    goto :goto_3

    .line 1523
    .end local v3    # "ret":Ljava/lang/String;
    :cond_7
    const/16 v6, 0x7c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1524
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v6, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1522
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method
