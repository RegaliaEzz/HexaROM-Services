.class final Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;
.super Ljava/lang/Object;
.source "XSModelImpl.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/XSModelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "XSNamespaceItemListIterator"
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lmf/org/apache/xerces/impl/xs/XSModelImpl;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/XSModelImpl;I)V
    .locals 0
    .param p2, "index"    # I

    .prologue
    .line 810
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->this$0:Lmf/org/apache/xerces/impl/xs/XSModelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 811
    iput p2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->index:I

    .line 812
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 844
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 814
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->index:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->this$0:Lmf/org/apache/xerces/impl/xs/XSModelImpl;

    # getter for: Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I
    invoke-static {v1}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->access$0(Lmf/org/apache/xerces/impl/xs/XSModelImpl;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 823
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->index:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 817
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->index:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->this$0:Lmf/org/apache/xerces/impl/xs/XSModelImpl;

    # getter for: Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I
    invoke-static {v1}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->access$0(Lmf/org/apache/xerces/impl/xs/XSModelImpl;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 818
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->this$0:Lmf/org/apache/xerces/impl/xs/XSModelImpl;

    # getter for: Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->access$1(Lmf/org/apache/xerces/impl/xs/XSModelImpl;)[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->index:I

    aget-object v0, v0, v1

    return-object v0

    .line 820
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 832
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->index:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 826
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->index:I

    if-lez v0, :cond_0

    .line 827
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->this$0:Lmf/org/apache/xerces/impl/xs/XSModelImpl;

    # getter for: Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->access$1(Lmf/org/apache/xerces/impl/xs/XSModelImpl;)[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->index:I

    aget-object v0, v0, v1

    return-object v0

    .line 829
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 835
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 838
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 841
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
