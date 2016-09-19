.class final Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;
.super Ljava/lang/Object;
.source "RegularExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ClosureContext"
.end annotation


# instance fields
.field currentIndex:I

.field offsets:[I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1976
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->offsets:[I

    .line 1977
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->currentIndex:I

    .line 1974
    return-void
.end method

.method private expandOffsets()[I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2001
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->offsets:[I

    array-length v0, v3

    .line 2002
    .local v0, "len":I
    shl-int/lit8 v1, v0, 0x1

    .line 2003
    .local v1, "newLen":I
    new-array v2, v1, [I

    .line 2005
    .local v2, "newOffsets":[I
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->offsets:[I

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->currentIndex:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2006
    return-object v2
.end method


# virtual methods
.method addOffset(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 1994
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->currentIndex:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->offsets:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 1995
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->expandOffsets()[I

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->offsets:[I

    .line 1997
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->offsets:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->currentIndex:I

    aput p1, v0, v1

    .line 1998
    return-void
.end method

.method contains(I)Z
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 1980
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->currentIndex:I

    if-lt v0, v1, :cond_0

    .line 1985
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 1981
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->offsets:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 1982
    const/4 v1, 0x1

    goto :goto_1

    .line 1980
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method reset()V
    .locals 1

    .prologue
    .line 1989
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->currentIndex:I

    .line 1990
    return-void
.end method
