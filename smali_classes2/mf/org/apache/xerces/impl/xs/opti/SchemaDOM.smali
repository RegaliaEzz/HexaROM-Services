.class public Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;
.super Lmf/org/apache/xerces/impl/xs/opti/DefaultDocument;
.source "SchemaDOM.java"


# static fields
.field static final relationsColResizeFactor:I = 0xa

.field static final relationsRowResizeFactor:I = 0xf


# instance fields
.field currLoc:I

.field private fAnnotationBuffer:Ljava/lang/StringBuffer;

.field hidden:Z

.field inCDATA:Z

.field nextFreeLoc:I

.field parent:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

.field relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/opti/DefaultDocument;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->reset()V

    .line 61
    return-void
.end method

.method private static escapeAttValue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "original"    # Ljava/lang/String;
    .param p1, "from"    # I

    .prologue
    .line 427
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 428
    .local v2, "length":I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 429
    .local v3, "newVal":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 457
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 431
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 432
    .local v0, "currChar":C
    const/16 v4, 0x22

    if-ne v0, v4, :cond_1

    .line 433
    const-string v4, "&quot;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    :cond_1
    const/16 v4, 0x3c

    if-ne v0, v4, :cond_2

    .line 436
    const-string v4, "&lt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 438
    :cond_2
    const/16 v4, 0x26

    if-ne v0, v4, :cond_3

    .line 439
    const-string v4, "&amp;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 444
    :cond_3
    const/16 v4, 0x9

    if-ne v0, v4, :cond_4

    .line 445
    const-string v4, "&#x9;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 447
    :cond_4
    const/16 v4, 0xa

    if-ne v0, v4, :cond_5

    .line 448
    const-string v4, "&#xA;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 450
    :cond_5
    const/16 v4, 0xd

    if-ne v0, v4, :cond_6

    .line 451
    const-string v4, "&#xD;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 454
    :cond_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static indent(I)V
    .locals 3
    .param p0, "amount"    # I

    .prologue
    .line 337
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p0, :cond_0

    .line 340
    return-void

    .line 338
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static processAttValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "original"    # Ljava/lang/String;

    .prologue
    .line 413
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 415
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 422
    .end local p0    # "original":Ljava/lang/String;
    :goto_1
    return-object p0

    .line 416
    .restart local p0    # "original":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 417
    .local v0, "currChar":C
    const/16 v3, 0x22

    if-eq v0, v3, :cond_1

    const/16 v3, 0x3c

    if-eq v0, v3, :cond_1

    const/16 v3, 0x26

    if-eq v0, v3, :cond_1

    .line 418
    const/16 v3, 0x9

    if-eq v0, v3, :cond_1

    const/16 v3, 0xa

    if-eq v0, v3, :cond_1

    const/16 v3, 0xd

    if-ne v0, v3, :cond_2

    .line 419
    :cond_1
    invoke-static {p0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->escapeAttValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 415
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private processElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;)V
    .locals 11
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "node"    # Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    .prologue
    const/4 v10, 0x0

    .line 93
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    iput-object v0, p3, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->prefix:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iput-object v0, p3, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->localpart:Ljava/lang/String;

    .line 95
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iput-object v0, p3, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->rawname:Ljava/lang/String;

    .line 96
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iput-object v0, p3, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->uri:Ljava/lang/String;

    .line 97
    iput-object p0, p3, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    .line 100
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v0

    new-array v7, v0, [Lmf/org/w3c/dom/Attr;

    .line 101
    .local v7, "attrs":[Lmf/org/w3c/dom/Attr;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v0

    if-lt v9, v0, :cond_3

    .line 109
    iput-object v7, p3, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    .line 112
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->nextFreeLoc:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 113
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->resizeRelations()V

    .line 118
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->currLoc:I

    aget-object v0, v0, v1

    aget-object v0, v0, v10

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->parent:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    if-eq v0, v1, :cond_1

    .line 119
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->nextFreeLoc:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->parent:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    aput-object v1, v0, v10

    .line 120
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->nextFreeLoc:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->nextFreeLoc:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->currLoc:I

    .line 124
    :cond_1
    const/4 v8, 0x0

    .line 125
    .local v8, "foundPlace":Z
    const/4 v9, 0x1

    .line 126
    const/4 v9, 0x1

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->currLoc:I

    aget-object v0, v0, v1

    array-length v0, v0

    if-lt v9, v0, :cond_4

    .line 133
    :goto_2
    if-nez v8, :cond_2

    .line 134
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->currLoc:I

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->resizeRelations(I)V

    .line 136
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->currLoc:I

    aget-object v0, v0, v1

    aput-object p3, v0, v9

    .line 138
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->parent:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->currLoc:I

    iput v1, v0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->parentRow:I

    .line 139
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->currLoc:I

    iput v0, p3, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->row:I

    .line 140
    iput v9, p3, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->col:I

    .line 141
    return-void

    .line 102
    .end local v8    # "foundPlace":Z
    :cond_3
    new-instance v0, Lmf/org/apache/xerces/impl/xs/opti/AttrImpl;

    .line 103
    invoke-interface {p2, v9}, Lmf/org/apache/xerces/xni/XMLAttributes;->getPrefix(I)Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-interface {p2, v9}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-interface {p2, v9}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-interface {p2, v9}, Lmf/org/apache/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-interface {p2, v9}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p3

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/opti/AttrImpl;-><init>(Lmf/org/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    aput-object v0, v7, v9

    .line 101
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 127
    .restart local v8    # "foundPlace":Z
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->currLoc:I

    aget-object v0, v0, v1

    aget-object v0, v0, v9

    if-nez v0, :cond_5

    .line 128
    const/4 v8, 0x1

    .line 129
    goto :goto_2

    .line 126
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method private resizeRelations()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 256
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    array-length v2, v2

    add-int/lit8 v2, v2, 0xf

    new-array v1, v2, [[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    .line 257
    .local v1, "temp":[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    array-length v0, v2

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 261
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    .line 262
    return-void

    .line 259
    :cond_0
    const/16 v2, 0xa

    new-array v2, v2, [Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    aput-object v2, v1, v0

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private resizeRelations(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 265
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    aget-object v1, v1, p1

    array-length v1, v1

    add-int/lit8 v1, v1, 0xa

    new-array v0, v1, [Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    .line 266
    .local v0, "temp":[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    aget-object v1, v1, p1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    aget-object v2, v2, p1

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    aput-object v0, v1, p1

    .line 268
    return-void
.end method

.method public static traverse(Lmf/org/w3c/dom/Node;I)V
    .locals 6
    .param p0, "node"    # Lmf/org/w3c/dom/Node;
    .param p1, "depth"    # I

    .prologue
    .line 311
    invoke-static {p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->indent(I)V

    .line 312
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 314
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->hasAttributes()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 315
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 316
    .local v0, "attrs":Lmf/org/w3c/dom/NamedNodeMap;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 321
    .end local v0    # "attrs":Lmf/org/w3c/dom/NamedNodeMap;
    .end local v2    # "i":I
    :cond_0
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 322
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 323
    add-int/lit8 p1, p1, 0x4

    .line 324
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .local v1, "child":Lmf/org/w3c/dom/Node;
    :goto_1
    if-nez v1, :cond_2

    .line 327
    add-int/lit8 p1, p1, -0x4

    .line 328
    invoke-static {p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->indent(I)V

    .line 329
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "</"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 334
    .end local v1    # "child":Lmf/org/w3c/dom/Node;
    :goto_2
    return-void

    .line 317
    .restart local v0    # "attrs":Lmf/org/w3c/dom/NamedNodeMap;
    .restart local v2    # "i":I
    :cond_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lmf/org/w3c/dom/Attr;

    invoke-interface {v3}, Lmf/org/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0, v2}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lmf/org/w3c/dom/Attr;

    invoke-interface {v3}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 316
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    .end local v0    # "attrs":Lmf/org/w3c/dom/NamedNodeMap;
    .end local v2    # "i":I
    .restart local v1    # "child":Lmf/org/w3c/dom/Node;
    :cond_2
    invoke-static {v1, p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->traverse(Lmf/org/w3c/dom/Node;I)V

    .line 324
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_1

    .line 332
    .end local v1    # "child":Lmf/org/w3c/dom/Node;
    :cond_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "/>"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method characters(Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 7
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;

    .prologue
    .line 173
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->inCDATA:Z

    if-nez v3, :cond_5

    .line 174
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    .line 175
    .local v0, "annotationBuffer":Ljava/lang/StringBuffer;
    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .local v2, "i":I
    :goto_0
    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v3, v4

    if-lt v2, v3, :cond_0

    .line 203
    .end local v0    # "annotationBuffer":Ljava/lang/StringBuffer;
    .end local v2    # "i":I
    :goto_1
    return-void

    .line 176
    .restart local v0    # "annotationBuffer":Ljava/lang/StringBuffer;
    .restart local v2    # "i":I
    :cond_0
    iget-object v3, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v1, v3, v2

    .line 177
    .local v1, "ch":C
    const/16 v3, 0x26

    if-ne v1, v3, :cond_1

    .line 178
    const-string v3, "&amp;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    :cond_1
    const/16 v3, 0x3c

    if-ne v1, v3, :cond_2

    .line 181
    const-string v3, "&lt;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 185
    :cond_2
    const/16 v3, 0x3e

    if-ne v1, v3, :cond_3

    .line 186
    const-string v3, "&gt;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 192
    :cond_3
    const/16 v3, 0xd

    if-ne v1, v3, :cond_4

    .line 193
    const-string v3, "&#xD;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 196
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 201
    .end local v0    # "annotationBuffer":Ljava/lang/StringBuffer;
    .end local v1    # "ch":C
    .end local v2    # "i":I
    :cond_5
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v5, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v6, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v3, v4, v5, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method charactersRaw(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    return-void
.end method

.method comment(Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 4
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;

    .prologue
    .line 153
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string v1, "<!--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-lez v0, :cond_0

    .line 155
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 157
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    return-void
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;II)Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;
    .locals 6
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "line"    # I
    .param p4, "column"    # I

    .prologue
    .line 87
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;III)Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    move-result-object v0

    return-object v0
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;III)Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;
    .locals 1
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "line"    # I
    .param p4, "column"    # I
    .param p5, "offset"    # I

    .prologue
    .line 75
    new-instance v0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    invoke-direct {v0, p3, p4, p5}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;-><init>(III)V

    .line 76
    .local v0, "node":Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;
    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->processElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;)V

    .line 77
    return-object v0
.end method

.method endAnnotation(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;)V
    .locals 2
    .param p1, "elemName"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "annotation"    # Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    .prologue
    .line 211
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string v1, "\n</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->fAnnotation:Ljava/lang/String;

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    .line 215
    return-void
.end method

.method endAnnotationCDATA()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string v1, "]]>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->inCDATA:Z

    .line 253
    return-void
.end method

.method endAnnotationElement(Ljava/lang/String;)V
    .locals 2
    .param p1, "elemRawName"    # Ljava/lang/String;

    .prologue
    .line 222
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    return-void
.end method

.method endAnnotationElement(Lmf/org/apache/xerces/xni/QName;)V
    .locals 1
    .param p1, "elemName"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    .line 218
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endAnnotationElement(Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public endElement()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->parent:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->row:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->currLoc:I

    .line 148
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->currLoc:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->parent:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    .line 149
    return-void
.end method

.method endSyntheticAnnotationElement(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "elemRawName"    # Ljava/lang/String;
    .param p2, "complete"    # Z

    .prologue
    .line 230
    if-eqz p2, :cond_0

    .line 231
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string v1, "\n</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->parent:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->fSyntheticAnnotation:Ljava/lang/String;

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    .line 243
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method endSyntheticAnnotationElement(Lmf/org/apache/xerces/xni/QName;Z)V
    .locals 1
    .param p1, "elemName"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "complete"    # Z

    .prologue
    .line 226
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endSyntheticAnnotationElement(Ljava/lang/String;Z)V

    .line 227
    return-void
.end method

.method public getDocumentElement()Lmf/org/w3c/dom/Element;
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    return-object v0
.end method

.method public getImplementation()Lmf/org/w3c/dom/DOMImplementation;
    .locals 1

    .prologue
    .line 349
    invoke-static {}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMImplementation;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    return-object v0
.end method

.method public printDOM()V
    .locals 0

    .prologue
    .line 305
    return-void
.end method

.method processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Lmf/org/apache/xerces/xni/XMLString;

    .prologue
    .line 162
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string v1, "<?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    iget v0, p2, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-lez v0, :cond_0

    .line 164
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v2, p2, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v3, p2, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 166
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    return-void
.end method

.method public reset()V
    .locals 6

    .prologue
    const/16 v5, 0xf

    const/4 v4, 0x0

    .line 274
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    if-eqz v2, :cond_0

    .line 275
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 278
    .end local v0    # "i":I
    :cond_0
    new-array v2, v5, [[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    .line 279
    new-instance v2, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    invoke-direct {v2, v4, v4, v4}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;-><init>(III)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->parent:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    .line 280
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->parent:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    const-string v3, "DOCUMENT_NODE"

    iput-object v3, v2, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->rawname:Ljava/lang/String;

    .line 281
    iput v4, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->currLoc:I

    .line 282
    const/4 v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->nextFreeLoc:I

    .line 283
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->inCDATA:Z

    .line 284
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-lt v0, v5, :cond_3

    .line 287
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->currLoc:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->parent:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    aput-object v3, v2, v4

    .line 288
    return-void

    .line 276
    :cond_1
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    aget-object v2, v2, v0

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 285
    .end local v1    # "j":I
    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    const/16 v3, 0xa

    new-array v3, v3, [Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    aput-object v3, v2, v0

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method startAnnotation(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/NamespaceContext;)V
    .locals 10
    .param p1, "elemRawName"    # Ljava/lang/String;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "namespaceContext"    # Lmf/org/apache/xerces/xni/NamespaceContext;

    .prologue
    .line 359
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/StringBuffer;

    const/16 v9, 0x100

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v8, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    .line 360
    :cond_0
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string v9, "<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v5, "namespaces":Ljava/util/ArrayList;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v8

    if-lt v4, v8, :cond_2

    .line 381
    invoke-interface {p3}, Lmf/org/apache/xerces/xni/NamespaceContext;->getAllPrefixes()Ljava/util/Enumeration;

    move-result-object v3

    .line 382
    .local v3, "currPrefixes":Ljava/util/Enumeration;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-nez v8, :cond_6

    .line 398
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string v9, ">\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    return-void

    .line 369
    .end local v3    # "currPrefixes":Ljava/util/Enumeration;
    :cond_2
    invoke-interface {p2, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, "aValue":Ljava/lang/String;
    invoke-interface {p2, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->getPrefix(I)Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "aPrefix":Ljava/lang/String;
    invoke-interface {p2, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "aQName":Ljava/lang/String;
    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v0, v8, :cond_3

    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v1, v8, :cond_4

    .line 374
    :cond_3
    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v0, v8, :cond_5

    .line 375
    invoke-interface {p2, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v8

    .line 374
    :goto_2
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_4
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->processAttValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 375
    :cond_5
    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_2

    .line 383
    .end local v0    # "aPrefix":Ljava/lang/String;
    .end local v1    # "aQName":Ljava/lang/String;
    .end local v2    # "aValue":Ljava/lang/String;
    .restart local v3    # "currPrefixes":Ljava/util/Enumeration;
    :cond_6
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 384
    .local v6, "prefix":Ljava/lang/String;
    invoke-interface {p3, v6}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 385
    .local v7, "uri":Ljava/lang/String;
    if-nez v7, :cond_7

    .line 386
    sget-object v7, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 388
    :cond_7
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 390
    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v6, v8, :cond_8

    .line 391
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string v9, "xmlns"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {v7}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->processAttValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 394
    :cond_8
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string v9, "xmlns:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {v7}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->processAttValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1
.end method

.method startAnnotation(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/NamespaceContext;)V
    .locals 1
    .param p1, "elemName"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "namespaceContext"    # Lmf/org/apache/xerces/xni/NamespaceContext;

    .prologue
    .line 355
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotation(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/NamespaceContext;)V

    .line 356
    return-void
.end method

.method startAnnotationCDATA()V
    .locals 2

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->inCDATA:Z

    .line 247
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string v1, "<![CDATA["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    return-void
.end method

.method startAnnotationElement(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLAttributes;)V
    .locals 4
    .param p1, "elemRawName"    # Ljava/lang/String;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;

    .prologue
    .line 404
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 409
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    return-void

    .line 406
    :cond_0
    invoke-interface {p2, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "aValue":Ljava/lang/String;
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {p2, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->processAttValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method startAnnotationElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)V
    .locals 1
    .param p1, "elemName"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;

    .prologue
    .line 401
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotationElement(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLAttributes;)V

    .line 402
    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;II)Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;
    .locals 6
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "line"    # I
    .param p4, "column"    # I

    .prologue
    .line 82
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;III)Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    move-result-object v0

    return-object v0
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;III)Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;
    .locals 1
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "line"    # I
    .param p4, "column"    # I
    .param p5, "offset"    # I

    .prologue
    .line 66
    new-instance v0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    invoke-direct {v0, p3, p4, p5}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;-><init>(III)V

    .line 67
    .local v0, "node":Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;
    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->processElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;)V

    .line 69
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->parent:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    .line 70
    return-object v0
.end method
