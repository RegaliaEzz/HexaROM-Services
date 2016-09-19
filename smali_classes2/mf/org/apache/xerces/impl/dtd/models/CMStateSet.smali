.class public Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
.super Ljava/lang/Object;
.source "CMStateSet.java"


# instance fields
.field fBitCount:I

.field fBits1:I

.field fBits2:I

.field fByteArray:[B

.field fByteCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "bitCount"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    .line 50
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    if-gez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ImplementationMessages.VAL_CMSI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    const/16 v1, 0x40

    if-le v0, v1, :cond_2

    .line 59
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteCount:I

    .line 60
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 61
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteCount:I

    .line 62
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteCount:I

    new-array v0, v0, [B

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteArray:[B

    .line 66
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->zeroBits()V

    .line 67
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 282
    instance-of v0, p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 283
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    check-cast p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->isSameSet(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getBit(I)Z
    .locals 6
    .param p1, "bitToGet"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 118
    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    if-lt p1, v4, :cond_0

    .line 119
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ImplementationMessages.VAL_CMSI"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    :cond_0
    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    const/16 v5, 0x41

    if-ge v4, v5, :cond_4

    .line 123
    rem-int/lit8 v4, p1, 0x20

    shl-int v0, v2, v4

    .line 124
    .local v0, "mask":I
    const/16 v4, 0x20

    if-ge p1, v4, :cond_3

    .line 125
    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    and-int/2addr v4, v0

    if-eqz v4, :cond_2

    .line 136
    .end local v0    # "mask":I
    :cond_1
    :goto_0
    return v2

    .restart local v0    # "mask":I
    :cond_2
    move v2, v3

    .line 125
    goto :goto_0

    .line 127
    :cond_3
    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    and-int/2addr v4, v0

    if-nez v4, :cond_1

    move v2, v3

    goto :goto_0

    .line 132
    .end local v0    # "mask":I
    :cond_4
    rem-int/lit8 v4, p1, 0x8

    shl-int v4, v2, v4

    int-to-byte v0, v4

    .line 133
    .local v0, "mask":B
    shr-int/lit8 v1, p1, 0x3

    .line 136
    .local v1, "ofs":I
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteArray:[B

    aget-byte v4, v4, v1

    and-int/2addr v4, v0

    if-nez v4, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 287
    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    const/16 v3, 0x41

    if-ge v2, v3, :cond_1

    .line 289
    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    mul-int/lit8 v3, v3, 0x1f

    add-int v0, v2, v3

    .line 296
    :cond_0
    return v0

    .line 293
    :cond_1
    const/4 v0, 0x0

    .line 294
    .local v0, "hash":I
    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteCount:I

    add-int/lit8 v1, v2, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 295
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteArray:[B

    aget-byte v2, v2, v1

    mul-int/lit8 v3, v0, 0x1f

    add-int v0, v2, v3

    .line 294
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public final intersection(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 4
    .param p1, "setToAnd"    # Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    .prologue
    .line 104
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    const/16 v2, 0x41

    if-ge v1, v2, :cond_1

    .line 106
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    iget v2, p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    and-int/2addr v1, v2

    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    .line 107
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    iget v2, p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    and-int/2addr v1, v2

    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    .line 114
    :cond_0
    return-void

    .line 111
    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteCount:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_0

    .line 112
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteArray:[B

    aget-byte v2, v1, v0

    iget-object v3, p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteArray:[B

    aget-byte v3, v3, v0

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 111
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    const/16 v4, 0x41

    if-ge v3, v4, :cond_2

    .line 144
    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    if-nez v3, :cond_1

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    if-nez v3, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 144
    goto :goto_0

    .line 148
    :cond_2
    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteCount:I

    add-int/lit8 v0, v3, -0x1

    .local v0, "index":I
    :goto_1
    if-ltz v0, :cond_0

    .line 150
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteArray:[B

    aget-byte v3, v3, v0

    if-eqz v3, :cond_3

    move v1, v2

    .line 151
    goto :goto_0

    .line 148
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method final isSameSet(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)Z
    .locals 5
    .param p1, "setToCompare"    # Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 159
    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    iget v4, p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    if-eq v3, v4, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v1

    .line 162
    :cond_1
    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    const/16 v4, 0x41

    if-ge v3, v4, :cond_2

    .line 164
    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    iget v4, p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    if-ne v3, v4, :cond_0

    .line 165
    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    iget v4, p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    if-ne v3, v4, :cond_0

    move v1, v2

    .line 164
    goto :goto_0

    .line 168
    :cond_2
    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteCount:I

    add-int/lit8 v0, v3, -0x1

    .local v0, "index":I
    :goto_1
    if-gez v0, :cond_3

    move v1, v2

    .line 173
    goto :goto_0

    .line 170
    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteArray:[B

    aget-byte v3, v3, v0

    iget-object v4, p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteArray:[B

    aget-byte v4, v4, v0

    if-ne v3, v4, :cond_0

    .line 168
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public final setBit(I)V
    .locals 5
    .param p1, "bitToSet"    # I

    .prologue
    const/4 v4, 0x1

    .line 193
    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    if-lt p1, v2, :cond_0

    .line 194
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ImplementationMessages.VAL_CMSI"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 196
    :cond_0
    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    const/16 v3, 0x41

    if-ge v2, v3, :cond_2

    .line 198
    rem-int/lit8 v2, p1, 0x20

    shl-int v0, v4, v2

    .line 199
    .local v0, "mask":I
    const/16 v2, 0x20

    if-ge p1, v2, :cond_1

    .line 201
    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    .line 202
    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    or-int/2addr v2, v0

    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    .line 220
    .end local v0    # "mask":I
    :goto_0
    return-void

    .line 206
    .restart local v0    # "mask":I
    :cond_1
    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    .line 207
    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    or-int/2addr v2, v0

    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    goto :goto_0

    .line 213
    .end local v0    # "mask":I
    :cond_2
    rem-int/lit8 v2, p1, 0x8

    shl-int v2, v4, v2

    int-to-byte v0, v2

    .line 214
    .local v0, "mask":B
    shr-int/lit8 v1, p1, 0x3

    .line 217
    .local v1, "ofs":I
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteArray:[B

    aget-byte v3, v2, v1

    xor-int/lit8 v4, v0, -0x1

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 218
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteArray:[B

    aget-byte v3, v2, v1

    or-int/2addr v3, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    goto :goto_0
.end method

.method public final setTo(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 3
    .param p1, "srcSet"    # Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    .prologue
    .line 226
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    iget v2, p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    if-eq v1, v2, :cond_0

    .line 227
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ImplementationMessages.VAL_CMSI"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :cond_0
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    const/16 v2, 0x41

    if-ge v1, v2, :cond_2

    .line 231
    iget v1, p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    .line 232
    iget v1, p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    .line 239
    :cond_1
    return-void

    .line 236
    :cond_2
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteCount:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_1

    .line 237
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteArray:[B

    iget-object v2, p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteArray:[B

    aget-byte v2, v2, v0

    aput-byte v2, v1, v0

    .line 236
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 78
    .local v1, "strRet":Ljava/lang/StringBuffer;
    const/16 v2, 0x7b

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 79
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    if-lt v0, v2, :cond_0

    .line 84
    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v0    # "index":I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 80
    .restart local v0    # "index":I
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "index":I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public final union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 4
    .param p1, "setToOr"    # Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    .prologue
    .line 179
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    const/16 v2, 0x41

    if-ge v1, v2, :cond_1

    .line 181
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    iget v2, p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    or-int/2addr v1, v2

    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    .line 182
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    iget v2, p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    or-int/2addr v1, v2

    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    .line 189
    :cond_0
    return-void

    .line 186
    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteCount:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_0

    .line 187
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteArray:[B

    aget-byte v2, v1, v0

    iget-object v3, p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteArray:[B

    aget-byte v3, v3, v0

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 186
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final zeroBits()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 245
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    const/16 v2, 0x41

    if-ge v1, v2, :cond_1

    .line 247
    iput v3, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    .line 248
    iput v3, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    .line 255
    :cond_0
    return-void

    .line 252
    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteCount:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_0

    .line 253
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteArray:[B

    aput-byte v3, v1, v0

    .line 252
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
