.class public final Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;
.super Ljava/io/InputStream;
.source "XMLEntityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XMLEntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "RewindableInputStream"
.end annotation


# instance fields
.field private fData:[B

.field private fEndOffset:I

.field private fInputStream:Ljava/io/InputStream;

.field private fLength:I

.field private fMark:I

.field private fOffset:I

.field private fStartOffset:I

.field final synthetic this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/XMLEntityManager;Ljava/io/InputStream;)V
    .locals 2
    .param p2, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 3093
    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 3094
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fData:[B

    .line 3095
    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    .line 3096
    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fStartOffset:I

    .line 3097
    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    .line 3098
    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    .line 3099
    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fLength:I

    .line 3100
    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fMark:I

    .line 3101
    return-void
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3208
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fLength:I

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    sub-int v0, v1, v2

    .line 3209
    .local v0, "bytesLeft":I
    if-nez v0, :cond_2

    .line 3210
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    if-ne v1, v2, :cond_0

    .line 3211
    const/4 v1, -0x1

    .line 3216
    :goto_0
    return v1

    .line 3213
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->mayReadChunks:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    goto :goto_0

    .line 3214
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v1, v0

    .line 3216
    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3232
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 3233
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 3234
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    .line 3236
    :cond_0
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "howMuch"    # I

    .prologue
    .line 3220
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fMark:I

    .line 3221
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 3228
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3128
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fLength:I

    if-ge v0, v1, :cond_0

    .line 3129
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fData:[B

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 3137
    :goto_0
    return v0

    .line 3131
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    if-ne v0, v1, :cond_1

    .line 3132
    const/4 v0, -0x1

    goto :goto_0

    .line 3134
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->mayReadChunks:Z

    if-eqz v0, :cond_2

    .line 3135
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    .line 3137
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->readAndBuffer()I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 3141
    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fLength:I

    iget v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    sub-int v0, v3, v4

    .line 3142
    .local v0, "bytesLeft":I
    if-nez v0, :cond_3

    .line 3143
    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    if-ne v3, v4, :cond_0

    .line 3170
    :goto_0
    return v2

    .line 3147
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-boolean v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->mayReadChunks:Z

    if-eqz v3, :cond_1

    .line 3148
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_0

    .line 3150
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->readAndBuffer()I

    move-result v1

    .line 3151
    .local v1, "returnedVal":I
    if-ne v1, v2, :cond_2

    .line 3152
    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iput v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    goto :goto_0

    .line 3155
    :cond_2
    int-to-byte v2, v1

    aput-byte v2, p1, p2

    .line 3156
    const/4 v2, 0x1

    goto :goto_0

    .line 3158
    .end local v1    # "returnedVal":I
    :cond_3
    if-ge p3, v0, :cond_4

    .line 3159
    if-gtz p3, :cond_5

    .line 3160
    const/4 v2, 0x0

    goto :goto_0

    .line 3164
    :cond_4
    move p3, v0

    .line 3166
    :cond_5
    if-eqz p1, :cond_6

    .line 3167
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fData:[B

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    invoke-static {v2, v3, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3169
    :cond_6
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    add-int/2addr v2, p3

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    move v2, p3

    .line 3170
    goto :goto_0
.end method

.method public readAndBuffer()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    .line 3112
    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fData:[B

    array-length v4, v4

    if-ne v3, v4, :cond_0

    .line 3113
    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    shl-int/lit8 v3, v3, 0x1

    new-array v1, v3, [B

    .line 3114
    .local v1, "newData":[B
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fData:[B

    iget v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3115
    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fData:[B

    .line 3117
    .end local v1    # "newData":[B
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 3118
    .local v0, "b":I
    if-ne v0, v2, :cond_1

    .line 3119
    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iput v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    .line 3124
    :goto_0
    return v2

    .line 3122
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fData:[B

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fLength:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fLength:I

    int-to-byte v4, v0

    aput-byte v4, v2, v3

    .line 3123
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    .line 3124
    and-int/lit16 v2, v0, 0xff

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 3224
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fMark:I

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    .line 3225
    return-void
.end method

.method public rewind()V
    .locals 1

    .prologue
    .line 3108
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fStartOffset:I

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    .line 3109
    return-void
.end method

.method public setStartOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 3104
    iput p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fStartOffset:I

    .line 3105
    return-void
.end method

.method public skip(J)J
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 3177
    cmp-long v1, p1, v2

    if-gtz v1, :cond_1

    .line 3204
    :cond_0
    :goto_0
    return-wide v2

    .line 3180
    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fLength:I

    iget v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    sub-int v0, v1, v4

    .line 3181
    .local v0, "bytesLeft":I
    if-nez v0, :cond_2

    .line 3182
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    if-eq v1, v4, :cond_0

    .line 3185
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    goto :goto_0

    .line 3187
    :cond_2
    int-to-long v2, v0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_3

    .line 3188
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    long-to-int v1, v2

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    move-wide v2, p1

    .line 3189
    goto :goto_0

    .line 3191
    :cond_3
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    .line 3192
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    if-ne v1, v2, :cond_4

    .line 3193
    int-to-long v2, v0

    goto :goto_0

    .line 3195
    :cond_4
    int-to-long v2, v0

    sub-long/2addr p1, v2

    .line 3204
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    goto :goto_0
.end method
