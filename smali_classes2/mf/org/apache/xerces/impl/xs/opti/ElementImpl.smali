.class public Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;
.super Lmf/org/apache/xerces/impl/xs/opti/DefaultElement;
.source "ElementImpl.java"


# instance fields
.field attrs:[Lmf/org/w3c/dom/Attr;

.field charOffset:I

.field col:I

.field column:I

.field fAnnotation:Ljava/lang/String;

.field fSyntheticAnnotation:Ljava/lang/String;

.field line:I

.field parentRow:I

.field row:I

.field schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "line"    # I
    .param p2, "column"    # I

    .prologue
    .line 59
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;-><init>(III)V

    .line 60
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "line"    # I
    .param p2, "column"    # I
    .param p3, "offset"    # I

    .prologue
    const/4 v0, -0x1

    .line 47
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/opti/DefaultElement;-><init>()V

    .line 48
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->row:I

    .line 49
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->col:I

    .line 50
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->parentRow:I

    .line 51
    const/4 v0, 0x1

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->nodeType:S

    .line 53
    iput p1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->line:I

    .line 54
    iput p2, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->column:I

    .line 55
    iput p3, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->charOffset:I

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "localpart"    # Ljava/lang/String;
    .param p3, "rawname"    # Ljava/lang/String;
    .param p4, "uri"    # Ljava/lang/String;
    .param p5, "line"    # I
    .param p6, "column"    # I

    .prologue
    .line 77
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "localpart"    # Ljava/lang/String;
    .param p3, "rawname"    # Ljava/lang/String;
    .param p4, "uri"    # Ljava/lang/String;
    .param p5, "line"    # I
    .param p6, "column"    # I
    .param p7, "offset"    # I

    .prologue
    const/4 v6, -0x1

    .line 65
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/opti/DefaultElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    .line 66
    iput v6, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->row:I

    .line 67
    iput v6, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->col:I

    .line 68
    iput v6, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->parentRow:I

    .line 70
    iput p5, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->line:I

    .line 71
    iput p6, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->column:I

    .line 72
    iput p7, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->charOffset:I

    .line 73
    return-void
.end method

.method private static nsEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "nsURI_1"    # Ljava/lang/String;
    .param p1, "nsURI_2"    # Ljava/lang/String;

    .prologue
    .line 263
    if-nez p0, :cond_1

    .line 264
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 267
    :goto_0
    return v0

    .line 264
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->fAnnotation:Ljava/lang/String;

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 168
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 173
    const-string v1, ""

    :goto_1
    return-object v1

    .line 169
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 168
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 193
    const-string v1, ""

    :goto_1
    return-object v1

    .line 189
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->nsEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 188
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 183
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 179
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    aget-object v1, v1, v0

    goto :goto_1

    .line 178
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 198
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 203
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 199
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->nsEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    aget-object v1, v1, v0

    goto :goto_1

    .line 198
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAttributes()Lmf/org/w3c/dom/NamedNodeMap;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Lmf/org/apache/xerces/impl/xs/opti/NamedNodeMapImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/NamedNodeMapImpl;-><init>([Lmf/org/w3c/dom/Attr;)V

    return-object v0
.end method

.method public getCharacterOffset()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->charOffset:I

    return v0
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->column:I

    return v0
.end method

.method public getFirstChild()Lmf/org/w3c/dom/Node;
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->parentRow:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->parentRow:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getLastChild()Lmf/org/w3c/dom/Node;
    .locals 3

    .prologue
    .line 114
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->parentRow:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 115
    const/4 v1, 0x0

    .line 126
    :goto_0
    return-object v1

    .line 117
    :cond_0
    const/4 v0, 0x1

    .line 118
    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->parentRow:I

    aget-object v1, v1, v2

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 123
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 124
    add-int/lit8 v0, v0, 0x1

    .line 126
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->parentRow:I

    aget-object v1, v1, v2

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    goto :goto_0

    .line 119
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->parentRow:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 120
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->parentRow:I

    aget-object v1, v1, v2

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    goto :goto_0

    .line 118
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->line:I

    return v0
.end method

.method public getNextSibling()Lmf/org/w3c/dom/Node;
    .locals 3

    .prologue
    .line 139
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->col:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->row:I

    aget-object v1, v1, v2

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->row:I

    aget-object v0, v0, v1

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->col:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getOwnerDocument()Lmf/org/w3c/dom/Document;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    return-object v0
.end method

.method public getParentNode()Lmf/org/w3c/dom/Node;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->row:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPreviousSibling()Lmf/org/w3c/dom/Node;
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->col:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->row:I

    aget-object v0, v0, v1

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->col:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getSyntheticAnnotation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->fSyntheticAnnotation:Ljava/lang/String;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->rawname:Ljava/lang/String;

    return-object v0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 208
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 213
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 209
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    const/4 v1, 0x1

    goto :goto_1

    .line 208
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 218
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 223
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 219
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->nsEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    const/4 v1, 0x1

    goto :goto_1

    .line 218
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasChildNodes()Z
    .locals 2

    .prologue
    .line 96
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->parentRow:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 228
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 234
    :goto_1
    return-void

    .line 229
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    aget-object v1, v1, v0

    invoke-interface {v1, p2}, Lmf/org/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 228
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
