.class final Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;
.super Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;
.source "RegularExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CharacterIteratorTarget"
.end annotation


# instance fields
.field target:Ljava/text/CharacterIterator;


# direct methods
.method constructor <init>(Ljava/text/CharacterIterator;)V
    .locals 0
    .param p1, "target"    # Ljava/text/CharacterIterator;

    .prologue
    .line 1884
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;-><init>()V

    .line 1885
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    .line 1886
    return-void
.end method

.method private final regionMatches(IIII)Z
    .locals 6
    .param p1, "offset"    # I
    .param p2, "limit"    # I
    .param p3, "offset2"    # I
    .param p4, "partlen"    # I

    .prologue
    .line 1944
    move v0, p3

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    move v3, p4

    .end local p4    # "partlen":I
    .local v3, "partlen":I
    move v2, p1

    .line 1945
    .end local p1    # "offset":I
    .local v2, "offset":I
    :goto_0
    add-int/lit8 p4, v3, -0x1

    .end local v3    # "partlen":I
    .restart local p4    # "partlen":I
    if-gtz v3, :cond_0

    .line 1950
    const/4 v4, 0x1

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    move p1, v2

    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    :goto_1
    return v4

    .line 1946
    .end local v0    # "i":I
    .end local p1    # "offset":I
    .restart local v1    # "i":I
    .restart local v2    # "offset":I
    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    add-int/lit8 p1, v2, 0x1

    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    invoke-interface {v4, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v4

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-interface {v5, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v5

    if-eq v4, v5, :cond_1

    .line 1947
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    move v3, p4

    .end local p4    # "partlen":I
    .restart local v3    # "partlen":I
    move v2, p1

    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_0
.end method

.method private final regionMatches(IILjava/lang/String;I)Z
    .locals 6
    .param p1, "offset"    # I
    .param p2, "limit"    # I
    .param p3, "part"    # Ljava/lang/String;
    .param p4, "partlen"    # I

    .prologue
    .line 1906
    const/4 v0, 0x0

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    move v3, p4

    .end local p4    # "partlen":I
    .local v3, "partlen":I
    move v2, p1

    .line 1907
    .end local p1    # "offset":I
    .local v2, "offset":I
    :goto_0
    add-int/lit8 p4, v3, -0x1

    .end local v3    # "partlen":I
    .restart local p4    # "partlen":I
    if-gtz v3, :cond_0

    .line 1912
    const/4 v4, 0x1

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    move p1, v2

    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    :goto_1
    return v4

    .line 1908
    .end local v0    # "i":I
    .end local p1    # "offset":I
    .restart local v1    # "i":I
    .restart local v2    # "offset":I
    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    add-int/lit8 p1, v2, 0x1

    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    invoke-interface {v4, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v4

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_1

    .line 1909
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    move v3, p4

    .end local p4    # "partlen":I
    .restart local v3    # "partlen":I
    move v2, p1

    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_0
.end method

.method private final regionMatchesIgnoreCase(IIII)Z
    .locals 10
    .param p1, "offset"    # I
    .param p2, "limit"    # I
    .param p3, "offset2"    # I
    .param p4, "partlen"    # I

    .prologue
    .line 1954
    move v2, p3

    .local v2, "i":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    move v5, p4

    .end local p4    # "partlen":I
    .local v5, "partlen":I
    move v4, p1

    .line 1955
    .end local p1    # "offset":I
    .local v4, "offset":I
    :goto_0
    add-int/lit8 p4, v5, -0x1

    .end local v5    # "partlen":I
    .restart local p4    # "partlen":I
    if-gtz v5, :cond_0

    .line 1970
    const/4 v8, 0x1

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    move p1, v4

    .end local v4    # "offset":I
    .restart local p1    # "offset":I
    :goto_1
    return v8

    .line 1956
    .end local v2    # "i":I
    .end local p1    # "offset":I
    .restart local v3    # "i":I
    .restart local v4    # "offset":I
    :cond_0
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    add-int/lit8 p1, v4, 0x1

    .end local v4    # "offset":I
    .restart local p1    # "offset":I
    invoke-interface {v8, v4}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v0

    .line 1957
    .local v0, "ch1":C
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-interface {v8, v3}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v1

    .line 1958
    .local v1, "ch2":C
    if-ne v0, v1, :cond_1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    move v5, p4

    .end local p4    # "partlen":I
    .restart local v5    # "partlen":I
    move v4, p1

    .line 1959
    .end local p1    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 1961
    .end local v3    # "i":I
    .end local v4    # "offset":I
    .end local v5    # "partlen":I
    .restart local v2    # "i":I
    .restart local p1    # "offset":I
    .restart local p4    # "partlen":I
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    .line 1962
    .local v6, "uch1":C
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    .line 1963
    .local v7, "uch2":C
    if-ne v6, v7, :cond_2

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    move v5, p4

    .end local p4    # "partlen":I
    .restart local v5    # "partlen":I
    move v4, p1

    .line 1964
    .end local p1    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 1966
    .end local v3    # "i":I
    .end local v4    # "offset":I
    .end local v5    # "partlen":I
    .restart local v2    # "i":I
    .restart local p1    # "offset":I
    .restart local p4    # "partlen":I
    :cond_2
    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    if-eq v8, v9, :cond_3

    .line 1967
    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    move v5, p4

    .end local p4    # "partlen":I
    .restart local v5    # "partlen":I
    move v4, p1

    .end local p1    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0
.end method

.method private final regionMatchesIgnoreCase(IILjava/lang/String;I)Z
    .locals 10
    .param p1, "offset"    # I
    .param p2, "limit"    # I
    .param p3, "part"    # Ljava/lang/String;
    .param p4, "partlen"    # I

    .prologue
    .line 1916
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    move v5, p4

    .end local p4    # "partlen":I
    .local v5, "partlen":I
    move v4, p1

    .line 1917
    .end local p1    # "offset":I
    .local v4, "offset":I
    :goto_0
    add-int/lit8 p4, v5, -0x1

    .end local v5    # "partlen":I
    .restart local p4    # "partlen":I
    if-gtz v5, :cond_0

    .line 1932
    const/4 v8, 0x1

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    move p1, v4

    .end local v4    # "offset":I
    .restart local p1    # "offset":I
    :goto_1
    return v8

    .line 1918
    .end local v2    # "i":I
    .end local p1    # "offset":I
    .restart local v3    # "i":I
    .restart local v4    # "offset":I
    :cond_0
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    add-int/lit8 p1, v4, 0x1

    .end local v4    # "offset":I
    .restart local p1    # "offset":I
    invoke-interface {v8, v4}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v0

    .line 1919
    .local v0, "ch1":C
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1920
    .local v1, "ch2":C
    if-ne v0, v1, :cond_1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    move v5, p4

    .end local p4    # "partlen":I
    .restart local v5    # "partlen":I
    move v4, p1

    .line 1921
    .end local p1    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 1923
    .end local v3    # "i":I
    .end local v4    # "offset":I
    .end local v5    # "partlen":I
    .restart local v2    # "i":I
    .restart local p1    # "offset":I
    .restart local p4    # "partlen":I
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    .line 1924
    .local v6, "uch1":C
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    .line 1925
    .local v7, "uch2":C
    if-ne v6, v7, :cond_2

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    move v5, p4

    .end local p4    # "partlen":I
    .restart local v5    # "partlen":I
    move v4, p1

    .line 1926
    .end local p1    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 1928
    .end local v3    # "i":I
    .end local v4    # "offset":I
    .end local v5    # "partlen":I
    .restart local v2    # "i":I
    .restart local p1    # "offset":I
    .restart local p4    # "partlen":I
    :cond_2
    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    if-eq v8, v9, :cond_3

    .line 1929
    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    move v5, p4

    .end local p4    # "partlen":I
    .restart local v5    # "partlen":I
    move v4, p1

    .end local p1    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0
.end method


# virtual methods
.method final charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1893
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    invoke-interface {v0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v0

    return v0
.end method

.method final regionMatches(ZIIII)Z
    .locals 1
    .param p1, "ignoreCase"    # Z
    .param p2, "offset"    # I
    .param p3, "limit"    # I
    .param p4, "offset2"    # I
    .param p5, "partlen"    # I

    .prologue
    .line 1936
    if-ltz p2, :cond_0

    sub-int v0, p3, p2

    if-ge v0, p5, :cond_1

    .line 1937
    :cond_0
    const/4 v0, 0x0

    .line 1939
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0, p2, p3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->regionMatchesIgnoreCase(IIII)Z

    move-result v0

    goto :goto_0

    .line 1940
    :cond_2
    invoke-direct {p0, p2, p3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->regionMatches(IIII)Z

    move-result v0

    goto :goto_0
.end method

.method final regionMatches(ZIILjava/lang/String;I)Z
    .locals 1
    .param p1, "ignoreCase"    # Z
    .param p2, "offset"    # I
    .param p3, "limit"    # I
    .param p4, "part"    # Ljava/lang/String;
    .param p5, "partlen"    # I

    .prologue
    .line 1898
    if-ltz p2, :cond_0

    sub-int v0, p3, p2

    if-ge v0, p5, :cond_1

    .line 1899
    :cond_0
    const/4 v0, 0x0

    .line 1901
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0, p2, p3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->regionMatchesIgnoreCase(IILjava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 1902
    :cond_2
    invoke-direct {p0, p2, p3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->regionMatches(IILjava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method final resetTarget(Ljava/text/CharacterIterator;)V
    .locals 0
    .param p1, "target"    # Ljava/text/CharacterIterator;

    .prologue
    .line 1889
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    .line 1890
    return-void
.end method
