.class public Lmf/org/apache/xerces/util/SymbolTable;
.super Ljava/lang/Object;
.source "SymbolTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/util/SymbolTable$Entry;
    }
.end annotation


# static fields
.field protected static final TABLE_SIZE:I = 0x65


# instance fields
.field protected fBuckets:[Lmf/org/apache/xerces/util/SymbolTable$Entry;

.field protected transient fCount:I

.field protected fLoadFactor:F

.field protected fTableSize:I

.field protected fThreshold:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 159
    const/16 v0, 0x65

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;-><init>(IF)V

    .line 160
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 151
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>(IF)V

    .line 152
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/util/SymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SymbolTable$Entry;

    .line 123
    if-gez p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal Capacity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_1

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal Load: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_2
    if-nez p1, :cond_3

    .line 132
    const/4 p1, 0x1

    .line 135
    :cond_3
    iput p2, p0, Lmf/org/apache/xerces/util/SymbolTable;->fLoadFactor:F

    .line 136
    iput p1, p0, Lmf/org/apache/xerces/util/SymbolTable;->fTableSize:I

    .line 137
    iget v0, p0, Lmf/org/apache/xerces/util/SymbolTable;->fTableSize:I

    new-array v0, v0, [Lmf/org/apache/xerces/util/SymbolTable$Entry;

    iput-object v0, p0, Lmf/org/apache/xerces/util/SymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SymbolTable$Entry;

    .line 138
    iget v0, p0, Lmf/org/apache/xerces/util/SymbolTable;->fTableSize:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lmf/org/apache/xerces/util/SymbolTable;->fThreshold:I

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/util/SymbolTable;->fCount:I

    .line 140
    return-void
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "symbol"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/SymbolTable;->hash(Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lmf/org/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int v0, v2, v3

    .line 178
    .local v0, "bucket":I
    iget-object v2, p0, Lmf/org/apache/xerces/util/SymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SymbolTable$Entry;

    aget-object v1, v2, v0

    .local v1, "entry":Lmf/org/apache/xerces/util/SymbolTable$Entry;
    :goto_0
    if-nez v1, :cond_1

    .line 184
    iget v2, p0, Lmf/org/apache/xerces/util/SymbolTable;->fCount:I

    iget v3, p0, Lmf/org/apache/xerces/util/SymbolTable;->fThreshold:I

    if-lt v2, v3, :cond_0

    .line 186
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/SymbolTable;->rehash()V

    .line 187
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/SymbolTable;->hash(Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lmf/org/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int v0, v2, v3

    .line 191
    :cond_0
    new-instance v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;

    .end local v1    # "entry":Lmf/org/apache/xerces/util/SymbolTable$Entry;
    iget-object v2, p0, Lmf/org/apache/xerces/util/SymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SymbolTable$Entry;

    aget-object v2, v2, v0

    invoke-direct {v1, p1, v2}, Lmf/org/apache/xerces/util/SymbolTable$Entry;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolTable$Entry;)V

    .line 192
    .restart local v1    # "entry":Lmf/org/apache/xerces/util/SymbolTable$Entry;
    iget-object v2, p0, Lmf/org/apache/xerces/util/SymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SymbolTable$Entry;

    aput-object v1, v2, v0

    .line 193
    iget v2, p0, Lmf/org/apache/xerces/util/SymbolTable;->fCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/util/SymbolTable;->fCount:I

    .line 194
    iget-object v2, v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    :goto_1
    return-object v2

    .line 179
    :cond_1
    iget-object v2, v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    iget-object v2, v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    goto :goto_1

    .line 178
    :cond_2
    iget-object v1, v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;->next:Lmf/org/apache/xerces/util/SymbolTable$Entry;

    goto :goto_0
.end method

.method public addSymbol([CII)Ljava/lang/String;
    .locals 5
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 211
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/util/SymbolTable;->hash([CII)I

    move-result v3

    iget v4, p0, Lmf/org/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int v0, v3, v4

    .line 212
    .local v0, "bucket":I
    iget-object v3, p0, Lmf/org/apache/xerces/util/SymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SymbolTable$Entry;

    aget-object v1, v3, v0

    .local v1, "entry":Lmf/org/apache/xerces/util/SymbolTable$Entry;
    :goto_0
    if-nez v1, :cond_1

    .line 223
    iget v3, p0, Lmf/org/apache/xerces/util/SymbolTable;->fCount:I

    iget v4, p0, Lmf/org/apache/xerces/util/SymbolTable;->fThreshold:I

    if-lt v3, v4, :cond_0

    .line 225
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/SymbolTable;->rehash()V

    .line 226
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/util/SymbolTable;->hash([CII)I

    move-result v3

    iget v4, p0, Lmf/org/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int v0, v3, v4

    .line 230
    :cond_0
    new-instance v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;

    .end local v1    # "entry":Lmf/org/apache/xerces/util/SymbolTable$Entry;
    iget-object v3, p0, Lmf/org/apache/xerces/util/SymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SymbolTable$Entry;

    aget-object v3, v3, v0

    invoke-direct {v1, p1, p2, p3, v3}, Lmf/org/apache/xerces/util/SymbolTable$Entry;-><init>([CIILmf/org/apache/xerces/util/SymbolTable$Entry;)V

    .line 231
    .restart local v1    # "entry":Lmf/org/apache/xerces/util/SymbolTable$Entry;
    iget-object v3, p0, Lmf/org/apache/xerces/util/SymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SymbolTable$Entry;

    aput-object v1, v3, v0

    .line 232
    iget v3, p0, Lmf/org/apache/xerces/util/SymbolTable;->fCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/util/SymbolTable;->fCount:I

    .line 233
    iget-object v3, v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    :goto_1
    return-object v3

    .line 213
    :cond_1
    iget-object v3, v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;->characters:[C

    array-length v3, v3

    if-ne p3, v3, :cond_3

    .line 214
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-lt v2, p3, :cond_2

    .line 219
    iget-object v3, v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    goto :goto_1

    .line 215
    :cond_2
    add-int v3, p2, v2

    aget-char v3, p1, v3

    iget-object v4, v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;->characters:[C

    aget-char v4, v4, v2

    if-eq v3, v4, :cond_4

    .line 212
    .end local v2    # "i":I
    :cond_3
    iget-object v1, v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;->next:Lmf/org/apache/xerces/util/SymbolTable$Entry;

    goto :goto_0

    .line 214
    .restart local v2    # "i":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public containsSymbol(Ljava/lang/String;)Z
    .locals 6
    .param p1, "symbol"    # Ljava/lang/String;

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/SymbolTable;->hash(Ljava/lang/String;)I

    move-result v4

    iget v5, p0, Lmf/org/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int v0, v4, v5

    .line 311
    .local v0, "bucket":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 312
    .local v3, "length":I
    iget-object v4, p0, Lmf/org/apache/xerces/util/SymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SymbolTable$Entry;

    aget-object v1, v4, v0

    .local v1, "entry":Lmf/org/apache/xerces/util/SymbolTable$Entry;
    :goto_0
    if-nez v1, :cond_0

    .line 323
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 313
    :cond_0
    iget-object v4, v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;->characters:[C

    array-length v4, v4

    if-ne v3, v4, :cond_2

    .line 314
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-lt v2, v3, :cond_1

    .line 319
    const/4 v4, 0x1

    goto :goto_1

    .line 315
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;->characters:[C

    aget-char v5, v5, v2

    if-eq v4, v5, :cond_3

    .line 312
    .end local v2    # "i":I
    :cond_2
    iget-object v1, v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;->next:Lmf/org/apache/xerces/util/SymbolTable$Entry;

    goto :goto_0

    .line 314
    .restart local v2    # "i":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public containsSymbol([CII)Z
    .locals 5
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 338
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/util/SymbolTable;->hash([CII)I

    move-result v3

    iget v4, p0, Lmf/org/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int v0, v3, v4

    .line 339
    .local v0, "bucket":I
    iget-object v3, p0, Lmf/org/apache/xerces/util/SymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SymbolTable$Entry;

    aget-object v1, v3, v0

    .local v1, "entry":Lmf/org/apache/xerces/util/SymbolTable$Entry;
    :goto_0
    if-nez v1, :cond_0

    .line 350
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 340
    :cond_0
    iget-object v3, v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;->characters:[C

    array-length v3, v3

    if-ne p3, v3, :cond_2

    .line 341
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-lt v2, p3, :cond_1

    .line 346
    const/4 v3, 0x1

    goto :goto_1

    .line 342
    :cond_1
    add-int v3, p2, v2

    aget-char v3, p1, v3

    iget-object v4, v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;->characters:[C

    aget-char v4, v4, v2

    if-eq v3, v4, :cond_3

    .line 339
    .end local v2    # "i":I
    :cond_2
    iget-object v1, v1, Lmf/org/apache/xerces/util/SymbolTable$Entry;->next:Lmf/org/apache/xerces/util/SymbolTable$Entry;

    goto :goto_0

    .line 341
    .restart local v2    # "i":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public hash(Ljava/lang/String;)I
    .locals 2
    .param p1, "symbol"    # Ljava/lang/String;

    .prologue
    .line 246
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public hash([CII)I
    .locals 4
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, "code":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, p3, :cond_0

    .line 266
    const v2, 0x7fffffff

    and-int/2addr v2, v0

    return v2

    .line 264
    :cond_0
    mul-int/lit8 v2, v0, 0x1f

    add-int v3, p2, v1

    aget-char v3, p1, v3

    add-int v0, v2, v3

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected rehash()V
    .locals 12

    .prologue
    .line 279
    iget-object v9, p0, Lmf/org/apache/xerces/util/SymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SymbolTable$Entry;

    array-length v7, v9

    .line 280
    .local v7, "oldCapacity":I
    iget-object v8, p0, Lmf/org/apache/xerces/util/SymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SymbolTable$Entry;

    .line 282
    .local v8, "oldTable":[Lmf/org/apache/xerces/util/SymbolTable$Entry;
    mul-int/lit8 v9, v7, 0x2

    add-int/lit8 v4, v9, 0x1

    .line 283
    .local v4, "newCapacity":I
    new-array v5, v4, [Lmf/org/apache/xerces/util/SymbolTable$Entry;

    .line 285
    .local v5, "newTable":[Lmf/org/apache/xerces/util/SymbolTable$Entry;
    int-to-float v9, v4

    iget v10, p0, Lmf/org/apache/xerces/util/SymbolTable;->fLoadFactor:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lmf/org/apache/xerces/util/SymbolTable;->fThreshold:I

    .line 286
    iput-object v5, p0, Lmf/org/apache/xerces/util/SymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SymbolTable$Entry;

    .line 287
    iget-object v9, p0, Lmf/org/apache/xerces/util/SymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SymbolTable$Entry;

    array-length v9, v9

    iput v9, p0, Lmf/org/apache/xerces/util/SymbolTable;->fTableSize:I

    .line 289
    move v1, v7

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-gtz v2, :cond_0

    .line 299
    return-void

    .line 290
    :cond_0
    aget-object v6, v8, v1

    .local v6, "old":Lmf/org/apache/xerces/util/SymbolTable$Entry;
    :goto_1
    if-nez v6, :cond_1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 291
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_1
    move-object v0, v6

    .line 292
    .local v0, "e":Lmf/org/apache/xerces/util/SymbolTable$Entry;
    iget-object v6, v6, Lmf/org/apache/xerces/util/SymbolTable$Entry;->next:Lmf/org/apache/xerces/util/SymbolTable$Entry;

    .line 294
    iget-object v9, v0, Lmf/org/apache/xerces/util/SymbolTable$Entry;->characters:[C

    const/4 v10, 0x0

    iget-object v11, v0, Lmf/org/apache/xerces/util/SymbolTable$Entry;->characters:[C

    array-length v11, v11

    invoke-virtual {p0, v9, v10, v11}, Lmf/org/apache/xerces/util/SymbolTable;->hash([CII)I

    move-result v9

    rem-int v3, v9, v4

    .line 295
    .local v3, "index":I
    aget-object v9, v5, v3

    iput-object v9, v0, Lmf/org/apache/xerces/util/SymbolTable$Entry;->next:Lmf/org/apache/xerces/util/SymbolTable$Entry;

    .line 296
    aput-object v0, v5, v3

    goto :goto_1
.end method
