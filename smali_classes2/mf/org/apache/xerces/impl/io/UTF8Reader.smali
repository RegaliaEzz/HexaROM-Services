.class public final Lmf/org/apache/xerces/impl/io/UTF8Reader;
.super Ljava/io/Reader;
.source "UTF8Reader.java"


# static fields
.field private static final DEBUG_READ:Z = false

.field public static final DEFAULT_BUFFER_SIZE:I = 0x800


# instance fields
.field protected final fBuffer:[B

.field private final fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

.field protected final fInputStream:Ljava/io/InputStream;

.field private final fLocale:Ljava/util/Locale;

.field protected fOffset:I

.field private fSurrogate:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 87
    const/16 v0, 0x800

    new-instance v1, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;ILmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "size"    # I
    .param p3, "messageFormatter"    # Lmf/org/apache/xerces/util/MessageFormatter;
    .param p4, "locale"    # Ljava/util/Locale;

    .prologue
    .line 114
    new-array v0, p2, [B

    invoke-direct {p0, p1, v0, p3, p4}, Lmf/org/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;[BLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "messageFormatter"    # Lmf/org/apache/xerces/util/MessageFormatter;
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    .line 100
    const/16 v0, 0x800

    invoke-direct {p0, p1, v0, p2, p3}, Lmf/org/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;ILmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[BLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "buffer"    # [B
    .param p3, "messageFormatter"    # Lmf/org/apache/xerces/util/MessageFormatter;
    .param p4, "locale"    # Ljava/util/Locale;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    .line 128
    iput-object p1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    .line 129
    iput-object p2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    .line 130
    iput-object p3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    .line 131
    iput-object p4, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    .line 132
    return-void
.end method

.method private expectedByte(II)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;
        }
    .end annotation

    .prologue
    .line 683
    new-instance v0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    .line 684
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    .line 685
    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 686
    const-string v4, "ExpectedByte"

    .line 687
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 683
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;-><init>(Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private invalidByte(III)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "count"    # I
    .param p3, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;
        }
    .end annotation

    .prologue
    .line 695
    new-instance v0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    .line 696
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    .line 697
    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 698
    const-string v4, "InvalidByte"

    .line 699
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 695
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;-><init>(Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private invalidSurrogate(I)V
    .locals 8
    .param p1, "uuuuu"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;
        }
    .end annotation

    .prologue
    .line 706
    new-instance v0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    .line 707
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    .line 708
    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 709
    const-string v4, "InvalidHighSurrogate"

    .line 710
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 706
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;-><init>(Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
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
    .line 672
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 673
    return-void
.end method

.method public mark(I)V
    .locals 7
    .param p1, "readAheadLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 643
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const-string v3, "OperationNotSupported"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "mark()"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "UTF-8"

    aput-object v6, v4, v5

    invoke-interface {v1, v2, v3, v4}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 626
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    iget v4, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    .line 155
    .local v4, "c":I
    iget v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1c

    .line 158
    const/4 v6, 0x0

    .line 161
    .local v6, "index":I
    iget v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v6, v11, :cond_0

    .line 162
    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v0

    move v7, v6

    .line 163
    .end local v6    # "index":I
    .local v0, "b0":I
    .local v7, "index":I
    :goto_0
    const/4 v11, -0x1

    if-ne v0, v11, :cond_1

    .line 164
    const/4 v11, -0x1

    .line 270
    .end local v0    # "b0":I
    .end local v7    # "index":I
    :goto_1
    return v11

    .line 162
    .restart local v6    # "index":I
    :cond_0
    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .restart local v7    # "index":I
    aget-byte v11, v11, v6

    and-int/lit16 v0, v11, 0xff

    goto :goto_0

    .line 169
    .restart local v0    # "b0":I
    :cond_1
    const/16 v11, 0x80

    if-ge v0, v11, :cond_2

    .line 170
    int-to-char v4, v0

    .end local v0    # "b0":I
    .end local v7    # "index":I
    :goto_2
    move v11, v4

    .line 270
    goto :goto_1

    .line 175
    .restart local v0    # "b0":I
    .restart local v7    # "index":I
    :cond_2
    and-int/lit16 v11, v0, 0xe0

    const/16 v12, 0xc0

    if-ne v11, v12, :cond_6

    and-int/lit8 v11, v0, 0x1e

    if-eqz v11, :cond_6

    .line 176
    iget v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v7, v11, :cond_5

    .line 177
    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v1

    move v6, v7

    .line 178
    .end local v7    # "index":I
    .local v1, "b1":I
    .restart local v6    # "index":I
    :goto_3
    const/4 v11, -0x1

    if-ne v1, v11, :cond_3

    .line 179
    const/4 v11, 0x2

    const/4 v12, 0x2

    invoke-direct {p0, v11, v12}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 181
    :cond_3
    and-int/lit16 v11, v1, 0xc0

    const/16 v12, 0x80

    if-eq v11, v12, :cond_4

    .line 182
    const/4 v11, 0x2

    const/4 v12, 0x2

    invoke-direct {p0, v11, v12, v1}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 184
    :cond_4
    shl-int/lit8 v11, v0, 0x6

    and-int/lit16 v11, v11, 0x7c0

    and-int/lit8 v12, v1, 0x3f

    or-int v4, v11, v12

    .line 185
    goto :goto_2

    .line 177
    .end local v1    # "b1":I
    .end local v6    # "index":I
    .restart local v7    # "index":I
    :cond_5
    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    aget-byte v11, v11, v7

    and-int/lit16 v1, v11, 0xff

    goto :goto_3

    .line 189
    .end local v6    # "index":I
    .restart local v7    # "index":I
    :cond_6
    and-int/lit16 v11, v0, 0xf0

    const/16 v12, 0xe0

    if-ne v11, v12, :cond_f

    .line 190
    iget v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v7, v11, :cond_d

    .line 191
    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 192
    .restart local v1    # "b1":I
    :goto_4
    const/4 v11, -0x1

    if-ne v1, v11, :cond_7

    .line 193
    const/4 v11, 0x2

    const/4 v12, 0x3

    invoke-direct {p0, v11, v12}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 195
    :cond_7
    and-int/lit16 v11, v1, 0xc0

    const/16 v12, 0x80

    if-ne v11, v12, :cond_9

    .line 196
    const/16 v11, 0xed

    if-ne v0, v11, :cond_8

    const/16 v11, 0xa0

    if-ge v1, v11, :cond_9

    .line 197
    :cond_8
    and-int/lit8 v11, v0, 0xf

    if-nez v11, :cond_a

    and-int/lit8 v11, v1, 0x20

    if-nez v11, :cond_a

    .line 198
    :cond_9
    const/4 v11, 0x2

    const/4 v12, 0x3

    invoke-direct {p0, v11, v12, v1}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 200
    :cond_a
    iget v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v7, v11, :cond_e

    .line 201
    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v2

    move v6, v7

    .line 202
    .end local v7    # "index":I
    .local v2, "b2":I
    .restart local v6    # "index":I
    :goto_5
    const/4 v11, -0x1

    if-ne v2, v11, :cond_b

    .line 203
    const/4 v11, 0x3

    const/4 v12, 0x3

    invoke-direct {p0, v11, v12}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 205
    :cond_b
    and-int/lit16 v11, v2, 0xc0

    const/16 v12, 0x80

    if-eq v11, v12, :cond_c

    .line 206
    const/4 v11, 0x3

    const/4 v12, 0x3

    invoke-direct {p0, v11, v12, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 208
    :cond_c
    shl-int/lit8 v11, v0, 0xc

    const v12, 0xf000

    and-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x6

    and-int/lit16 v12, v12, 0xfc0

    or-int/2addr v11, v12

    .line 209
    and-int/lit8 v12, v2, 0x3f

    .line 208
    or-int v4, v11, v12

    .line 210
    goto/16 :goto_2

    .line 191
    .end local v1    # "b1":I
    .end local v2    # "b2":I
    .end local v6    # "index":I
    .restart local v7    # "index":I
    :cond_d
    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    aget-byte v11, v11, v7

    and-int/lit16 v1, v11, 0xff

    move v7, v6

    .end local v6    # "index":I
    .restart local v7    # "index":I
    goto :goto_4

    .line 201
    .restart local v1    # "b1":I
    :cond_e
    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    aget-byte v11, v11, v7

    and-int/lit16 v2, v11, 0xff

    goto :goto_5

    .line 216
    .end local v1    # "b1":I
    .end local v6    # "index":I
    .restart local v7    # "index":I
    :cond_f
    and-int/lit16 v11, v0, 0xf8

    const/16 v12, 0xf0

    if-ne v11, v12, :cond_1b

    .line 217
    iget v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v7, v11, :cond_18

    .line 218
    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 219
    .restart local v1    # "b1":I
    :goto_6
    const/4 v11, -0x1

    if-ne v1, v11, :cond_10

    .line 220
    const/4 v11, 0x2

    const/4 v12, 0x4

    invoke-direct {p0, v11, v12}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 222
    :cond_10
    and-int/lit16 v11, v1, 0xc0

    const/16 v12, 0x80

    if-ne v11, v12, :cond_11

    .line 223
    and-int/lit8 v11, v1, 0x30

    if-nez v11, :cond_12

    and-int/lit8 v11, v0, 0x7

    if-nez v11, :cond_12

    .line 224
    :cond_11
    const/4 v11, 0x2

    const/4 v12, 0x3

    invoke-direct {p0, v11, v12, v1}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 226
    :cond_12
    iget v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v7, v11, :cond_19

    .line 227
    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 228
    .restart local v2    # "b2":I
    :goto_7
    const/4 v11, -0x1

    if-ne v2, v11, :cond_13

    .line 229
    const/4 v11, 0x3

    const/4 v12, 0x4

    invoke-direct {p0, v11, v12}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 231
    :cond_13
    and-int/lit16 v11, v2, 0xc0

    const/16 v12, 0x80

    if-eq v11, v12, :cond_14

    .line 232
    const/4 v11, 0x3

    const/4 v12, 0x3

    invoke-direct {p0, v11, v12, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 234
    :cond_14
    iget v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v7, v11, :cond_1a

    .line 235
    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v3

    move v6, v7

    .line 236
    .end local v7    # "index":I
    .local v3, "b3":I
    .restart local v6    # "index":I
    :goto_8
    const/4 v11, -0x1

    if-ne v3, v11, :cond_15

    .line 237
    const/4 v11, 0x4

    const/4 v12, 0x4

    invoke-direct {p0, v11, v12}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 239
    :cond_15
    and-int/lit16 v11, v3, 0xc0

    const/16 v12, 0x80

    if-eq v11, v12, :cond_16

    .line 240
    const/4 v11, 0x4

    const/4 v12, 0x4

    invoke-direct {p0, v11, v12, v3}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 242
    :cond_16
    shl-int/lit8 v11, v0, 0x2

    and-int/lit8 v11, v11, 0x1c

    shr-int/lit8 v12, v1, 0x4

    and-int/lit8 v12, v12, 0x3

    or-int v9, v11, v12

    .line 243
    .local v9, "uuuuu":I
    const/16 v11, 0x10

    if-le v9, v11, :cond_17

    .line 244
    invoke-direct {p0, v9}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidSurrogate(I)V

    .line 246
    :cond_17
    add-int/lit8 v10, v9, -0x1

    .line 247
    .local v10, "wwww":I
    const v11, 0xd800

    .line 248
    shl-int/lit8 v12, v10, 0x6

    and-int/lit16 v12, v12, 0x3c0

    .line 247
    or-int/2addr v11, v12

    .line 248
    shl-int/lit8 v12, v1, 0x2

    and-int/lit8 v12, v12, 0x3c

    .line 247
    or-int/2addr v11, v12

    .line 249
    shr-int/lit8 v12, v2, 0x4

    and-int/lit8 v12, v12, 0x3

    .line 247
    or-int v5, v11, v12

    .line 250
    .local v5, "hs":I
    const v11, 0xdc00

    shl-int/lit8 v12, v2, 0x6

    and-int/lit16 v12, v12, 0x3c0

    or-int/2addr v11, v12

    and-int/lit8 v12, v3, 0x3f

    or-int v8, v11, v12

    .line 251
    .local v8, "ls":I
    move v4, v5

    .line 252
    iput v8, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    goto/16 :goto_2

    .line 218
    .end local v1    # "b1":I
    .end local v2    # "b2":I
    .end local v3    # "b3":I
    .end local v5    # "hs":I
    .end local v6    # "index":I
    .end local v8    # "ls":I
    .end local v9    # "uuuuu":I
    .end local v10    # "wwww":I
    .restart local v7    # "index":I
    :cond_18
    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    aget-byte v11, v11, v7

    and-int/lit16 v1, v11, 0xff

    move v7, v6

    .end local v6    # "index":I
    .restart local v7    # "index":I
    goto/16 :goto_6

    .line 227
    .restart local v1    # "b1":I
    :cond_19
    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    aget-byte v11, v11, v7

    and-int/lit16 v2, v11, 0xff

    move v7, v6

    .end local v6    # "index":I
    .restart local v7    # "index":I
    goto :goto_7

    .line 235
    .restart local v2    # "b2":I
    :cond_1a
    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    aget-byte v11, v11, v7

    and-int/lit16 v3, v11, 0xff

    goto :goto_8

    .line 257
    .end local v1    # "b1":I
    .end local v2    # "b2":I
    .end local v6    # "index":I
    .restart local v7    # "index":I
    :cond_1b
    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12, v0}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    goto/16 :goto_2

    .line 263
    .end local v0    # "b0":I
    .end local v7    # "index":I
    :cond_1c
    const/4 v11, -0x1

    iput v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    goto/16 :goto_2
.end method

.method public read([CII)I
    .locals 26
    .param p1, "ch"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    move/from16 v15, p2

    .line 292
    .local v15, "out":I
    const/4 v11, 0x0

    .line 293
    .local v11, "count":I
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    move/from16 v23, v0

    if-nez v23, :cond_4

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, p3

    move/from16 v1, v23

    if-le v0, v1, :cond_0

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 p3, v0

    .line 300
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    .line 301
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "out":I
    .local v16, "out":I
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-char v0, v0

    move/from16 v23, v0

    aput-char v23, p1, v15

    .line 302
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    .line 303
    add-int/lit8 p3, p3, -0x1

    move/from16 v15, v16

    .line 307
    .end local v16    # "out":I
    .restart local v15    # "out":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    .line 308
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v11, v0, :cond_2

    .line 309
    const/16 v23, -0x1

    .line 575
    :goto_0
    return v23

    .line 311
    :cond_2
    sub-int v23, v15, p2

    add-int v11, v11, v23

    .line 327
    :goto_1
    move/from16 v17, v11

    .line 330
    .local v17, "total":I
    const/4 v8, 0x0

    .line 331
    .local v8, "byte0":B
    const/4 v13, 0x0

    .local v13, "in":I
    move/from16 v16, v15

    .end local v15    # "out":I
    .restart local v16    # "out":I
    :goto_2
    move/from16 v0, v17

    if-lt v13, v0, :cond_5

    .line 340
    :cond_3
    :goto_3
    move/from16 v0, v17

    if-lt v13, v0, :cond_6

    move/from16 v15, v16

    .end local v16    # "out":I
    .restart local v15    # "out":I
    move/from16 v23, v11

    .line 575
    goto :goto_0

    .line 322
    .end local v8    # "byte0":B
    .end local v13    # "in":I
    .end local v17    # "total":I
    :cond_4
    move-object/from16 v0, p0

    iget v11, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 323
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    goto :goto_1

    .line 332
    .end local v15    # "out":I
    .restart local v8    # "byte0":B
    .restart local v13    # "in":I
    .restart local v16    # "out":I
    .restart local v17    # "total":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v9, v23, v13

    .line 333
    .local v9, "byte1":B
    if-ltz v9, :cond_3

    .line 334
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "out":I
    .restart local v15    # "out":I
    int-to-char v0, v9

    move/from16 v23, v0

    aput-char v23, p1, v16

    .line 331
    add-int/lit8 v13, v13, 0x1

    move/from16 v16, v15

    .end local v15    # "out":I
    .restart local v16    # "out":I
    goto :goto_2

    .line 341
    .end local v9    # "byte1":B
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v9, v23, v13

    .line 345
    .restart local v9    # "byte1":B
    if-ltz v9, :cond_7

    .line 346
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "out":I
    .restart local v15    # "out":I
    int-to-char v0, v9

    move/from16 v23, v0

    aput-char v23, p1, v16

    .line 340
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move/from16 v16, v15

    .end local v15    # "out":I
    .restart local v16    # "out":I
    goto :goto_3

    .line 352
    :cond_7
    and-int/lit16 v4, v9, 0xff

    .line 353
    .local v4, "b0":I
    and-int/lit16 v0, v4, 0xe0

    move/from16 v23, v0

    const/16 v24, 0xc0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    and-int/lit8 v23, v4, 0x1e

    if-eqz v23, :cond_d

    .line 354
    const/4 v5, -0x1

    .line 355
    .local v5, "b1":I
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v17

    if-ge v13, v0, :cond_8

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v13

    move/from16 v0, v23

    and-int/lit16 v5, v0, 0xff

    .line 370
    :goto_5
    and-int/lit16 v0, v5, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    .line 371
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_b

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 374
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 375
    sub-int v23, v16, p2

    move/from16 v15, v16

    .end local v16    # "out":I
    .restart local v15    # "out":I
    goto/16 :goto_0

    .line 359
    .end local v15    # "out":I
    .restart local v16    # "out":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 360
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v5, v0, :cond_a

    .line 361
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_9

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 363
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 364
    sub-int v23, v16, p2

    move/from16 v15, v16

    .end local v16    # "out":I
    .restart local v15    # "out":I
    goto/16 :goto_0

    .line 366
    .end local v15    # "out":I
    .restart local v16    # "out":I
    :cond_9
    const/16 v23, 0x2

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 368
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 377
    :cond_b
    const/16 v23, 0x2

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v5}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 379
    :cond_c
    shl-int/lit8 v23, v4, 0x6

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x7c0

    move/from16 v23, v0

    and-int/lit8 v24, v5, 0x3f

    or-int v10, v23, v24

    .line 380
    .local v10, "c":I
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "out":I
    .restart local v15    # "out":I
    int-to-char v0, v10

    move/from16 v23, v0

    aput-char v23, p1, v16

    .line 381
    add-int/lit8 v11, v11, -0x1

    .line 382
    goto/16 :goto_4

    .line 387
    .end local v5    # "b1":I
    .end local v10    # "c":I
    .end local v15    # "out":I
    .restart local v16    # "out":I
    :cond_d
    and-int/lit16 v0, v4, 0xf0

    move/from16 v23, v0

    const/16 v24, 0xe0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1a

    .line 388
    const/4 v5, -0x1

    .line 389
    .restart local v5    # "b1":I
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v17

    if-ge v13, v0, :cond_10

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v13

    move/from16 v0, v23

    and-int/lit16 v5, v0, 0xff

    .line 404
    :goto_6
    and-int/lit16 v0, v5, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    .line 405
    const/16 v23, 0xed

    move/from16 v0, v23

    if-ne v4, v0, :cond_e

    const/16 v23, 0xa0

    move/from16 v0, v23

    if-ge v5, v0, :cond_f

    .line 406
    :cond_e
    and-int/lit8 v23, v4, 0xf

    if-nez v23, :cond_14

    and-int/lit8 v23, v5, 0x20

    if-nez v23, :cond_14

    .line 407
    :cond_f
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_13

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 410
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 411
    sub-int v23, v16, p2

    move/from16 v15, v16

    .end local v16    # "out":I
    .restart local v15    # "out":I
    goto/16 :goto_0

    .line 393
    .end local v15    # "out":I
    .restart local v16    # "out":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 394
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v5, v0, :cond_12

    .line 395
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_11

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 397
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 398
    sub-int v23, v16, p2

    move/from16 v15, v16

    .end local v16    # "out":I
    .restart local v15    # "out":I
    goto/16 :goto_0

    .line 400
    .end local v15    # "out":I
    .restart local v16    # "out":I
    :cond_11
    const/16 v23, 0x2

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 402
    :cond_12
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    .line 413
    :cond_13
    const/16 v23, 0x2

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v5}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 415
    :cond_14
    const/4 v6, -0x1

    .line 416
    .local v6, "b2":I
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v17

    if-ge v13, v0, :cond_15

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v13

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    .line 432
    :goto_7
    and-int/lit16 v0, v6, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_19

    .line 433
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_18

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x2

    int-to-byte v0, v6

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 437
    const/16 v23, 0x3

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 438
    sub-int v23, v16, p2

    move/from16 v15, v16

    .end local v16    # "out":I
    .restart local v15    # "out":I
    goto/16 :goto_0

    .line 420
    .end local v15    # "out":I
    .restart local v16    # "out":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 421
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v6, v0, :cond_17

    .line 422
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_16

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 425
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 426
    sub-int v23, v16, p2

    move/from16 v15, v16

    .end local v16    # "out":I
    .restart local v15    # "out":I
    goto/16 :goto_0

    .line 428
    .end local v15    # "out":I
    .restart local v16    # "out":I
    :cond_16
    const/16 v23, 0x3

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 430
    :cond_17
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_7

    .line 440
    :cond_18
    const/16 v23, 0x3

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v6}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 442
    :cond_19
    shl-int/lit8 v23, v4, 0xc

    const v24, 0xf000

    and-int v23, v23, v24

    shl-int/lit8 v24, v5, 0x6

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xfc0

    move/from16 v24, v0

    or-int v23, v23, v24

    .line 443
    and-int/lit8 v24, v6, 0x3f

    .line 442
    or-int v10, v23, v24

    .line 444
    .restart local v10    # "c":I
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "out":I
    .restart local v15    # "out":I
    int-to-char v0, v10

    move/from16 v23, v0

    aput-char v23, p1, v16

    .line 445
    add-int/lit8 v11, v11, -0x2

    .line 446
    goto/16 :goto_4

    .line 453
    .end local v5    # "b1":I
    .end local v6    # "b2":I
    .end local v10    # "c":I
    .end local v15    # "out":I
    .restart local v16    # "out":I
    :cond_1a
    and-int/lit16 v0, v4, 0xf8

    move/from16 v23, v0

    const/16 v24, 0xf0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2d

    .line 454
    const/4 v5, -0x1

    .line 455
    .restart local v5    # "b1":I
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v17

    if-ge v13, v0, :cond_1c

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v13

    move/from16 v0, v23

    and-int/lit16 v5, v0, 0xff

    .line 470
    :goto_8
    and-int/lit16 v0, v5, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1b

    .line 471
    and-int/lit8 v23, v5, 0x30

    if-nez v23, :cond_20

    and-int/lit8 v23, v4, 0x7

    if-nez v23, :cond_20

    .line 472
    :cond_1b
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_1f

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 475
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 476
    sub-int v23, v16, p2

    move/from16 v15, v16

    .end local v16    # "out":I
    .restart local v15    # "out":I
    goto/16 :goto_0

    .line 459
    .end local v15    # "out":I
    .restart local v16    # "out":I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 460
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v5, v0, :cond_1e

    .line 461
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_1d

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 463
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 464
    sub-int v23, v16, p2

    move/from16 v15, v16

    .end local v16    # "out":I
    .restart local v15    # "out":I
    goto/16 :goto_0

    .line 466
    .end local v15    # "out":I
    .restart local v16    # "out":I
    :cond_1d
    const/16 v23, 0x2

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 468
    :cond_1e
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_8

    .line 478
    :cond_1f
    const/16 v23, 0x2

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v5}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 480
    :cond_20
    const/4 v6, -0x1

    .line 481
    .restart local v6    # "b2":I
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v17

    if-ge v13, v0, :cond_21

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v13

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    .line 497
    :goto_9
    and-int/lit16 v0, v6, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_25

    .line 498
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_24

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x2

    int-to-byte v0, v6

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 502
    const/16 v23, 0x3

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 503
    sub-int v23, v16, p2

    move/from16 v15, v16

    .end local v16    # "out":I
    .restart local v15    # "out":I
    goto/16 :goto_0

    .line 485
    .end local v15    # "out":I
    .restart local v16    # "out":I
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 486
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v6, v0, :cond_23

    .line 487
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_22

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 490
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 491
    sub-int v23, v16, p2

    move/from16 v15, v16

    .end local v16    # "out":I
    .restart local v15    # "out":I
    goto/16 :goto_0

    .line 493
    .end local v15    # "out":I
    .restart local v16    # "out":I
    :cond_22
    const/16 v23, 0x3

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 495
    :cond_23
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_9

    .line 505
    :cond_24
    const/16 v23, 0x3

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v6}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 507
    :cond_25
    const/4 v7, -0x1

    .line 508
    .local v7, "b3":I
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v17

    if-ge v13, v0, :cond_26

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v13

    move/from16 v0, v23

    and-int/lit16 v7, v0, 0xff

    .line 525
    :goto_a
    and-int/lit16 v0, v7, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2a

    .line 526
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_29

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x2

    int-to-byte v0, v6

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x3

    int-to-byte v0, v7

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 531
    const/16 v23, 0x4

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 532
    sub-int v23, v16, p2

    move/from16 v15, v16

    .end local v16    # "out":I
    .restart local v15    # "out":I
    goto/16 :goto_0

    .line 512
    .end local v15    # "out":I
    .restart local v16    # "out":I
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 513
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v7, v0, :cond_28

    .line 514
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_27

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x2

    int-to-byte v0, v6

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 518
    const/16 v23, 0x3

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 519
    sub-int v23, v16, p2

    move/from16 v15, v16

    .end local v16    # "out":I
    .restart local v15    # "out":I
    goto/16 :goto_0

    .line 521
    .end local v15    # "out":I
    .restart local v16    # "out":I
    :cond_27
    const/16 v23, 0x4

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 523
    :cond_28
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_a

    .line 534
    :cond_29
    const/16 v23, 0x4

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v6}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 538
    :cond_2a
    shl-int/lit8 v23, v4, 0x2

    and-int/lit8 v23, v23, 0x1c

    shr-int/lit8 v24, v5, 0x4

    and-int/lit8 v24, v24, 0x3

    or-int v18, v23, v24

    .line 539
    .local v18, "uuuuu":I
    const/16 v23, 0x10

    move/from16 v0, v18

    move/from16 v1, v23

    if-le v0, v1, :cond_2b

    .line 540
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidSurrogate(I)V

    .line 542
    :cond_2b
    add-int/lit8 v19, v18, -0x1

    .line 543
    .local v19, "wwww":I
    and-int/lit8 v22, v5, 0xf

    .line 544
    .local v22, "zzzz":I
    and-int/lit8 v21, v6, 0x3f

    .line 545
    .local v21, "yyyyyy":I
    and-int/lit8 v20, v7, 0x3f

    .line 546
    .local v20, "xxxxxx":I
    const v23, 0xd800

    shl-int/lit8 v24, v19, 0x6

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x3c0

    move/from16 v24, v0

    or-int v23, v23, v24

    shl-int/lit8 v24, v22, 0x2

    or-int v23, v23, v24

    shr-int/lit8 v24, v21, 0x4

    or-int v12, v23, v24

    .line 547
    .local v12, "hs":I
    const v23, 0xdc00

    shl-int/lit8 v24, v21, 0x6

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x3c0

    move/from16 v24, v0

    or-int v23, v23, v24

    or-int v14, v23, v20

    .line 550
    .local v14, "ls":I
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "out":I
    .restart local v15    # "out":I
    int-to-char v0, v12

    move/from16 v23, v0

    aput-char v23, p1, v16

    .line 551
    add-int/lit8 v11, v11, -0x2

    move/from16 v0, p3

    if-gt v11, v0, :cond_2c

    .line 552
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "out":I
    .restart local v16    # "out":I
    int-to-char v0, v14

    move/from16 v23, v0

    aput-char v23, p1, v15

    move/from16 v15, v16

    .line 553
    .end local v16    # "out":I
    .restart local v15    # "out":I
    goto/16 :goto_4

    .line 556
    :cond_2c
    move-object/from16 v0, p0

    iput v14, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    .line 557
    add-int/lit8 v11, v11, -0x1

    .line 559
    goto/16 :goto_4

    .line 563
    .end local v5    # "b1":I
    .end local v6    # "b2":I
    .end local v7    # "b3":I
    .end local v12    # "hs":I
    .end local v14    # "ls":I
    .end local v15    # "out":I
    .end local v18    # "uuuuu":I
    .end local v19    # "wwww":I
    .end local v20    # "xxxxxx":I
    .end local v21    # "yyyyyy":I
    .end local v22    # "zzzz":I
    .restart local v16    # "out":I
    :cond_2d
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_2e

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 565
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 566
    sub-int v23, v16, p2

    move/from16 v15, v16

    .end local v16    # "out":I
    .restart local v15    # "out":I
    goto/16 :goto_0

    .line 568
    .end local v15    # "out":I
    .restart local v16    # "out":I
    :cond_2e
    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v4}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    move/from16 v15, v16

    .end local v16    # "out":I
    .restart local v15    # "out":I
    goto/16 :goto_4
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 619
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
    .line 660
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 661
    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    .line 662
    return-void
.end method

.method public skip(J)J
    .locals 11
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    move-wide v4, p1

    .line 592
    .local v4, "remaining":J
    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    array-length v3, v3

    new-array v0, v3, [C

    .line 594
    .local v0, "ch":[C
    :cond_0
    array-length v3, v0

    int-to-long v8, v3

    cmp-long v3, v8, v4

    if-gez v3, :cond_2

    array-length v2, v0

    .line 595
    .local v2, "length":I
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->read([CII)I

    move-result v1

    .line 596
    .local v1, "count":I
    if-lez v1, :cond_1

    .line 597
    int-to-long v8, v1

    sub-long/2addr v4, v8

    .line 602
    const-wide/16 v8, 0x0

    .line 593
    cmp-long v3, v4, v8

    if-gtz v3, :cond_0

    .line 604
    :cond_1
    sub-long v6, p1, v4

    .line 605
    .local v6, "skipped":J
    return-wide v6

    .line 594
    .end local v1    # "count":I
    .end local v2    # "length":I
    .end local v6    # "skipped":J
    :cond_2
    long-to-int v2, v4

    goto :goto_0
.end method
