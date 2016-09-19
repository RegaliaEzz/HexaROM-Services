.class public Lmf/org/apache/xerces/dom/DOMStringListImpl;
.super Ljava/lang/Object;
.source "DOMStringListImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/DOMStringList;


# instance fields
.field private final fStrings:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMStringListImpl;->fStrings:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "params"    # Ljava/util/ArrayList;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMStringListImpl;->fStrings:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .locals 1
    .param p1, "params"    # Ljava/util/Vector;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMStringListImpl;->fStrings:Ljava/util/ArrayList;

    .line 58
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMStringListImpl;->fStrings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMStringListImpl;->fStrings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMStringListImpl;->fStrings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public item(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 64
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DOMStringListImpl;->getLength()I

    move-result v0

    .line 65
    .local v0, "length":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 66
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMStringListImpl;->fStrings:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
