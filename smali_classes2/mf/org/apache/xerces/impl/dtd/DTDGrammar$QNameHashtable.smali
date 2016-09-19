.class public final Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;
.super Ljava/lang/Object;
.source "DTDGrammar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dtd/DTDGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "QNameHashtable"
.end annotation


# static fields
.field private static final HASHTABLE_SIZE:I = 0x65

.field private static final INITIAL_BUCKET_SIZE:I = 0x4


# instance fields
.field private fHashTable:[[Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 2642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2659
    const/16 v0, 0x65

    new-array v0, v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->fHashTable:[[Ljava/lang/Object;

    .line 2642
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)I
    .locals 9
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    const/4 v8, 0x0

    .line 2710
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v7, 0x7fffffff

    and-int/2addr v5, v7

    rem-int/lit8 v2, v5, 0x65

    .line 2711
    .local v2, "hash":I
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->fHashTable:[[Ljava/lang/Object;

    aget-object v0, v5, v2

    .line 2713
    .local v0, "bucket":[Ljava/lang/Object;
    if-nez v0, :cond_0

    move v5, v6

    .line 2725
    :goto_0
    return v5

    .line 2716
    :cond_0
    aget-object v5, v0, v8

    check-cast v5, [I

    aget v1, v5, v8

    .line 2718
    .local v1, "count":I
    const/4 v4, 0x1

    .line 2719
    .local v4, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v1, :cond_1

    move v5, v6

    .line 2725
    goto :goto_0

    .line 2720
    :cond_1
    aget-object v5, v0, v4

    check-cast v5, Ljava/lang/String;

    if-ne v5, p1, :cond_2

    .line 2721
    add-int/lit8 v5, v4, 0x1

    aget-object v5, v0, v5

    check-cast v5, [I

    aget v5, v5, v8

    goto :goto_0

    .line 2723
    :cond_2
    add-int/lit8 v4, v4, 0x2

    .line 2719
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public put(Ljava/lang/String;I)V
    .locals 14
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 2667
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, 0x7fffffff

    and-int/2addr v10, v11

    rem-int/lit8 v3, v10, 0x65

    .line 2668
    .local v3, "hash":I
    iget-object v10, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->fHashTable:[[Ljava/lang/Object;

    aget-object v0, v10, v3

    .line 2670
    .local v0, "bucket":[Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 2671
    const/16 v10, 0x9

    new-array v0, v10, [Ljava/lang/Object;

    .line 2672
    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/4 v13, 0x1

    aput v13, v11, v12

    aput-object v11, v0, v10

    .line 2673
    const/4 v10, 0x1

    aput-object p1, v0, v10

    .line 2674
    const/4 v10, 0x2

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    aput p2, v11, v12

    aput-object v11, v0, v10

    .line 2675
    iget-object v10, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->fHashTable:[[Ljava/lang/Object;

    aput-object v0, v10, v3

    .line 2706
    :cond_0
    :goto_0
    return-void

    .line 2677
    :cond_1
    const/4 v10, 0x0

    aget-object v10, v0, v10

    check-cast v10, [I

    const/4 v11, 0x0

    aget v1, v10, v11

    .line 2678
    .local v1, "count":I
    mul-int/lit8 v10, v1, 0x2

    add-int/lit8 v8, v10, 0x1

    .line 2679
    .local v8, "offset":I
    array-length v10, v0

    if-ne v8, v10, :cond_2

    .line 2680
    add-int/lit8 v7, v1, 0x4

    .line 2681
    .local v7, "newSize":I
    mul-int/lit8 v10, v7, 0x2

    add-int/lit8 v10, v10, 0x1

    new-array v6, v10, [Ljava/lang/Object;

    .line 2682
    .local v6, "newBucket":[Ljava/lang/Object;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v0, v10, v6, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2683
    move-object v0, v6

    .line 2684
    iget-object v10, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->fHashTable:[[Ljava/lang/Object;

    aput-object v0, v10, v3

    .line 2686
    .end local v6    # "newBucket":[Ljava/lang/Object;
    .end local v7    # "newSize":I
    :cond_2
    const/4 v2, 0x0

    .line 2687
    .local v2, "found":Z
    const/4 v5, 0x1

    .line 2688
    .local v5, "j":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-lt v4, v1, :cond_3

    .line 2696
    :goto_2
    if-nez v2, :cond_0

    .line 2697
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .local v9, "offset":I
    aput-object p1, v0, v8

    .line 2698
    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput p2, v10, v11

    aput-object v10, v0, v9

    .line 2699
    const/4 v10, 0x0

    aget-object v10, v0, v10

    check-cast v10, [I

    const/4 v11, 0x0

    add-int/lit8 v1, v1, 0x1

    aput v1, v10, v11

    goto :goto_0

    .line 2689
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :cond_3
    aget-object v10, v0, v5

    check-cast v10, Ljava/lang/String;

    if-ne v10, p1, :cond_4

    .line 2690
    add-int/lit8 v10, v5, 0x1

    aget-object v10, v0, v10

    check-cast v10, [I

    const/4 v11, 0x0

    aput p2, v10, v11

    .line 2691
    const/4 v2, 0x1

    .line 2692
    goto :goto_2

    .line 2694
    :cond_4
    add-int/lit8 v5, v5, 0x2

    .line 2688
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
