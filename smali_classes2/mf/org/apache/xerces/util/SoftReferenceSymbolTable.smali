.class public Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;
.super Lmf/org/apache/xerces/util/SymbolTable;
.source "SoftReferenceSymbolTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;,
        Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;
    }
.end annotation


# instance fields
.field protected fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

.field private final fReferenceQueue:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 109
    const/16 v0, 0x65

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;-><init>(IF)V

    .line 110
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 101
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;-><init>(IF)V

    .line 102
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 66
    invoke-direct {p0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    .line 71
    if-gez p1, :cond_0

    .line 72
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

    .line 75
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_1

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
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

    .line 79
    :cond_2
    if-nez p1, :cond_3

    .line 80
    const/4 p1, 0x1

    .line 83
    :cond_3
    iput p2, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fLoadFactor:F

    .line 84
    iput p1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    .line 85
    iget v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    new-array v0, v0, [Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iput-object v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    .line 86
    iget v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fThreshold:I

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    .line 89
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 90
    return-void
.end method

.method private clean()V
    .locals 2

    .prologue
    .line 314
    iget-object v1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    .line 315
    .local v0, "entry":Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;
    :goto_0
    if-nez v0, :cond_0

    .line 319
    return-void

    .line 316
    :cond_0
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->removeEntry(Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;)V

    .line 317
    iget-object v1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .end local v0    # "entry":Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;
    check-cast v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    .restart local v0    # "entry":Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;
    goto :goto_0
.end method

.method private removeEntry(Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;)V
    .locals 3
    .param p1, "entry"    # Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    .prologue
    .line 298
    iget-object v0, p1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iget-object v1, p1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iput-object v1, v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    .line 301
    :cond_0
    iget-object v0, p1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iget-object v1, p1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iput-object v1, v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    .line 307
    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    .line 308
    return-void

    .line 305
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iget v1, p1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->bucket:I

    iget-object v2, p1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aput-object v2, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "symbol"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-direct {p0}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->clean()V

    .line 127
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->hash(Ljava/lang/String;)I

    move-result v3

    iget v4, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    rem-int v0, v3, v4

    .line 128
    .local v0, "bucket":I
    iget-object v3, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aget-object v2, v3, v0

    .local v2, "entry":Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;
    :goto_0
    if-nez v2, :cond_1

    .line 138
    iget v3, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    iget v4, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fThreshold:I

    if-lt v3, v4, :cond_0

    .line 140
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->rehash()V

    .line 141
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->hash(Ljava/lang/String;)I

    move-result v3

    iget v4, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    rem-int v0, v3, v4

    .line 145
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 146
    new-instance v2, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    .end local v2    # "entry":Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;
    iget-object v3, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aget-object v3, v3, v0

    iget-object v4, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p1, v3, v0, v4}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;ILjava/lang/ref/ReferenceQueue;)V

    .line 147
    .restart local v2    # "entry":Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;
    iget-object v3, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aput-object v2, v3, v0

    .line 148
    iget v3, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    move-object v3, p1

    .line 149
    :goto_1
    return-object v3

    .line 129
    :cond_1
    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    .line 130
    .local v1, "data":Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;
    if-nez v1, :cond_3

    .line 128
    :cond_2
    iget-object v2, v2, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    goto :goto_0

    .line 133
    :cond_3
    iget-object v3, v1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->symbol:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 134
    iget-object v3, v1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->symbol:Ljava/lang/String;

    goto :goto_1
.end method

.method public addSymbol([CII)Ljava/lang/String;
    .locals 10
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 163
    invoke-direct {p0}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->clean()V

    .line 165
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->hash([CII)I

    move-result v2

    iget v3, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    rem-int v6, v2, v3

    .line 166
    .local v6, "bucket":I
    iget-object v2, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aget-object v0, v2, v6

    .local v0, "entry":Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;
    :goto_0
    if-nez v0, :cond_1

    .line 181
    iget v2, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    iget v3, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fThreshold:I

    if-lt v2, v3, :cond_0

    .line 183
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->rehash()V

    .line 184
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->hash([CII)I

    move-result v2

    iget v3, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    rem-int v6, v2, v3

    .line 188
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "symbol":Ljava/lang/String;
    new-instance v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    .end local v0    # "entry":Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;
    iget-object v2, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aget-object v5, v2, v6

    iget-object v7, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v7}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;-><init>(Ljava/lang/String;[CIILmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;ILjava/lang/ref/ReferenceQueue;)V

    .line 190
    .restart local v0    # "entry":Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;
    iget-object v2, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aput-object v0, v2, v6

    .line 191
    iget v2, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    .line 192
    .end local v1    # "symbol":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 167
    :cond_1
    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    .line 168
    .local v8, "data":Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;
    if-nez v8, :cond_3

    .line 166
    :cond_2
    iget-object v0, v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    goto :goto_0

    .line 171
    :cond_3
    iget-object v2, v8, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    array-length v2, v2

    if-ne p3, v2, :cond_2

    .line 172
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-lt v9, p3, :cond_4

    .line 177
    iget-object v1, v8, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->symbol:Ljava/lang/String;

    goto :goto_1

    .line 173
    :cond_4
    add-int v2, p2, v9

    aget-char v2, p1, v2

    iget-object v3, v8, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    aget-char v3, v3, v9

    if-ne v2, v3, :cond_2

    .line 172
    add-int/lit8 v9, v9, 0x1

    goto :goto_2
.end method

.method public containsSymbol(Ljava/lang/String;)Z
    .locals 7
    .param p1, "symbol"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->hash(Ljava/lang/String;)I

    move-result v5

    iget v6, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    rem-int v0, v5, v6

    .line 246
    .local v0, "bucket":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 247
    .local v4, "length":I
    iget-object v5, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aget-object v2, v5, v0

    .local v2, "entry":Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;
    :goto_0
    if-nez v2, :cond_0

    .line 262
    const/4 v5, 0x0

    :goto_1
    return v5

    .line 248
    :cond_0
    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    .line 249
    .local v1, "data":Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;
    if-nez v1, :cond_2

    .line 247
    :cond_1
    iget-object v2, v2, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    goto :goto_0

    .line 252
    :cond_2
    iget-object v5, v1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    array-length v5, v5

    if-ne v4, v5, :cond_1

    .line 253
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-lt v3, v4, :cond_3

    .line 258
    const/4 v5, 0x1

    goto :goto_1

    .line 254
    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-object v6, v1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    aget-char v6, v6, v3

    if-ne v5, v6, :cond_1

    .line 253
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public containsSymbol([CII)Z
    .locals 6
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 277
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->hash([CII)I

    move-result v4

    iget v5, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    rem-int v0, v4, v5

    .line 278
    .local v0, "bucket":I
    iget-object v4, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aget-object v2, v4, v0

    .local v2, "entry":Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;
    :goto_0
    if-nez v2, :cond_0

    .line 293
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 279
    :cond_0
    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    .line 280
    .local v1, "data":Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;
    if-nez v1, :cond_2

    .line 278
    :cond_1
    iget-object v2, v2, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    goto :goto_0

    .line 283
    :cond_2
    iget-object v4, v1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    array-length v4, v4

    if-ne p3, v4, :cond_1

    .line 284
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-lt v3, p3, :cond_3

    .line 289
    const/4 v4, 0x1

    goto :goto_1

    .line 285
    :cond_3
    add-int v4, p2, v3

    aget-char v4, p1, v4

    iget-object v5, v1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    aget-char v5, v5, v3

    if-ne v4, v5, :cond_1

    .line 284
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method protected rehash()V
    .locals 13

    .prologue
    .line 204
    iget-object v10, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    array-length v8, v10

    .line 205
    .local v8, "oldCapacity":I
    iget-object v9, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    .line 207
    .local v9, "oldTable":[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;
    mul-int/lit8 v10, v8, 0x2

    add-int/lit8 v5, v10, 0x1

    .line 208
    .local v5, "newCapacity":I
    new-array v6, v5, [Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    .line 210
    .local v6, "newTable":[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;
    int-to-float v10, v5

    iget v11, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fLoadFactor:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fThreshold:I

    .line 211
    iput-object v6, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    .line 212
    iget-object v10, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    array-length v10, v10

    iput v10, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    .line 214
    move v2, v8

    .local v2, "i":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    if-gtz v3, :cond_0

    .line 234
    return-void

    .line 215
    :cond_0
    aget-object v7, v9, v2

    .local v7, "old":Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;
    :goto_1
    if-nez v7, :cond_1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 216
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_1
    move-object v1, v7

    .line 217
    .local v1, "e":Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;
    iget-object v7, v7, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    .line 219
    invoke-virtual {v1}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    .line 220
    .local v0, "data":Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;
    if-eqz v0, :cond_3

    .line 221
    iget-object v10, v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    const/4 v11, 0x0

    iget-object v12, v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    array-length v12, v12

    invoke-virtual {p0, v10, v11, v12}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->hash([CII)I

    move-result v10

    rem-int v4, v10, v5

    .line 222
    .local v4, "index":I
    aget-object v10, v6, v4

    if-eqz v10, :cond_2

    .line 223
    aget-object v10, v6, v4

    iput-object v1, v10, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    .line 225
    :cond_2
    aget-object v10, v6, v4

    iput-object v10, v1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    .line 226
    const/4 v10, 0x0

    iput-object v10, v1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    .line 227
    aput-object v1, v6, v4

    goto :goto_1

    .line 230
    .end local v4    # "index":I
    :cond_3
    iget v10, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    goto :goto_1
.end method
