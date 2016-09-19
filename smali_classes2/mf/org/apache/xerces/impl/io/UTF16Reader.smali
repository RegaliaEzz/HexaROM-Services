.class public final Lmf/org/apache/xerces/impl/io/UTF16Reader;
.super Ljava/io/Reader;
.source "UTF16Reader.java"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x1000


# instance fields
.field protected final fBuffer:[B

.field private final fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

.field protected final fInputStream:Ljava/io/InputStream;

.field protected final fIsBigEndian:Z

.field private final fLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;IZLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 6
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "size"    # I
    .param p3, "isBigEndian"    # Z
    .param p4, "messageFormatter"    # Lmf/org/apache/xerces/util/MessageFormatter;
    .param p5, "locale"    # Ljava/util/Locale;

    .prologue
    .line 107
    new-array v2, p2, [B

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/UTF16Reader;-><init>(Ljava/io/InputStream;[BZLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 6
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "isBigEndian"    # Z

    .prologue
    .line 79
    const/16 v2, 0x1000

    .line 80
    new-instance v4, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v4}, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/UTF16Reader;-><init>(Ljava/io/InputStream;IZLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ZLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 6
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "isBigEndian"    # Z
    .param p3, "messageFormatter"    # Lmf/org/apache/xerces/util/MessageFormatter;
    .param p4, "locale"    # Ljava/util/Locale;

    .prologue
    .line 92
    const/16 v2, 0x1000

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/UTF16Reader;-><init>(Ljava/io/InputStream;IZLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[BZLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "buffer"    # [B
    .param p3, "isBigEndian"    # Z
    .param p4, "messageFormatter"    # Lmf/org/apache/xerces/util/MessageFormatter;
    .param p5, "locale"    # Ljava/util/Locale;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 122
    iput-object p1, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fInputStream:Ljava/io/InputStream;

    .line 123
    iput-object p2, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fBuffer:[B

    .line 124
    iput-boolean p3, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fIsBigEndian:Z

    .line 125
    iput-object p4, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    .line 126
    iput-object p5, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fLocale:Ljava/util/Locale;

    .line 127
    return-void
.end method

.method private expectedTwoBytes()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;
        }
    .end annotation

    .prologue
    .line 317
    new-instance v0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    .line 318
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fLocale:Ljava/util/Locale;

    .line 319
    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 320
    const-string v4, "ExpectedByte"

    .line 321
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "2"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "2"

    aput-object v7, v5, v6

    .line 317
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;-><init>(Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private processBE([CII)V
    .locals 7
    .param p1, "ch"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 296
    const/4 v2, 0x0

    .line 297
    .local v2, "curPos":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v3, v2

    .end local v2    # "curPos":I
    .local v3, "curPos":I
    move v5, p2

    .end local p2    # "offset":I
    .local v5, "offset":I
    :goto_0
    if-lt v4, p3, :cond_0

    .line 302
    return-void

    .line 298
    :cond_0
    iget-object v6, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fBuffer:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "curPos":I
    .restart local v2    # "curPos":I
    aget-byte v6, v6, v3

    and-int/lit16 v0, v6, 0xff

    .line 299
    .local v0, "b0":I
    iget-object v6, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fBuffer:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "curPos":I
    .restart local v3    # "curPos":I
    aget-byte v6, v6, v2

    and-int/lit16 v1, v6, 0xff

    .line 300
    .local v1, "b1":I
    add-int/lit8 p2, v5, 0x1

    .end local v5    # "offset":I
    .restart local p2    # "offset":I
    shl-int/lit8 v6, v0, 0x8

    or-int/2addr v6, v1

    int-to-char v6, v6

    aput-char v6, p1, v5

    .line 297
    add-int/lit8 v4, v4, 0x1

    move v5, p2

    .end local p2    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_0
.end method

.method private processLE([CII)V
    .locals 7
    .param p1, "ch"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 306
    const/4 v2, 0x0

    .line 307
    .local v2, "curPos":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v3, v2

    .end local v2    # "curPos":I
    .local v3, "curPos":I
    move v5, p2

    .end local p2    # "offset":I
    .local v5, "offset":I
    :goto_0
    if-lt v4, p3, :cond_0

    .line 312
    return-void

    .line 308
    :cond_0
    iget-object v6, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fBuffer:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "curPos":I
    .restart local v2    # "curPos":I
    aget-byte v6, v6, v3

    and-int/lit16 v0, v6, 0xff

    .line 309
    .local v0, "b0":I
    iget-object v6, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fBuffer:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "curPos":I
    .restart local v3    # "curPos":I
    aget-byte v6, v6, v2

    and-int/lit16 v1, v6, 0xff

    .line 310
    .local v1, "b1":I
    add-int/lit8 p2, v5, 0x1

    .end local v5    # "offset":I
    .restart local p2    # "offset":I
    shl-int/lit8 v6, v1, 0x8

    or-int/2addr v6, v0

    int-to-char v6, v6

    aput-char v6, p1, v5

    .line 307
    add-int/lit8 v4, v4, 0x1

    move v5, p2

    .end local p2    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_0
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
    .line 287
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 288
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
    .line 260
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fLocale:Ljava/util/Locale;

    const-string v3, "OperationNotSupported"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "mark()"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "UTF-16"

    aput-object v6, v4, v5

    invoke-interface {v1, v2, v3, v4}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 147
    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 148
    .local v0, "b0":I
    if-ne v0, v2, :cond_0

    .line 160
    :goto_0
    return v2

    .line 151
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 152
    .local v1, "b1":I
    if-ne v1, v2, :cond_1

    .line 153
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/io/UTF16Reader;->expectedTwoBytes()V

    .line 156
    :cond_1
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fIsBigEndian:Z

    if-eqz v2, :cond_2

    .line 157
    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v2, v1

    goto :goto_0

    .line 160
    :cond_2
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    goto :goto_0
.end method

.method public read([CII)I
    .locals 8
    .param p1, "ch"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 178
    shl-int/lit8 v3, p3, 0x1

    .line 179
    .local v3, "byteLength":I
    iget-object v5, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fBuffer:[B

    array-length v5, v5

    if-le v3, v5, :cond_0

    .line 180
    iget-object v5, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fBuffer:[B

    array-length v3, v5

    .line 182
    :cond_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fInputStream:Ljava/io/InputStream;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fBuffer:[B

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 183
    .local v1, "byteCount":I
    if-ne v1, v4, :cond_1

    .line 201
    :goto_0
    return v4

    .line 187
    :cond_1
    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_3

    .line 188
    iget-object v5, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 189
    .local v0, "b":I
    if-ne v0, v4, :cond_2

    .line 190
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/io/UTF16Reader;->expectedTwoBytes()V

    .line 192
    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fBuffer:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "byteCount":I
    .local v2, "byteCount":I
    int-to-byte v6, v0

    aput-byte v6, v5, v1

    move v1, v2

    .line 194
    .end local v0    # "b":I
    .end local v2    # "byteCount":I
    .restart local v1    # "byteCount":I
    :cond_3
    shr-int/lit8 v4, v1, 0x1

    .line 195
    .local v4, "charCount":I
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fIsBigEndian:Z

    if-eqz v5, :cond_4

    .line 196
    invoke-direct {p0, p1, p2, v4}, Lmf/org/apache/xerces/impl/io/UTF16Reader;->processBE([CII)V

    goto :goto_0

    .line 199
    :cond_4
    invoke-direct {p0, p1, p2, v4}, Lmf/org/apache/xerces/impl/io/UTF16Reader;->processLE([CII)V

    goto :goto_0
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    return-void
.end method

.method public skip(J)J
    .locals 13
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x1

    const/4 v8, 0x1

    .line 215
    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fInputStream:Ljava/io/InputStream;

    shl-long v4, p1, v8

    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 216
    .local v2, "bytesSkipped":J
    and-long v4, v2, v10

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 217
    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 218
    .local v0, "b":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 219
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/io/UTF16Reader;->expectedTwoBytes()V

    .line 221
    :cond_0
    add-long/2addr v2, v10

    .line 223
    .end local v0    # "b":I
    :cond_1
    shr-long v4, v2, v8

    return-wide v4
.end method
