.class final Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;
.super Ljava/lang/Object;
.source "CaseInsensitiveMap.java"


# static fields
.field private static CHUNK_MASK:I

.field private static CHUNK_SHIFT:I

.field private static CHUNK_SIZE:I

.field private static INITIAL_CHUNK_COUNT:I

.field private static LOWER_CASE_MATCH:I

.field private static UPPER_CASE_MATCH:I

.field private static caseInsensitiveMap:[[[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 27
    const/16 v0, 0xa

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SHIFT:I

    .line 28
    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SHIFT:I

    shl-int v0, v1, v0

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SIZE:I

    .line 29
    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SIZE:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_MASK:I

    .line 30
    const/16 v0, 0x40

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->INITIAL_CHUNK_COUNT:I

    .line 34
    sput v1, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->LOWER_CASE_MATCH:I

    .line 35
    const/4 v0, 0x2

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->UPPER_CASE_MATCH:I

    .line 38
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->buildCaseInsensitiveMap()V

    .line 39
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildCaseInsensitiveMap()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    .line 57
    sget v8, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->INITIAL_CHUNK_COUNT:I

    sget v9, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SIZE:I

    filled-new-array {v8, v9}, [I

    move-result-object v8

    const-class v9, [I

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[[I

    sput-object v8, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->caseInsensitiveMap:[[[I

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/high16 v8, 0x10000

    if-lt v0, v8, :cond_0

    .line 92
    return-void

    .line 60
    :cond_0
    int-to-char v8, v0

    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    .line 61
    .local v3, "lc":I
    int-to-char v8, v0

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    .line 64
    .local v6, "uc":I
    if-ne v3, v6, :cond_1

    if-eq v3, v0, :cond_3

    .line 65
    :cond_1
    new-array v5, v10, [I

    .line 66
    .local v5, "map":[I
    const/4 v1, 0x0

    .line 68
    .local v1, "index":I
    if-eq v3, v0, :cond_5

    .line 69
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aput v3, v5, v1

    .line 70
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    sget v8, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->LOWER_CASE_MATCH:I

    aput v8, v5, v2

    .line 71
    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->getMapping(I)[I

    move-result-object v4

    .line 72
    .local v4, "lcMap":[I
    if-eqz v4, :cond_5

    .line 73
    sget v8, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->LOWER_CASE_MATCH:I

    invoke-static {v0, v5, v3, v4, v8}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->updateMap(I[II[II)[I

    move-result-object v5

    move v2, v1

    .line 77
    .end local v1    # "index":I
    .end local v4    # "lcMap":[I
    .restart local v2    # "index":I
    :goto_1
    if-eq v6, v0, :cond_4

    .line 78
    array-length v8, v5

    if-ne v2, v8, :cond_2

    .line 79
    invoke-static {v5, v10}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->expandMap([II)[I

    move-result-object v5

    .line 81
    :cond_2
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aput v6, v5, v2

    .line 82
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    sget v8, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->UPPER_CASE_MATCH:I

    aput v8, v5, v1

    .line 83
    invoke-static {v6}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->getMapping(I)[I

    move-result-object v7

    .line 84
    .local v7, "ucMap":[I
    if-eqz v7, :cond_4

    .line 85
    sget v8, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->UPPER_CASE_MATCH:I

    invoke-static {v0, v5, v6, v7, v8}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->updateMap(I[II[II)[I

    move-result-object v5

    move v1, v2

    .line 89
    .end local v2    # "index":I
    .end local v7    # "ucMap":[I
    .restart local v1    # "index":I
    :goto_2
    invoke-static {v0, v5}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->set(I[I)V

    .line 59
    .end local v1    # "index":I
    .end local v5    # "map":[I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .restart local v2    # "index":I
    .restart local v5    # "map":[I
    :cond_4
    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_2

    :cond_5
    move v2, v1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_1
.end method

.method private static contains([II)Z
    .locals 2
    .param p0, "map"    # [I
    .param p1, "codePoint"    # I

    .prologue
    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 141
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 137
    :cond_0
    aget v1, p0, v0

    if-ne v1, p1, :cond_1

    .line 138
    const/4 v1, 0x1

    goto :goto_1

    .line 136
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private static contains([III)Z
    .locals 2
    .param p0, "map"    # [I
    .param p1, "codePoint"    # I
    .param p2, "matchType"    # I

    .prologue
    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 150
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 146
    :cond_0
    aget v1, p0, v0

    if-ne v1, p1, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget v1, p0, v1

    if-ne v1, p2, :cond_1

    .line 147
    const/4 v1, 0x1

    goto :goto_1

    .line 145
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private static expandAndAdd([III)[I
    .locals 4
    .param p0, "srcMap"    # [I
    .param p1, "codePoint"    # I
    .param p2, "matchType"    # I

    .prologue
    const/4 v3, 0x0

    .line 154
    array-length v1, p0

    .line 155
    .local v1, "oldLen":I
    add-int/lit8 v2, v1, 0x2

    new-array v0, v2, [I

    .line 157
    .local v0, "newMap":[I
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    aput p1, v0, v1

    .line 159
    add-int/lit8 v2, v1, 0x1

    aput p2, v0, v2

    .line 160
    return-object v0
.end method

.method private static expandMap([II)[I
    .locals 4
    .param p0, "srcMap"    # [I
    .param p1, "expandBy"    # I

    .prologue
    const/4 v3, 0x0

    .line 95
    array-length v1, p0

    .line 96
    .local v1, "oldLen":I
    add-int v2, v1, p1

    new-array v0, v2, [I

    .line 98
    .local v0, "newMap":[I
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    return-object v0
.end method

.method public static get(I)[I
    .locals 1
    .param p0, "codePoint"    # I

    .prologue
    .line 46
    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_0

    invoke-static {p0}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->getMapping(I)[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getMapping(I)[I
    .locals 3
    .param p0, "codePoint"    # I

    .prologue
    .line 50
    sget v2, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SHIFT:I

    ushr-int v0, p0, v2

    .line 51
    .local v0, "chunk":I
    sget v2, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_MASK:I

    and-int v1, p0, v2

    .line 53
    .local v1, "offset":I
    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->caseInsensitiveMap:[[[I

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    return-object v2
.end method

.method private static set(I[I)V
    .locals 3
    .param p0, "codePoint"    # I
    .param p1, "map"    # [I

    .prologue
    .line 103
    sget v2, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SHIFT:I

    ushr-int v0, p0, v2

    .line 104
    .local v0, "chunk":I
    sget v2, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_MASK:I

    and-int v1, p0, v2

    .line 106
    .local v1, "offset":I
    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->caseInsensitiveMap:[[[I

    aget-object v2, v2, v0

    aput-object p1, v2, v1

    .line 107
    return-void
.end method

.method private static updateMap(I[II[II)[I
    .locals 4
    .param p0, "codePoint"    # I
    .param p1, "codePointMap"    # [I
    .param p2, "ciCodePoint"    # I
    .param p3, "ciCodePointMap"    # [I
    .param p4, "matchType"    # I

    .prologue
    .line 111
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p3

    if-lt v2, v3, :cond_1

    .line 127
    invoke-static {p3, p0}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->contains([II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    invoke-static {p3, p0, p4}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->expandAndAdd([III)[I

    move-result-object p3

    .line 129
    invoke-static {p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->set(I[I)V

    .line 132
    :cond_0
    return-object p1

    .line 112
    :cond_1
    aget v0, p3, v2

    .line 113
    .local v0, "c":I
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->getMapping(I)[I

    move-result-object v1

    .line 114
    .local v1, "cMap":[I
    if-eqz v1, :cond_3

    .line 115
    invoke-static {v1, p2, p4}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->contains([III)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 116
    invoke-static {v1, p0}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->contains([II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 117
    invoke-static {v1, p0, p4}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->expandAndAdd([III)[I

    move-result-object v1

    .line 118
    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->set(I[I)V

    .line 120
    :cond_2
    invoke-static {p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->contains([II)Z

    move-result v3

    if-nez v3, :cond_3

    .line 121
    invoke-static {p1, v0, p4}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->expandAndAdd([III)[I

    move-result-object p1

    .line 111
    :cond_3
    add-int/lit8 v2, v2, 0x2

    goto :goto_0
.end method
