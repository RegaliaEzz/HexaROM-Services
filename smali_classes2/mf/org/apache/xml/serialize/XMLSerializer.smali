.class public Lmf/org/apache/xml/serialize/XMLSerializer;
.super Lmf/org/apache/xml/serialize/BaseMarkupSerializer;
.source "XMLSerializer.java"


# static fields
.field protected static final DEBUG:Z = false

.field protected static final PREFIX:Ljava/lang/String; = "NS"


# instance fields
.field protected fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

.field protected fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

.field protected fNamespacePrefixes:Z

.field protected fNamespaces:Z

.field private fPreserveSpace:Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 147
    new-instance v0, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v1, "xml"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    .line 130
    iput-boolean v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "format"    # Lmf/org/apache/xml/serialize/OutputFormat;

    .prologue
    const/4 v2, 0x0

    .line 186
    if-eqz p2, :cond_0

    .end local p2    # "format":Lmf/org/apache/xml/serialize/OutputFormat;
    :goto_0
    invoke-direct {p0, p2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    .line 130
    iput-boolean v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    .line 187
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v1, "xml"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->setMethod(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    .line 189
    return-void

    .line 186
    .restart local p2    # "format":Lmf/org/apache/xml/serialize/OutputFormat;
    :cond_0
    new-instance p2, Lmf/org/apache/xml/serialize/OutputFormat;

    .end local p2    # "format":Lmf/org/apache/xml/serialize/OutputFormat;
    const-string v0, "xml"

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, v2}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "format"    # Lmf/org/apache/xml/serialize/OutputFormat;

    .prologue
    const/4 v2, 0x0

    .line 171
    if-eqz p2, :cond_0

    .end local p2    # "format":Lmf/org/apache/xml/serialize/OutputFormat;
    :goto_0
    invoke-direct {p0, p2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    .line 130
    iput-boolean v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    .line 172
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v1, "xml"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->setMethod(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->setOutputCharStream(Ljava/io/Writer;)V

    .line 174
    return-void

    .line 171
    .restart local p2    # "format":Lmf/org/apache/xml/serialize/OutputFormat;
    :cond_0
    new-instance p2, Lmf/org/apache/xml/serialize/OutputFormat;

    .end local p2    # "format":Lmf/org/apache/xml/serialize/OutputFormat;
    const-string v0, "xml"

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, v2}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public constructor <init>(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3
    .param p1, "format"    # Lmf/org/apache/xml/serialize/OutputFormat;

    .prologue
    const/4 v2, 0x0

    .line 157
    if-eqz p1, :cond_0

    .end local p1    # "format":Lmf/org/apache/xml/serialize/OutputFormat;
    :goto_0
    invoke-direct {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    .line 130
    iput-boolean v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    .line 158
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v1, "xml"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->setMethod(Ljava/lang/String;)V

    .line 159
    return-void

    .line 157
    .restart local p1    # "format":Lmf/org/apache/xml/serialize/OutputFormat;
    :cond_0
    new-instance p1, Lmf/org/apache/xml/serialize/OutputFormat;

    .end local p1    # "format":Lmf/org/apache/xml/serialize/OutputFormat;
    const-string v0, "xml"

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v2}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private extractNamespaces(Lorg/xml/sax/Attributes;)Lorg/xml/sax/Attributes;
    .locals 7
    .param p1, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x5

    .line 1200
    if-nez p1, :cond_1

    .line 1201
    const/4 v0, 0x0

    .line 1222
    :cond_0
    return-object v0

    .line 1203
    :cond_1
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    .line 1204
    .local v2, "length":I
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0, p1}, Lorg/xml/sax/helpers/AttributesImpl;-><init>(Lorg/xml/sax/Attributes;)V

    .line 1206
    .local v0, "attrsOnly":Lorg/xml/sax/helpers/AttributesImpl;
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1207
    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getQName(I)Ljava/lang/String;

    move-result-object v3

    .line 1212
    .local v3, "rawName":Ljava/lang/String;
    const-string v4, "xmlns"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1213
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 1214
    const-string v4, ""

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lmf/org/apache/xml/serialize/XMLSerializer;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/AttributesImpl;->removeAttribute(I)V

    .line 1206
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1216
    :cond_3
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_2

    .line 1217
    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lmf/org/apache/xml/serialize/XMLSerializer;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/AttributesImpl;->removeAttribute(I)V

    goto :goto_1
.end method

.method private printAttribute(Ljava/lang/String;Ljava/lang/String;ZLmf/org/w3c/dom/Attr;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "isSpecified"    # Z
    .param p4, "attr"    # Lmf/org/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1138
    if-nez p3, :cond_0

    iget-short v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->features:S

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_2

    .line 1139
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    if-eqz v1, :cond_1

    .line 1140
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1141
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v1, p4}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    .line 1142
    .local v0, "code":S
    packed-switch v0, :pswitch_data_0

    .line 1152
    .end local v0    # "code":S
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    .line 1153
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1154
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1155
    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    .line 1156
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 1162
    :cond_2
    const-string v1, "xml:space"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1163
    const-string v1, "preserve"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1164
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fPreserveSpace:Z

    .line 1168
    :cond_3
    :goto_0
    :pswitch_0
    return-void

    .line 1166
    :cond_4
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/OutputFormat;->getPreserveSpace()Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fPreserveSpace:Z

    goto :goto_0

    .line 1142
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private printNamespaceAttr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1108
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    .line 1109
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne p1, v0, :cond_0

    .line 1113
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1120
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    .line 1122
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 1123
    return-void

    .line 1118
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xmlns:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected checkUnboundNamespacePrefixedNode(Lmf/org/w3c/dom/Node;)V
    .locals 8
    .param p1, "node"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1395
    iget-boolean v6, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    if-eqz v6, :cond_0

    .line 1408
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .local v2, "child":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v2, :cond_1

    .line 1458
    .end local v2    # "child":Lmf/org/w3c/dom/Node;
    :cond_0
    return-void

    .line 1409
    .restart local v2    # "child":Lmf/org/w3c/dom/Node;
    :cond_1
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v4

    .line 1417
    .local v4, "next":Lmf/org/w3c/dom/Node;
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    .line 1418
    .local v5, "prefix":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 1419
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6

    :cond_2
    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 1420
    :goto_1
    iget-object v6, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v6, v5}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    if-eqz v5, :cond_3

    .line 1421
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "The replacement text of the entity node \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1422
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1423
    const-string v7, "\' contains an element node \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1424
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1425
    const-string v7, "\' with an undeclared prefix \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1426
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1421
    invoke-virtual {p0, v6}, Lmf/org/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    .line 1429
    :cond_3
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 1431
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 1433
    .local v1, "attrs":Lmf/org/w3c/dom/NamedNodeMap;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-interface {v1}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    if-lt v3, v6, :cond_7

    .line 1453
    .end local v1    # "attrs":Lmf/org/w3c/dom/NamedNodeMap;
    .end local v3    # "i":I
    :cond_4
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1454
    invoke-virtual {p0, v2}, Lmf/org/apache/xml/serialize/XMLSerializer;->checkUnboundNamespacePrefixedNode(Lmf/org/w3c/dom/Node;)V

    .line 1408
    :cond_5
    move-object v2, v4

    goto :goto_0

    .line 1419
    :cond_6
    iget-object v6, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v6, v5}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1435
    .restart local v1    # "attrs":Lmf/org/w3c/dom/NamedNodeMap;
    .restart local v3    # "i":I
    :cond_7
    invoke-interface {v1, v3}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 1436
    .local v0, "attrPrefix":Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 1437
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_a

    :cond_8
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 1438
    :goto_3
    iget-object v6, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v6, v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9

    if-eqz v0, :cond_9

    .line 1439
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "The replacement text of the entity node \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1440
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1441
    const-string v7, "\' contains an element node \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1442
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1443
    const-string v7, "\' with an attribute \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1444
    invoke-interface {v1, v3}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1445
    const-string v7, "\' an undeclared prefix \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1446
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1439
    invoke-virtual {p0, v6}, Lmf/org/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    .line 1433
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1437
    :cond_a
    iget-object v6, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v6, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 528
    invoke-virtual {p0, v0, v0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "rawName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 380
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xml/serialize/XMLSerializer;->endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "except":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "rawName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 398
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->unindent()V

    .line 399
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    .line 400
    .local v0, "state":Lmf/org/apache/xml/serialize/ElementState;
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v1, :cond_1

    .line 401
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "/>"

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 417
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->leaveElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    .line 418
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    .line 419
    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    .line 420
    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    .line 421
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->isDocumentState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->flush()V

    .line 423
    :cond_0
    return-void

    .line 404
    :cond_1
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v1, :cond_2

    .line 405
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "]]>"

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 409
    :cond_2
    iget-boolean v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_indenting:Z

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    if-eqz v1, :cond_4

    .line 410
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    .line 411
    :cond_4
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "</"

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    iget-object v2, v0, Lmf/org/apache/xml/serialize/ElementState;->rawName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 413
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_0
.end method

.method protected getEntityRef(I)Ljava/lang/String;
    .locals 1
    .param p1, "ch"    # I

    .prologue
    .line 1173
    sparse-switch p1, :sswitch_data_0

    .line 1185
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1175
    :sswitch_0
    const-string v0, "lt"

    goto :goto_0

    .line 1177
    :sswitch_1
    const-string v0, "gt"

    goto :goto_0

    .line 1179
    :sswitch_2
    const-string v0, "quot"

    goto :goto_0

    .line 1181
    :sswitch_3
    const-string v0, "apos"

    goto :goto_0

    .line 1183
    :sswitch_4
    const-string v0, "amp"

    goto :goto_0

    .line 1173
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x26 -> :sswitch_4
        0x27 -> :sswitch_3
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method protected printEscaped(Ljava/lang/String;)V
    .locals 5
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1229
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1230
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 1255
    return-void

    .line 1231
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1232
    .local v0, "ch":I
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1233
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_1

    .line 1234
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v3, v4}, Lmf/org/apache/xml/serialize/XMLSerializer;->surrogates(IIZ)V

    .line 1230
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1236
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The character \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is an invalid XML character"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_1

    .line 1241
    :cond_2
    const/16 v3, 0xa

    if-eq v0, v3, :cond_3

    const/16 v3, 0xd

    if-eq v0, v3, :cond_3

    const/16 v3, 0x9

    if-ne v0, v3, :cond_4

    .line 1242
    :cond_3
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->printHex(I)V

    goto :goto_1

    .line 1243
    :cond_4
    const/16 v3, 0x3c

    if-ne v0, v3, :cond_5

    .line 1244
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v4, "&lt;"

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    .line 1245
    :cond_5
    const/16 v3, 0x26

    if-ne v0, v3, :cond_6

    .line 1246
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v4, "&amp;"

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    .line 1247
    :cond_6
    const/16 v3, 0x22

    if-ne v0, v3, :cond_7

    .line 1248
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v4, "&quot;"

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    .line 1249
    :cond_7
    const/16 v3, 0x20

    if-lt v0, v3, :cond_8

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    int-to-char v4, v0

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1250
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    int-to-char v4, v0

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    .line 1252
    :cond_8
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->printHex(I)V

    goto :goto_1
.end method

.method protected printText(Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "preserveSpace"    # Z
    .param p3, "unescaped"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1281
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1282
    .local v2, "length":I
    if-eqz p2, :cond_5

    .line 1287
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 1327
    :cond_0
    return-void

    .line 1288
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1289
    .local v0, "ch":C
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1291
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_2

    .line 1292
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v0, v3, v5}, Lmf/org/apache/xml/serialize/XMLSerializer;->surrogates(IIZ)V

    .line 1287
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1294
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The character \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is an invalid XML character"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_1

    .line 1298
    :cond_3
    if-eqz p3, :cond_4

    .line 1299
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    .line 1301
    :cond_4
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->printXMLChar(I)V

    goto :goto_1

    .line 1309
    .end local v0    # "ch":C
    .end local v1    # "index":I
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "index":I
    :goto_2
    if-ge v1, v2, :cond_0

    .line 1310
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1311
    .restart local v0    # "ch":C
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1313
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_6

    .line 1314
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v0, v3, v5}, Lmf/org/apache/xml/serialize/XMLSerializer;->surrogates(IIZ)V

    .line 1309
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1316
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The character \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is an invalid XML character"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_3

    .line 1321
    :cond_7
    if-eqz p3, :cond_8

    .line 1322
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_3

    .line 1324
    :cond_8
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->printXMLChar(I)V

    goto :goto_3
.end method

.method protected printText([CIIZZ)V
    .locals 6
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "preserveSpace"    # Z
    .param p5, "unescaped"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1334
    if-eqz p4, :cond_8

    move v1, p3

    .end local p3    # "length":I
    .local v1, "length":I
    move v2, p2

    .line 1339
    .end local p2    # "start":I
    .local v2, "start":I
    :goto_0
    add-int/lit8 p3, v1, -0x1

    .end local v1    # "length":I
    .restart local p3    # "length":I
    if-gtz v1, :cond_0

    move p2, v2

    .line 1384
    .end local v2    # "start":I
    .restart local p2    # "start":I
    :goto_1
    return-void

    .line 1340
    .end local p2    # "start":I
    .restart local v2    # "start":I
    :cond_0
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "start":I
    .restart local p2    # "start":I
    aget-char v0, p1, v2

    .line 1341
    .local v0, "ch":C
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1343
    add-int/lit8 v1, p3, -0x1

    .end local p3    # "length":I
    .restart local v1    # "length":I
    if-lez p3, :cond_1

    .line 1344
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "start":I
    .restart local v2    # "start":I
    aget-char v3, p1, p2

    invoke-virtual {p0, v0, v3, v5}, Lmf/org/apache/xml/serialize/XMLSerializer;->surrogates(IIZ)V

    goto :goto_0

    .line 1347
    .end local v2    # "start":I
    .restart local p2    # "start":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The character \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is an invalid XML character"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    move v2, p2

    .line 1349
    .end local p2    # "start":I
    .restart local v2    # "start":I
    goto :goto_0

    .line 1351
    .end local v1    # "length":I
    .end local v2    # "start":I
    .restart local p2    # "start":I
    .restart local p3    # "length":I
    :cond_2
    if-eqz p5, :cond_3

    .line 1352
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    move v1, p3

    .end local p3    # "length":I
    .restart local v1    # "length":I
    move v2, p2

    .line 1353
    .end local p2    # "start":I
    .restart local v2    # "start":I
    goto :goto_0

    .line 1355
    .end local v1    # "length":I
    .end local v2    # "start":I
    .restart local p2    # "start":I
    .restart local p3    # "length":I
    :cond_3
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->printXMLChar(I)V

    move v1, p3

    .end local p3    # "length":I
    .restart local v1    # "length":I
    move v2, p2

    .end local p2    # "start":I
    .restart local v2    # "start":I
    goto :goto_0

    .line 1365
    .end local v0    # "ch":C
    .end local v1    # "length":I
    .restart local p3    # "length":I
    :cond_4
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "start":I
    .restart local p2    # "start":I
    aget-char v0, p1, v2

    .line 1366
    .restart local v0    # "ch":C
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1368
    add-int/lit8 v1, p3, -0x1

    .end local p3    # "length":I
    .restart local v1    # "length":I
    if-lez p3, :cond_5

    .line 1369
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "start":I
    .restart local v2    # "start":I
    aget-char v3, p1, p2

    invoke-virtual {p0, v0, v3, v5}, Lmf/org/apache/xml/serialize/XMLSerializer;->surrogates(IIZ)V

    .line 1364
    .end local v0    # "ch":C
    :goto_2
    add-int/lit8 p3, v1, -0x1

    .end local v1    # "length":I
    .restart local p3    # "length":I
    if-gtz v1, :cond_4

    move p2, v2

    .end local v2    # "start":I
    .restart local p2    # "start":I
    goto :goto_1

    .line 1372
    .end local p3    # "length":I
    .restart local v0    # "ch":C
    .restart local v1    # "length":I
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The character \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is an invalid XML character"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    move v2, p2

    .line 1374
    .end local p2    # "start":I
    .restart local v2    # "start":I
    goto :goto_2

    .line 1376
    .end local v1    # "length":I
    .end local v2    # "start":I
    .restart local p2    # "start":I
    .restart local p3    # "length":I
    :cond_6
    if-eqz p5, :cond_7

    .line 1377
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    move v1, p3

    .end local p3    # "length":I
    .restart local v1    # "length":I
    move v2, p2

    .line 1378
    .end local p2    # "start":I
    .restart local v2    # "start":I
    goto :goto_2

    .line 1380
    .end local v1    # "length":I
    .end local v2    # "start":I
    .restart local p2    # "start":I
    .restart local p3    # "length":I
    :cond_7
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->printXMLChar(I)V

    .end local v0    # "ch":C
    :cond_8
    move v1, p3

    .end local p3    # "length":I
    .restart local v1    # "length":I
    move v2, p2

    .end local p2    # "start":I
    .restart local v2    # "start":I
    goto :goto_2
.end method

.method protected printXMLChar(I)V
    .locals 2
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1259
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 1260
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->printHex(I)V

    .line 1275
    :goto_0
    return-void

    .line 1261
    :cond_0
    const/16 v0, 0x3c

    if-ne p1, v0, :cond_1

    .line 1262
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "&lt;"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    .line 1263
    :cond_1
    const/16 v0, 0x26

    if-ne p1, v0, :cond_2

    .line 1264
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "&amp;"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    .line 1265
    :cond_2
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_3

    .line 1268
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "&gt;"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    .line 1269
    :cond_3
    const/16 v0, 0xa

    if-eq p1, v0, :cond_4

    const/16 v0, 0x9

    if-eq p1, v0, :cond_4

    .line 1270
    const/16 v0, 0x20

    if-lt p1, v0, :cond_5

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1271
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_0

    .line 1273
    :cond_5
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->printHex(I)V

    goto :goto_0
.end method

.method public reset()Z
    .locals 3

    .prologue
    .line 1461
    invoke-super {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    .line 1462
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    if-eqz v0, :cond_0

    .line 1463
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->reset()V

    .line 1466
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1468
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected serializeElement(Lmf/org/w3c/dom/Element;)V
    .locals 29
    .param p1, "elem"    # Lmf/org/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 651
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/util/NamespaceSupport;->reset()V

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/util/NamespaceSupport;->pushContext()V

    .line 664
    :cond_0
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v21

    .line 665
    .local v21, "tagName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v20

    .line 666
    .local v20, "state":Lmf/org/apache/xml/serialize/ElementState;
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->isDocumentState()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 672
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_started:Z

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 673
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/XMLSerializer;->startDocument(Ljava/lang/String;)V

    .line 696
    :cond_1
    :goto_0
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmf/org/apache/xml/serialize/XMLSerializer;->fPreserveSpace:Z

    .line 699
    const/4 v14, 0x0

    .line 700
    .local v14, "length":I
    const/4 v6, 0x0

    .line 702
    .local v6, "attrMap":Lmf/org/w3c/dom/NamedNodeMap;
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->hasAttributes()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 703
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 704
    invoke-interface {v6}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v14

    .line 707
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    move/from16 v24, v0

    if-nez v24, :cond_c

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v24, v0

    const/16 v25, 0x3c

    invoke-virtual/range {v24 .. v25}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    .line 717
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-lt v13, v14, :cond_a

    .line 1063
    :cond_3
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->hasChildNodes()Z

    move-result v24

    if-eqz v24, :cond_31

    .line 1066
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fPreserveSpace:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v21

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xml/serialize/XMLSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v20

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->isCDataElement(Ljava/lang/String;)Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->isNonEscapingElement(Ljava/lang/String;)Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    .line 1069
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v7

    .line 1070
    .local v7, "child":Lmf/org/w3c/dom/Node;
    :goto_2
    if-nez v7, :cond_30

    .line 1074
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/util/NamespaceSupport;->popContext()V

    .line 1077
    :cond_4
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    .end local v7    # "child":Lmf/org/w3c/dom/Node;
    :cond_5
    :goto_3
    return-void

    .line 679
    .end local v6    # "attrMap":Lmf/org/w3c/dom/NamedNodeMap;
    .end local v13    # "i":I
    .end local v14    # "length":I
    :cond_6
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    move/from16 v24, v0

    if-eqz v24, :cond_7

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v24, v0

    const/16 v25, 0x3e

    invoke-virtual/range {v24 .. v25}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 682
    :cond_7
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    move/from16 v24, v0

    if-eqz v24, :cond_8

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v24, v0

    const-string v25, "]]>"

    invoke-virtual/range {v24 .. v25}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 684
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    .line 689
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_indenting:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 690
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    move/from16 v24, v0

    if-nez v24, :cond_9

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    move/from16 v24, v0

    if-nez v24, :cond_9

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 691
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    goto/16 :goto_0

    .line 718
    .restart local v6    # "attrMap":Lmf/org/w3c/dom/NamedNodeMap;
    .restart local v13    # "i":I
    .restart local v14    # "length":I
    :cond_a
    invoke-interface {v6, v13}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lmf/org/w3c/dom/Attr;

    .line 719
    .local v5, "attr":Lmf/org/w3c/dom/Attr;
    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v18

    .line 720
    .local v18, "name":Ljava/lang/String;
    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v23

    .line 721
    .local v23, "value":Ljava/lang/String;
    if-nez v23, :cond_b

    .line 722
    const-string v23, ""

    .line 723
    :cond_b
    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v24

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v5}, Lmf/org/apache/xml/serialize/XMLSerializer;->printAttribute(Ljava/lang/String;Ljava/lang/String;ZLmf/org/w3c/dom/Attr;)V

    .line 717
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 736
    .end local v5    # "attr":Lmf/org/w3c/dom/Attr;
    .end local v13    # "i":I
    .end local v18    # "name":Ljava/lang/String;
    .end local v23    # "value":Ljava/lang/String;
    :cond_c
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_4
    if-lt v13, v14, :cond_15

    .line 789
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v22

    .line 790
    .local v22, "uri":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getPrefix()Ljava/lang/String;

    move-result-object v19

    .line 797
    .local v19, "prefix":Ljava/lang/String;
    if-eqz v22, :cond_1c

    if-eqz v19, :cond_1c

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v24

    if-nez v24, :cond_1c

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_1c

    .line 801
    const/16 v19, 0x0

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v24, v0

    const/16 v25, 0x3c

    invoke-virtual/range {v24 .. v25}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v24, v0

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    .line 839
    :goto_5
    if-eqz v22, :cond_1e

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 841
    if-eqz v19, :cond_d

    .line 842
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v24

    if-nez v24, :cond_1d

    :cond_d
    sget-object v19, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 843
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_f

    .line 854
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    move/from16 v24, v0

    if-eqz v24, :cond_e

    .line 855
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xml/serialize/XMLSerializer;->printNamespaceAttr(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 898
    :cond_f
    :goto_7
    const/4 v13, 0x0

    :goto_8
    if-ge v13, v14, :cond_3

    .line 900
    invoke-interface {v6, v13}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lmf/org/w3c/dom/Attr;

    .line 901
    .restart local v5    # "attr":Lmf/org/w3c/dom/Attr;
    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v23

    .line 902
    .restart local v23    # "value":Ljava/lang/String;
    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v18

    .line 904
    .restart local v18    # "name":Ljava/lang/String;
    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v22

    .line 907
    if-eqz v22, :cond_10

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v24

    if-nez v24, :cond_10

    .line 908
    const/16 v22, 0x0

    .line 910
    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v18

    .line 917
    :cond_10
    if-nez v23, :cond_11

    .line 918
    sget-object v23, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 921
    :cond_11
    if-eqz v22, :cond_2d

    .line 922
    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v19

    .line 923
    if-nez v19, :cond_21

    sget-object v19, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 924
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 931
    .local v16, "localpart":Ljava/lang/String;
    if-eqz v22, :cond_24

    sget-object v24, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_24

    .line 933
    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v19

    .line 934
    if-eqz v19, :cond_12

    .line 935
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v24

    if-nez v24, :cond_22

    :cond_12
    sget-object v19, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 936
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 937
    sget-object v24, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_23

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 939
    .local v15, "localUri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 940
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_14

    .line 941
    if-nez v15, :cond_14

    .line 946
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    move/from16 v24, v0

    if-eqz v24, :cond_13

    .line 947
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xml/serialize/XMLSerializer;->printNamespaceAttr(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 898
    .end local v15    # "localUri":Ljava/lang/String;
    .end local v16    # "localpart":Ljava/lang/String;
    :cond_14
    :goto_b
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_8

    .line 738
    .end local v5    # "attr":Lmf/org/w3c/dom/Attr;
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "prefix":Ljava/lang/String;
    .end local v22    # "uri":Ljava/lang/String;
    .end local v23    # "value":Ljava/lang/String;
    :cond_15
    invoke-interface {v6, v13}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lmf/org/w3c/dom/Attr;

    .line 739
    .restart local v5    # "attr":Lmf/org/w3c/dom/Attr;
    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v22

    .line 741
    .restart local v22    # "uri":Ljava/lang/String;
    if-eqz v22, :cond_19

    sget-object v24, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_19

    .line 743
    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v23

    .line 744
    .restart local v23    # "value":Ljava/lang/String;
    if-nez v23, :cond_16

    .line 745
    sget-object v23, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 748
    :cond_16
    sget-object v24, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_17

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v24, v0

    if-eqz v24, :cond_19

    .line 751
    const-string v24, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v25, "CantBindXMLNS"

    const/16 v26, 0x0

    .line 750
    invoke-static/range {v24 .. v26}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 752
    .local v17, "msg":Ljava/lang/String;
    const/16 v24, 0x2

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v5}, Lmf/org/apache/xml/serialize/XMLSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    move-result v8

    .line 754
    .local v8, "continueProcess":Z
    if-nez v8, :cond_19

    .line 756
    new-instance v24, Ljava/lang/RuntimeException;

    .line 758
    const-string v25, "http://apache.org/xml/serializer"

    .line 759
    const-string v26, "SerializationStopped"

    const/16 v27, 0x0

    .line 757
    invoke-static/range {v25 .. v27}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 756
    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 763
    .end local v8    # "continueProcess":Z
    .end local v17    # "msg":Ljava/lang/String;
    :cond_17
    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v19

    .line 764
    .restart local v19    # "prefix":Ljava/lang/String;
    if-eqz v19, :cond_18

    .line 765
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v24

    if-nez v24, :cond_1a

    :cond_18
    sget-object v19, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 766
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 767
    .restart local v16    # "localpart":Ljava/lang/String;
    sget-object v24, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_1b

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 770
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_19

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 736
    .end local v16    # "localpart":Ljava/lang/String;
    .end local v19    # "prefix":Ljava/lang/String;
    .end local v23    # "value":Ljava/lang/String;
    :cond_19
    :goto_d
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 765
    .restart local v19    # "prefix":Ljava/lang/String;
    .restart local v23    # "value":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto :goto_c

    .line 779
    .restart local v16    # "localpart":Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    sget-object v25, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_d

    .line 806
    .end local v5    # "attr":Lmf/org/w3c/dom/Attr;
    .end local v16    # "localpart":Ljava/lang/String;
    .end local v23    # "value":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v24, v0

    const/16 v25, 0x3c

    invoke-virtual/range {v24 .. v25}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    goto/16 :goto_5

    .line 842
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_6

    .line 861
    :cond_1e
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v24

    if-nez v24, :cond_1f

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v24, v0

    if-eqz v24, :cond_f

    .line 865
    const-string v24, "http://www.w3.org/dom/DOMTR"

    const-string v25, "NullLocalElementName"

    .line 866
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    .line 864
    invoke-static/range {v24 .. v26}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 867
    .restart local v17    # "msg":Ljava/lang/String;
    const/16 v24, 0x2

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xml/serialize/XMLSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    move-result v8

    .line 870
    .restart local v8    # "continueProcess":Z
    if-nez v8, :cond_f

    .line 871
    new-instance v24, Ljava/lang/RuntimeException;

    .line 873
    const-string v25, "http://apache.org/xml/serializer"

    .line 874
    const-string v26, "SerializationStopped"

    const/16 v27, 0x0

    .line 872
    invoke-static/range {v25 .. v27}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 871
    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 878
    .end local v8    # "continueProcess":Z
    .end local v17    # "msg":Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    sget-object v25, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 880
    if-eqz v22, :cond_f

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_f

    .line 883
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    move/from16 v24, v0

    if-eqz v24, :cond_20

    .line 884
    sget-object v24, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    sget-object v25, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xml/serialize/XMLSerializer;->printNamespaceAttr(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    sget-object v25, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    sget-object v26, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual/range {v24 .. v26}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    sget-object v25, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    sget-object v26, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual/range {v24 .. v26}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_7

    .line 923
    .restart local v5    # "attr":Lmf/org/w3c/dom/Attr;
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v23    # "value":Ljava/lang/String;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_9

    .line 935
    .restart local v16    # "localpart":Ljava/lang/String;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_a

    .line 965
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    sget-object v25, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    sget-object v25, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 967
    .restart local v15    # "localUri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 968
    if-nez v15, :cond_14

    .line 970
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    move/from16 v24, v0

    if-eqz v24, :cond_14

    .line 971
    sget-object v24, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xml/serialize/XMLSerializer;->printNamespaceAttr(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 979
    .end local v15    # "localUri":Ljava/lang/String;
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 984
    .local v12, "declaredURI":Ljava/lang/String;
    sget-object v24, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_25

    move-object/from16 v0, v22

    if-eq v12, v0, :cond_26

    .line 991
    :cond_25
    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v18

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 996
    .local v11, "declaredPrefix":Ljava/lang/String;
    if-eqz v11, :cond_27

    sget-object v24, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v24

    if-eq v11, v0, :cond_27

    .line 998
    move-object/from16 v19, v11

    .line 999
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1031
    .end local v11    # "declaredPrefix":Ljava/lang/String;
    :cond_26
    :goto_e
    if-nez v23, :cond_2c

    sget-object v24, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_f
    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3, v5}, Lmf/org/apache/xml/serialize/XMLSerializer;->printAttribute(Ljava/lang/String;Ljava/lang/String;ZLmf/org/w3c/dom/Attr;)V

    goto/16 :goto_b

    .line 1005
    .restart local v11    # "declaredPrefix":Ljava/lang/String;
    :cond_27
    sget-object v24, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_29

    .line 1012
    :cond_28
    const/4 v9, 0x1

    .line 1013
    .local v9, "counter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "NS"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "counter":I
    .local v10, "counter":I
    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move v9, v10

    .line 1014
    .end local v10    # "counter":I
    .restart local v9    # "counter":I
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-nez v24, :cond_2b

    .line 1017
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1020
    .end local v9    # "counter":I
    :cond_29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2a

    .line 1021
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xml/serialize/XMLSerializer;->printNamespaceAttr(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_e

    .line 1015
    .restart local v9    # "counter":I
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "NS"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "counter":I
    .restart local v10    # "counter":I
    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move v9, v10

    .end local v10    # "counter":I
    .restart local v9    # "counter":I
    goto/16 :goto_10

    .end local v9    # "counter":I
    .end local v11    # "declaredPrefix":Ljava/lang/String;
    :cond_2c
    move-object/from16 v24, v23

    .line 1031
    goto/16 :goto_f

    .line 1033
    .end local v12    # "declaredURI":Ljava/lang/String;
    .end local v16    # "localpart":Ljava/lang/String;
    :cond_2d
    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v24

    if-nez v24, :cond_2f

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2e

    .line 1036
    const-string v24, "http://www.w3.org/dom/DOMTR"

    .line 1037
    const-string v25, "NullLocalAttrName"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    .line 1035
    invoke-static/range {v24 .. v26}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 1038
    .restart local v17    # "msg":Ljava/lang/String;
    const/16 v24, 0x2

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v5}, Lmf/org/apache/xml/serialize/XMLSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    move-result v8

    .line 1040
    .restart local v8    # "continueProcess":Z
    if-nez v8, :cond_2e

    .line 1042
    new-instance v24, Ljava/lang/RuntimeException;

    .line 1044
    const-string v25, "http://apache.org/xml/serializer"

    .line 1045
    const-string v26, "SerializationStopped"

    const/16 v27, 0x0

    .line 1043
    invoke-static/range {v25 .. v27}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 1042
    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 1048
    .end local v8    # "continueProcess":Z
    .end local v17    # "msg":Ljava/lang/String;
    :cond_2e
    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v24

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v5}, Lmf/org/apache/xml/serialize/XMLSerializer;->printAttribute(Ljava/lang/String;Ljava/lang/String;ZLmf/org/w3c/dom/Attr;)V

    goto/16 :goto_b

    .line 1053
    :cond_2f
    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v24

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v5}, Lmf/org/apache/xml/serialize/XMLSerializer;->printAttribute(Ljava/lang/String;Ljava/lang/String;ZLmf/org/w3c/dom/Attr;)V

    goto/16 :goto_b

    .line 1071
    .end local v5    # "attr":Lmf/org/w3c/dom/Attr;
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "prefix":Ljava/lang/String;
    .end local v22    # "uri":Ljava/lang/String;
    .end local v23    # "value":Ljava/lang/String;
    .restart local v7    # "child":Lmf/org/w3c/dom/Node;
    :cond_30
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lmf/org/apache/xml/serialize/XMLSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    .line 1072
    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v7

    goto/16 :goto_2

    .line 1082
    .end local v7    # "child":Lmf/org/w3c/dom/Node;
    :cond_31
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    move/from16 v24, v0

    if-eqz v24, :cond_32

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/util/NamespaceSupport;->popContext()V

    .line 1085
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xml/serialize/Printer;->unindent()V

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v24, v0

    const-string v25, "/>"

    invoke-virtual/range {v24 .. v25}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1088
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    .line 1089
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    .line 1090
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    .line 1091
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->isDocumentState()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xml/serialize/Printer;->flush()V

    goto/16 :goto_3
.end method

.method public setNamespaces(Z)V
    .locals 1
    .param p1, "namespaces"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    .line 206
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    .line 208
    new-instance v0, Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    .line 209
    new-instance v0, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 211
    :cond_0
    return-void
.end method

.method public setOutputFormat(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3
    .param p1, "format"    # Lmf/org/apache/xml/serialize/OutputFormat;

    .prologue
    .line 193
    if-eqz p1, :cond_0

    .end local p1    # "format":Lmf/org/apache/xml/serialize/OutputFormat;
    :goto_0
    invoke-super {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->setOutputFormat(Lmf/org/apache/xml/serialize/OutputFormat;)V

    .line 194
    return-void

    .line 193
    .restart local p1    # "format":Lmf/org/apache/xml/serialize/OutputFormat;
    :cond_0
    new-instance p1, Lmf/org/apache/xml/serialize/OutputFormat;

    .end local p1    # "format":Lmf/org/apache/xml/serialize/OutputFormat;
    const-string v0, "xml"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected startDocument(Ljava/lang/String;)V
    .locals 7
    .param p1, "rootTagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x22

    const/4 v6, 0x1

    .line 556
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/Printer;->leaveDTD()Ljava/lang/String;

    move-result-object v1

    .line 557
    .local v1, "dtd":Ljava/lang/String;
    iget-boolean v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_started:Z

    if-nez v4, :cond_4

    .line 559
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/OutputFormat;->getOmitXMLDeclaration()Z

    move-result v4

    if-nez v4, :cond_2

    .line 564
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v4, "<?xml version=\""

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 565
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/OutputFormat;->getVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 566
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/OutputFormat;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 569
    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 570
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v2

    .line 571
    .local v2, "format_encoding":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 572
    const-string v4, " encoding=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 573
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 574
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 576
    :cond_0
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/OutputFormat;->getStandalone()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 577
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_docTypePublicId:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 578
    const-string v4, " standalone=\"yes\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 579
    :cond_1
    const-string v4, "?>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 580
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v4, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/StringBuffer;)V

    .line 581
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    .line 584
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "format_encoding":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/OutputFormat;->getOmitDocumentType()Z

    move-result v4

    if-nez v4, :cond_4

    .line 585
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 589
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v5, "<!DOCTYPE "

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 590
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v4, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 591
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_docTypePublicId:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 592
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v5, " PUBLIC "

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 593
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_docTypePublicId:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lmf/org/apache/xml/serialize/XMLSerializer;->printDoctypeURL(Ljava/lang/String;)V

    .line 594
    iget-boolean v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_indenting:Z

    if-eqz v4, :cond_7

    .line 595
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    .line 596
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    if-lt v3, v4, :cond_6

    .line 600
    .end local v3    # "i":I
    :goto_2
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lmf/org/apache/xml/serialize/XMLSerializer;->printDoctypeURL(Ljava/lang/String;)V

    .line 608
    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 609
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v5, " ["

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0, v1, v6, v6}, Lmf/org/apache/xml/serialize/XMLSerializer;->printText(Ljava/lang/String;ZZ)V

    .line 611
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 614
    :cond_3
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v5, ">"

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 615
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    .line 626
    :cond_4
    :goto_4
    iput-boolean v6, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_started:Z

    .line 628
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->serializePreRoot()V

    .line 629
    return-void

    .line 568
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    :cond_5
    const-string v4, "1.0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 597
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "i":I
    :cond_6
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v5, " "

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 596
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 599
    .end local v3    # "i":I
    :cond_7
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v5, " "

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_2

    .line 602
    :cond_8
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v5, " SYSTEM "

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 603
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lmf/org/apache/xml/serialize/XMLSerializer;->printDoctypeURL(Ljava/lang/String;)V

    goto :goto_3

    .line 616
    :cond_9
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 617
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v5, "<!DOCTYPE "

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 618
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v4, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 619
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v5, " ["

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p0, v1, v6, v6}, Lmf/org/apache/xml/serialize/XMLSerializer;->printText(Ljava/lang/String;ZZ)V

    .line 621
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v5, "]>"

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 622
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    goto :goto_4
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 18
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "rawName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 234
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    if-nez v15, :cond_0

    .line 235
    const-string v15, "http://apache.org/xml/serializer"

    const-string v16, "NoWriterSupplied"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 236
    .local v9, "msg":Ljava/lang/String;
    new-instance v15, Ljava/lang/IllegalStateException;

    invoke-direct {v15, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    .end local v9    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 370
    .local v7, "except":Ljava/io/IOException;
    new-instance v15, Lorg/xml/sax/SAXException;

    invoke-direct {v15, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v15

    .line 239
    .end local v7    # "except":Ljava/io/IOException;
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v13

    .line 240
    .local v13, "state":Lmf/org/apache/xml/serialize/ElementState;
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->isDocumentState()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 245
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_started:Z

    if-nez v15, :cond_2

    .line 246
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_4

    :cond_1
    move-object/from16 v15, p3

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lmf/org/apache/xml/serialize/XMLSerializer;->startDocument(Ljava/lang/String;)V

    .line 265
    :cond_2
    :goto_1
    iget-boolean v12, v13, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    .line 269
    .local v12, "preserveSpace":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lmf/org/apache/xml/serialize/XMLSerializer;->extractNamespaces(Lorg/xml/sax/Attributes;)Lorg/xml/sax/Attributes;

    move-result-object p4

    .line 273
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_a

    .line 274
    :cond_3
    if-nez p2, :cond_9

    .line 275
    const-string v15, "http://apache.org/xml/serializer"

    const-string v16, "NoName"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 276
    .restart local v9    # "msg":Ljava/lang/String;
    new-instance v15, Lorg/xml/sax/SAXException;

    invoke-direct {v15, v9}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v15

    .end local v9    # "msg":Ljava/lang/String;
    .end local v12    # "preserveSpace":Z
    :cond_4
    move-object/from16 v15, p2

    .line 246
    goto :goto_0

    .line 251
    :cond_5
    iget-boolean v15, v13, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v15, :cond_6

    .line 252
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v16, 0x3e

    invoke-virtual/range {v15 .. v16}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 254
    :cond_6
    iget-boolean v15, v13, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v15, :cond_7

    .line 255
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v16, "]]>"

    invoke-virtual/range {v15 .. v16}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 256
    const/4 v15, 0x0

    iput-boolean v15, v13, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    .line 261
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_indenting:Z

    if-eqz v15, :cond_2

    iget-boolean v15, v13, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v15, :cond_2

    .line 262
    iget-boolean v15, v13, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-nez v15, :cond_8

    iget-boolean v15, v13, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    if-nez v15, :cond_8

    iget-boolean v15, v13, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    if-eqz v15, :cond_2

    .line 263
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v15}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    goto :goto_1

    .line 278
    .restart local v12    # "preserveSpace":Z
    :cond_9
    if-eqz p1, :cond_f

    const-string v15, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    .line 280
    invoke-virtual/range {p0 .. p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 281
    .local v11, "prefix":Ljava/lang/String;
    if-eqz v11, :cond_e

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_e

    .line 282
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 293
    .end local v11    # "prefix":Ljava/lang/String;
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v16, 0x3c

    invoke-virtual/range {v15 .. v16}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 294
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v15}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    .line 300
    if-eqz p4, :cond_b

    .line 301
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v15

    if-lt v8, v15, :cond_10

    .line 340
    .end local v8    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_prefixes:Ljava/util/Hashtable;

    if-eqz v15, :cond_c

    .line 341
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_prefixes:Ljava/util/Hashtable;

    invoke-virtual {v15}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 342
    .local v5, "entries":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_16

    .line 365
    .end local v5    # "entries":Ljava/util/Iterator;
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v12}, Lmf/org/apache/xml/serialize/XMLSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v13

    .line 366
    if-eqz p2, :cond_d

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_18

    :cond_d
    move-object/from16 v10, p3

    .line 367
    .local v10, "name":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v15, v10}, Lmf/org/apache/xml/serialize/OutputFormat;->isCDataElement(Ljava/lang/String;)Z

    move-result v15

    iput-boolean v15, v13, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    .line 368
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v15, v10}, Lmf/org/apache/xml/serialize/OutputFormat;->isNonEscapingElement(Ljava/lang/String;)Z

    move-result v15

    iput-boolean v15, v13, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    .line 372
    return-void

    .line 285
    .end local v10    # "name":Ljava/lang/String;
    .restart local v11    # "prefix":Ljava/lang/String;
    :cond_e
    move-object/from16 p3, p2

    .line 287
    goto :goto_2

    .line 289
    .end local v11    # "prefix":Ljava/lang/String;
    :cond_f
    move-object/from16 p3, p2

    goto :goto_2

    .line 302
    .restart local v8    # "i":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v15}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    .line 304
    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v10

    .line 305
    .restart local v10    # "name":Ljava/lang/String;
    if-eqz v10, :cond_12

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_12

    .line 309
    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v10

    .line 310
    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    .line 311
    .local v4, "attrURI":Ljava/lang/String;
    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_12

    .line 312
    if-eqz p1, :cond_11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_11

    .line 313
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_12

    .line 314
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmf/org/apache/xml/serialize/XMLSerializer;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 315
    .restart local v11    # "prefix":Ljava/lang/String;
    if-eqz v11, :cond_12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_12

    .line 316
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 320
    .end local v4    # "attrURI":Ljava/lang/String;
    .end local v11    # "prefix":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v14

    .line 321
    .local v14, "value":Ljava/lang/String;
    if-nez v14, :cond_13

    .line 322
    const-string v14, ""

    .line 323
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v15, v10}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v16, "=\""

    invoke-virtual/range {v15 .. v16}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 325
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lmf/org/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v16, 0x22

    invoke-virtual/range {v15 .. v16}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 331
    const-string v15, "xml:space"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 332
    const-string v15, "preserve"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 333
    const/4 v12, 0x1

    .line 301
    :cond_14
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 335
    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v15}, Lmf/org/apache/xml/serialize/OutputFormat;->getPreserveSpace()Z

    move-result v12

    goto :goto_6

    .line 343
    .end local v8    # "i":I
    .end local v10    # "name":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    .restart local v5    # "entries":Ljava/util/Iterator;
    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v15}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    .line 344
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 345
    .local v6, "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 346
    .restart local v14    # "value":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 347
    .restart local v10    # "name":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_17

    .line 348
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v16, "xmlns=\""

    invoke-virtual/range {v15 .. v16}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 349
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lmf/org/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v16, 0x22

    invoke-virtual/range {v15 .. v16}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto/16 :goto_4

    .line 353
    :cond_17
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v16, "xmlns:"

    invoke-virtual/range {v15 .. v16}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v15, v10}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v16, "=\""

    invoke-virtual/range {v15 .. v16}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 356
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lmf/org/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v16, 0x22

    invoke-virtual/range {v15 .. v16}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto/16 :goto_4

    .line 366
    .end local v5    # "entries":Ljava/util/Iterator;
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v10    # "name":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :cond_18
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "^"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    goto/16 :goto_5
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 10
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "attrs"    # Lorg/xml/sax/AttributeList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 446
    :try_start_0
    iget-object v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    if-nez v7, :cond_0

    .line 447
    const-string v7, "http://apache.org/xml/serializer"

    const-string v8, "NoWriterSupplied"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, "msg":Ljava/lang/String;
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    .end local v2    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 519
    .local v0, "except":Ljava/io/IOException;
    new-instance v7, Lorg/xml/sax/SAXException;

    invoke-direct {v7, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 451
    .end local v0    # "except":Ljava/io/IOException;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v5

    .line 452
    .local v5, "state":Lmf/org/apache/xml/serialize/ElementState;
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->isDocumentState()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 457
    iget-boolean v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_started:Z

    if-nez v7, :cond_1

    .line 458
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->startDocument(Ljava/lang/String;)V

    .line 477
    :cond_1
    :goto_0
    iget-boolean v4, v5, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    .line 482
    .local v4, "preserveSpace":Z
    iget-object v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v8, 0x3c

    invoke-virtual {v7, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 483
    iget-object v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v7, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 484
    iget-object v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v7}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    .line 489
    if-eqz p2, :cond_2

    .line 490
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p2}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v7

    if-lt v1, v7, :cond_7

    .line 515
    .end local v1    # "i":I
    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8, p1, v4}, Lmf/org/apache/xml/serialize/XMLSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v5

    .line 516
    iget-object v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v7, p1}, Lmf/org/apache/xml/serialize/OutputFormat;->isCDataElement(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v5, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    .line 517
    iget-object v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v7, p1}, Lmf/org/apache/xml/serialize/OutputFormat;->isNonEscapingElement(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v5, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    .line 522
    return-void

    .line 463
    .end local v4    # "preserveSpace":Z
    :cond_3
    iget-boolean v7, v5, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v7, :cond_4

    .line 464
    iget-object v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v8, 0x3e

    invoke-virtual {v7, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 466
    :cond_4
    iget-boolean v7, v5, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v7, :cond_5

    .line 467
    iget-object v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v8, "]]>"

    invoke-virtual {v7, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 468
    const/4 v7, 0x0

    iput-boolean v7, v5, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    .line 473
    :cond_5
    iget-boolean v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_indenting:Z

    if-eqz v7, :cond_1

    iget-boolean v7, v5, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v7, :cond_1

    .line 474
    iget-boolean v7, v5, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-nez v7, :cond_6

    iget-boolean v7, v5, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    if-nez v7, :cond_6

    iget-boolean v7, v5, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    if-eqz v7, :cond_1

    .line 475
    :cond_6
    iget-object v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v7}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    goto :goto_0

    .line 491
    .restart local v1    # "i":I
    .restart local v4    # "preserveSpace":Z
    :cond_7
    iget-object v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v7}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    .line 492
    invoke-interface {p2, v1}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v3

    .line 493
    .local v3, "name":Ljava/lang/String;
    invoke-interface {p2, v1}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v6

    .line 494
    .local v6, "value":Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 495
    iget-object v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v7, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 496
    iget-object v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v8, "=\""

    invoke-virtual {v7, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0, v6}, Lmf/org/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    .line 498
    iget-object v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v8, 0x22

    invoke-virtual {v7, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 504
    :cond_8
    const-string v7, "xml:space"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 505
    const-string v7, "preserve"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 506
    const/4 v4, 0x1

    .line 490
    :cond_9
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 508
    :cond_a
    iget-object v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v7}, Lmf/org/apache/xml/serialize/OutputFormat;->getPreserveSpace()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_2
.end method
