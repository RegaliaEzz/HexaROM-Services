.class public Lmf/org/apache/xerces/impl/xs/opti/TextImpl;
.super Lmf/org/apache/xerces/impl/xs/opti/DefaultText;
.source "TextImpl.java"


# instance fields
.field fCol:I

.field fData:Ljava/lang/String;

.field fRow:I

.field fSchemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuffer;Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;II)V
    .locals 2
    .param p1, "str"    # Ljava/lang/StringBuffer;
    .param p2, "sDOM"    # Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;
    .param p3, "row"    # I
    .param p4, "col"    # I

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/opti/DefaultText;-><init>()V

    .line 33
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fSchemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fSchemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    .line 41
    iput p3, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fRow:I

    .line 42
    iput p4, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fCol:I

    .line 43
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->uri:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->localpart:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->prefix:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->rawname:Ljava/lang/String;

    .line 44
    const/4 v0, 0x3

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->nodeType:S

    .line 45
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public getNextSibling()Lmf/org/w3c/dom/Node;
    .locals 3

    .prologue
    .line 68
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fCol:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fSchemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fRow:I

    aget-object v1, v1, v2

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fSchemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fRow:I

    aget-object v0, v0, v1

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fCol:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "#text"

    return-object v0
.end method

.method public getParentNode()Lmf/org/w3c/dom/Node;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fSchemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fRow:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPreviousSibling()Lmf/org/w3c/dom/Node;
    .locals 2

    .prologue
    .line 60
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fCol:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fSchemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fRow:I

    aget-object v0, v0, v1

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fCol:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public substringData(II)Ljava/lang/String;
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    .line 125
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 126
    :cond_1
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/4 v1, 0x1

    const-string v2, "parameter error"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 127
    :cond_2
    add-int v0, p1, p2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 128
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    add-int v1, p1, p2

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
