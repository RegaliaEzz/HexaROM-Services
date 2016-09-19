.class final Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
.super Lmf/org/apache/xerces/impl/xpath/regex/Token;
.source "RangeToken.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MAPSIZE:I = 0x100

.field private static final serialVersionUID:J = -0x7b024b6ae8cc53eL


# instance fields
.field compacted:Z

.field icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

.field map:[I

.field nonMapIndex:I

.field ranges:[I

.field sorted:Z


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;-><init>(I)V

    .line 34
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 35
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->map:[I

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setSorted(Z)V

    .line 41
    return-void
.end method

.method static complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 11
    .param p0, "token"    # Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .prologue
    const v10, 0x10ffff

    const/4 v9, 0x0

    .line 414
    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_0

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/4 v8, 0x5

    if-eq v7, v8, :cond_0

    .line 415
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Token#complementRanges(): must be RANGE: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    move-object v4, p0

    .line 416
    check-cast v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 417
    .local v4, "tok":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    .line 418
    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    .line 419
    iget-object v7, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v7, v7

    add-int/lit8 v2, v7, 0x2

    .line 420
    .local v2, "len":I
    iget-object v7, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v7, v7, v9

    if-nez v7, :cond_1

    .line 421
    add-int/lit8 v2, v2, -0x2

    .line 422
    :cond_1
    iget-object v7, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object v8, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget v1, v7, v8

    .line 423
    .local v1, "last":I
    if-ne v1, v10, :cond_2

    .line 424
    add-int/lit8 v2, v2, -0x2

    .line 425
    :cond_2
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v3

    .line 426
    .local v3, "ret":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    new-array v7, v2, [I

    iput-object v7, v3, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    .line 427
    const/4 v5, 0x0

    .line 428
    .local v5, "wp":I
    iget-object v7, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v7, v7, v9

    if-lez v7, :cond_3

    .line 429
    iget-object v7, v3, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "wp":I
    .local v6, "wp":I
    aput v9, v7, v5

    .line 430
    iget-object v7, v3, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "wp":I
    .restart local v5    # "wp":I
    iget-object v8, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v8, v8, v9

    add-int/lit8 v8, v8, -0x1

    aput v8, v7, v6

    .line 432
    :cond_3
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v7, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x2

    if-lt v0, v7, :cond_5

    .line 436
    if-eq v1, v10, :cond_4

    .line 437
    iget-object v7, v3, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "wp":I
    .restart local v6    # "wp":I
    add-int/lit8 v8, v1, 0x1

    aput v8, v7, v5

    .line 438
    iget-object v7, v3, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aput v10, v7, v6

    move v5, v6

    .line 440
    .end local v6    # "wp":I
    .restart local v5    # "wp":I
    :cond_4
    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setCompacted()V

    .line 441
    return-object v3

    .line 433
    :cond_5
    iget-object v7, v3, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "wp":I
    .restart local v6    # "wp":I
    iget-object v8, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v8, v8, v0

    add-int/lit8 v8, v8, 0x1

    aput v8, v7, v5

    .line 434
    iget-object v7, v3, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "wp":I
    .restart local v5    # "wp":I
    iget-object v8, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v0, 0x1

    aget v8, v8, v9

    add-int/lit8 v8, v8, -0x1

    aput v8, v7, v6

    .line 432
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private createMap()V
    .locals 12

    .prologue
    const/16 v11, 0x100

    .line 515
    const/16 v0, 0x8

    .line 516
    .local v0, "asize":I
    new-array v4, v0, [I

    .line 517
    .local v4, "map":[I
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v5, v7

    .line 518
    .local v5, "nonMapIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 521
    const/4 v2, 0x0

    :goto_1
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v7, v7

    if-lt v2, v7, :cond_1

    .line 538
    :goto_2
    iput-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->map:[I

    .line 539
    iput v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->nonMapIndex:I

    .line 541
    return-void

    .line 519
    :cond_0
    const/4 v7, 0x0

    aput v7, v4, v2

    .line 518
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 522
    :cond_1
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v6, v7, v2

    .line 523
    .local v6, "s":I
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v8, v2, 0x1

    aget v1, v7, v8

    .line 524
    .local v1, "e":I
    if-ge v6, v11, :cond_4

    .line 525
    move v3, v6

    .local v3, "j":I
    :goto_3
    if-gt v3, v1, :cond_2

    if-lt v3, v11, :cond_3

    .line 533
    :cond_2
    if-lt v1, v11, :cond_5

    .line 534
    move v5, v2

    .line 535
    goto :goto_2

    .line 526
    :cond_3
    div-int/lit8 v7, v3, 0x20

    aget v8, v4, v7

    const/4 v9, 0x1

    and-int/lit8 v10, v3, 0x1f

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    aput v8, v4, v7

    .line 525
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 530
    .end local v3    # "j":I
    :cond_4
    move v5, v2

    .line 531
    goto :goto_2

    .line 521
    .restart local v3    # "j":I
    :cond_5
    add-int/lit8 v2, v2, 0x2

    goto :goto_1
.end method

.method private static escapeCharInCharClass(I)Ljava/lang/String;
    .locals 5
    .param p0, "ch"    # I

    .prologue
    .line 599
    sparse-switch p0, :sswitch_data_0

    .line 611
    const/16 v2, 0x20

    if-ge p0, v2, :cond_0

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, "pre":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 620
    .end local v0    # "pre":Ljava/lang/String;
    .local v1, "ret":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 602
    .end local v1    # "ret":Ljava/lang/String;
    :sswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 603
    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 604
    .end local v1    # "ret":Ljava/lang/String;
    :sswitch_1
    const-string v1, "\\f"

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 605
    .end local v1    # "ret":Ljava/lang/String;
    :sswitch_2
    const-string v1, "\\n"

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 606
    .end local v1    # "ret":Ljava/lang/String;
    :sswitch_3
    const-string v1, "\\r"

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 607
    .end local v1    # "ret":Ljava/lang/String;
    :sswitch_4
    const-string v1, "\\t"

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 608
    .end local v1    # "ret":Ljava/lang/String;
    :sswitch_5
    const-string v1, "\\e"

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 614
    .end local v1    # "ret":Ljava/lang/String;
    :cond_0
    const/high16 v2, 0x10000

    if-lt p0, v2, :cond_1

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 616
    .restart local v0    # "pre":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\v"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 617
    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 618
    .end local v0    # "pre":Ljava/lang/String;
    .end local v1    # "ret":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 599
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_4
        0xa -> :sswitch_2
        0xc -> :sswitch_1
        0xd -> :sswitch_3
        0x1b -> :sswitch_5
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x5e -> :sswitch_0
    .end sparse-switch
.end method

.method private final isCompacted()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compacted:Z

    return v0
.end method

.method private final isSorted()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sorted:Z

    return v0
.end method

.method private final setCompacted()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compacted:Z

    .line 92
    return-void
.end method

.method private final setSorted(Z)V
    .locals 1
    .param p1, "sort"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sorted:Z

    .line 85
    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compacted:Z

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method protected addRange(II)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 45
    const/4 v5, 0x0

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 48
    if-gt p1, p2, :cond_0

    .line 49
    move v2, p1

    .line 50
    .local v2, "r1":I
    move v3, p2

    .line 56
    .local v3, "r2":I
    :goto_0
    const/4 v0, 0x0

    .line 57
    .local v0, "pos":I
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-nez v5, :cond_1

    .line 58
    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    .line 59
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aput v2, v5, v7

    .line 60
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aput v3, v5, v6

    .line 61
    invoke-direct {p0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setSorted(Z)V

    .line 78
    :goto_1
    return-void

    .line 52
    .end local v0    # "pos":I
    .end local v2    # "r1":I
    .end local v3    # "r2":I
    :cond_0
    move v2, p2

    .line 53
    .restart local v2    # "r1":I
    move v3, p1

    .restart local v3    # "r2":I
    goto :goto_0

    .line 63
    .restart local v0    # "pos":I
    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v0, v5

    .line 64
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v0, -0x1

    aget v5, v5, v6

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v2, :cond_2

    .line 65
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v0, -0x1

    aput v3, v5, v6

    goto :goto_1

    .line 68
    :cond_2
    add-int/lit8 v5, v0, 0x2

    new-array v4, v5, [I

    .line 69
    .local v4, "temp":[I
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    invoke-static {v5, v7, v4, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iput-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    .line 71
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v0, -0x1

    aget v5, v5, v6

    if-lt v5, v2, :cond_3

    .line 72
    invoke-direct {p0, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setSorted(Z)V

    .line 73
    :cond_3
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "pos":I
    .local v1, "pos":I
    aput v2, v5, v0

    .line 74
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aput v3, v5, v1

    .line 75
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sorted:Z

    if-nez v5, :cond_4

    .line 76
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    :cond_4
    move v0, v1

    .end local v1    # "pos":I
    .restart local v0    # "pos":I
    goto :goto_1
.end method

.method protected compactRanges()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "DEBUG":Z
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-eqz v6, :cond_0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v6, v6

    const/4 v7, 0x2

    if-gt v6, v7, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->isCompacted()Z

    move-result v6

    if-nez v6, :cond_0

    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, "base":I
    const/4 v4, 0x0

    .line 133
    .local v4, "target":I
    :goto_1
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v6, v6

    if-lt v4, v6, :cond_3

    .line 188
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v6, v6

    if-eq v1, v6, :cond_2

    .line 189
    new-array v3, v1, [I

    .line 190
    .local v3, "result":[I
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    invoke-static {v6, v10, v3, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    .line 193
    .end local v3    # "result":[I
    :cond_2
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setCompacted()V

    goto :goto_0

    .line 134
    :cond_3
    if-eq v1, v4, :cond_5

    .line 135
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "target":I
    .local v5, "target":I
    aget v7, v7, v4

    aput v7, v6, v1

    .line 136
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v7, v1, 0x1

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "target":I
    .restart local v4    # "target":I
    aget v8, v8, v5

    aput v8, v6, v7

    .line 139
    :goto_2
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v7, v1, 0x1

    aget v2, v6, v7

    .line 140
    .local v2, "baseend":I
    :goto_3
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v6, v6

    if-lt v4, v6, :cond_6

    .line 185
    :cond_4
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 138
    .end local v2    # "baseend":I
    :cond_5
    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 141
    .restart local v2    # "baseend":I
    :cond_6
    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v7, v7, v4

    if-lt v6, v7, :cond_4

    .line 143
    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v7, v7, v4

    if-ne v6, v7, :cond_8

    .line 144
    if-eqz v0, :cond_7

    .line 145
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Token#compactRanges(): Compaction: ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 146
    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v1, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 147
    const-string v8, "], ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 148
    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v4, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 149
    const-string v8, "] -> ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 150
    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v4, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 151
    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 145
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    :cond_7
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v7, v1, 0x1

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v4, 0x1

    aget v8, v8, v9

    aput v8, v6, v7

    .line 153
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v7, v1, 0x1

    aget v2, v6, v7

    .line 154
    add-int/lit8 v4, v4, 0x2

    .line 155
    goto/16 :goto_3

    :cond_8
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v7, v4, 0x1

    aget v6, v6, v7

    if-lt v2, v6, :cond_a

    .line 156
    if-eqz v0, :cond_9

    .line 157
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Token#compactRanges(): Compaction: ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 158
    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v1, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 159
    const-string v8, "], ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 160
    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v4, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 161
    const-string v8, "] -> ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 162
    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v1, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 163
    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 157
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 164
    :cond_9
    add-int/lit8 v4, v4, 0x2

    .line 165
    goto/16 :goto_3

    :cond_a
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v7, v4, 0x1

    aget v6, v6, v7

    if-ge v2, v6, :cond_c

    .line 166
    if-eqz v0, :cond_b

    .line 167
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Token#compactRanges(): Compaction: ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 168
    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v1, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 169
    const-string v8, "], ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 170
    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v4, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 171
    const-string v8, "] -> ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 172
    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v4, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 173
    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 167
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 174
    :cond_b
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v7, v1, 0x1

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v4, 0x1

    aget v8, v8, v9

    aput v8, v6, v7

    .line 175
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v7, v1, 0x1

    aget v2, v6, v7

    .line 176
    add-int/lit8 v4, v4, 0x2

    .line 177
    goto/16 :goto_3

    .line 178
    :cond_c
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Token#compactRanges(): Internel Error: ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 180
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v1, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 181
    const-string v8, "] ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 182
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v4, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 178
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method dumpRanges()V
    .locals 5

    .prologue
    .line 479
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "RANGE: "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 480
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-nez v1, :cond_0

    .line 481
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, " NULL"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 488
    :goto_0
    return-void

    .line 484
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 487
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 485
    :cond_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 484
    add-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method

.method declared-synchronized getCaseInsensitiveToken()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 9

    .prologue
    const v8, 0xffff

    const/4 v7, 0x4

    .line 445
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    if-eqz v5, :cond_0

    .line 446
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    :goto_0
    monitor-exit p0

    return-object v2

    .line 448
    :cond_0
    :try_start_1
    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->type:I

    if-ne v5, v7, :cond_1

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v4

    .line 449
    .local v4, "uppers":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v5, v5

    if-lt v1, v5, :cond_2

    .line 459
    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->type:I

    if-ne v5, v7, :cond_5

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v2

    .line 460
    .local v2, "lowers":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    :goto_3
    const/4 v1, 0x0

    :goto_4
    iget-object v5, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v5, v5

    if-lt v1, v5, :cond_6

    .line 470
    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    .line 471
    invoke-virtual {v2, p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    .line 472
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    .line 474
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 445
    .end local v1    # "i":I
    .end local v2    # "lowers":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .end local v4    # "uppers":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 448
    :cond_1
    :try_start_2
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createNRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v4

    goto :goto_1

    .line 450
    .restart local v1    # "i":I
    .restart local v4    # "uppers":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v0, v5, v1

    .local v0, "ch":I
    :goto_5
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    if-le v0, v5, :cond_3

    .line 449
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 451
    :cond_3
    if-le v0, v8, :cond_4

    .line 452
    invoke-virtual {v4, v0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    .line 450
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 454
    :cond_4
    int-to-char v5, v0

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 455
    .local v3, "uch":C
    invoke-virtual {v4, v3, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    goto :goto_6

    .line 459
    .end local v0    # "ch":I
    .end local v3    # "uch":C
    :cond_5
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createNRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v2

    goto :goto_3

    .line 461
    .restart local v2    # "lowers":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    :cond_6
    iget-object v5, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v0, v5, v1

    .restart local v0    # "ch":I
    :goto_7
    iget-object v5, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    if-le v0, v5, :cond_7

    .line 460
    add-int/lit8 v1, v1, 0x2

    goto :goto_4

    .line 462
    :cond_7
    if-le v0, v8, :cond_8

    .line 463
    invoke-virtual {v2, v0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    .line 461
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 465
    :cond_8
    int-to-char v5, v0

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    .line 466
    .restart local v3    # "uch":C
    invoke-virtual {v2, v3, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8
.end method

.method protected intersectRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 15
    .param p1, "token"    # Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .prologue
    .line 323
    move-object/from16 v8, p1

    check-cast v8, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 324
    .local v8, "tok":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    iget-object v11, v8, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-eqz v11, :cond_0

    iget-object v11, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-nez v11, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    const/4 v11, 0x0

    iput-object v11, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 327
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    .line 328
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    .line 329
    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    .line 330
    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    .line 332
    iget-object v11, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v11, v11

    iget-object v12, v8, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v12, v12

    add-int/2addr v11, v12

    new-array v0, v11, [I

    .line 333
    .local v0, "result":[I
    const/4 v9, 0x0

    .local v9, "wp":I
    const/4 v1, 0x0

    .local v1, "src1":I
    const/4 v5, 0x0

    .line 334
    .local v5, "src2":I
    :goto_1
    iget-object v11, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v11, v11

    if-ge v1, v11, :cond_2

    iget-object v11, v8, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v11, v11

    if-lt v5, v11, :cond_3

    .line 400
    :cond_2
    :goto_2
    iget-object v11, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v11, v11

    if-lt v1, v11, :cond_a

    .line 404
    new-array v11, v9, [I

    iput-object v11, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    .line 405
    const/4 v11, 0x0

    iget-object v12, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    const/4 v13, 0x0

    invoke-static {v0, v11, v12, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 335
    :cond_3
    iget-object v11, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v11, v1

    .line 336
    .local v3, "src1begin":I
    iget-object v11, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v12, v1, 0x1

    aget v4, v11, v12

    .line 337
    .local v4, "src1end":I
    iget-object v11, v8, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v6, v11, v5

    .line 338
    .local v6, "src2begin":I
    iget-object v11, v8, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v12, v5, 0x1

    aget v7, v11, v12

    .line 339
    .local v7, "src2end":I
    if-ge v4, v6, :cond_4

    .line 344
    add-int/lit8 v1, v1, 0x2

    .line 345
    goto :goto_1

    :cond_4
    if-lt v4, v6, :cond_8

    .line 346
    if-gt v3, v7, :cond_8

    .line 352
    if-gt v6, v3, :cond_5

    if-gt v4, v7, :cond_5

    .line 357
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "wp":I
    .local v10, "wp":I
    aput v3, v0, v9

    .line 358
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "wp":I
    .restart local v9    # "wp":I
    aput v4, v0, v10

    .line 359
    add-int/lit8 v1, v1, 0x2

    .line 360
    goto :goto_1

    :cond_5
    if-gt v6, v3, :cond_6

    .line 365
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "wp":I
    .restart local v10    # "wp":I
    aput v3, v0, v9

    .line 366
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "wp":I
    .restart local v9    # "wp":I
    aput v7, v0, v10

    .line 367
    iget-object v11, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v12, v7, 0x1

    aput v12, v11, v1

    .line 368
    add-int/lit8 v5, v5, 0x2

    .line 369
    goto :goto_1

    :cond_6
    if-gt v4, v7, :cond_7

    .line 374
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "wp":I
    .restart local v10    # "wp":I
    aput v6, v0, v9

    .line 375
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "wp":I
    .restart local v9    # "wp":I
    aput v4, v0, v10

    .line 376
    add-int/lit8 v1, v1, 0x2

    .line 377
    goto :goto_1

    .line 382
    :cond_7
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "wp":I
    .restart local v10    # "wp":I
    aput v6, v0, v9

    .line 383
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "wp":I
    .restart local v9    # "wp":I
    aput v7, v0, v10

    .line 384
    iget-object v11, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v12, v7, 0x1

    aput v12, v11, v1

    goto :goto_1

    .line 386
    :cond_8
    if-ge v7, v3, :cond_9

    .line 390
    add-int/lit8 v5, v5, 0x2

    .line 391
    goto :goto_1

    .line 392
    :cond_9
    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Token#intersectRanges(): Internal Error: ["

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    iget-object v13, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v13, v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 394
    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v14, v1, 0x1

    aget v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 395
    const-string v13, "] & ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v13, v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 396
    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v14, v5, 0x1

    aget v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 397
    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 392
    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 401
    .end local v3    # "src1begin":I
    .end local v4    # "src1end":I
    .end local v6    # "src2begin":I
    .end local v7    # "src2end":I
    :cond_a
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "wp":I
    .restart local v10    # "wp":I
    iget-object v11, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "src1":I
    .local v2, "src1":I
    aget v11, v11, v1

    aput v11, v0, v9

    .line 402
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "wp":I
    .restart local v9    # "wp":I
    iget-object v11, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "src1":I
    .restart local v1    # "src1":I
    aget v11, v11, v2

    aput v11, v0, v10

    goto/16 :goto_2
.end method

.method match(I)Z
    .locals 7
    .param p1, "ch"    # I

    .prologue
    const/16 v6, 0x100

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 491
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->map:[I

    if-nez v4, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->createMap()V

    .line 493
    :cond_0
    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 494
    if-ge p1, v6, :cond_3

    .line 495
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->map:[I

    div-int/lit8 v5, p1, 0x20

    aget v4, v4, v5

    and-int/lit8 v5, p1, 0x1f

    shl-int v5, v2, v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    move v1, v2

    .line 510
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v3

    .line 495
    goto :goto_0

    .line 496
    :cond_3
    const/4 v1, 0x0

    .line 497
    .local v1, "ret":Z
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->nonMapIndex:I

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 498
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v0

    if-gt v3, p1, :cond_4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    if-gt p1, v3, :cond_4

    move v1, v2

    .line 499
    goto :goto_0

    .line 497
    :cond_4
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 502
    .end local v0    # "i":I
    .end local v1    # "ret":Z
    :cond_5
    if-ge p1, v6, :cond_7

    .line 503
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->map:[I

    div-int/lit8 v5, p1, 0x20

    aget v4, v4, v5

    and-int/lit8 v5, p1, 0x1f

    shl-int v5, v2, v5

    and-int/2addr v4, v5

    if-nez v4, :cond_6

    move v1, v2

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_0

    .line 504
    :cond_7
    const/4 v1, 0x1

    .line 505
    .restart local v1    # "ret":Z
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->nonMapIndex:I

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 506
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v2, v2, v0

    if-gt v2, p1, :cond_8

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v0, 0x1

    aget v2, v2, v4

    if-gt p1, v2, :cond_8

    move v1, v3

    .line 507
    goto :goto_0

    .line 505
    :cond_8
    add-int/lit8 v0, v0, 0x2

    goto :goto_2
.end method

.method protected mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 12
    .param p1, "token"    # Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .prologue
    const/4 v11, 0x0

    .line 197
    move-object v7, p1

    check-cast v7, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 198
    .local v7, "tok":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    .line 199
    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    .line 200
    iget-object v8, v7, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-nez v8, :cond_0

    .line 227
    :goto_0
    return-void

    .line 202
    :cond_0
    const/4 v8, 0x0

    iput-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 203
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setSorted(Z)V

    .line 204
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-nez v8, :cond_1

    .line 205
    iget-object v8, v7, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v8, v8

    new-array v8, v8, [I

    iput-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    .line 206
    iget-object v8, v7, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object v10, v7, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v10, v10

    invoke-static {v8, v11, v9, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 209
    :cond_1
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v8, v8

    iget-object v9, v7, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v9, v9

    add-int/2addr v8, v9

    new-array v6, v8, [I

    .line 210
    .local v6, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_1
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v8, v8

    if-lt v0, v8, :cond_2

    iget-object v8, v7, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v8, v8

    if-lt v2, v8, :cond_2

    .line 226
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    goto :goto_0

    .line 211
    :cond_2
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v8, v8

    if-lt v0, v8, :cond_3

    .line 212
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "k":I
    .local v5, "k":I
    iget-object v8, v7, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .local v3, "j":I
    aget v8, v8, v2

    aput v8, v6, v4

    .line 213
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "k":I
    .restart local v4    # "k":I
    iget-object v8, v7, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    aget v8, v8, v3

    aput v8, v6, v5

    goto :goto_1

    .line 214
    :cond_3
    iget-object v8, v7, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v8, v8

    if-lt v2, v8, :cond_4

    .line 215
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "k":I
    .restart local v5    # "k":I
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget v8, v8, v0

    aput v8, v6, v4

    .line 216
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "k":I
    .restart local v4    # "k":I
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget v8, v8, v1

    aput v8, v6, v5

    goto :goto_1

    .line 217
    :cond_4
    iget-object v8, v7, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v8, v8, v2

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v9, v9, v0

    if-lt v8, v9, :cond_5

    .line 218
    iget-object v8, v7, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v8, v8, v2

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v9, v9, v0

    if-ne v8, v9, :cond_6

    iget-object v8, v7, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v2, 0x1

    aget v8, v8, v9

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v10, v0, 0x1

    aget v9, v9, v10

    if-ge v8, v9, :cond_6

    .line 219
    :cond_5
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "k":I
    .restart local v5    # "k":I
    iget-object v8, v7, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .restart local v3    # "j":I
    aget v8, v8, v2

    aput v8, v6, v4

    .line 220
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "k":I
    .restart local v4    # "k":I
    iget-object v8, v7, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    aget v8, v8, v3

    aput v8, v6, v5

    goto :goto_1

    .line 222
    :cond_6
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "k":I
    .restart local v5    # "k":I
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aget v8, v8, v0

    aput v8, v6, v4

    .line 223
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "k":I
    .restart local v4    # "k":I
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget v8, v8, v1

    aput v8, v6, v5

    goto/16 :goto_1
.end method

.method protected sortRanges()V
    .locals 7

    .prologue
    .line 95
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->isSorted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-eqz v3, :cond_0

    .line 104
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v3, v3

    add-int/lit8 v0, v3, -0x4

    .local v0, "i":I
    :goto_1
    if-gez v0, :cond_2

    .line 118
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setSorted(Z)V

    goto :goto_0

    .line 105
    :cond_2
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-le v1, v0, :cond_3

    .line 104
    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 106
    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v1, 0x2

    aget v4, v4, v5

    if-gt v3, v4, :cond_4

    .line 107
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v1, 0x2

    aget v4, v4, v5

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v1, 0x3

    aget v4, v4, v5

    if-le v3, v4, :cond_5

    .line 109
    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v1, 0x2

    aget v2, v3, v4

    .line 110
    .local v2, "tmp":I
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v1, 0x2

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v5, v5, v1

    aput v5, v3, v4

    .line 111
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aput v2, v3, v1

    .line 112
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v1, 0x3

    aget v2, v3, v4

    .line 113
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v1, 0x3

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    .line 114
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v1, 0x1

    aput v2, v3, v4

    .line 105
    .end local v2    # "tmp":I
    :cond_5
    add-int/lit8 v1, v1, 0x2

    goto :goto_2
.end method

.method protected subtractRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 16
    .param p1, "token"    # Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .prologue
    .line 230
    move-object/from16 v0, p1

    iget v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/4 v13, 0x5

    if-ne v12, v13, :cond_1

    .line 231
    invoke-virtual/range {p0 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->intersectRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    .line 317
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v9, p1

    .line 234
    check-cast v9, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 235
    .local v9, "tok":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    iget-object v12, v9, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-eqz v12, :cond_0

    .line 237
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 238
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    .line 240
    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    .line 241
    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    .line 245
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v12, v12

    iget-object v13, v9, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v13, v13

    add-int/2addr v12, v13

    new-array v1, v12, [I

    .line 246
    .local v1, "result":[I
    const/4 v10, 0x0

    .local v10, "wp":I
    const/4 v2, 0x0

    .local v2, "src":I
    const/4 v6, 0x0

    .line 247
    .local v6, "sub":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v12, v12

    if-ge v2, v12, :cond_2

    iget-object v12, v9, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v12, v12

    if-lt v6, v12, :cond_3

    .line 310
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v12, v12

    if-lt v2, v12, :cond_a

    .line 314
    new-array v12, v10, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    .line 315
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    const/4 v14, 0x0

    invoke-static {v1, v12, v13, v14, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 248
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v4, v12, v2

    .line 249
    .local v4, "srcbegin":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v13, v2, 0x1

    aget v5, v12, v13

    .line 250
    .local v5, "srcend":I
    iget-object v12, v9, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v7, v12, v6

    .line 251
    .local v7, "subbegin":I
    iget-object v12, v9, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v13, v6, 0x1

    aget v8, v12, v13

    .line 252
    .local v8, "subend":I
    if-ge v5, v7, :cond_4

    .line 257
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "wp":I
    .local v11, "wp":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "src":I
    .local v3, "src":I
    aget v12, v12, v2

    aput v12, v1, v10

    .line 258
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "wp":I
    .restart local v10    # "wp":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "src":I
    .restart local v2    # "src":I
    aget v12, v12, v3

    aput v12, v1, v11

    goto :goto_1

    .line 259
    :cond_4
    if-lt v5, v7, :cond_8

    .line 260
    if-gt v4, v8, :cond_8

    .line 266
    if-gt v7, v4, :cond_5

    if-gt v5, v8, :cond_5

    .line 271
    add-int/lit8 v2, v2, 0x2

    .line 272
    goto :goto_1

    :cond_5
    if-gt v7, v4, :cond_6

    .line 277
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v13, v8, 0x1

    aput v13, v12, v2

    .line 278
    add-int/lit8 v6, v6, 0x2

    .line 279
    goto :goto_1

    :cond_6
    if-gt v5, v8, :cond_7

    .line 284
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "wp":I
    .restart local v11    # "wp":I
    aput v4, v1, v10

    .line 285
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "wp":I
    .restart local v10    # "wp":I
    add-int/lit8 v12, v7, -0x1

    aput v12, v1, v11

    .line 286
    add-int/lit8 v2, v2, 0x2

    .line 287
    goto :goto_1

    .line 292
    :cond_7
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "wp":I
    .restart local v11    # "wp":I
    aput v4, v1, v10

    .line 293
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "wp":I
    .restart local v10    # "wp":I
    add-int/lit8 v12, v7, -0x1

    aput v12, v1, v11

    .line 294
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v13, v8, 0x1

    aput v13, v12, v2

    .line 295
    add-int/lit8 v6, v6, 0x2

    .line 297
    goto/16 :goto_1

    :cond_8
    if-ge v8, v4, :cond_9

    .line 301
    add-int/lit8 v6, v6, 0x2

    .line 302
    goto/16 :goto_1

    .line 303
    :cond_9
    new-instance v12, Ljava/lang/RuntimeException;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Token#subtractRanges(): Internal Error: ["

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v14, v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 304
    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v15, v2, 0x1

    aget v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 305
    const-string v14, "] - ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v9, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v14, v14, v6

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 306
    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v9, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v15, v6, 0x1

    aget v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 307
    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 303
    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 311
    .end local v4    # "srcbegin":I
    .end local v5    # "srcend":I
    .end local v7    # "subbegin":I
    .end local v8    # "subend":I
    :cond_a
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "wp":I
    .restart local v11    # "wp":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "src":I
    .restart local v3    # "src":I
    aget v12, v12, v2

    aput v12, v1, v10

    .line 312
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "wp":I
    .restart local v10    # "wp":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "src":I
    .restart local v2    # "src":I
    aget v12, v12, v3

    aput v12, v1, v11

    goto/16 :goto_2
.end method

.method public toString(I)Ljava/lang/String;
    .locals 9
    .param p1, "options"    # I

    .prologue
    const/16 v8, 0x5d

    const/16 v7, 0x2d

    const/16 v6, 0x2c

    .line 545
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->type:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    .line 546
    sget-object v3, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_dot:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-ne p0, v3, :cond_0

    .line 547
    const-string v1, "."

    .line 594
    .local v1, "ret":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 548
    .end local v1    # "ret":Ljava/lang/String;
    :cond_0
    sget-object v3, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_0to9:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-ne p0, v3, :cond_1

    .line 549
    const-string v1, "\\d"

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 550
    .end local v1    # "ret":Ljava/lang/String;
    :cond_1
    sget-object v3, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-ne p0, v3, :cond_2

    .line 551
    const-string v1, "\\w"

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 552
    .end local v1    # "ret":Ljava/lang/String;
    :cond_2
    sget-object v3, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-ne p0, v3, :cond_3

    .line 553
    const-string v1, "\\s"

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 555
    .end local v1    # "ret":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 556
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 557
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v3, v3

    if-lt v0, v3, :cond_4

    .line 567
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 568
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 570
    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 558
    .end local v1    # "ret":Ljava/lang/String;
    :cond_4
    and-int/lit16 v3, p1, 0x400

    if-eqz v3, :cond_5

    if-lez v0, :cond_5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 559
    :cond_5
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    if-ne v3, v4, :cond_6

    .line 560
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v0

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 557
    :goto_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 562
    :cond_6
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v0

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 563
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 564
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 571
    .end local v0    # "i":I
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_7
    sget-object v3, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_0to9:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-ne p0, v3, :cond_8

    .line 572
    const-string v1, "\\D"

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 573
    .end local v1    # "ret":Ljava/lang/String;
    :cond_8
    sget-object v3, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-ne p0, v3, :cond_9

    .line 574
    const-string v1, "\\W"

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 575
    .end local v1    # "ret":Ljava/lang/String;
    :cond_9
    sget-object v3, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-ne p0, v3, :cond_a

    .line 576
    const-string v1, "\\S"

    .restart local v1    # "ret":Ljava/lang/String;
    goto/16 :goto_0

    .line 578
    .end local v1    # "ret":Ljava/lang/String;
    :cond_a
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 579
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    const-string v3, "[^"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 580
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v3, v3

    if-lt v0, v3, :cond_b

    .line 590
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 591
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "ret":Ljava/lang/String;
    goto/16 :goto_0

    .line 581
    .end local v1    # "ret":Ljava/lang/String;
    :cond_b
    and-int/lit16 v3, p1, 0x400

    if-eqz v3, :cond_c

    if-lez v0, :cond_c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 582
    :cond_c
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    if-ne v3, v4, :cond_d

    .line 583
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v0

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 580
    :goto_4
    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 585
    :cond_d
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v0

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 586
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 587
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4
.end method
