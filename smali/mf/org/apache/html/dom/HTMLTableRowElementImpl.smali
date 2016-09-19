.class public Lmf/org/apache/html/dom/HTMLTableRowElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLTableRowElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLTableRowElement;


# static fields
.field private static final serialVersionUID:J = 0x4b12a08e58842c27L


# instance fields
.field _cells:Lmf/org/w3c/dom/html/HTMLCollection;


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 269
    return-void
.end method


# virtual methods
.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .locals 2
    .param p1, "deep"    # Z

    .prologue
    .line 256
    invoke-super {p0, p1}, Lmf/org/apache/html/dom/HTMLElementImpl;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;

    .line 257
    .local v0, "clonedNode":Lmf/org/apache/html/dom/HTMLTableRowElementImpl;
    const/4 v1, 0x0

    iput-object v1, v0, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->_cells:Lmf/org/w3c/dom/html/HTMLCollection;

    .line 258
    return-object v0
.end method

.method public deleteCell(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 167
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 168
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_0

    .line 178
    :goto_1
    return-void

    .line 169
    :cond_0
    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLTableCellElement;

    if-eqz v1, :cond_2

    .line 170
    if-nez p1, :cond_1

    .line 171
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_1

    .line 174
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 176
    :cond_2
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public getAlign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    const-string v0, "align"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBgColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-string v0, "bgcolor"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCells()Lmf/org/w3c/dom/html/HTMLCollection;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->_cells:Lmf/org/w3c/dom/html/HTMLCollection;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lmf/org/apache/html/dom/HTMLCollectionImpl;

    const/4 v1, -0x3

    invoke-direct {v0, p0, v1}, Lmf/org/apache/html/dom/HTMLCollectionImpl;-><init>(Lmf/org/w3c/dom/html/HTMLElement;S)V

    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->_cells:Lmf/org/w3c/dom/html/HTMLCollection;

    .line 117
    :cond_0
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->_cells:Lmf/org/w3c/dom/html/HTMLCollection;

    return-object v0
.end method

.method public getCh()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 210
    const-string v1, "char"

    invoke-virtual {p0, v1}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "ch":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 212
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 214
    :cond_0
    return-object v0
.end method

.method public getChOff()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    const-string v0, "charoff"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRowIndex()I
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 47
    .local v0, "parent":Lmf/org/w3c/dom/Node;
    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLTableSectionElement;

    if-eqz v1, :cond_0

    .line 48
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 50
    :cond_0
    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLTableElement;

    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->getRowIndex(Lmf/org/w3c/dom/Node;)I

    move-result v1

    .line 53
    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method getRowIndex(Lmf/org/w3c/dom/Node;)I
    .locals 3
    .param p1, "parent"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 102
    check-cast p1, Lmf/org/w3c/dom/html/HTMLElement;

    .end local p1    # "parent":Lmf/org/w3c/dom/Node;
    const-string v2, "TR"

    invoke-interface {p1, v2}, Lmf/org/w3c/dom/html/HTMLElement;->getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object v1

    .line 103
    .local v1, "rows":Lmf/org/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 108
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 104
    .restart local v0    # "i":I
    :cond_1
    invoke-interface {v1, v0}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSectionRowIndex()I
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 76
    .local v0, "parent":Lmf/org/w3c/dom/Node;
    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLTableSectionElement;

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->getRowIndex(Lmf/org/w3c/dom/Node;)I

    move-result v1

    .line 79
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getVAlign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    const-string/jumbo v0, "valign"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insertCell(I)Lmf/org/w3c/dom/html/HTMLElement;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 146
    new-instance v1, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v2

    check-cast v2, Lmf/org/apache/html/dom/HTMLDocumentImpl;

    const-string v3, "TD"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 147
    .local v1, "newCell":Lmf/org/w3c/dom/html/HTMLElement;
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 148
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0, v1}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 159
    :goto_1
    return-object v1

    .line 149
    :cond_0
    instance-of v2, v0, Lmf/org/w3c/dom/html/HTMLTableCellElement;

    if-eqz v2, :cond_2

    .line 150
    if-nez p1, :cond_1

    .line 151
    invoke-virtual {p0, v1, v0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_1

    .line 154
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 156
    :cond_2
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 1
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 189
    const-string v0, "align"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public setBgColor(Ljava/lang/String;)V
    .locals 1
    .param p1, "bgColor"    # Ljava/lang/String;

    .prologue
    .line 201
    const-string v0, "bgcolor"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public setCells(Lmf/org/w3c/dom/html/HTMLCollection;)V
    .locals 2
    .param p1, "cells"    # Lmf/org/w3c/dom/html/HTMLCollection;

    .prologue
    .line 126
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 127
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_0

    .line 131
    const/4 v1, 0x0

    .line 132
    .local v1, "i":I
    invoke-interface {p1, v1}, Lmf/org/w3c/dom/html/HTMLCollection;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 133
    :goto_1
    if-nez v0, :cond_1

    .line 138
    return-void

    .line 128
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 129
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 134
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 135
    add-int/lit8 v1, v1, 0x1

    .line 136
    invoke-interface {p1, v1}, Lmf/org/w3c/dom/html/HTMLCollection;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_1
.end method

.method public setCh(Ljava/lang/String;)V
    .locals 2
    .param p1, "ch"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 221
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 224
    :cond_0
    const-string v0, "char"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public setChOff(Ljava/lang/String;)V
    .locals 1
    .param p1, "chOff"    # Ljava/lang/String;

    .prologue
    .line 236
    const-string v0, "charoff"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public setRowIndex(I)V
    .locals 2
    .param p1, "rowIndex"    # I

    .prologue
    .line 61
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 62
    .local v0, "parent":Lmf/org/w3c/dom/Node;
    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLTableSectionElement;

    if-eqz v1, :cond_0

    .line 63
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 65
    :cond_0
    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLTableElement;

    if-eqz v1, :cond_1

    .line 66
    check-cast v0, Lmf/org/apache/html/dom/HTMLTableElementImpl;

    .end local v0    # "parent":Lmf/org/w3c/dom/Node;
    invoke-virtual {v0, p1, p0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->insertRowX(ILmf/org/apache/html/dom/HTMLTableRowElementImpl;)V

    .line 68
    :cond_1
    return-void
.end method

.method public setSectionRowIndex(I)V
    .locals 2
    .param p1, "sectionRowIndex"    # I

    .prologue
    .line 87
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 88
    .local v0, "parent":Lmf/org/w3c/dom/Node;
    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLTableSectionElement;

    if-eqz v1, :cond_0

    .line 89
    check-cast v0, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;

    .end local v0    # "parent":Lmf/org/w3c/dom/Node;
    invoke-virtual {v0, p1, p0}, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;->insertRowX(ILmf/org/apache/html/dom/HTMLTableRowElementImpl;)I

    .line 91
    :cond_0
    return-void
.end method

.method public setVAlign(Ljava/lang/String;)V
    .locals 1
    .param p1, "vAlign"    # Ljava/lang/String;

    .prologue
    .line 248
    const-string/jumbo v0, "valign"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method
