.class public Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;
.super Lmf/org/apache/xerces/util/NamespaceSupport;
.source "MultipleScopeNamespaceSupport.java"


# instance fields
.field protected fCurrentScope:I

.field protected fScope:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    .line 43
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    .line 51
    iput v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    .line 52
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    aput v1, v0, v1

    .line 53
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/NamespaceContext;)V
    .locals 2
    .param p1, "context"    # Lmf/org/apache/xerces/xni/NamespaceContext;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    .line 43
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    .line 60
    iput v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    .line 61
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    aput v1, v0, v1

    .line 62
    return-void
.end method


# virtual methods
.method public getAllPrefixes()Ljava/util/Enumeration;
    .locals 10

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "count":I
    iget-object v7, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fPrefixes:[Ljava/lang/String;

    array-length v7, v7

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    array-length v8, v8

    div-int/lit8 v8, v8, 0x2

    if-ge v7, v8, :cond_0

    .line 71
    iget v7, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespaceSize:I

    new-array v5, v7, [Ljava/lang/String;

    .line 72
    .local v5, "prefixes":[Ljava/lang/String;
    iput-object v5, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fPrefixes:[Ljava/lang/String;

    .line 74
    .end local v5    # "prefixes":[Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    .line 75
    .local v4, "prefix":Ljava/lang/String;
    const/4 v6, 0x1

    .line 76
    .local v6, "unique":Z
    iget-object v7, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iget v9, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    aget v8, v8, v9

    aget v2, v7, v8

    .line 77
    .local v2, "i":I
    :goto_0
    iget v7, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v7, v7, -0x2

    .line 76
    if-le v2, v7, :cond_1

    .line 91
    new-instance v7, Lmf/org/apache/xerces/util/NamespaceSupport$Prefixes;

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fPrefixes:[Ljava/lang/String;

    invoke-direct {v7, p0, v8, v0}, Lmf/org/apache/xerces/util/NamespaceSupport$Prefixes;-><init>(Lmf/org/apache/xerces/util/NamespaceSupport;[Ljava/lang/String;I)V

    return-object v7

    .line 79
    :cond_1
    iget-object v7, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    aget-object v4, v7, v2

    .line 80
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    if-lt v3, v0, :cond_3

    .line 86
    :goto_2
    if-eqz v6, :cond_2

    .line 87
    iget-object v7, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fPrefixes:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    aput-object v4, v7, v0

    move v0, v1

    .line 89
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_2
    const/4 v6, 0x1

    .line 78
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 81
    :cond_3
    iget-object v7, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fPrefixes:[Ljava/lang/String;

    aget-object v7, v7, v3

    if-ne v7, v4, :cond_4

    .line 82
    const/4 v6, 0x0

    .line 83
    goto :goto_2

    .line 80
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 106
    iget v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespaceSize:I

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iget v3, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    aget v2, v2, v3

    aget v1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getPrefix(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "context"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    add-int/lit8 v1, p2, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getScopeForContext(I)I

    move-result v3

    aget v2, v2, v3

    aget v1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getPrefix(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 126
    sget-object v1, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-ne p1, v1, :cond_0

    .line 127
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    .line 142
    :goto_0
    return-object v1

    .line 129
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne p1, v1, :cond_1

    .line 130
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    goto :goto_0

    .line 134
    :cond_1
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-gt v0, p3, :cond_2

    .line 142
    const/4 v1, 0x0

    goto :goto_0

    .line 135
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    if-ne v1, p1, :cond_3

    .line 136
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x2

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-ne v1, p1, :cond_3

    .line 137
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x2

    aget-object v1, v1, v2

    goto :goto_0

    .line 134
    :cond_3
    add-int/lit8 v0, v0, -0x2

    goto :goto_1
.end method

.method public getScopeForContext(I)I
    .locals 2
    .param p1, "context"    # I

    .prologue
    .line 95
    iget v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    .line 96
    .local v0, "scope":I
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    aget v1, v1, v0

    if-lt p1, v1, :cond_0

    .line 99
    return v0

    .line 97
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 113
    iget v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespaceSize:I

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iget v3, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    aget v2, v2, v3

    aget v1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getURI(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "context"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    add-int/lit8 v1, p2, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getScopeForContext(I)I

    move-result v3

    aget v2, v2, v3

    aget v1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getURI(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 147
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    if-ne p1, v1, :cond_0

    .line 148
    sget-object v1, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    .line 162
    :goto_0
    return-object v1

    .line 150
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne p1, v1, :cond_1

    .line 151
    sget-object v1, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    goto :goto_0

    .line 155
    :cond_1
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-gt v0, p3, :cond_2

    .line 162
    const/4 v1, 0x0

    goto :goto_0

    .line 156
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x2

    aget-object v1, v1, v2

    if-ne v1, p1, :cond_3

    .line 157
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    goto :goto_0

    .line 155
    :cond_3
    add-int/lit8 v0, v0, -0x2

    goto :goto_1
.end method

.method public popScope()V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iget v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    aget v0, v0, v1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentContext:I

    .line 194
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->popContext()V

    .line 195
    return-void
.end method

.method public pushScope()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 179
    iget v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 180
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 181
    .local v0, "contextarray":[I
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    .line 184
    .end local v0    # "contextarray":[I
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->pushContext()V

    .line 185
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iget v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    iget v3, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentContext:I

    aput v3, v1, v2

    .line 186
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iget v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    aget v0, v0, v1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentContext:I

    .line 171
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    iget v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentContext:I

    aget v0, v0, v1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespaceSize:I

    .line 172
    return-void
.end method
