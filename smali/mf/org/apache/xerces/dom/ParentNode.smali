.class public abstract Lmf/org/apache/xerces/dom/ParentNode;
.super Lmf/org/apache/xerces/dom/ChildNode;
.source "ParentNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x2713d65863899c28L


# instance fields
.field protected transient fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

.field protected firstChild:Lmf/org/apache/xerces/dom/ChildNode;

.field protected ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0}, Lmf/org/apache/xerces/dom/ChildNode;-><init>()V

    .line 80
    iput-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    .line 85
    iput-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    .line 101
    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 1
    .param p1, "ownerDocument"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/ChildNode;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 80
    iput-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    .line 85
    iput-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    .line 97
    iput-object p1, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .line 98
    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/dom/ParentNode;)I
    .locals 1

    .prologue
    .line 673
    invoke-direct {p0}, Lmf/org/apache/xerces/dom/ParentNode;->nodeListGetLength()I

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/dom/ParentNode;I)Lmf/org/w3c/dom/Node;
    .locals 1

    .prologue
    .line 725
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->nodeListItem(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method private nodeListGetLength()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 675
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    if-nez v2, :cond_3

    .line 676
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 677
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    .line 680
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-nez v2, :cond_1

    .line 681
    const/4 v2, 0x0

    .line 708
    :goto_0
    return v2

    .line 683
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->lastChild()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 684
    const/4 v2, 0x1

    goto :goto_0

    .line 687
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v2, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getNodeListCache(Lmf/org/apache/xerces/dom/ParentNode;)Lmf/org/apache/xerces/dom/NodeListCache;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    .line 689
    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v2, v2, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    if-ne v2, v4, :cond_4

    .line 693
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v2, v2, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    if-eq v2, v4, :cond_5

    .line 694
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget-object v2, v2, Lmf/org/apache/xerces/dom/NodeListCache;->fChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-eqz v2, :cond_5

    .line 695
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v0, v2, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    .line 696
    .local v0, "l":I
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget-object v1, v2, Lmf/org/apache/xerces/dom/NodeListCache;->fChild:Lmf/org/apache/xerces/dom/ChildNode;

    .line 701
    .local v1, "n":Lmf/org/apache/xerces/dom/ChildNode;
    :goto_1
    if-nez v1, :cond_6

    .line 705
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iput v0, v2, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    .line 708
    .end local v0    # "l":I
    .end local v1    # "n":Lmf/org/apache/xerces/dom/ChildNode;
    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v2, v2, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    goto :goto_0

    .line 698
    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    .line 699
    .restart local v1    # "n":Lmf/org/apache/xerces/dom/ChildNode;
    const/4 v0, 0x0

    .line 701
    .restart local v0    # "l":I
    goto :goto_1

    .line 702
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 703
    iget-object v1, v1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_1
.end method

.method private nodeListItem(I)Lmf/org/w3c/dom/Node;
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 727
    iget-object v4, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    if-nez v4, :cond_3

    .line 728
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 729
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    .line 732
    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->lastChild()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 733
    if-nez p1, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    .line 783
    :cond_1
    :goto_0
    return-object v3

    .line 736
    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getNodeListCache(Lmf/org/apache/xerces/dom/ParentNode;)Lmf/org/apache/xerces/dom/NodeListCache;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    .line 738
    :cond_3
    iget-object v4, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v1, v4, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    .line 739
    .local v1, "i":I
    iget-object v4, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget-object v2, v4, Lmf/org/apache/xerces/dom/NodeListCache;->fChild:Lmf/org/apache/xerces/dom/ChildNode;

    .line 740
    .local v2, "n":Lmf/org/apache/xerces/dom/ChildNode;
    const/4 v0, 0x1

    .line 742
    .local v0, "firstAccess":Z
    if-eq v1, v6, :cond_8

    if-eqz v2, :cond_8

    .line 743
    const/4 v0, 0x0

    .line 744
    if-ge v1, p1, :cond_7

    .line 745
    :goto_1
    if-ge v1, p1, :cond_4

    if-nez v2, :cond_6

    .line 769
    :cond_4
    if-nez v0, :cond_9

    iget-object v4, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-eq v2, v4, :cond_5

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->lastChild()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v4

    if-ne v2, v4, :cond_9

    .line 770
    :cond_5
    iget-object v4, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iput v6, v4, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    .line 771
    iget-object v4, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iput-object v3, v4, Lmf/org/apache/xerces/dom/NodeListCache;->fChild:Lmf/org/apache/xerces/dom/ChildNode;

    .line 772
    iget-object v3, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v4, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->freeNodeListCache(Lmf/org/apache/xerces/dom/NodeListCache;)V

    :goto_2
    move-object v3, v2

    .line 783
    goto :goto_0

    .line 746
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 747
    iget-object v2, v2, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_1

    .line 750
    :cond_7
    if-le v1, p1, :cond_4

    .line 751
    :goto_3
    if-le v1, p1, :cond_4

    if-eqz v2, :cond_4

    .line 752
    add-int/lit8 v1, v1, -0x1

    .line 753
    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v2

    goto :goto_3

    .line 759
    :cond_8
    if-ltz p1, :cond_1

    .line 762
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    .line 763
    const/4 v1, 0x0

    :goto_4
    if-ge v1, p1, :cond_4

    if-eqz v2, :cond_4

    .line 764
    iget-object v2, v2, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 763
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 780
    :cond_9
    iget-object v3, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iput v1, v3, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    .line 781
    iget-object v3, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iput-object v2, v3, Lmf/org/apache/xerces/dom/NodeListCache;->fChild:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1009
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1013
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren(Z)V

    .line 1015
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 996
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    .line 1000
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1002
    return-void
.end method


# virtual methods
.method checkNormalizationAfterInsert(Lmf/org/apache/xerces/dom/ChildNode;)V
    .locals 5
    .param p1, "insertedChild"    # Lmf/org/apache/xerces/dom/ChildNode;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 943
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v2

    if-ne v2, v3, :cond_3

    .line 944
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v1

    .line 945
    .local v1, "prev":Lmf/org/apache/xerces/dom/ChildNode;
    iget-object v0, p1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 948
    .local v0, "next":Lmf/org/apache/xerces/dom/ChildNode;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v2

    if-eq v2, v3, :cond_1

    .line 949
    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v2

    if-ne v2, v3, :cond_2

    .line 950
    :cond_1
    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/dom/ParentNode;->isNormalized(Z)V

    .line 960
    .end local v0    # "next":Lmf/org/apache/xerces/dom/ChildNode;
    .end local v1    # "prev":Lmf/org/apache/xerces/dom/ChildNode;
    :cond_2
    :goto_0
    return-void

    .line 956
    :cond_3
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ChildNode;->isNormalized()Z

    move-result v2

    if-nez v2, :cond_2

    .line 957
    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/dom/ParentNode;->isNormalized(Z)V

    goto :goto_0
.end method

.method checkNormalizationAfterRemove(Lmf/org/apache/xerces/dom/ChildNode;)V
    .locals 3
    .param p1, "previousSibling"    # Lmf/org/apache/xerces/dom/ChildNode;

    .prologue
    const/4 v2, 0x3

    .line 978
    if-eqz p1, :cond_0

    .line 979
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v1

    if-ne v1, v2, :cond_0

    .line 981
    iget-object v0, p1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 982
    .local v0, "next":Lmf/org/apache/xerces/dom/ChildNode;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v1

    if-ne v1, v2, :cond_0

    .line 983
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/ParentNode;->isNormalized(Z)V

    .line 986
    .end local v0    # "next":Lmf/org/apache/xerces/dom/ChildNode;
    :cond_0
    return-void
.end method

.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .locals 4
    .param p1, "deep"    # Z

    .prologue
    const/4 v3, 0x0

    .line 127
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    .line 130
    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ChildNode;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/ParentNode;

    .line 133
    .local v1, "newnode":Lmf/org/apache/xerces/dom/ParentNode;
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iput-object v2, v1, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .line 136
    iput-object v3, v1, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    .line 139
    iput-object v3, v1, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    .line 142
    if-eqz p1, :cond_1

    .line 143
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    .line 144
    .local v0, "child":Lmf/org/apache/xerces/dom/ChildNode;
    :goto_0
    if-nez v0, :cond_2

    .line 150
    .end local v0    # "child":Lmf/org/apache/xerces/dom/ChildNode;
    :cond_1
    return-object v1

    .line 146
    .restart local v0    # "child":Lmf/org/apache/xerces/dom/ChildNode;
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/dom/ChildNode;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/ParentNode;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 145
    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_0
.end method

.method public getChildNodes()Lmf/org/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    .line 216
    :cond_0
    return-object p0
.end method

.method protected final getChildNodesUnoptimized()Lmf/org/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 810
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    .line 813
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/dom/ParentNode$1;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/dom/ParentNode$1;-><init>(Lmf/org/apache/xerces/dom/ParentNode;)V

    return-object v0
.end method

.method public getFirstChild()Lmf/org/w3c/dom/Node;
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    .line 226
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    return-object v0
.end method

.method public getLastChild()Lmf/org/w3c/dom/Node;
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    .line 236
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->lastChild()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 717
    invoke-direct {p0}, Lmf/org/apache/xerces/dom/ParentNode;->nodeListGetLength()I

    move-result v0

    return v0
.end method

.method public getOwnerDocument()Lmf/org/w3c/dom/Document;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 615
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 616
    .local v1, "child":Lmf/org/w3c/dom/Node;
    if-eqz v1, :cond_2

    .line 617
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 618
    .local v2, "next":Lmf/org/w3c/dom/Node;
    if-nez v2, :cond_1

    .line 619
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/ParentNode;->hasTextContent(Lmf/org/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v1, Lmf/org/apache/xerces/dom/NodeImpl;

    .end local v1    # "child":Lmf/org/w3c/dom/Node;
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/NodeImpl;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 625
    .end local v2    # "next":Lmf/org/w3c/dom/Node;
    :goto_0
    return-object v3

    .line 619
    .restart local v1    # "child":Lmf/org/w3c/dom/Node;
    .restart local v2    # "next":Lmf/org/w3c/dom/Node;
    :cond_0
    const-string v3, ""

    goto :goto_0

    .line 621
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 622
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/ParentNode;->getTextContent(Ljava/lang/StringBuffer;)V

    .line 623
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 625
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v2    # "next":Lmf/org/w3c/dom/Node;
    :cond_2
    const-string v3, ""

    goto :goto_0
.end method

.method getTextContent(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 630
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 631
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_0

    .line 637
    return-void

    .line 632
    :cond_0
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/ParentNode;->hasTextContent(Lmf/org/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 633
    check-cast v1, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->getTextContent(Ljava/lang/StringBuffer;)V

    .line 635
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public hasChildNodes()Z
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    .line 195
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final hasTextContent(Lmf/org/w3c/dom/Node;)Z
    .locals 2
    .param p1, "child"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 641
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 642
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    .line 643
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 644
    check-cast p1, Lmf/org/apache/xerces/dom/TextImpl;

    .end local p1    # "child":Lmf/org/w3c/dom/Node;
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/TextImpl;->isIgnorableWhitespace()Z

    move-result v0

    if-nez v0, :cond_1

    .line 641
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 1
    .param p1, "newChild"    # Lmf/org/w3c/dom/Node;
    .param p2, "refChild"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 283
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/dom/ParentNode;->internalInsertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method internalInsertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    .locals 16
    .param p1, "newChild"    # Lmf/org/w3c/dom/Node;
    .param p2, "refChild"    # Lmf/org/w3c/dom/Node;
    .param p3, "replace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 294
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v3, v11, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    .line 296
    .local v3, "errorChecking":Z
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v11

    const/16 v12, 0xb

    if-ne v11, v12, :cond_4

    .line 314
    if-eqz v3, :cond_0

    .line 315
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v4

    .line 316
    .local v4, "kid":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v4, :cond_1

    .line 326
    .end local v4    # "kid":Lmf/org/w3c/dom/Node;
    :cond_0
    :goto_1
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v11

    if-nez v11, :cond_3

    .line 458
    :goto_2
    return-object p1

    .line 318
    .restart local v4    # "kid":Lmf/org/w3c/dom/Node;
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isKidOK(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 319
    new-instance v11, Lmf/org/w3c/dom/DOMException;

    .line 320
    const/4 v12, 0x3

    .line 321
    const-string/jumbo v13, "http://www.w3.org/dom/DOMTR"

    const-string v14, "HIERARCHY_REQUEST_ERR"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 319
    invoke-direct {v11, v12, v13}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v11

    .line 316
    :cond_2
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v4

    goto :goto_0

    .line 327
    .end local v4    # "kid":Lmf/org/w3c/dom/Node;
    :cond_3
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v11

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1}, Lmf/org/apache/xerces/dom/ParentNode;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_1

    .line 332
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_5

    .line 334
    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object p2

    .line 335
    invoke-virtual/range {p0 .. p1}, Lmf/org/apache/xerces/dom/ParentNode;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 336
    invoke-virtual/range {p0 .. p2}, Lmf/org/apache/xerces/dom/ParentNode;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_2

    .line 340
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 341
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    .line 344
    :cond_6
    if-eqz v3, :cond_e

    .line 345
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/dom/ParentNode;->isReadOnly()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 346
    new-instance v11, Lmf/org/w3c/dom/DOMException;

    .line 347
    const/4 v12, 0x7

    .line 348
    const-string/jumbo v13, "http://www.w3.org/dom/DOMTR"

    const-string v14, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 346
    invoke-direct {v11, v12, v13}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v11

    .line 350
    :cond_7
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eq v11, v12, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-object/from16 v0, p1

    if-eq v0, v11, :cond_8

    .line 351
    new-instance v11, Lmf/org/w3c/dom/DOMException;

    const/4 v12, 0x4

    .line 352
    const-string/jumbo v13, "http://www.w3.org/dom/DOMTR"

    const-string v14, "WRONG_DOCUMENT_ERR"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 351
    invoke-direct {v11, v12, v13}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v11

    .line 354
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isKidOK(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 355
    new-instance v11, Lmf/org/w3c/dom/DOMException;

    const/4 v12, 0x3

    .line 356
    const-string/jumbo v13, "http://www.w3.org/dom/DOMTR"

    const-string v14, "HIERARCHY_REQUEST_ERR"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 355
    invoke-direct {v11, v12, v13}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v11

    .line 359
    :cond_9
    if-eqz p2, :cond_a

    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v11

    move-object/from16 v0, p0

    if-eq v11, v0, :cond_a

    .line 360
    new-instance v11, Lmf/org/w3c/dom/DOMException;

    const/16 v12, 0x8

    .line 361
    const-string/jumbo v13, "http://www.w3.org/dom/DOMTR"

    const-string v14, "NOT_FOUND_ERR"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 360
    invoke-direct {v11, v12, v13}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v11

    .line 367
    :cond_a
    const/4 v10, 0x1

    .line 368
    .local v10, "treeSafe":Z
    move-object/from16 v2, p0

    .local v2, "a":Lmf/org/apache/xerces/dom/NodeImpl;
    :goto_3
    if-eqz v10, :cond_b

    if-nez v2, :cond_c

    .line 372
    :cond_b
    if-nez v10, :cond_e

    .line 373
    new-instance v11, Lmf/org/w3c/dom/DOMException;

    const/4 v12, 0x3

    .line 374
    const-string/jumbo v13, "http://www.w3.org/dom/DOMTR"

    const-string v14, "HIERARCHY_REQUEST_ERR"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 373
    invoke-direct {v11, v12, v13}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v11

    .line 370
    :cond_c
    move-object/from16 v0, p1

    if-eq v0, v2, :cond_d

    const/4 v10, 0x1

    .line 368
    :goto_4
    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/NodeImpl;->parentNode()Lmf/org/apache/xerces/dom/NodeImpl;

    move-result-object v2

    goto :goto_3

    .line 370
    :cond_d
    const/4 v10, 0x0

    goto :goto_4

    .line 379
    .end local v2    # "a":Lmf/org/apache/xerces/dom/NodeImpl;
    .end local v10    # "treeSafe":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v11, v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->insertingNode(Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    move-object/from16 v6, p1

    .line 382
    check-cast v6, Lmf/org/apache/xerces/dom/ChildNode;

    .line 384
    .local v6, "newInternal":Lmf/org/apache/xerces/dom/ChildNode;
    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/ChildNode;->parentNode()Lmf/org/apache/xerces/dom/NodeImpl;

    move-result-object v7

    .line 385
    .local v7, "oldparent":Lmf/org/w3c/dom/Node;
    if-eqz v7, :cond_f

    .line 386
    invoke-interface {v7, v6}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_f
    move-object/from16 v9, p2

    .line 390
    check-cast v9, Lmf/org/apache/xerces/dom/ChildNode;

    .line 393
    .local v9, "refInternal":Lmf/org/apache/xerces/dom/ChildNode;
    move-object/from16 v0, p0

    iput-object v0, v6, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 394
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Lmf/org/apache/xerces/dom/ChildNode;->isOwned(Z)V

    .line 398
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-nez v11, :cond_12

    .line 400
    move-object/from16 v0, p0

    iput-object v6, v0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    .line 401
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    .line 402
    iput-object v6, v6, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 434
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/dom/ParentNode;->changed()V

    .line 437
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    if-eqz v11, :cond_11

    .line 438
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v11, v11, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_10

    .line 439
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v12, v11, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    .line 441
    :cond_10
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v11, v11, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_11

    .line 444
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget-object v11, v11, Lmf/org/apache/xerces/dom/NodeListCache;->fChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-ne v11, v9, :cond_15

    .line 445
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iput-object v6, v11, Lmf/org/apache/xerces/dom/NodeListCache;->fChild:Lmf/org/apache/xerces/dom/ChildNode;

    .line 454
    :cond_11
    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v11, v0, v6, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->insertedNode(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    .line 456
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/dom/ParentNode;->checkNormalizationAfterInsert(Lmf/org/apache/xerces/dom/ChildNode;)V

    goto/16 :goto_2

    .line 405
    :cond_12
    if-nez v9, :cond_13

    .line 407
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v5, v11, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 408
    .local v5, "lastChild":Lmf/org/apache/xerces/dom/ChildNode;
    iput-object v6, v5, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 409
    iput-object v5, v6, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 410
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v6, v11, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_5

    .line 414
    .end local v5    # "lastChild":Lmf/org/apache/xerces/dom/ChildNode;
    :cond_13
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_14

    .line 416
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    .line 417
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v11, v6, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 418
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v11, v11, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v11, v6, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 419
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v6, v11, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 420
    move-object/from16 v0, p0

    iput-object v6, v0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    .line 421
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    goto/16 :goto_5

    .line 425
    :cond_14
    iget-object v8, v9, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 426
    .local v8, "prev":Lmf/org/apache/xerces/dom/ChildNode;
    iput-object v9, v6, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 427
    iput-object v6, v8, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 428
    iput-object v6, v9, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 429
    iput-object v8, v6, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto/16 :goto_5

    .line 448
    .end local v8    # "prev":Lmf/org/apache/xerces/dom/ChildNode;
    :cond_15
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    const/4 v12, -0x1

    iput v12, v11, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    goto :goto_6
.end method

.method internalRemoveChild(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    .locals 10
    .param p1, "oldChild"    # Lmf/org/w3c/dom/Node;
    .param p2, "replace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v9, 0x0

    .line 488
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v3

    .line 489
    .local v3, "ownerDocument":Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    iget-boolean v5, v3, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v5, :cond_1

    .line 490
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 491
    new-instance v5, Lmf/org/w3c/dom/DOMException;

    .line 492
    const/4 v6, 0x7

    .line 493
    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string v8, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 491
    invoke-direct {v5, v6, v7}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    .line 495
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v5

    if-eq v5, p0, :cond_1

    .line 496
    new-instance v5, Lmf/org/w3c/dom/DOMException;

    const/16 v6, 0x8

    .line 497
    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string v8, "NOT_FOUND_ERR"

    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 496
    invoke-direct {v5, v6, v7}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_1
    move-object v1, p1

    .line 501
    check-cast v1, Lmf/org/apache/xerces/dom/ChildNode;

    .line 504
    .local v1, "oldInternal":Lmf/org/apache/xerces/dom/ChildNode;
    invoke-virtual {v3, p0, v1, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removingNode(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    .line 507
    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    if-eqz v5, :cond_3

    .line 508
    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v5, v5, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    if-eq v5, v7, :cond_2

    .line 509
    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v6, v5, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    .line 511
    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v5, v5, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    if-eq v5, v7, :cond_3

    .line 514
    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget-object v5, v5, Lmf/org/apache/xerces/dom/NodeListCache;->fChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-ne v5, v1, :cond_5

    .line 515
    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v6, v5, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    .line 516
    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v6

    iput-object v6, v5, Lmf/org/apache/xerces/dom/NodeListCache;->fChild:Lmf/org/apache/xerces/dom/ChildNode;

    .line 526
    :cond_3
    :goto_0
    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-ne v1, v5, :cond_6

    .line 528
    invoke-virtual {v1, v8}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    .line 529
    iget-object v5, v1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    .line 530
    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-eqz v5, :cond_4

    .line 531
    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    .line 532
    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v6, v1, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v6, v5, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 548
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v2

    .line 551
    .local v2, "oldPreviousSibling":Lmf/org/apache/xerces/dom/ChildNode;
    iput-object v3, v1, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 552
    invoke-virtual {v1, v8}, Lmf/org/apache/xerces/dom/ChildNode;->isOwned(Z)V

    .line 553
    iput-object v9, v1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 554
    iput-object v9, v1, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 556
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->changed()V

    .line 559
    invoke-virtual {v3, p0, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removedNode(Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    .line 561
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/ParentNode;->checkNormalizationAfterRemove(Lmf/org/apache/xerces/dom/ChildNode;)V

    .line 563
    return-object v1

    .line 519
    .end local v2    # "oldPreviousSibling":Lmf/org/apache/xerces/dom/ChildNode;
    :cond_5
    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iput v7, v5, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    goto :goto_0

    .line 535
    :cond_6
    iget-object v4, v1, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 536
    .local v4, "prev":Lmf/org/apache/xerces/dom/ChildNode;
    iget-object v0, v1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 537
    .local v0, "next":Lmf/org/apache/xerces/dom/ChildNode;
    iput-object v0, v4, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 538
    if-nez v0, :cond_7

    .line 540
    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v4, v5, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_1

    .line 543
    :cond_7
    iput-object v4, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_1
.end method

.method public isEqualNode(Lmf/org/w3c/dom/Node;)Z
    .locals 4
    .param p1, "arg"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v2, 0x0

    .line 859
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ChildNode;->isEqualNode(Lmf/org/w3c/dom/Node;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 877
    :cond_0
    :goto_0
    return v2

    .line 865
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 866
    .local v0, "child1":Lmf/org/w3c/dom/Node;
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 867
    .local v1, "child2":Lmf/org/w3c/dom/Node;
    :goto_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    .line 874
    :cond_2
    if-ne v0, v1, :cond_0

    .line 877
    const/4 v2, 0x1

    goto :goto_0

    .line 868
    :cond_3
    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Node;->isEqualNode(Lmf/org/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 871
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 872
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_1
.end method

.method public item(I)Lmf/org/w3c/dom/Node;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 794
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->nodeListItem(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method final lastChild()Lmf/org/apache/xerces/dom/ChildNode;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final lastChild(Lmf/org/apache/xerces/dom/ChildNode;)V
    .locals 1
    .param p1, "node"    # Lmf/org/apache/xerces/dom/ChildNode;

    .prologue
    .line 247
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object p1, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 250
    :cond_0
    return-void
.end method

.method public normalize()V
    .locals 2

    .prologue
    .line 841
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->isNormalized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 852
    :goto_0
    return-void

    .line 844
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 845
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    .line 848
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    .local v0, "kid":Lmf/org/apache/xerces/dom/ChildNode;
    :goto_1
    if-nez v0, :cond_2

    .line 851
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/ParentNode;->isNormalized(Z)V

    goto :goto_0

    .line 849
    :cond_2
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->normalize()V

    .line 848
    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_1
.end method

.method ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    return-object v0
.end method

.method public removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 1
    .param p1, "oldChild"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 477
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/ParentNode;->internalRemoveChild(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public replaceChild(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 2
    .param p1, "newChild"    # Lmf/org/w3c/dom/Node;
    .param p2, "oldChild"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 597
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replacingNode(Lmf/org/apache/xerces/dom/NodeImpl;)V

    .line 599
    invoke-virtual {p0, p1, p2, v1}, Lmf/org/apache/xerces/dom/ParentNode;->internalInsertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    .line 600
    if-eq p1, p2, :cond_0

    .line 601
    invoke-virtual {p0, p2, v1}, Lmf/org/apache/xerces/dom/ParentNode;->internalRemoveChild(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    .line 605
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replacedNode(Lmf/org/apache/xerces/dom/NodeImpl;)V

    .line 607
    return-object p2
.end method

.method protected setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 2
    .param p1, "doc"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .prologue
    .line 176
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    .line 179
    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ChildNode;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 180
    iput-object p1, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .line 181
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    .line 182
    .local v0, "child":Lmf/org/apache/xerces/dom/ChildNode;
    :goto_0
    if-nez v0, :cond_1

    .line 185
    return-void

    .line 183
    :cond_1
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/ChildNode;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 182
    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_0
.end method

.method public setReadOnly(ZZ)V
    .locals 3
    .param p1, "readOnly"    # Z
    .param p2, "deep"    # Z

    .prologue
    .line 894
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/ChildNode;->setReadOnly(ZZ)V

    .line 896
    if-eqz p2, :cond_1

    .line 898
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 899
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    .line 903
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    .line 904
    .local v0, "mykid":Lmf/org/apache/xerces/dom/ChildNode;
    :goto_0
    if-nez v0, :cond_2

    .line 911
    .end local v0    # "mykid":Lmf/org/apache/xerces/dom/ChildNode;
    :cond_1
    return-void

    .line 906
    .restart local v0    # "mykid":Lmf/org/apache/xerces/dom/ChildNode;
    :cond_2
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    .line 907
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xerces/dom/ChildNode;->setReadOnly(ZZ)V

    .line 905
    :cond_3
    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_0
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 2
    .param p1, "textContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 655
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .local v0, "child":Lmf/org/w3c/dom/Node;
    if-nez v0, :cond_1

    .line 659
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 660
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/ParentNode;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 662
    :cond_0
    return-void

    .line 656
    :cond_1
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/ParentNode;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_0
.end method

.method protected synchronizeChildren()V
    .locals 1

    .prologue
    .line 923
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren(Z)V

    .line 924
    return-void
.end method
