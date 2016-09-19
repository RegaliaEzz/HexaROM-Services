.class public Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
.super Ljava/lang/Object;
.source "XSWildcardDecl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSWildcard;


# static fields
.field public static final ABSENT:Ljava/lang/String;


# instance fields
.field public fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

.field private fDescription:Ljava/lang/String;

.field public fNamespaceList:[Ljava/lang/String;

.field public fProcessContents:S

.field public fType:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    .line 48
    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    .line 55
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 477
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fDescription:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private areSame(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z
    .locals 5
    .param p1, "wildcard"    # Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 396
    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iget-short v4, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v3, v4, :cond_4

    .line 398
    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v3, v1, :cond_1

    .line 419
    :cond_0
    :goto_0
    return v1

    .line 404
    :cond_1
    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 405
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    .line 410
    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v3, v3

    iget-object v4, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v4, v4

    if-ne v3, v4, :cond_4

    .line 411
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 412
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 413
    goto :goto_0

    .line 411
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_4
    move v1, v2

    .line 419
    goto :goto_0
.end method


# virtual methods
.method public allowNamespace(Ljava/lang/String;)Z
    .locals 6
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 81
    iget-short v4, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v4, v3, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v3

    .line 90
    :cond_1
    iget-short v4, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "found":Z
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v2, v4

    .line 93
    .local v2, "listNum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    if-eqz v0, :cond_5

    .line 98
    :cond_2
    if-eqz v0, :cond_0

    .line 103
    .end local v0    # "found":Z
    .end local v1    # "i":I
    .end local v2    # "listNum":I
    :cond_3
    iget-short v4, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 104
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v2, v4

    .line 105
    .restart local v2    # "listNum":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-lt v1, v2, :cond_7

    .line 112
    .end local v1    # "i":I
    .end local v2    # "listNum":I
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 94
    .restart local v0    # "found":Z
    .restart local v1    # "i":I
    .restart local v2    # "listNum":I
    :cond_5
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-ne p1, v4, :cond_6

    .line 95
    const/4 v0, 0x1

    .line 93
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 106
    .end local v0    # "found":Z
    :cond_7
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-eq p1, v4, :cond_0

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .param p1, "ele"    # Ljava/lang/String;
    .param p2, "set"    # [Ljava/lang/String;

    .prologue
    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    if-eqz v0, :cond_1

    .line 471
    :cond_0
    return v0

    .line 467
    :cond_1
    aget-object v2, p2, v1

    if-ne p1, v2, :cond_2

    .line 468
    const/4 v0, 0x1

    .line 466
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAnnotation()Lmf/org/apache/xerces/xs/XSAnnotation;
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSAnnotation;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_0
.end method

.method public getConstraintType()S
    .locals 1

    .prologue
    .line 543
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNsConstraintList()Lmf/org/apache/xerces/xs/StringList;
    .locals 3

    .prologue
    .line 553
    new-instance v1, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v2, v0}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0
.end method

.method public getProcessContents()S
    .locals 1

    .prologue
    .line 561
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    return v0
.end method

.method public getProcessContentsAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 568
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    packed-switch v0, :pswitch_data_0

    .line 572
    const-string v0, "invalid value"

    :goto_0
    return-object v0

    .line 569
    :pswitch_0
    const-string v0, "skip"

    goto :goto_0

    .line 570
    :pswitch_1
    const-string v0, "lax"

    goto :goto_0

    .line 571
    :pswitch_2
    const-string v0, "strict"

    goto :goto_0

    .line 568
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType()S
    .locals 1

    .prologue
    .line 519
    const/16 v0, 0x9

    return v0
.end method

.method intersect2sets([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p1, "one"    # [Ljava/lang/String;
    .param p2, "theOther"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 423
    array-length v5, p1

    array-length v6, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 426
    .local v3, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 427
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p1

    if-lt v2, v5, :cond_0

    .line 432
    new-array v4, v0, [Ljava/lang/String;

    .line 433
    .local v4, "result2":[Ljava/lang/String;
    invoke-static {v3, v7, v4, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 435
    return-object v4

    .line 428
    .end local v4    # "result2":[Ljava/lang/String;
    :cond_0
    aget-object v5, p1, v2

    invoke-virtual {p0, v5, p2}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 429
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    aget-object v5, p1, v2

    aput-object v5, v3, v0

    move v0, v1

    .line 427
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public isSubsetOf(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z
    .locals 6
    .param p1, "superWildcard"    # Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 120
    if-nez p1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    iget-short v2, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v2, v1, :cond_2

    move v0, v1

    .line 128
    goto :goto_0

    .line 136
    :cond_2
    iget-short v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v2, v4, :cond_3

    .line 137
    iget-short v2, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v2, v4, :cond_3

    .line 138
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-ne v2, v3, :cond_3

    move v0, v1

    .line 139
    goto :goto_0

    .line 153
    :cond_3
    iget-short v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v2, v5, :cond_0

    .line 154
    iget-short v2, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v2, v5, :cond_4

    .line 155
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->subset2sets([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 156
    goto :goto_0

    .line 159
    :cond_4
    iget-short v2, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v2, v4, :cond_0

    .line 160
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    sget-object v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 162
    goto :goto_0
.end method

.method public performIntersectionWith(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;S)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    .locals 11
    .param p1, "wildcard"    # Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    .param p2, "processContents"    # S

    .prologue
    .line 301
    if-nez p1, :cond_1

    .line 302
    const/4 v2, 0x0

    .line 391
    :cond_0
    :goto_0
    return-object v2

    .line 308
    :cond_1
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    .line 309
    .local v2, "intersectWildcard":Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    iput-short p2, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    .line 312
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->areSame(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 313
    iget-short v8, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iput-short v8, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    .line 314
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iput-object v8, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto :goto_0

    .line 318
    :cond_2
    iget-short v8, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v9, 0x1

    if-eq v8, v9, :cond_3

    iget-short v8, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 320
    :cond_3
    move-object v7, p0

    .line 322
    .local v7, "other":Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    iget-short v8, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 323
    move-object v7, p1

    .line 325
    :cond_4
    iget-short v8, v7, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iput-short v8, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    .line 326
    iget-object v8, v7, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iput-object v8, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto :goto_0

    .line 337
    .end local v7    # "other":Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    :cond_5
    iget-short v8, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    iget-short v8, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v9, 0x3

    if-eq v8, v9, :cond_7

    .line 338
    :cond_6
    iget-short v8, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v9, 0x3

    if-ne v8, v9, :cond_a

    iget-short v8, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v9, 0x2

    if-ne v8, v9, :cond_a

    .line 339
    :cond_7
    const/4 v3, 0x0

    .line 340
    .local v3, "list":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 342
    .local v7, "other":[Ljava/lang/String;
    iget-short v8, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v9, 0x2

    if-ne v8, v9, :cond_8

    .line 343
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    .line 344
    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    .line 351
    :goto_1
    array-length v4, v3

    .line 352
    .local v4, "listSize":I
    new-array v1, v4, [Ljava/lang/String;

    .line 353
    .local v1, "intersect":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 354
    .local v5, "newSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v6, v5

    .end local v5    # "newSize":I
    .local v6, "newSize":I
    :goto_2
    if-lt v0, v4, :cond_9

    .line 359
    const/4 v8, 0x3

    iput-short v8, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    .line 360
    new-array v8, v6, [Ljava/lang/String;

    iput-object v8, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    .line 361
    const/4 v8, 0x0

    iget-object v9, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v1, v8, v9, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 347
    .end local v0    # "i":I
    .end local v1    # "intersect":[Ljava/lang/String;
    .end local v4    # "listSize":I
    .end local v6    # "newSize":I
    :cond_8
    iget-object v7, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    .line 348
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto :goto_1

    .line 355
    .restart local v0    # "i":I
    .restart local v1    # "intersect":[Ljava/lang/String;
    .restart local v4    # "listSize":I
    .restart local v6    # "newSize":I
    :cond_9
    aget-object v8, v3, v0

    const/4 v9, 0x0

    aget-object v9, v7, v9

    if-eq v8, v9, :cond_e

    aget-object v8, v3, v0

    sget-object v9, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    if-eq v8, v9, :cond_e

    .line 356
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "newSize":I
    .restart local v5    # "newSize":I
    aget-object v8, v3, v0

    aput-object v8, v1, v6

    .line 354
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v6, v5

    .end local v5    # "newSize":I
    .restart local v6    # "newSize":I
    goto :goto_2

    .line 366
    .end local v0    # "i":I
    .end local v1    # "intersect":[Ljava/lang/String;
    .end local v3    # "list":[Ljava/lang/String;
    .end local v4    # "listSize":I
    .end local v6    # "newSize":I
    .end local v7    # "other":[Ljava/lang/String;
    :cond_a
    iget-short v8, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v9, 0x3

    if-ne v8, v9, :cond_b

    iget-short v8, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v9, 0x3

    if-ne v8, v9, :cond_b

    .line 367
    const/4 v8, 0x3

    iput-short v8, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    .line 368
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object v9, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->intersect2sets([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto/16 :goto_0

    .line 379
    :cond_b
    iget-short v8, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    iget-short v8, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 380
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    sget-object v9, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    if-eq v8, v9, :cond_c

    iget-object v8, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    sget-object v9, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    if-eq v8, v9, :cond_c

    .line 381
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 383
    :cond_c
    move-object v7, p0

    .line 384
    .local v7, "other":Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    sget-object v9, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    if-ne v8, v9, :cond_d

    .line 385
    move-object v7, p1

    .line 387
    :cond_d
    iget-short v8, v7, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iput-short v8, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    .line 388
    iget-object v8, v7, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iput-object v8, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto/16 :goto_0

    .restart local v0    # "i":I
    .restart local v1    # "intersect":[Ljava/lang/String;
    .restart local v3    # "list":[Ljava/lang/String;
    .restart local v4    # "listSize":I
    .restart local v6    # "newSize":I
    .local v7, "other":[Ljava/lang/String;
    :cond_e
    move v5, v6

    .end local v6    # "newSize":I
    .restart local v5    # "newSize":I
    goto :goto_3
.end method

.method public performUnionWith(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;S)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    .locals 11
    .param p1, "wildcard"    # Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    .param p2, "processContents"    # S

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 187
    if-nez p1, :cond_1

    move-object v4, v5

    .line 291
    :cond_0
    :goto_0
    return-object v4

    .line 194
    :cond_1
    new-instance v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct {v4}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    .line 195
    .local v4, "unionWildcard":Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    iput-short p2, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    .line 198
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->areSame(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 199
    iget-short v5, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iput-short v5, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    .line 200
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iput-object v5, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto :goto_0

    .line 204
    :cond_2
    iget-short v6, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-eq v6, v9, :cond_3

    iget-short v6, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v6, v9, :cond_4

    .line 205
    :cond_3
    iput-short v9, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    goto :goto_0

    .line 210
    :cond_4
    iget-short v6, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v6, v7, :cond_5

    iget-short v6, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v6, v7, :cond_5

    .line 211
    iput-short v7, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    .line 212
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object v6, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->union2sets([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto :goto_0

    .line 221
    :cond_5
    iget-short v6, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v6, v8, :cond_6

    iget-short v6, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v6, v8, :cond_6

    .line 222
    iput-short v8, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    .line 223
    new-array v5, v8, [Ljava/lang/String;

    iput-object v5, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    .line 224
    iget-object v5, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    aput-object v6, v5, v10

    .line 225
    iget-object v5, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    aput-object v6, v5, v9

    goto :goto_0

    .line 250
    :cond_6
    iget-short v6, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v6, v8, :cond_7

    iget-short v6, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-eq v6, v7, :cond_8

    .line 251
    :cond_7
    iget-short v6, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v6, v7, :cond_0

    iget-short v6, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v6, v8, :cond_0

    .line 252
    :cond_8
    const/4 v3, 0x0

    .line 253
    .local v3, "other":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 255
    .local v2, "list":[Ljava/lang/String;
    iget-short v6, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v6, v8, :cond_9

    .line 256
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    .line 257
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    .line 264
    :goto_1
    sget-object v6, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    invoke-virtual {p0, v6, v2}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    .line 266
    .local v0, "foundAbsent":Z
    aget-object v6, v3, v10

    sget-object v7, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    if-eq v6, v7, :cond_d

    .line 267
    aget-object v6, v3, v10

    invoke-virtual {p0, v6, v2}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    .line 268
    .local v1, "foundNS":Z
    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    .line 269
    iput-short v9, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    goto/16 :goto_0

    .line 260
    .end local v0    # "foundAbsent":Z
    .end local v1    # "foundNS":Z
    :cond_9
    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    .line 261
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto :goto_1

    .line 270
    .restart local v0    # "foundAbsent":Z
    .restart local v1    # "foundNS":Z
    :cond_a
    if-eqz v1, :cond_b

    if-nez v0, :cond_b

    .line 271
    iput-short v8, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    .line 272
    new-array v5, v8, [Ljava/lang/String;

    iput-object v5, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    .line 273
    iget-object v5, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    aput-object v6, v5, v10

    .line 274
    iget-object v5, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    aput-object v6, v5, v9

    goto/16 :goto_0

    .line 275
    :cond_b
    if-nez v1, :cond_c

    if-eqz v0, :cond_c

    move-object v4, v5

    .line 276
    goto/16 :goto_0

    .line 278
    :cond_c
    iput-short v8, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    .line 279
    iput-object v3, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto/16 :goto_0

    .line 282
    .end local v1    # "foundNS":Z
    :cond_d
    if-eqz v0, :cond_e

    .line 283
    iput-short v9, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    goto/16 :goto_0

    .line 285
    :cond_e
    iput-short v8, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    .line 286
    iput-object v3, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto/16 :goto_0
.end method

.method subset2sets([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .param p1, "subSet"    # [Ljava/lang/String;
    .param p2, "superSet"    # [Ljava/lang/String;

    .prologue
    .line 456
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 461
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 457
    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 458
    const/4 v1, 0x0

    goto :goto_1

    .line 456
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 479
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fDescription:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 480
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 481
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v2, "WC["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 482
    iget-short v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    packed-switch v2, :pswitch_data_0

    .line 508
    :cond_0
    :goto_0
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 509
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fDescription:Ljava/lang/String;

    .line 512
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fDescription:Ljava/lang/String;

    return-object v2

    .line 484
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    :pswitch_0
    const-string v2, "##any"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 487
    :pswitch_1
    const-string v2, "##other"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 488
    const-string v2, ":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v2, v2, v3

    if-eqz v2, :cond_2

    .line 490
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 491
    :cond_2
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 494
    :pswitch_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v2, v2

    if-eqz v2, :cond_0

    .line 496
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 497
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v2, v2, v3

    if-eqz v2, :cond_3

    .line 498
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 499
    :cond_3
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 500
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 501
    const-string v2, ",\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 502
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_4

    .line 503
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 504
    :cond_4
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 500
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 482
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method union2sets([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p1, "one"    # [Ljava/lang/String;
    .param p2, "theOther"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 439
    array-length v5, p1

    new-array v3, v5, [Ljava/lang/String;

    .line 442
    .local v3, "result1":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 443
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p1

    if-lt v2, v5, :cond_0

    .line 448
    array-length v5, p2

    add-int/2addr v5, v0

    new-array v4, v5, [Ljava/lang/String;

    .line 449
    .local v4, "result2":[Ljava/lang/String;
    invoke-static {v3, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    array-length v5, p2

    invoke-static {p2, v6, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 452
    return-object v4

    .line 444
    .end local v4    # "result2":[Ljava/lang/String;
    :cond_0
    aget-object v5, p1, v2

    invoke-virtual {p0, v5, p2}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 445
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    aget-object v5, p1, v2

    aput-object v5, v3, v0

    move v0, v1

    .line 443
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public weakerProcessContents(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z
    .locals 4
    .param p1, "superWildcard"    # Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 175
    iget-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 176
    iget-short v1, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    if-eq v1, v0, :cond_2

    .line 177
    :cond_0
    iget-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    if-ne v1, v3, :cond_1

    .line 178
    iget-short v1, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    if-ne v1, v3, :cond_2

    .line 175
    :cond_1
    const/4 v0, 0x0

    :cond_2
    return v0
.end method
