.class public final Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;
.super Ljava/lang/Object;
.source "JAXPNamespaceContextWrapper.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/NamespaceContext;


# instance fields
.field private final fAllPrefixes:Ljava/util/Vector;

.field private fContext:[I

.field private fCurrentContext:I

.field private fNamespaceContext:Lmf/javax/xml/namespace/NamespaceContext;

.field private fPrefixes:Ljava/util/List;

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fAllPrefixes:Ljava/util/Vector;

    .line 44
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fContext:[I

    .line 48
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->setSymbolTable(Lmf/org/apache/xerces/util/SymbolTable;)V

    .line 49
    return-void
.end method


# virtual methods
.method public declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public getAllPrefixes()Ljava/util/Enumeration;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fAllPrefixes:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredPrefixAt(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fPrefixes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDeclaredPrefixCount()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fPrefixes:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fPrefixes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeclaredPrefixes()Ljava/util/List;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fPrefixes:Ljava/util/List;

    return-object v0
.end method

.method public getNamespaceContext()Lmf/javax/xml/namespace/NamespaceContext;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fNamespaceContext:Lmf/javax/xml/namespace/NamespaceContext;

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v1, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fNamespaceContext:Lmf/javax/xml/namespace/NamespaceContext;

    if-eqz v1, :cond_3

    .line 91
    if-nez p1, :cond_0

    .line 92
    const-string p1, ""

    .line 94
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fNamespaceContext:Lmf/javax/xml/namespace/NamespaceContext;

    invoke-interface {v1, p1}, Lmf/javax/xml/namespace/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "prefix":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 96
    const-string v0, ""

    .line 98
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .end local v0    # "prefix":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 98
    .restart local v0    # "prefix":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 100
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSymbolTable()Lmf/org/apache/xerces/util/SymbolTable;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-object v0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v1, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fNamespaceContext:Lmf/javax/xml/namespace/NamespaceContext;

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fNamespaceContext:Lmf/javax/xml/namespace/NamespaceContext;

    invoke-interface {v1, p1}, Lmf/javax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "uri":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    iget-object v1, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .end local v0    # "uri":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 83
    .restart local v0    # "uri":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 86
    .end local v0    # "uri":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public popContext()V
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fAllPrefixes:Ljava/util/Vector;

    iget-object v1, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fContext:[I

    iget v2, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fCurrentContext:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fCurrentContext:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 125
    return-void
.end method

.method public pushContext()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 111
    iget v1, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fCurrentContext:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fContext:[I

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 112
    iget-object v1, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fContext:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 113
    .local v0, "contextarray":[I
    iget-object v1, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fContext:[I

    iget-object v2, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fContext:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iput-object v0, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fContext:[I

    .line 117
    .end local v0    # "contextarray":[I
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fContext:[I

    iget v2, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fCurrentContext:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fCurrentContext:I

    iget-object v3, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fAllPrefixes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    aput v3, v1, v2

    .line 118
    iget-object v1, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fPrefixes:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fAllPrefixes:Ljava/util/Vector;

    iget-object v2, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fPrefixes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 121
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    iput v2, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fCurrentContext:I

    .line 141
    iget-object v0, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fContext:[I

    iget v1, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fCurrentContext:I

    aput v2, v0, v1

    .line 142
    iget-object v0, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fAllPrefixes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 143
    return-void
.end method

.method public setDeclaredPrefixes(Ljava/util/List;)V
    .locals 0
    .param p1, "prefixes"    # Ljava/util/List;

    .prologue
    .line 68
    iput-object p1, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fPrefixes:Ljava/util/List;

    .line 69
    return-void
.end method

.method public setNamespaceContext(Lmf/javax/xml/namespace/NamespaceContext;)V
    .locals 0
    .param p1, "context"    # Lmf/javax/xml/namespace/NamespaceContext;

    .prologue
    .line 52
    iput-object p1, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fNamespaceContext:Lmf/javax/xml/namespace/NamespaceContext;

    .line 53
    return-void
.end method

.method public setSymbolTable(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 0
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    .line 60
    iput-object p1, p0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 61
    return-void
.end method
