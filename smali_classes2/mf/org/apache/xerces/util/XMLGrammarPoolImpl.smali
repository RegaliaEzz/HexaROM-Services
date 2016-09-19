.class public Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;
.super Ljava/lang/Object;
.source "XMLGrammarPoolImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field protected static final TABLE_SIZE:I = 0xb


# instance fields
.field protected fGrammarCount:I

.field protected fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

.field protected fPoolIsLocked:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    .line 60
    iput v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    .line 70
    const/16 v0, 0xb

    new-array v0, v0, [Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    .line 71
    iput-boolean v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    .line 72
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    .line 60
    iput v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    .line 76
    new-array v0, p1, [Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    .line 77
    iput-boolean v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    .line 78
    return-void
.end method


# virtual methods
.method public cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V
    .locals 2
    .param p1, "grammarType"    # Ljava/lang/String;
    .param p2, "grammars"    # [Lmf/org/apache/xerces/xni/grammars/Grammar;

    .prologue
    .line 124
    iget-boolean v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    if-nez v1, :cond_0

    .line 125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_1

    .line 134
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 131
    .restart local v0    # "i":I
    :cond_1
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->putGrammar(Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 280
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 286
    const/4 v1, 0x0

    iput v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    .line 287
    return-void

    .line 281
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 282
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->clear()V

    .line 283
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 280
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public containsGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z
    .locals 6
    .param p1, "desc"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .prologue
    .line 248
    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    monitor-enter v4

    .line 249
    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v1

    .line 250
    .local v1, "hash":I
    const v3, 0x7fffffff

    and-int/2addr v3, v1

    iget-object v5, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v5, v5

    rem-int v2, v3, v5

    .line 251
    .local v2, "index":I
    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v0, v3, v2

    .local v0, "entry":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    :goto_0
    if-nez v0, :cond_0

    .line 256
    monitor-exit v4

    const/4 v3, 0x0

    :goto_1
    return v3

    .line 252
    :cond_0
    iget v3, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->hash:I

    if-ne v3, v1, :cond_1

    iget-object v3, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v3, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 253
    monitor-exit v4

    const/4 v3, 0x1

    goto :goto_1

    .line 251
    :cond_1
    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    goto :goto_0

    .line 248
    .end local v0    # "entry":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    .end local v1    # "hash":I
    .end local v2    # "index":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z
    .locals 1
    .param p1, "desc1"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    .param p2, "desc2"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .prologue
    .line 299
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 6
    .param p1, "desc"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .prologue
    .line 196
    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    monitor-enter v4

    .line 197
    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v1

    .line 198
    .local v1, "hash":I
    const v3, 0x7fffffff

    and-int/2addr v3, v1

    iget-object v5, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v5, v5

    rem-int v2, v3, v5

    .line 199
    .local v2, "index":I
    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v0, v3, v2

    .local v0, "entry":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    :goto_0
    if-nez v0, :cond_0

    .line 204
    monitor-exit v4

    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 200
    :cond_0
    iget v3, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->hash:I

    if-ne v3, v1, :cond_1

    iget-object v3, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v3, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    iget-object v3, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    monitor-exit v4

    goto :goto_1

    .line 196
    .end local v0    # "entry":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    .end local v1    # "hash":I
    .end local v2    # "index":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 199
    .restart local v0    # "entry":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    .restart local v1    # "hash":I
    .restart local v2    # "index":I
    :cond_1
    :try_start_1
    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I
    .locals 1
    .param p1, "desc"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .prologue
    .line 309
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public lockPool()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    .line 265
    return-void
.end method

.method public putGrammar(Lmf/org/apache/xerces/xni/grammars/Grammar;)V
    .locals 7
    .param p1, "grammar"    # Lmf/org/apache/xerces/xni/grammars/Grammar;

    .prologue
    .line 169
    iget-boolean v4, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    if-nez v4, :cond_0

    .line 170
    iget-object v5, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    monitor-enter v5

    .line 171
    :try_start_0
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/Grammar;->getGrammarDescription()Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-result-object v0

    .line 172
    .local v0, "desc":Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v2

    .line 173
    .local v2, "hash":I
    const v4, 0x7fffffff

    and-int/2addr v4, v2

    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v6, v6

    rem-int v3, v4, v6

    .line 174
    .local v3, "index":I
    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v1, v4, v3

    .local v1, "entry":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    :goto_0
    if-nez v1, :cond_1

    .line 181
    new-instance v1, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    .end local v1    # "entry":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v4, v4, v3

    invoke-direct {v1, v2, v0, p1, v4}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;-><init>(ILmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/Grammar;Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;)V

    .line 182
    .restart local v1    # "entry":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aput-object v1, v4, v3

    .line 183
    iget v4, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    .line 170
    monitor-exit v5

    .line 186
    .end local v0    # "desc":Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    .end local v1    # "entry":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    .end local v2    # "hash":I
    .end local v3    # "index":I
    :cond_0
    :goto_1
    return-void

    .line 175
    .restart local v0    # "desc":Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    .restart local v1    # "entry":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    .restart local v2    # "hash":I
    .restart local v3    # "index":I
    :cond_1
    iget v4, v1, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->hash:I

    if-ne v4, v2, :cond_2

    iget-object v4, v1, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v4, v0}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 176
    iput-object p1, v1, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    .line 177
    monitor-exit v5

    goto :goto_1

    .line 170
    .end local v0    # "desc":Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    .end local v1    # "entry":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    .end local v2    # "hash":I
    .end local v3    # "index":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 174
    .restart local v0    # "desc":Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    .restart local v1    # "entry":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    .restart local v2    # "hash":I
    .restart local v3    # "index":I
    :cond_2
    :try_start_1
    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 8
    .param p1, "desc"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .prologue
    const/4 v4, 0x0

    .line 218
    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    monitor-enter v6

    .line 219
    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v1

    .line 220
    .local v1, "hash":I
    const v5, 0x7fffffff

    and-int/2addr v5, v1

    iget-object v7, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v7, v7

    rem-int v2, v5, v7

    .line 221
    .local v2, "index":I
    iget-object v5, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v0, v5, v2

    .local v0, "entry":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    const/4 v3, 0x0

    .local v3, "prev":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    :goto_0
    if-nez v0, :cond_0

    .line 235
    monitor-exit v6

    :goto_1
    return-object v4

    .line 222
    :cond_0
    iget v5, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->hash:I

    if-ne v5, v1, :cond_2

    iget-object v5, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v5, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 223
    if-eqz v3, :cond_1

    .line 224
    iget-object v5, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iput-object v5, v3, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    .line 229
    :goto_2
    iget-object v4, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    .line 230
    .local v4, "tempGrammar":Lmf/org/apache/xerces/xni/grammars/Grammar;
    const/4 v5, 0x0

    iput-object v5, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    .line 231
    iget v5, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    .line 232
    monitor-exit v6

    goto :goto_1

    .line 218
    .end local v0    # "entry":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "prev":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    .end local v4    # "tempGrammar":Lmf/org/apache/xerces/xni/grammars/Grammar;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 227
    .restart local v0    # "entry":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    .restart local v1    # "hash":I
    .restart local v2    # "index":I
    .restart local v3    # "prev":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iget-object v7, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aput-object v7, v5, v2

    goto :goto_2

    .line 221
    :cond_2
    move-object v3, v0

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 1
    .param p1, "desc"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->getGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    return-object v0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 10
    .param p1, "grammarType"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v8, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    monitor-enter v8

    .line 96
    :try_start_0
    iget-object v7, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v1, v7

    .line 97
    .local v1, "grammarSize":I
    iget v7, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    new-array v5, v7, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    .line 98
    .local v5, "tempGrammars":[Lmf/org/apache/xerces/xni/grammars/Grammar;
    const/4 v3, 0x0

    .line 99
    .local v3, "pos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 106
    new-array v6, v3, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    .line 107
    .local v6, "toReturn":[Lmf/org/apache/xerces/xni/grammars/Grammar;
    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v7, v6, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    monitor-exit v8

    return-object v6

    .line 100
    .end local v6    # "toReturn":[Lmf/org/apache/xerces/xni/grammars/Grammar;
    :cond_0
    iget-object v7, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v0, v7, v2

    .local v0, "e":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    move v4, v3

    .end local v3    # "pos":I
    .local v4, "pos":I
    :goto_1
    if-nez v0, :cond_1

    .line 99
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    goto :goto_0

    .line 101
    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    :cond_1
    iget-object v7, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-interface {v7}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;->getGrammarType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 102
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    iget-object v7, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    aput-object v7, v5, v4

    .line 100
    :goto_2
    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    move v4, v3

    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    goto :goto_1

    .line 95
    .end local v0    # "e":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    .end local v1    # "grammarSize":I
    .end local v2    # "i":I
    .end local v4    # "pos":I
    .end local v5    # "tempGrammars":[Lmf/org/apache/xerces/xni/grammars/Grammar;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v0    # "e":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    .restart local v1    # "grammarSize":I
    .restart local v2    # "i":I
    .restart local v4    # "pos":I
    .restart local v5    # "tempGrammars":[Lmf/org/apache/xerces/xni/grammars/Grammar;
    :cond_2
    move v3, v4

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    goto :goto_2
.end method

.method public unlockPool()V
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    .line 273
    return-void
.end method
