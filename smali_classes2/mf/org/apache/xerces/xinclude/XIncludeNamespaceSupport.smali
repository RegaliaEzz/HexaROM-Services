.class public Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;
.super Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;
.source "XIncludeNamespaceSupport.java"


# instance fields
.field private fValidContext:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;-><init>()V

    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->fValidContext:[Z

    .line 44
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/NamespaceContext;)V
    .locals 1
    .param p1, "context"    # Lmf/org/apache/xerces/xni/NamespaceContext;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;-><init>(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->fValidContext:[Z

    .line 51
    return-void
.end method


# virtual methods
.method public getURIFromIncludeParent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 88
    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->fCurrentContext:I

    add-int/lit8 v0, v1, -0x1

    .line 89
    .local v0, "lastValidContext":I
    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->fValidContext:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 92
    :cond_0
    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->getURI(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 90
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public pushContext()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-super {p0}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->pushContext()V

    .line 58
    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->fCurrentContext:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->fValidContext:[Z

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 59
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->fValidContext:[Z

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Z

    .line 60
    .local v0, "contextarray":[Z
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->fValidContext:[Z

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->fValidContext:[Z

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->fValidContext:[Z

    .line 64
    .end local v0    # "contextarray":[Z
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->fValidContext:[Z

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->fCurrentContext:I

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 65
    return-void
.end method

.method public setContextInvalid()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->fValidContext:[Z

    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->fCurrentContext:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 76
    return-void
.end method
