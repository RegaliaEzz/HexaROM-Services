.class public final Lmf/org/apache/xerces/impl/io/UCSReader;
.super Ljava/io/Reader;
.source "UCSReader.java"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field public static final UCS2BE:S = 0x2s

.field public static final UCS2LE:S = 0x1s

.field public static final UCS4BE:S = 0x8s

.field public static final UCS4LE:S = 0x4s


# instance fields
.field protected final fBuffer:[B

.field protected final fEncoding:S

.field protected final fInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;IS)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "size"    # I
    .param p3, "encoding"    # S

    .prologue
    .line 91
    new-array v0, p2, [B

    invoke-direct {p0, p1, v0, p3}, Lmf/org/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;[BS)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;S)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # S

    .prologue
    .line 78
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0, p2}, Lmf/org/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;IS)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[BS)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "buffer"    # [B
    .param p3, "encoding"    # S

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 104
    iput-object p1, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    .line 105
    iput-object p2, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    .line 106
    iput-short p3, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    .line 107
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 323
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readAheadLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 295
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xff

    const/4 v4, -0x1

    .line 127
    iget-object v5, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    and-int/lit16 v0, v5, 0xff

    .line 128
    .local v0, "b0":I
    if-ne v0, v7, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v4

    .line 131
    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    and-int/lit16 v1, v5, 0xff

    .line 132
    .local v1, "b1":I
    if-eq v1, v7, :cond_0

    .line 136
    iget-short v5, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v6, 0x4

    if-lt v5, v6, :cond_3

    .line 137
    iget-object v5, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    and-int/lit16 v2, v5, 0xff

    .line 138
    .local v2, "b2":I
    if-eq v2, v7, :cond_0

    .line 141
    iget-object v5, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    and-int/lit16 v3, v5, 0xff

    .line 142
    .local v3, "b3":I
    if-eq v3, v7, :cond_0

    .line 145
    iget-short v4, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 146
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    goto :goto_0

    .line 148
    :cond_2
    shl-int/lit8 v4, v3, 0x18

    shl-int/lit8 v5, v2, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x8

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    goto :goto_0

    .line 151
    .end local v2    # "b2":I
    .end local v3    # "b3":I
    :cond_3
    iget-short v4, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 152
    shl-int/lit8 v4, v0, 0x8

    add-int/2addr v4, v1

    goto :goto_0

    .line 154
    :cond_4
    shl-int/lit8 v4, v1, 0x8

    add-int/2addr v4, v0

    goto :goto_0
.end method

.method public read([CII)I
    .locals 17
    .param p1, "ch"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    move-object/from16 v0, p0

    iget-short v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v15, 0x4

    if-lt v14, v15, :cond_2

    const/4 v14, 0x2

    :goto_0
    shl-int v5, p3, v14

    .line 173
    .local v5, "byteLength":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    array-length v14, v14

    if-le v5, v14, :cond_0

    .line 174
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    array-length v5, v14

    .line 176
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 177
    .local v7, "count":I
    const/4 v14, -0x1

    if-ne v7, v14, :cond_3

    const/4 v12, -0x1

    .line 234
    :cond_1
    return v12

    .line 172
    .end local v5    # "byteLength":I
    .end local v7    # "count":I
    :cond_2
    const/4 v14, 0x1

    goto :goto_0

    .line 179
    .restart local v5    # "byteLength":I
    .restart local v7    # "count":I
    :cond_3
    move-object/from16 v0, p0

    iget-short v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v15, 0x4

    if-lt v14, v15, :cond_8

    .line 181
    and-int/lit8 v14, v7, 0x3

    rsub-int/lit8 v14, v14, 0x4

    and-int/lit8 v13, v14, 0x3

    .line 182
    .local v13, "numToRead":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-lt v10, v13, :cond_6

    .line 192
    :cond_4
    add-int/2addr v7, v13

    .line 209
    .end local v10    # "i":I
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-short v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v15, 0x4

    if-lt v14, v15, :cond_a

    const/4 v14, 0x2

    :goto_3
    shr-int v12, v7, v14

    .line 210
    .local v12, "numChars":I
    const/4 v8, 0x0

    .line 211
    .local v8, "curPos":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    move v9, v8

    .end local v8    # "curPos":I
    .local v9, "curPos":I
    :goto_4
    if-ge v10, v12, :cond_1

    .line 212
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "curPos":I
    .restart local v8    # "curPos":I
    aget-byte v14, v14, v9

    and-int/lit16 v1, v14, 0xff

    .line 213
    .local v1, "b0":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "curPos":I
    .restart local v9    # "curPos":I
    aget-byte v14, v14, v8

    and-int/lit16 v2, v14, 0xff

    .line 215
    .local v2, "b1":I
    move-object/from16 v0, p0

    iget-short v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v15, 0x4

    if-lt v14, v15, :cond_c

    .line 216
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "curPos":I
    .restart local v8    # "curPos":I
    aget-byte v14, v14, v9

    and-int/lit16 v3, v14, 0xff

    .line 217
    .local v3, "b2":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "curPos":I
    .restart local v9    # "curPos":I
    aget-byte v14, v14, v8

    and-int/lit16 v4, v14, 0xff

    .line 218
    .local v4, "b3":I
    move-object/from16 v0, p0

    iget-short v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/16 v15, 0x8

    if-ne v14, v15, :cond_b

    .line 219
    add-int v14, p2, v10

    shl-int/lit8 v15, v1, 0x18

    shl-int/lit8 v16, v2, 0x10

    add-int v15, v15, v16

    shl-int/lit8 v16, v3, 0x8

    add-int v15, v15, v16

    add-int/2addr v15, v4

    int-to-char v15, v15

    aput-char v15, p1, v14

    move v8, v9

    .line 211
    .end local v3    # "b2":I
    .end local v4    # "b3":I
    .end local v9    # "curPos":I
    .restart local v8    # "curPos":I
    :goto_5
    add-int/lit8 v10, v10, 0x1

    move v9, v8

    .end local v8    # "curPos":I
    .restart local v9    # "curPos":I
    goto :goto_4

    .line 183
    .end local v1    # "b0":I
    .end local v2    # "b1":I
    .end local v9    # "curPos":I
    .end local v12    # "numChars":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 184
    .local v6, "charRead":I
    const/4 v14, -0x1

    if-ne v6, v14, :cond_7

    .line 185
    move v11, v10

    .local v11, "j":I
    :goto_6
    if-ge v11, v13, :cond_4

    .line 186
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    add-int v15, v7, v11

    const/16 v16, 0x0

    aput-byte v16, v14, v15

    .line 185
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 190
    .end local v11    # "j":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    add-int v15, v7, v10

    int-to-byte v0, v6

    move/from16 v16, v0

    aput-byte v16, v14, v15

    .line 182
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 195
    .end local v6    # "charRead":I
    .end local v10    # "i":I
    .end local v13    # "numToRead":I
    :cond_8
    and-int/lit8 v13, v7, 0x1

    .line 196
    .restart local v13    # "numToRead":I
    if-eqz v13, :cond_5

    .line 197
    add-int/lit8 v7, v7, 0x1

    .line 198
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 199
    .restart local v6    # "charRead":I
    const/4 v14, -0x1

    if-ne v6, v14, :cond_9

    .line 200
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    const/4 v15, 0x0

    aput-byte v15, v14, v7

    goto/16 :goto_2

    .line 203
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    int-to-byte v15, v6

    aput-byte v15, v14, v7

    goto/16 :goto_2

    .line 209
    .end local v6    # "charRead":I
    :cond_a
    const/4 v14, 0x1

    goto/16 :goto_3

    .line 222
    .restart local v1    # "b0":I
    .restart local v2    # "b1":I
    .restart local v3    # "b2":I
    .restart local v4    # "b3":I
    .restart local v9    # "curPos":I
    .restart local v10    # "i":I
    .restart local v12    # "numChars":I
    :cond_b
    add-int v14, p2, v10

    shl-int/lit8 v15, v4, 0x18

    shl-int/lit8 v16, v3, 0x10

    add-int v15, v15, v16

    shl-int/lit8 v16, v2, 0x8

    add-int v15, v15, v16

    add-int/2addr v15, v1

    int-to-char v15, v15

    aput-char v15, p1, v14

    move v8, v9

    .line 224
    .end local v9    # "curPos":I
    .restart local v8    # "curPos":I
    goto :goto_5

    .line 226
    .end local v3    # "b2":I
    .end local v4    # "b3":I
    .end local v8    # "curPos":I
    .restart local v9    # "curPos":I
    :cond_c
    move-object/from16 v0, p0

    iget-short v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v15, 0x2

    if-ne v14, v15, :cond_d

    .line 227
    add-int v14, p2, v10

    shl-int/lit8 v15, v1, 0x8

    add-int/2addr v15, v2

    int-to-char v15, v15

    aput-char v15, p1, v14

    move v8, v9

    .line 228
    .end local v9    # "curPos":I
    .restart local v8    # "curPos":I
    goto :goto_5

    .line 230
    .end local v8    # "curPos":I
    .restart local v9    # "curPos":I
    :cond_d
    add-int v14, p2, v10

    shl-int/lit8 v15, v2, 0x8

    add-int/2addr v15, v1

    int-to-char v15, v15

    aput-char v15, p1, v14

    move v8, v9

    .end local v9    # "curPos":I
    .restart local v8    # "curPos":I
    goto :goto_5
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 312
    return-void
.end method

.method public skip(J)J
    .locals 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    iget-short v3, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    const/4 v2, 0x2

    .line 255
    .local v2, "charWidth":I
    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    shl-long v4, p1, v2

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 256
    .local v0, "bytesSkipped":J
    or-int/lit8 v3, v2, 0x1

    int-to-long v4, v3

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    shr-long v4, v0, v2

    .line 257
    :goto_1
    return-wide v4

    .line 254
    .end local v0    # "bytesSkipped":J
    .end local v2    # "charWidth":I
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 257
    .restart local v0    # "bytesSkipped":J
    .restart local v2    # "charWidth":I
    :cond_1
    shr-long v4, v0, v2

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    goto :goto_1
.end method
