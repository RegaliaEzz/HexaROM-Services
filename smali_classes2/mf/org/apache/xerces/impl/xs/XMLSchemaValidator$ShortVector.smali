.class public final Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;
.super Ljava/lang/Object;
.source "XMLSchemaValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ShortVector"
.end annotation


# instance fields
.field private fData:[S

.field private fLength:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 4548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4549
    new-array v0, p1, [S

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fData:[S

    .line 4550
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    const/4 v3, 0x0

    .line 4593
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fData:[S

    if-nez v1, :cond_1

    .line 4594
    const/16 v1, 0x8

    new-array v1, v1, [S

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fData:[S

    .line 4601
    :cond_0
    :goto_0
    return-void

    .line 4596
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fData:[S

    array-length v1, v1

    if-gt v1, p1, :cond_0

    .line 4597
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fData:[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [S

    .line 4598
    .local v0, "newdata":[S
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fData:[S

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fData:[S

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4599
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fData:[S

    goto :goto_0
.end method


# virtual methods
.method public add(S)V
    .locals 3
    .param p1, "value"    # S

    .prologue
    .line 4563
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fLength:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->ensureCapacity(I)V

    .line 4564
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fData:[S

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fLength:I

    aput-short p1, v0, v1

    .line 4565
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 4574
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fLength:I

    .line 4575
    return-void
.end method

.method public contains(S)Z
    .locals 2
    .param p1, "value"    # S

    .prologue
    .line 4579
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fLength:I

    if-lt v0, v1, :cond_0

    .line 4584
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 4580
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fData:[S

    aget-short v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 4581
    const/4 v1, 0x1

    goto :goto_1

    .line 4579
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 4558
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fLength:I

    return v0
.end method

.method public valueAt(I)S
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 4569
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fData:[S

    aget-short v0, v0, p1

    return v0
.end method
