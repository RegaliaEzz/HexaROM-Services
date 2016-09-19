.class final Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;
.super Ljava/util/AbstractList;
.source "ListDV.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/datatypes/ObjectList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dv/xs/ListDV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ListData"
.end annotation


# instance fields
.field private canonical:Ljava/lang/String;

.field final data:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # [Ljava/lang/Object;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 58
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    .line 59
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 110
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 106
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_1

    .line 107
    const/4 v1, 0x1

    goto :goto_1

    .line 105
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 79
    instance-of v4, p1, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;

    if-nez v4, :cond_1

    .line 93
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v3

    .line 81
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v2, p1, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    .line 83
    .local v2, "odata":[Ljava/lang/Object;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    array-length v0, v4

    .line 84
    .local v0, "count":I
    array-length v4, v2

    if-ne v0, v4, :cond_0

    .line 87
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_2

    .line 93
    const/4 v3, 0x1

    goto :goto_0

    .line 88
    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    aget-object v4, v4, v1

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 125
    if-ltz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 126
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0

    .line 128
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
    .line 76
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 101
    return v0

    .line 99
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public item(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 114
    if-ltz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 115
    :cond_0
    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->getLength()I

    move-result v0

    return v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->canonical:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 62
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    array-length v2, v3

    .line 63
    .local v2, "len":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    .local v0, "buf":Ljava/lang/StringBuffer;
    if-lez v2, :cond_0

    .line 65
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_2

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->canonical:Ljava/lang/String;

    .line 73
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->canonical:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    .line 68
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    :cond_2
    const/16 v3, 0x20

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 69
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "i":I
    .end local v2    # "len":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
