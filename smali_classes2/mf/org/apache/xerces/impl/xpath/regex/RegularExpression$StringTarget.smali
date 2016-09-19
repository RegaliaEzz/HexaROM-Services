.class final Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;
.super Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;
.source "RegularExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StringTarget"
.end annotation


# instance fields
.field private target:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 1758
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;-><init>()V

    .line 1759
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    .line 1760
    return-void
.end method


# virtual methods
.method final charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1767
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method final regionMatches(ZIIII)Z
    .locals 6
    .param p1, "ignoreCase"    # Z
    .param p2, "offset"    # I
    .param p3, "limit"    # I
    .param p4, "offset2"    # I
    .param p5, "partlen"    # I

    .prologue
    .line 1780
    sub-int v0, p3, p2

    if-ge v0, p5, :cond_0

    .line 1781
    const/4 v0, 0x0

    .line 1783
    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    goto :goto_0

    .line 1784
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, p4, p5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    goto :goto_0
.end method

.method final regionMatches(ZIILjava/lang/String;I)Z
    .locals 6
    .param p1, "ignoreCase"    # Z
    .param p2, "offset"    # I
    .param p3, "limit"    # I
    .param p4, "part"    # Ljava/lang/String;
    .param p5, "partlen"    # I

    .prologue
    const/4 v4, 0x0

    .line 1772
    sub-int v0, p3, p2

    if-ge v0, p5, :cond_0

    .line 1775
    :goto_0
    return v4

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    const/4 v1, 0x1

    move v2, p2

    move-object v3, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    :goto_1
    move v4, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    invoke-virtual {v0, p2, p4, v4, p5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    goto :goto_1
.end method

.method final resetTarget(Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 1763
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    .line 1764
    return-void
.end method
