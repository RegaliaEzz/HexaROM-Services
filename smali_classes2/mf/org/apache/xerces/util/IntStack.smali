.class public final Lmf/org/apache/xerces/util/IntStack;
.super Ljava/lang/Object;
.source "IntStack.java"


# instance fields
.field private fData:[I

.field private fDepth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    const/4 v3, 0x0

    .line 104
    iget-object v1, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    if-nez v1, :cond_1

    .line 105
    const/16 v1, 0x20

    new-array v1, v1, [I

    iput-object v1, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    array-length v1, v1

    if-gt v1, p1, :cond_0

    .line 108
    iget-object v1, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 109
    .local v0, "newdata":[I
    iget-object v1, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    iget-object v2, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iput-object v0, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    .line 74
    return-void
.end method

.method public elementAt(I)I
    .locals 1
    .param p1, "depth"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    aget v0, v0, p1

    return v0
.end method

.method public peek()I
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    iget v1, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public pop()I
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    iget v1, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    aget v0, v0, v1

    return v0
.end method

.method public print()V
    .locals 3

    .prologue
    .line 80
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    .line 81
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v2, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(I)V

    .line 82
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, ") {"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    if-lt v0, v1, :cond_0

    .line 94
    :goto_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 95
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 96
    return-void

    .line 84
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 85
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " ..."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 88
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    .line 89
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(I)V

    .line 90
    iget v1, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 91
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    .line 83
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public push(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 52
    iget v0, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/IntStack;->ensureCapacity(I)V

    .line 53
    iget-object v0, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    iget v1, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    aput p1, v0, v1

    .line 54
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    return v0
.end method
