.class public final Lmf/org/apache/xerces/util/ShadowedSymbolTable;
.super Lmf/org/apache/xerces/util/SymbolTable;
.source "ShadowedSymbolTable.java"


# instance fields
.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 0
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    .line 48
    invoke-direct {p0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    .line 49
    iput-object p1, p0, Lmf/org/apache/xerces/util/ShadowedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 50
    return-void
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "symbol"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lmf/org/apache/xerces/util/ShadowedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolTable;->containsSymbol(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lmf/org/apache/xerces/util/ShadowedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public addSymbol([CII)Ljava/lang/String;
    .locals 1
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lmf/org/apache/xerces/util/ShadowedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/util/SymbolTable;->containsSymbol([CII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lmf/org/apache/xerces/util/ShadowedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hash(Ljava/lang/String;)I
    .locals 1
    .param p1, "symbol"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lmf/org/apache/xerces/util/ShadowedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolTable;->hash(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hash([CII)I
    .locals 1
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lmf/org/apache/xerces/util/ShadowedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/util/SymbolTable;->hash([CII)I

    move-result v0

    return v0
.end method
