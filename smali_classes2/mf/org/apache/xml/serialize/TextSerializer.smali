.class public Lmf/org/apache/xml/serialize/TextSerializer;
.super Lmf/org/apache/xml/serialize/BaseMarkupSerializer;
.source "TextSerializer.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 76
    new-instance v0, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v1, "text"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    .line 77
    return-void
.end method


# virtual methods
.method protected characters(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "unescaped"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 213
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    .line 214
    .local v0, "state":Lmf/org/apache/xml/serialize/ElementState;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    .line 215
    invoke-virtual {p0, p1, v2, v2}, Lmf/org/apache/xml/serialize/TextSerializer;->printText(Ljava/lang/String;ZZ)V

    .line 216
    return-void
.end method

.method public characters([CII)V
    .locals 8
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 199
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v7

    .line 200
    .local v7, "state":Lmf/org/apache/xml/serialize/ElementState;
    const/4 v0, 0x0

    iput-boolean v0, v7, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    iput-boolean v0, v7, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    .line 201
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xml/serialize/TextSerializer;->printText([CIIZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    return-void

    .line 202
    .end local v7    # "state":Lmf/org/apache/xml/serialize/ElementState;
    :catch_0
    move-exception v6

    .line 203
    .local v6, "except":Ljava/io/IOException;
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public comment(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 185
    return-void
.end method

.method public comment([CII)V
    .locals 0
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 190
    return-void
.end method

.method protected content()Lmf/org/apache/xml/serialize/ElementState;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 371
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    .line 372
    .local v0, "state":Lmf/org/apache/xml/serialize/ElementState;
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->isDocumentState()Z

    move-result v1

    if-nez v1, :cond_1

    .line 375
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v1, :cond_0

    .line 376
    iput-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    .line 380
    :cond_0
    iput-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    .line 382
    :cond_1
    return-object v0
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 2
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 152
    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/TextSerializer;->endElementIO(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "except":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "rawName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 103
    if-nez p3, :cond_0

    .end local p2    # "localName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/TextSerializer;->endElement(Ljava/lang/String;)V

    .line 104
    return-void

    .restart local p2    # "localName":Ljava/lang/String;
    :cond_0
    move-object p2, p3

    .line 103
    goto :goto_0
.end method

.method public endElementIO(Ljava/lang/String;)V
    .locals 2
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    .line 170
    .local v0, "state":Lmf/org/apache/xml/serialize/ElementState;
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->leaveElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    .line 171
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    .line 172
    const/4 v1, 0x0

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    .line 173
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->isDocumentState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lmf/org/apache/xml/serialize/TextSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->flush()V

    .line 175
    :cond_0
    return-void
.end method

.method protected getEntityRef(I)Ljava/lang/String;
    .locals 1
    .param p1, "ch"    # I

    .prologue
    .line 388
    const/4 v0, 0x0

    return-object v0
.end method

.method public processingInstructionIO(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    return-void
.end method

.method protected serializeElement(Lmf/org/w3c/dom/Element;)V
    .locals 6
    .param p1, "elem"    # Lmf/org/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 259
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, "tagName":Ljava/lang/String;
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v2

    .line 261
    .local v2, "state":Lmf/org/apache/xml/serialize/ElementState;
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->isDocumentState()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 266
    iget-boolean v4, p0, Lmf/org/apache/xml/serialize/TextSerializer;->_started:Z

    if-nez v4, :cond_0

    .line 267
    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/TextSerializer;->startDocument(Ljava/lang/String;)V

    .line 271
    :cond_0
    iget-boolean v1, v2, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    .line 281
    .local v1, "preserveSpace":Z
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->hasChildNodes()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 284
    invoke-virtual {p0, v5, v5, v3, v1}, Lmf/org/apache/xml/serialize/TextSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v2

    .line 285
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 286
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_2

    .line 290
    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/TextSerializer;->endElementIO(Ljava/lang/String;)V

    .line 298
    .end local v0    # "child":Lmf/org/w3c/dom/Node;
    :cond_1
    :goto_1
    return-void

    .line 287
    .restart local v0    # "child":Lmf/org/w3c/dom/Node;
    :cond_2
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/TextSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    .line 288
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 292
    .end local v0    # "child":Lmf/org/w3c/dom/Node;
    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->isDocumentState()Z

    move-result v4

    if-nez v4, :cond_1

    .line 294
    const/4 v4, 0x1

    iput-boolean v4, v2, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    .line 295
    const/4 v4, 0x0

    iput-boolean v4, v2, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    goto :goto_1
.end method

.method protected serializeNode(Lmf/org/w3c/dom/Node;)V
    .locals 4
    .param p1, "node"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 312
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 364
    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 316
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :pswitch_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "text":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 318
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xml/serialize/TextSerializer;->characters(Ljava/lang/String;Z)V

    goto :goto_0

    .line 325
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 326
    .restart local v1    # "text":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 327
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xml/serialize/TextSerializer;->characters(Ljava/lang/String;Z)V

    goto :goto_0

    .line 342
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_3
    check-cast p1, Lmf/org/w3c/dom/Element;

    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/TextSerializer;->serializeElement(Lmf/org/w3c/dom/Element;)V

    goto :goto_0

    .line 353
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :pswitch_4
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 354
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_1
    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/TextSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    .line 356
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public setOutputFormat(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3
    .param p1, "format"    # Lmf/org/apache/xml/serialize/OutputFormat;

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .end local p1    # "format":Lmf/org/apache/xml/serialize/OutputFormat;
    :goto_0
    invoke-super {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->setOutputFormat(Lmf/org/apache/xml/serialize/OutputFormat;)V

    .line 83
    return-void

    .line 82
    .restart local p1    # "format":Lmf/org/apache/xml/serialize/OutputFormat;
    :cond_0
    new-instance p1, Lmf/org/apache/xml/serialize/OutputFormat;

    .end local p1    # "format":Lmf/org/apache/xml/serialize/OutputFormat;
    const-string v0, "text"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected startDocument(Ljava/lang/String;)V
    .locals 1
    .param p1, "rootTagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lmf/org/apache/xml/serialize/TextSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->leaveDTD()Ljava/lang/String;

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/serialize/TextSerializer;->_started:Z

    .line 242
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->serializePreRoot()V

    .line 243
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
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
    .line 95
    if-nez p3, :cond_0

    .end local p2    # "localName":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xml/serialize/TextSerializer;->startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    .line 96
    return-void

    .restart local p2    # "localName":Ljava/lang/String;
    :cond_0
    move-object p2, p3

    .line 95
    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 5
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "attrs"    # Lorg/xml/sax/AttributeList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 119
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v2

    .line 120
    .local v2, "state":Lmf/org/apache/xml/serialize/ElementState;
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->isDocumentState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    iget-boolean v3, p0, Lmf/org/apache/xml/serialize/TextSerializer;->_started:Z

    if-nez v3, :cond_0

    .line 126
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/TextSerializer;->startDocument(Ljava/lang/String;)V

    .line 130
    :cond_0
    iget-boolean v1, v2, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    .line 141
    .local v1, "preserveSpace":Z
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, p1, v1}, Lmf/org/apache/xml/serialize/TextSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 145
    return-void

    .line 142
    .end local v1    # "preserveSpace":Z
    .end local v2    # "state":Lmf/org/apache/xml/serialize/ElementState;
    :catch_0
    move-exception v0

    .line 143
    .local v0, "except":Ljava/io/IOException;
    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-direct {v3, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method
