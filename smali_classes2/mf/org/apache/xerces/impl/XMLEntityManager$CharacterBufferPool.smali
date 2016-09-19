.class final Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;
.super Ljava/lang/Object;
.source "XMLEntityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XMLEntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CharacterBufferPool"
.end annotation


# static fields
.field private static final DEFAULT_POOL_SIZE:I = 0x3


# instance fields
.field private fExternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

.field private fExternalBufferSize:I

.field private fExternalTop:I

.field private fInternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

.field private fInternalBufferSize:I

.field private fInternalTop:I

.field private fPoolSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "externalBufferSize"    # I
    .param p2, "internalBufferSize"    # I

    .prologue
    .line 3003
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;-><init>(III)V

    .line 3004
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "poolSize"    # I
    .param p2, "externalBufferSize"    # I
    .param p3, "internalBufferSize"    # I

    .prologue
    .line 3006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3007
    iput p2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalBufferSize:I

    .line 3008
    iput p3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalBufferSize:I

    .line 3009
    iput p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fPoolSize:I

    .line 3010
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->init()V

    .line 3011
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 3015
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fPoolSize:I

    new-array v0, v0, [Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    .line 3016
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fPoolSize:I

    new-array v0, v0, [Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    .line 3017
    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalTop:I

    .line 3018
    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalTop:I

    .line 3019
    return-void
.end method


# virtual methods
.method public getBuffer(Z)Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;
    .locals 3
    .param p1, "external"    # Z

    .prologue
    const/4 v1, -0x1

    .line 3023
    if-eqz p1, :cond_1

    .line 3024
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalTop:I

    if-le v0, v1, :cond_0

    .line 3025
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalTop:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalTop:I

    aget-object v0, v0, v1

    .line 3036
    :goto_0
    return-object v0

    .line 3028
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    const/4 v1, 0x1

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalBufferSize:I

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;-><init>(ZI)V

    goto :goto_0

    .line 3032
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalTop:I

    if-le v0, v1, :cond_2

    .line 3033
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalTop:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalTop:I

    aget-object v0, v0, v1

    goto :goto_0

    .line 3036
    :cond_2
    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    const/4 v1, 0x0

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalBufferSize:I

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;-><init>(ZI)V

    goto :goto_0
.end method

.method public returnBuffer(Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;)V
    .locals 2
    .param p1, "buffer"    # Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    .prologue
    .line 3043
    # getter for: Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;->isExternal:Z
    invoke-static {p1}, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;->access$1(Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3044
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalTop:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 3045
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalTop:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalTop:I

    aput-object p1, v0, v1

    .line 3051
    :cond_0
    :goto_0
    return-void

    .line 3048
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalTop:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 3049
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalTop:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalTop:I

    aput-object p1, v0, v1

    goto :goto_0
.end method

.method public setExternalBufferSize(I)V
    .locals 1
    .param p1, "bufferSize"    # I

    .prologue
    .line 3055
    iput p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalBufferSize:I

    .line 3056
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fPoolSize:I

    new-array v0, v0, [Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    .line 3057
    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalTop:I

    .line 3058
    return-void
.end method
