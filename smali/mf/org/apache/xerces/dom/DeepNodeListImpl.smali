.class public Lmf/org/apache/xerces/dom/DeepNodeListImpl;
.super Ljava/lang/Object;
.source "DeepNodeListImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/NodeList;


# instance fields
.field protected changes:I

.field protected enableNS:Z

.field protected nodes:Ljava/util/ArrayList;

.field protected nsName:Ljava/lang/String;

.field protected rootNode:Lmf/org/apache/xerces/dom/NodeImpl;

.field protected tagName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V
    .locals 1
    .param p1, "rootNode"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "tagName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput v0, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->changes:I

    .line 87
    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->enableNS:Z

    .line 95
    iput-object p1, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->rootNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 96
    iput-object p2, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->tagName:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    .line 98
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "rootNode"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "nsName"    # Ljava/lang/String;
    .param p3, "tagName"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/dom/DeepNodeListImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    .line 104
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .end local p2    # "nsName":Ljava/lang/String;
    :goto_0
    iput-object p2, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->enableNS:Z

    .line 106
    return-void

    .line 104
    .restart local p2    # "nsName":Ljava/lang/String;
    :cond_0
    const/4 p2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 115
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->item(I)Lmf/org/w3c/dom/Node;

    .line 116
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public item(I)Lmf/org/w3c/dom/Node;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 124
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->rootNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/NodeImpl;->changes()I

    move-result v2

    iget v3, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->changes:I

    if-eq v2, v3, :cond_0

    .line 125
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    .line 126
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->rootNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/NodeImpl;->changes()I

    move-result v2

    iput v2, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->changes:I

    .line 130
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 131
    .local v0, "currentSize":I
    if-ge p1, v0, :cond_1

    .line 132
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/w3c/dom/Node;

    .line 154
    :goto_0
    return-object v2

    .line 138
    :cond_1
    if-nez v0, :cond_4

    .line 139
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->rootNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 146
    .local v1, "thisNode":Lmf/org/w3c/dom/Node;
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_5

    :cond_3
    move-object v2, v1

    .line 154
    goto :goto_0

    .line 142
    .end local v1    # "thisNode":Lmf/org/w3c/dom/Node;
    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 146
    .restart local v1    # "thisNode":Lmf/org/w3c/dom/Node;
    goto :goto_1

    .line 147
    :cond_5
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nextMatchingElementAfter(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_2

    .line 149
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected nextMatchingElementAfter(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 4
    .param p1, "current"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 171
    :cond_0
    if-nez p1, :cond_1

    .line 245
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 173
    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 174
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object p1

    .line 197
    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->rootNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-eq p1, v2, :cond_0

    .line 198
    if-eqz p1, :cond_0

    .line 199
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 200
    iget-boolean v2, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->enableNS:Z

    if-nez v2, :cond_7

    .line 201
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->tagName:Ljava/lang/String;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, p1

    .line 202
    check-cast v2, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/ElementImpl;->getTagName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->tagName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move-object v2, p1

    .line 204
    goto :goto_0

    .line 178
    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->rootNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-eq p1, v2, :cond_4

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .local v1, "next":Lmf/org/w3c/dom/Node;
    if-eqz v1, :cond_4

    .line 179
    move-object p1, v1

    .line 180
    goto :goto_1

    .line 184
    .end local v1    # "next":Lmf/org/w3c/dom/Node;
    :cond_4
    const/4 v1, 0x0

    .line 185
    .restart local v1    # "next":Lmf/org/w3c/dom/Node;
    :goto_2
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->rootNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-ne p1, v2, :cond_6

    .line 192
    :cond_5
    move-object p1, v1

    goto :goto_1

    .line 188
    :cond_6
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 189
    if-nez v1, :cond_5

    .line 186
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_2

    .line 208
    .end local v1    # "next":Lmf/org/w3c/dom/Node;
    :cond_7
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->tagName:Ljava/lang/String;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 209
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v2, p1

    .line 210
    goto :goto_0

    :cond_8
    move-object v0, p1

    .line 212
    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    .line 213
    .local v0, "el":Lmf/org/apache/xerces/dom/ElementImpl;
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 214
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 215
    :cond_9
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_a
    move-object v2, p1

    .line 218
    goto/16 :goto_0

    .end local v0    # "el":Lmf/org/apache/xerces/dom/ElementImpl;
    :cond_b
    move-object v0, p1

    .line 222
    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    .line 223
    .restart local v0    # "el":Lmf/org/apache/xerces/dom/ElementImpl;
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getLocalName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 224
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getLocalName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->tagName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v2, p1

    .line 226
    goto/16 :goto_0

    .line 228
    :cond_c
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 229
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 230
    :cond_d
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 231
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_e
    move-object v2, p1

    .line 233
    goto/16 :goto_0
.end method
