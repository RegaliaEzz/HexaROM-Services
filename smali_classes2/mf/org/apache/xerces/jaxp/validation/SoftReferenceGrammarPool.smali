.class final Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;
.super Ljava/lang/Object;
.source "SoftReferenceGrammarPool.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;,
        Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;
    }
.end annotation


# static fields
.field protected static final TABLE_SIZE:I = 0xb

.field protected static final ZERO_LENGTH_GRAMMAR_ARRAY:[Lmf/org/apache/xerces/xni/grammars/Grammar;


# instance fields
.field protected fGrammarCount:I

.field protected fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

.field protected fPoolIsLocked:Z

.field protected final fReferenceQueue:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    new-array v0, v0, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    sput-object v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->ZERO_LENGTH_GRAMMAR_ARRAY:[Lmf/org/apache/xerces/xni/grammars/Grammar;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    .line 62
    iput v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    .line 65
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 73
    const/16 v0, 0xb

    new-array v0, v0, [Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    .line 74
    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fPoolIsLocked:Z

    .line 75
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    .line 62
    iput v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    .line 65
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 79
    new-array v0, p1, [Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    .line 80
    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fPoolIsLocked:Z

    .line 81
    return-void
.end method

.method private clean()V
    .locals 3

    .prologue
    .line 370
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    .line 371
    .local v1, "ref":Ljava/lang/ref/Reference;
    :goto_0
    if-nez v1, :cond_0

    .line 378
    return-void

    .line 372
    :cond_0
    check-cast v1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    .end local v1    # "ref":Ljava/lang/ref/Reference;
    iget-object v0, v1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->entry:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    .line 373
    .local v0, "entry":Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;
    if-eqz v0, :cond_1

    .line 374
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->removeEntry(Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    .line 376
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    .restart local v1    # "ref":Ljava/lang/ref/Reference;
    goto :goto_0
.end method

.method private removeEntry(Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 3
    .param p1, "entry"    # Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    .prologue
    .line 352
    iget-object v0, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->prev:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->prev:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iget-object v1, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iput-object v1, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    .line 358
    :goto_0
    iget-object v0, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iget-object v1, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->prev:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iput-object v1, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->prev:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    .line 361
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    .line 362
    iget-object v0, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    const/4 v1, 0x0

    iput-object v1, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->entry:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    .line 363
    iget-object v0, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/grammars/Grammar;

    return-object v0

    .line 356
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iget v1, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->bucket:I

    iget-object v2, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aput-object v2, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V
    .locals 2
    .param p1, "grammarType"    # Ljava/lang/String;
    .param p2, "grammars"    # [Lmf/org/apache/xerces/xni/grammars/Grammar;

    .prologue
    .line 120
    iget-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fPoolIsLocked:Z

    if-nez v1, :cond_0

    .line 121
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_1

    .line 125
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 122
    .restart local v0    # "i":I
    :cond_1
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->putGrammar(Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 274
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 280
    const/4 v1, 0x0

    iput v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    .line 281
    return-void

    .line 275
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->clear()V

    .line 277
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 274
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public containsGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z
    .locals 7
    .param p1, "desc"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .prologue
    .line 236
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    monitor-enter v5

    .line 237
    :try_start_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->clean()V

    .line 238
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v1

    .line 239
    .local v1, "hash":I
    const v4, 0x7fffffff

    and-int/2addr v4, v1

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    array-length v6, v6

    rem-int v2, v4, v6

    .line 240
    .local v2, "index":I
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aget-object v0, v4, v2

    .local v0, "entry":Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;
    :goto_0
    if-nez v0, :cond_0

    .line 250
    monitor-exit v5

    const/4 v4, 0x0

    :goto_1
    return v4

    .line 241
    :cond_0
    iget-object v4, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    invoke-virtual {v4}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/xni/grammars/Grammar;

    .line 243
    .local v3, "tempGrammar":Lmf/org/apache/xerces/xni/grammars/Grammar;
    if-nez v3, :cond_2

    .line 244
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->removeEntry(Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    .line 240
    :cond_1
    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    goto :goto_0

    .line 246
    :cond_2
    iget v4, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->hash:I

    if-ne v4, v1, :cond_1

    iget-object v4, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v4, p1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 247
    monitor-exit v5

    const/4 v4, 0x1

    goto :goto_1

    .line 236
    .end local v0    # "entry":Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "tempGrammar":Lmf/org/apache/xerces/xni/grammars/Grammar;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z
    .locals 6
    .param p1, "desc1"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    .param p2, "desc2"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .prologue
    const/4 v4, 0x0

    .line 293
    instance-of v5, p1, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;

    if-eqz v5, :cond_6

    .line 294
    instance-of v5, p2, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;

    if-nez v5, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v1, p1

    .line 297
    check-cast v1, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;

    .local v1, "sd1":Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;
    move-object v2, p2

    .line 298
    check-cast v2, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;

    .line 299
    .local v2, "sd2":Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;
    invoke-interface {v1}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "targetNamespace":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 301
    invoke-interface {v2}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 313
    :cond_2
    invoke-interface {v1}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "expandedSystemId":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 315
    invoke-interface {v2}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 322
    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    .line 305
    .end local v0    # "expandedSystemId":Ljava/lang/String;
    :cond_4
    invoke-interface {v2}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 319
    .restart local v0    # "expandedSystemId":Ljava/lang/String;
    :cond_5
    invoke-interface {v2}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 324
    .end local v0    # "expandedSystemId":Ljava/lang/String;
    .end local v1    # "sd1":Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;
    .end local v2    # "sd2":Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;
    .end local v3    # "targetNamespace":Ljava/lang/String;
    :cond_6
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method public getGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 7
    .param p1, "desc"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .prologue
    .line 186
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    monitor-enter v5

    .line 187
    :try_start_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->clean()V

    .line 188
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v1

    .line 189
    .local v1, "hash":I
    const v4, 0x7fffffff

    and-int/2addr v4, v1

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    array-length v6, v6

    rem-int v2, v4, v6

    .line 190
    .local v2, "index":I
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aget-object v0, v4, v2

    .local v0, "entry":Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;
    :goto_0
    if-nez v0, :cond_0

    .line 200
    monitor-exit v5

    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 191
    :cond_0
    iget-object v4, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    invoke-virtual {v4}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/xni/grammars/Grammar;

    .line 193
    .local v3, "tempGrammar":Lmf/org/apache/xerces/xni/grammars/Grammar;
    if-nez v3, :cond_2

    .line 194
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->removeEntry(Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    .line 190
    :cond_1
    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    goto :goto_0

    .line 196
    :cond_2
    iget v4, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->hash:I

    if-ne v4, v1, :cond_1

    iget-object v4, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v4, p1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 197
    monitor-exit v5

    goto :goto_1

    .line 186
    .end local v0    # "entry":Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "tempGrammar":Lmf/org/apache/xerces/xni/grammars/Grammar;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I
    .locals 6
    .param p1, "desc"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .prologue
    const/4 v4, 0x0

    .line 334
    instance-of v5, p1, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;

    if-eqz v5, :cond_2

    move-object v2, p1

    .line 335
    check-cast v2, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;

    .line 336
    .local v2, "sd":Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;
    invoke-interface {v2}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, "targetNamespace":Ljava/lang/String;
    invoke-interface {v2}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "expandedSystemId":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 339
    .local v1, "hash":I
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    :cond_0
    xor-int/2addr v1, v4

    .line 342
    .end local v0    # "expandedSystemId":Ljava/lang/String;
    .end local v1    # "hash":I
    .end local v2    # "sd":Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;
    .end local v3    # "targetNamespace":Ljava/lang/String;
    :goto_1
    return v1

    .restart local v0    # "expandedSystemId":Ljava/lang/String;
    .restart local v2    # "sd":Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;
    .restart local v3    # "targetNamespace":Ljava/lang/String;
    :cond_1
    move v1, v4

    .line 338
    goto :goto_0

    .line 342
    .end local v0    # "expandedSystemId":Ljava/lang/String;
    .end local v2    # "sd":Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;
    .end local v3    # "targetNamespace":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public lockPool()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fPoolIsLocked:Z

    .line 259
    return-void
.end method

.method public putGrammar(Lmf/org/apache/xerces/xni/grammars/Grammar;)V
    .locals 8
    .param p1, "grammar"    # Lmf/org/apache/xerces/xni/grammars/Grammar;

    .prologue
    .line 156
    iget-boolean v4, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fPoolIsLocked:Z

    if-nez v4, :cond_0

    .line 157
    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    monitor-enter v7

    .line 158
    :try_start_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->clean()V

    .line 159
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/Grammar;->getGrammarDescription()Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-result-object v3

    .line 160
    .local v3, "desc":Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v1

    .line 161
    .local v1, "hash":I
    const v4, 0x7fffffff

    and-int/2addr v4, v1

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    array-length v5, v5

    rem-int v2, v4, v5

    .line 162
    .local v2, "index":I
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aget-object v0, v4, v2

    .local v0, "entry":Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;
    :goto_0
    if-nez v0, :cond_1

    .line 171
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    .end local v0    # "entry":Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aget-object v5, v4, v2

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;-><init>(IILmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/Grammar;Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;Ljava/lang/ref/ReferenceQueue;)V

    .line 172
    .restart local v0    # "entry":Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aput-object v0, v4, v2

    .line 173
    iget v4, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    .line 157
    monitor-exit v7

    .line 176
    .end local v0    # "entry":Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "desc":Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    :cond_0
    :goto_1
    return-void

    .line 163
    .restart local v0    # "entry":Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;
    .restart local v1    # "hash":I
    .restart local v2    # "index":I
    .restart local v3    # "desc":Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    :cond_1
    iget v4, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->hash:I

    if-ne v4, v1, :cond_3

    iget-object v4, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v4, v3}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 164
    iget-object v4, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    invoke-virtual {v4}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p1, :cond_2

    .line 165
    new-instance v4, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v4, v0, p1, v5}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;-><init>(Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;Lmf/org/apache/xerces/xni/grammars/Grammar;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v4, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    .line 167
    :cond_2
    monitor-exit v7

    goto :goto_1

    .line 157
    .end local v0    # "entry":Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "desc":Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 162
    .restart local v0    # "entry":Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;
    .restart local v1    # "hash":I
    .restart local v2    # "index":I
    .restart local v3    # "desc":Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    :cond_3
    :try_start_1
    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 6
    .param p1, "desc"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .prologue
    .line 214
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    monitor-enter v4

    .line 215
    :try_start_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->clean()V

    .line 216
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v1

    .line 217
    .local v1, "hash":I
    const v3, 0x7fffffff

    and-int/2addr v3, v1

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    array-length v5, v5

    rem-int v2, v3, v5

    .line 218
    .local v2, "index":I
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aget-object v0, v3, v2

    .local v0, "entry":Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;
    :goto_0
    if-nez v0, :cond_0

    .line 223
    monitor-exit v4

    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 219
    :cond_0
    iget v3, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->hash:I

    if-ne v3, v1, :cond_1

    iget-object v3, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v3, p1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->removeEntry(Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v3

    monitor-exit v4

    goto :goto_1

    .line 214
    .end local v0    # "entry":Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;
    .end local v1    # "hash":I
    .end local v2    # "index":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 218
    .restart local v0    # "entry":Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;
    .restart local v1    # "hash":I
    .restart local v2    # "index":I
    :cond_1
    :try_start_1
    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 1
    .param p1, "desc"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->getGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    return-object v0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 2
    .param p1, "grammarType"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    monitor-enter v1

    .line 99
    :try_start_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->clean()V

    .line 104
    sget-object v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->ZERO_LENGTH_GRAMMAR_ARRAY:[Lmf/org/apache/xerces/xni/grammars/Grammar;

    monitor-exit v1

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unlockPool()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fPoolIsLocked:Z

    .line 267
    return-void
.end method
