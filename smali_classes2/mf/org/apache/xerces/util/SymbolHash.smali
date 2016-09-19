.class public Lmf/org/apache/xerces/util/SymbolHash;
.super Ljava/lang/Object;
.source "SymbolHash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/util/SymbolHash$Entry;
    }
.end annotation


# instance fields
.field protected fBuckets:[Lmf/org/apache/xerces/util/SymbolHash$Entry;

.field protected fNum:I

.field protected fTableSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x65

    iput v0, p0, Lmf/org/apache/xerces/util/SymbolHash;->fTableSize:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/util/SymbolHash;->fNum:I

    .line 55
    iget v0, p0, Lmf/org/apache/xerces/util/SymbolHash;->fTableSize:I

    new-array v0, v0, [Lmf/org/apache/xerces/util/SymbolHash$Entry;

    iput-object v0, p0, Lmf/org/apache/xerces/util/SymbolHash;->fBuckets:[Lmf/org/apache/xerces/util/SymbolHash$Entry;

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x65

    iput v0, p0, Lmf/org/apache/xerces/util/SymbolHash;->fTableSize:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/util/SymbolHash;->fNum:I

    .line 64
    iput p1, p0, Lmf/org/apache/xerces/util/SymbolHash;->fTableSize:I

    .line 65
    iget v0, p0, Lmf/org/apache/xerces/util/SymbolHash;->fTableSize:I

    new-array v0, v0, [Lmf/org/apache/xerces/util/SymbolHash$Entry;

    iput-object v0, p0, Lmf/org/apache/xerces/util/SymbolHash;->fBuckets:[Lmf/org/apache/xerces/util/SymbolHash$Entry;

    .line 66
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/util/SymbolHash;->fTableSize:I

    if-lt v0, v1, :cond_0

    .line 173
    const/4 v1, 0x0

    iput v1, p0, Lmf/org/apache/xerces/util/SymbolHash;->fNum:I

    .line 174
    return-void

    .line 171
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/SymbolHash;->fBuckets:[Lmf/org/apache/xerces/util/SymbolHash$Entry;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 103
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iget v3, p0, Lmf/org/apache/xerces/util/SymbolHash;->fTableSize:I

    rem-int v0, v2, v3

    .line 104
    .local v0, "bucket":I
    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/util/SymbolHash;->search(Ljava/lang/Object;I)Lmf/org/apache/xerces/util/SymbolHash$Entry;

    move-result-object v1

    .line 105
    .local v1, "entry":Lmf/org/apache/xerces/util/SymbolHash$Entry;
    if-eqz v1, :cond_0

    .line 106
    iget-object v2, v1, Lmf/org/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    .line 108
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getEntries()[Ljava/lang/Object;
    .locals 5

    .prologue
    .line 141
    iget v4, p0, Lmf/org/apache/xerces/util/SymbolHash;->fNum:I

    shl-int/lit8 v4, v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    .line 142
    .local v0, "entries":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    iget v4, p0, Lmf/org/apache/xerces/util/SymbolHash;->fTableSize:I

    if-ge v2, v4, :cond_0

    iget v4, p0, Lmf/org/apache/xerces/util/SymbolHash;->fNum:I

    shl-int/lit8 v4, v4, 0x1

    if-lt v3, v4, :cond_1

    .line 149
    :cond_0
    return-object v0

    .line 143
    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/util/SymbolHash;->fBuckets:[Lmf/org/apache/xerces/util/SymbolHash$Entry;

    aget-object v1, v4, v2

    .local v1, "entry":Lmf/org/apache/xerces/util/SymbolHash$Entry;
    :goto_1
    if-nez v1, :cond_2

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_2
    iget-object v4, v1, Lmf/org/apache/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    aput-object v4, v0, v3

    .line 145
    add-int/lit8 v3, v3, 0x1

    iget-object v4, v1, Lmf/org/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    aput-object v4, v0, v3

    .line 146
    add-int/lit8 v3, v3, 0x1

    .line 143
    iget-object v1, v1, Lmf/org/apache/xerces/util/SymbolHash$Entry;->next:Lmf/org/apache/xerces/util/SymbolHash$Entry;

    goto :goto_1
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lmf/org/apache/xerces/util/SymbolHash;->fNum:I

    return v0
.end method

.method public getValues([Ljava/lang/Object;I)I
    .locals 5
    .param p1, "elements"    # [Ljava/lang/Object;
    .param p2, "from"    # I

    .prologue
    .line 128
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/util/SymbolHash;->fTableSize:I

    if-ge v1, v3, :cond_0

    iget v3, p0, Lmf/org/apache/xerces/util/SymbolHash;->fNum:I

    if-lt v2, v3, :cond_1

    .line 134
    :cond_0
    iget v3, p0, Lmf/org/apache/xerces/util/SymbolHash;->fNum:I

    return v3

    .line 129
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/util/SymbolHash;->fBuckets:[Lmf/org/apache/xerces/util/SymbolHash$Entry;

    aget-object v0, v3, v1

    .local v0, "entry":Lmf/org/apache/xerces/util/SymbolHash$Entry;
    :goto_1
    if-nez v0, :cond_2

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_2
    add-int v3, p2, v2

    iget-object v4, v0, Lmf/org/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    aput-object v4, p1, v3

    .line 131
    add-int/lit8 v2, v2, 0x1

    .line 129
    iget-object v0, v0, Lmf/org/apache/xerces/util/SymbolHash$Entry;->next:Lmf/org/apache/xerces/util/SymbolHash$Entry;

    goto :goto_1
.end method

.method public makeClone()Lmf/org/apache/xerces/util/SymbolHash;
    .locals 4

    .prologue
    .line 156
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    iget v2, p0, Lmf/org/apache/xerces/util/SymbolHash;->fTableSize:I

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    .line 157
    .local v1, "newTable":Lmf/org/apache/xerces/util/SymbolHash;
    iget v2, p0, Lmf/org/apache/xerces/util/SymbolHash;->fNum:I

    iput v2, v1, Lmf/org/apache/xerces/util/SymbolHash;->fNum:I

    .line 158
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/util/SymbolHash;->fTableSize:I

    if-lt v0, v2, :cond_0

    .line 162
    return-object v1

    .line 159
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/util/SymbolHash;->fBuckets:[Lmf/org/apache/xerces/util/SymbolHash$Entry;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 160
    iget-object v2, v1, Lmf/org/apache/xerces/util/SymbolHash;->fBuckets:[Lmf/org/apache/xerces/util/SymbolHash$Entry;

    iget-object v3, p0, Lmf/org/apache/xerces/util/SymbolHash;->fBuckets:[Lmf/org/apache/xerces/util/SymbolHash$Entry;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/SymbolHash$Entry;->makeClone()Lmf/org/apache/xerces/util/SymbolHash$Entry;

    move-result-object v3

    aput-object v3, v2, v0

    .line 158
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iget v3, p0, Lmf/org/apache/xerces/util/SymbolHash;->fTableSize:I

    rem-int v0, v2, v3

    .line 82
    .local v0, "bucket":I
    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/util/SymbolHash;->search(Ljava/lang/Object;I)Lmf/org/apache/xerces/util/SymbolHash$Entry;

    move-result-object v1

    .line 85
    .local v1, "entry":Lmf/org/apache/xerces/util/SymbolHash$Entry;
    if-eqz v1, :cond_0

    .line 86
    iput-object p2, v1, Lmf/org/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    .line 94
    :goto_0
    return-void

    .line 90
    :cond_0
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash$Entry;

    .end local v1    # "entry":Lmf/org/apache/xerces/util/SymbolHash$Entry;
    iget-object v2, p0, Lmf/org/apache/xerces/util/SymbolHash;->fBuckets:[Lmf/org/apache/xerces/util/SymbolHash$Entry;

    aget-object v2, v2, v0

    invoke-direct {v1, p1, p2, v2}, Lmf/org/apache/xerces/util/SymbolHash$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lmf/org/apache/xerces/util/SymbolHash$Entry;)V

    .line 91
    .restart local v1    # "entry":Lmf/org/apache/xerces/util/SymbolHash$Entry;
    iget-object v2, p0, Lmf/org/apache/xerces/util/SymbolHash;->fBuckets:[Lmf/org/apache/xerces/util/SymbolHash$Entry;

    aput-object v1, v2, v0

    .line 92
    iget v2, p0, Lmf/org/apache/xerces/util/SymbolHash;->fNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/util/SymbolHash;->fNum:I

    goto :goto_0
.end method

.method protected search(Ljava/lang/Object;I)Lmf/org/apache/xerces/util/SymbolHash$Entry;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "bucket"    # I

    .prologue
    .line 178
    iget-object v1, p0, Lmf/org/apache/xerces/util/SymbolHash;->fBuckets:[Lmf/org/apache/xerces/util/SymbolHash$Entry;

    aget-object v0, v1, p2

    .local v0, "entry":Lmf/org/apache/xerces/util/SymbolHash$Entry;
    :goto_0
    if-nez v0, :cond_1

    .line 182
    const/4 v0, 0x0

    .end local v0    # "entry":Lmf/org/apache/xerces/util/SymbolHash$Entry;
    :cond_0
    return-object v0

    .line 179
    .restart local v0    # "entry":Lmf/org/apache/xerces/util/SymbolHash$Entry;
    :cond_1
    iget-object v1, v0, Lmf/org/apache/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    iget-object v0, v0, Lmf/org/apache/xerces/util/SymbolHash$Entry;->next:Lmf/org/apache/xerces/util/SymbolHash$Entry;

    goto :goto_0
.end method
