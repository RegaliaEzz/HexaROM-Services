.class public Lmf/org/apache/xerces/impl/dv/util/ByteListImpl;
.super Ljava/util/AbstractList;
.source "ByteListImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/datatypes/ByteList;


# instance fields
.field protected canonical:Ljava/lang/String;

.field protected final data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 43
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/util/ByteListImpl;->data:[B

    .line 44
    return-void
.end method


# virtual methods
.method public contains(B)Z
    .locals 2
    .param p1, "item"    # B

    .prologue
    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/util/ByteListImpl;->data:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 68
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 64
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/util/ByteListImpl;->data:[B

    aget-byte v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 65
    const/4 v1, 0x1

    goto :goto_1

    .line 63
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 95
    if-ltz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/util/ByteListImpl;->data:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/Byte;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/util/ByteListImpl;->data:[B

    aget-byte v1, v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    return-object v0

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/util/ByteListImpl;->data:[B

    array-length v0, v0

    return v0
.end method

.method public item(I)B
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xs/XSException;
        }
    .end annotation

    .prologue
    .line 84
    if-ltz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/util/ByteListImpl;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 85
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/xs/XSException;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/xs/XSException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/util/ByteListImpl;->data:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/util/ByteListImpl;->getLength()I

    move-result v0

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 106
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/util/ByteListImpl;->data:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 107
    .local v0, "ret":[B
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/util/ByteListImpl;->data:[B

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/util/ByteListImpl;->data:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    return-object v0
.end method
