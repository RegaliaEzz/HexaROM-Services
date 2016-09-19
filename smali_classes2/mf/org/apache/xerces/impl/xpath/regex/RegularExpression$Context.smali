.class final Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;
.super Ljava/lang/Object;
.source "RegularExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Context"
.end annotation


# instance fields
.field private charArrayTarget:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;

.field private characterIteratorTarget:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;

.field closureContexts:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;

.field inuse:Z

.field length:I

.field limit:I

.field match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

.field start:I

.field private stringTarget:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;

.field target:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 2024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2015
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->inuse:Z

    .line 2025
    return-void
.end method

.method private resetCommon(I)V
    .locals 3
    .param p1, "nofclosures"    # I

    .prologue
    .line 2028
    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    sub-int/2addr v1, v2

    iput v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->length:I

    .line 2029
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 2030
    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    .line 2031
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->closureContexts:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->closureContexts:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;

    array-length v1, v1

    if-eq v1, p1, :cond_1

    .line 2032
    :cond_0
    new-array v1, p1, [Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->closureContexts:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;

    .line 2034
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_2

    .line 2042
    return-void

    .line 2035
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->closureContexts:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 2036
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->closureContexts:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;

    new-instance v2, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;-><init>()V

    aput-object v2, v1, v0

    .line 2034
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2039
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->closureContexts:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->reset()V

    goto :goto_1
.end method


# virtual methods
.method reset(Ljava/lang/String;III)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .param p4, "nofclosures"    # I

    .prologue
    .line 2058
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->stringTarget:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;

    if-nez v0, :cond_0

    .line 2059
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->stringTarget:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;

    .line 2064
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->stringTarget:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->target:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;

    .line 2065
    iput p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    .line 2066
    iput p3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    .line 2067
    invoke-direct {p0, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->resetCommon(I)V

    .line 2068
    return-void

    .line 2062
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->stringTarget:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;->resetTarget(Ljava/lang/String;)V

    goto :goto_0
.end method

.method reset(Ljava/text/CharacterIterator;III)V
    .locals 1
    .param p1, "target"    # Ljava/text/CharacterIterator;
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .param p4, "nofclosures"    # I

    .prologue
    .line 2045
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->characterIteratorTarget:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;

    if-nez v0, :cond_0

    .line 2046
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;-><init>(Ljava/text/CharacterIterator;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->characterIteratorTarget:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;

    .line 2051
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->characterIteratorTarget:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->target:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;

    .line 2052
    iput p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    .line 2053
    iput p3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    .line 2054
    invoke-direct {p0, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->resetCommon(I)V

    .line 2055
    return-void

    .line 2049
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->characterIteratorTarget:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->resetTarget(Ljava/text/CharacterIterator;)V

    goto :goto_0
.end method

.method reset([CIII)V
    .locals 1
    .param p1, "target"    # [C
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .param p4, "nofclosures"    # I

    .prologue
    .line 2071
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->charArrayTarget:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;

    if-nez v0, :cond_0

    .line 2072
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;-><init>([C)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->charArrayTarget:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;

    .line 2077
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->charArrayTarget:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->target:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;

    .line 2078
    iput p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    .line 2079
    iput p3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    .line 2080
    invoke-direct {p0, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->resetCommon(I)V

    .line 2081
    return-void

    .line 2075
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->charArrayTarget:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;->resetTarget([C)V

    goto :goto_0
.end method

.method declared-synchronized setInUse(Z)V
    .locals 1
    .param p1, "inUse"    # Z

    .prologue
    .line 2083
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->inuse:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2084
    monitor-exit p0

    return-void

    .line 2083
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
