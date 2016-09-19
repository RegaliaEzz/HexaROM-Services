.class public Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;
.super Ljava/lang/Object;
.source "BMPattern.java"


# instance fields
.field final ignoreCase:Z

.field final pattern:[C

.field final shiftTable:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 6
    .param p1, "pat"    # Ljava/lang/String;
    .param p2, "tableSize"    # I
    .param p3, "ignoreCase"    # Z

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    .line 40
    new-array v5, p2, [I

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    .line 41
    iput-boolean p3, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->ignoreCase:Z

    .line 43
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    array-length v4, v5

    .line 44
    .local v4, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v5, v5

    if-lt v2, v5, :cond_0

    .line 47
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v4, :cond_1

    .line 64
    return-void

    .line 45
    :cond_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    aput v4, v5, v2

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    aget-char v0, v5, v2

    .line 49
    .local v0, "ch":C
    sub-int v5, v4, v2

    add-int/lit8 v1, v5, -0x1

    .line 50
    .local v1, "diff":I
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v5, v5

    rem-int v3, v0, v5

    .line 51
    .local v3, "index":I
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    aget v5, v5, v3

    if-ge v1, v5, :cond_2

    .line 52
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    aput v1, v5, v3

    .line 53
    :cond_2
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->ignoreCase:Z

    if-eqz v5, :cond_4

    .line 54
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 55
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v5, v5

    rem-int v3, v0, v5

    .line 56
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    aget v5, v5, v3

    if-ge v1, v5, :cond_3

    .line 57
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    aput v1, v5, v3

    .line 58
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 59
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v5, v5

    rem-int v3, v0, v5

    .line 60
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    aget v5, v5, v3

    if-ge v1, v5, :cond_4

    .line 61
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    aput v1, v5, v3

    .line 47
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pat"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    .prologue
    .line 35
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0, p2}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;-><init>(Ljava/lang/String;IZ)V

    .line 36
    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/String;II)I
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "limit"    # I

    .prologue
    .line 96
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->ignoreCase:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matchesIgnoreCase(Ljava/lang/String;II)I

    move-result p2

    .line 114
    .end local p2    # "start":I
    :cond_0
    :goto_0
    return p2

    .line 97
    .restart local p2    # "start":I
    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    array-length v4, v5

    .line 98
    .local v4, "plength":I
    if-eqz v4, :cond_0

    .line 99
    add-int v1, p2, v4

    .line 100
    .local v1, "index":I
    :cond_2
    :goto_1
    if-le v1, p3, :cond_3

    .line 114
    const/4 p2, -0x1

    goto :goto_0

    .line 102
    :cond_3
    move v3, v4

    .line 103
    .local v3, "pindex":I
    add-int/lit8 v2, v1, 0x1

    .line 106
    .local v2, "nindex":I
    :cond_4
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "ch":C
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    add-int/lit8 v3, v3, -0x1

    aget-char v5, v5, v3

    if-eq v0, v5, :cond_5

    .line 111
    :goto_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v6, v6

    rem-int v6, v0, v6

    aget v5, v5, v6

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v1, v5

    .line 112
    if-ge v1, v2, :cond_2

    move v1, v2

    goto :goto_1

    .line 108
    :cond_5
    if-nez v3, :cond_6

    move p2, v1

    .line 109
    goto :goto_0

    .line 105
    :cond_6
    if-gtz v3, :cond_4

    goto :goto_2
.end method

.method public matches(Ljava/text/CharacterIterator;II)I
    .locals 7
    .param p1, "iterator"    # Ljava/text/CharacterIterator;
    .param p2, "start"    # I
    .param p3, "limit"    # I

    .prologue
    .line 71
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->ignoreCase:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matchesIgnoreCase(Ljava/text/CharacterIterator;II)I

    move-result p2

    .line 88
    .end local p2    # "start":I
    :cond_0
    :goto_0
    return p2

    .line 72
    .restart local p2    # "start":I
    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    array-length v4, v5

    .line 73
    .local v4, "plength":I
    if-eqz v4, :cond_0

    .line 74
    add-int v1, p2, v4

    .line 75
    .local v1, "index":I
    :cond_2
    :goto_1
    if-le v1, p3, :cond_3

    .line 88
    const/4 p2, -0x1

    goto :goto_0

    .line 76
    :cond_3
    move v3, v4

    .line 77
    .local v3, "pindex":I
    add-int/lit8 v2, v1, 0x1

    .line 80
    .local v2, "nindex":I
    :cond_4
    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v0

    .local v0, "ch":C
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    add-int/lit8 v3, v3, -0x1

    aget-char v5, v5, v3

    if-eq v0, v5, :cond_5

    .line 85
    :goto_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v6, v6

    rem-int v6, v0, v6

    aget v5, v5, v6

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v1, v5

    .line 86
    if-ge v1, v2, :cond_2

    move v1, v2

    goto :goto_1

    .line 82
    :cond_5
    if-nez v3, :cond_6

    move p2, v1

    .line 83
    goto :goto_0

    .line 79
    :cond_6
    if-gtz v3, :cond_4

    goto :goto_2
.end method

.method public matches([CII)I
    .locals 7
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "limit"    # I

    .prologue
    .line 121
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->ignoreCase:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matchesIgnoreCase([CII)I

    move-result p2

    .line 139
    .end local p2    # "start":I
    :cond_0
    :goto_0
    return p2

    .line 122
    .restart local p2    # "start":I
    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    array-length v4, v5

    .line 123
    .local v4, "plength":I
    if-eqz v4, :cond_0

    .line 124
    add-int v1, p2, v4

    .line 125
    .local v1, "index":I
    :cond_2
    :goto_1
    if-le v1, p3, :cond_3

    .line 139
    const/4 p2, -0x1

    goto :goto_0

    .line 127
    :cond_3
    move v3, v4

    .line 128
    .local v3, "pindex":I
    add-int/lit8 v2, v1, 0x1

    .line 131
    .local v2, "nindex":I
    :cond_4
    add-int/lit8 v1, v1, -0x1

    aget-char v0, p1, v1

    .local v0, "ch":C
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    add-int/lit8 v3, v3, -0x1

    aget-char v5, v5, v3

    if-eq v0, v5, :cond_5

    .line 136
    :goto_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v6, v6

    rem-int v6, v0, v6

    aget v5, v5, v6

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v1, v5

    .line 137
    if-ge v1, v2, :cond_2

    move v1, v2

    goto :goto_1

    .line 133
    :cond_5
    if-nez v3, :cond_6

    move p2, v1

    .line 134
    goto :goto_0

    .line 130
    :cond_6
    if-gtz v3, :cond_4

    goto :goto_2
.end method

.method matchesIgnoreCase(Ljava/lang/String;II)I
    .locals 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "limit"    # I

    .prologue
    .line 169
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    array-length v6, v7

    .line 170
    .local v6, "plength":I
    if-nez v6, :cond_0

    .line 191
    .end local p2    # "start":I
    :goto_0
    return p2

    .line 171
    .restart local p2    # "start":I
    :cond_0
    add-int v3, p2, v6

    .line 172
    .local v3, "index":I
    :cond_1
    :goto_1
    if-le v3, p3, :cond_2

    .line 191
    const/4 p2, -0x1

    goto :goto_0

    .line 173
    :cond_2
    move v5, v6

    .line 174
    .local v5, "pindex":I
    add-int/lit8 v4, v3, 0x1

    .line 177
    .local v4, "nindex":I
    :cond_3
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "ch":C
    move v1, v0

    .line 178
    .local v1, "ch1":C
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    add-int/lit8 v5, v5, -0x1

    aget-char v2, v7, v5

    .line 179
    .local v2, "ch2":C
    if-eq v1, v2, :cond_4

    .line 180
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 181
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 182
    if-eq v1, v2, :cond_4

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    if-eq v7, v8, :cond_4

    .line 188
    :goto_2
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v8, v8

    rem-int v8, v0, v8

    aget v7, v7, v8

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v3, v7

    .line 189
    if-ge v3, v4, :cond_1

    move v3, v4

    goto :goto_1

    .line 185
    :cond_4
    if-nez v5, :cond_5

    move p2, v3

    .line 186
    goto :goto_0

    .line 176
    :cond_5
    if-gtz v5, :cond_3

    goto :goto_2
.end method

.method matchesIgnoreCase(Ljava/text/CharacterIterator;II)I
    .locals 9
    .param p1, "iterator"    # Ljava/text/CharacterIterator;
    .param p2, "start"    # I
    .param p3, "limit"    # I

    .prologue
    .line 143
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    array-length v6, v7

    .line 144
    .local v6, "plength":I
    if-nez v6, :cond_0

    .line 165
    .end local p2    # "start":I
    :goto_0
    return p2

    .line 145
    .restart local p2    # "start":I
    :cond_0
    add-int v3, p2, v6

    .line 146
    .local v3, "index":I
    :cond_1
    :goto_1
    if-le v3, p3, :cond_2

    .line 165
    const/4 p2, -0x1

    goto :goto_0

    .line 147
    :cond_2
    move v5, v6

    .line 148
    .local v5, "pindex":I
    add-int/lit8 v4, v3, 0x1

    .line 151
    .local v4, "nindex":I
    :cond_3
    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v3}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v0

    .local v0, "ch":C
    move v1, v0

    .line 152
    .local v1, "ch1":C
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    add-int/lit8 v5, v5, -0x1

    aget-char v2, v7, v5

    .line 153
    .local v2, "ch2":C
    if-eq v1, v2, :cond_4

    .line 154
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 155
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 156
    if-eq v1, v2, :cond_4

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    if-eq v7, v8, :cond_4

    .line 162
    :goto_2
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v8, v8

    rem-int v8, v0, v8

    aget v7, v7, v8

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v3, v7

    .line 163
    if-ge v3, v4, :cond_1

    move v3, v4

    goto :goto_1

    .line 159
    :cond_4
    if-nez v5, :cond_5

    move p2, v3

    .line 160
    goto :goto_0

    .line 150
    :cond_5
    if-gtz v5, :cond_3

    goto :goto_2
.end method

.method matchesIgnoreCase([CII)I
    .locals 9
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "limit"    # I

    .prologue
    .line 194
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    array-length v6, v7

    .line 195
    .local v6, "plength":I
    if-nez v6, :cond_0

    .line 216
    .end local p2    # "start":I
    :goto_0
    return p2

    .line 196
    .restart local p2    # "start":I
    :cond_0
    add-int v3, p2, v6

    .line 197
    .local v3, "index":I
    :cond_1
    :goto_1
    if-le v3, p3, :cond_2

    .line 216
    const/4 p2, -0x1

    goto :goto_0

    .line 198
    :cond_2
    move v5, v6

    .line 199
    .local v5, "pindex":I
    add-int/lit8 v4, v3, 0x1

    .line 202
    .local v4, "nindex":I
    :cond_3
    add-int/lit8 v3, v3, -0x1

    aget-char v0, p1, v3

    .local v0, "ch":C
    move v1, v0

    .line 203
    .local v1, "ch1":C
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    add-int/lit8 v5, v5, -0x1

    aget-char v2, v7, v5

    .line 204
    .local v2, "ch2":C
    if-eq v1, v2, :cond_4

    .line 205
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 206
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 207
    if-eq v1, v2, :cond_4

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    if-eq v7, v8, :cond_4

    .line 213
    :goto_2
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v8, v8

    rem-int v8, v0, v8

    aget v7, v7, v8

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v3, v7

    .line 214
    if-ge v3, v4, :cond_1

    move v3, v4

    goto :goto_1

    .line 210
    :cond_4
    if-nez v5, :cond_5

    move p2, v3

    .line 211
    goto :goto_0

    .line 201
    :cond_5
    if-gtz v5, :cond_3

    goto :goto_2
.end method
